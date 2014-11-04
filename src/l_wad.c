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
// Lua WAD-handling library
//

#include "lua.h"
#include "lauxlib.h"

#include "w_wad.h"
#include "z_zone.h"

// wad.cacheLumpName(name, tag)
//
// Returns lump data as a string.  On error returns nil and an error string.
static int CacheLumpName(lua_State *L)
{
    char *data, *name;
    int length, lump, tag;

    name = (char*)luaL_checkstring(L, 1);
    tag = luaL_checkinteger(L, 2);

    // Check to make sure we're using a valid tag.
    if (tag <= 0 || tag >= PU_NUM_TAGS)
    {
        lua_pushnil(L);
        lua_pushstring(L, "Invalid tag");
        return 2;
    }

    // Find the lump number so we can get its length too.
    lump = W_GetNumForName(name);
    if (lump < 0)
    {
        lua_pushnil(L);
        lua_pushstring(L, "Lump not found");
        return 2;
    }

    // Pass back the lump data as a string.
    length = W_LumpLength(lump);
    data = W_CacheLumpName(name, tag);
    lua_pushlstring(L, data, length);
    return 1;
}

static struct luaL_Reg funcs[] = {
        { "cacheLumpName", CacheLumpName },
        { NULL, NULL }
};


LUAMOD_API int L_OpenWadLibrary(lua_State *L)
{
    luaL_newlib(L, funcs);
    return 1;
}
