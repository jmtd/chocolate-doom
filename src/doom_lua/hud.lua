--
-- Copyright(C) 1993-1996 Id Software, Inc.
-- Copyright(C) 2005-2014 Simon Howard
-- Copyright(C) 2014 Alex Mayfield
--
-- This program is free software; you can redistribute it and/or
-- modify it under the terms of the GNU General Public License
-- as published by the Free Software Foundation; either version 2
-- of the License, or (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- DESCRIPTION:  Heads-up displays
--

local headsupactive = false

local hud = {}

hud.HU_FONTSTART = string.byte('!') -- the first font characters
hud.HU_FONTEND = string.byte('_') -- the last font characters

-- Calculate # of glyphs in font.
hud.HU_FONTSIZE	= (hud.HU_FONTEND - hud.HU_FONTSTART + 1)

-- HUD Font graphics
hud.font = {}

hud.init = function()
  local j = hud.HU_FONTSTART
  for i = 1, hud.HU_FONTSIZE do
    local buffer = string.format("STCFN%.3d", j)
    j = j + 1
    hud.font[i] = wad.cacheLumpName(buffer, 1) -- PU_STATIC
  end
end

hud.stop = function()
  headsupactive = false
end

hud.start = function()
  if headsupactive then
    hud.stop()
  end

  -- More stuff goes here

  headsupactive = true
end

hud.ticker = function()
  -- Stuff goes here
end

return hud
