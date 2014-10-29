//
// Copyright(C) 2014 Alex Mayfield
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
//
// Lua state initialization, script loading, and other non-library code.
//

#include <string.h>

#include "lua.h"
#include "lualib.h"
#include "lauxlib.h"

#include "doomtype.h"
#include "i_system.h"
#include "w_wad.h"
#include "z_zone.h"

static int firstscript;
static int lastscript;
static int numscripts;

static const luaL_Reg loadedlibs[] =
{
    { "_G", luaopen_base },
    { LUA_IOLIBNAME, luaopen_io },
    { LUA_LOADLIBNAME, luaopen_package },
    { NULL, NULL },
};

lua_State* lua;

/**
 * lua_Alloc implementation which uses zone memory allocator.
 */
static void* LuaAlloc(void* ud, void* ptr, size_t osize, size_t nsize)
{
    if (nsize == 0)
    {
        Z_Free(ptr);
        return NULL;
    }
    else
    {
        if (ptr == NULL)
        {
            return Z_Malloc(nsize, PU_STATIC, NULL);
        }
        else
        {
            // Fake the existance of a Z_Realloc().
            void* newptr = Z_Malloc(nsize, PU_STATIC, NULL);
            memcpy(newptr, ptr, osize > nsize ? nsize : osize);
            Z_Free(ptr);
            return newptr;
        }
    }
}

/**
 * Panic function, run if a Lua error occurs outside of a protected environment.
 */
static int LuaPanic(lua_State* L)
{
    I_Error("Unprotected error in Lua state: %s", lua_tostring(L, -1));
    return 0;
}

static int LuaWADSearcher(lua_State* L) {
    int lump, size;
    char* data;
    const char* name;

    // Only parameter is the lump to load.
    name = luaL_checkstring(L, 1);

    // Try to load the lump.
    // [AM] TODO: Ignore any lump outside of L_START/L_END
    lump = W_CheckNumForName((char*)name);
    if (lump < 0)
    {
        lua_pushfstring(L, "error loading module: lump %s not found", name);
        return 1;
    }
    else if (lump < firstscript || lump > lastscript)
    {
        lua_pushfstring(L, "error loading module: lump %s is not marked as a "
            "valid Lua script lump", name);
        return 1;
    }

    // Cache and load lump;
    size = W_LumpLength(lump);
    data = W_CacheLumpNum(lump, PU_STATIC);
    luaL_loadbuffer(L, data, size, name);
    return 1;
}

/**
 * Initialize LUA scripts.
 */
void L_Init()
{
    const luaL_Reg* lib;

    // Mark Lua start and end scripts so we don't accidentally
    // try to load something that's not a script as a script.
    firstscript = W_CheckNumForName("L_START");
    lastscript = W_CheckNumForName("L_END");
    if (firstscript == -1 || lastscript == -1) {
        firstscript = -1;
        lastscript = -1;
        numscripts = 0;
    }
    else
    {
        numscripts = lastscript - firstscript + 1;
    }

    // Set up Lua state
    lua = lua_newstate(LuaAlloc, NULL);
    lua = luaL_newstate();
    if (lua)
    {
        lua_atpanic(lua, &LuaPanic);
    }

    // Load default libraries
    for (lib = loadedlibs; lib->func; lib++)
    {
        luaL_requiref(lua, lib->name, lib->func, 1);
        lua_pop(lua, 1);
    }

    // Add WAD package searcher to the end of the searcher list.
    lua_getglobal(lua, "package");
    lua_getfield(lua, -1, "searchers");
    lua_len(lua, -1);
    lua_pushnumber(lua, 1);
    lua_arith(lua, LUA_OPADD);
    lua_pushcfunction(lua, LuaWADSearcher);
    lua_settable(lua, -3);
    lua_pop(lua, 2);

    // TEST: See if we can require a module and run a function inside it
    // lua_getglobal(lua, "require");
    // lua_pushstring(lua, "DOOM");
    // lua_pcall(lua, 1, 1, 0);
    // lua_getfield(lua, -1, "hello");
    // lua_pcall(lua, 0, 1, 0);
}

/**
 * Getter for the current version of Lua.
 */
const char* L_GetVersion()
{
    return LUA_RELEASE;
}

/**
 * Close LUA state.
 */
void L_Free()
{
    lua_close(lua);
}
