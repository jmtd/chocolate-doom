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
// Lua video library
//

#include "lua.h"
#include "lauxlib.h"

#include "v_video.h"

// video.drawPatchDirect(x, y, patchdata)
//
// Draws a patch directly to the screen.
static int DrawPatchDirect(lua_State *L)
{
    int x, y;
    patch_t* data;

	x = luaL_checkinteger(L, 1);
	y = luaL_checkinteger(L, 2);
    data = luaL_checkudata(L, 3, "buffer");

    // Does the actual patch drawing.
    V_DrawPatchDirect(x, y, data);
    return 0;
}

static struct luaL_Reg funcs[] = {
    { "drawPatchDirect", DrawPatchDirect },
    { NULL, NULL }
};


LUAMOD_API int L_OpenVideoLibrary(lua_State *L)
{
    luaL_newlib(L, funcs);
    return 1;
}
