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

local string = require('string')

local hud = {}

-- hu_lib

hud.HU_MAXLINELENGTH = 80

hud.TextLine = {}

-- HUlib_clearTextLine()
hud.TextLine.clear = function(self)
  self.line = ""
  self.needsupdate = 1
end

-- HUlib_initTextLine()
hud.TextLine.init = function(x, y, font, startchar)
  local self = setmetatable({}, TextLine)
  self.x = x
  self.y = y
  self.font = font
  self.startchar = startchar
  self:clear()
  return self
end

-- HUlib_addCharToTextLine()
hud.TextLine.addChar = function(self, ch)
  if string.len(self.line) == HU_MAXLINELENGTH then
    return false
  else
    self.line = self.line .. ch
    self.needsupdate = 4
    return true
  end
end

-- HUlib_delCharFromTextLine()
hud.TextLine.delChar = function(self)
  self.line = string.sub(self.line, 1, -2)
  self.needsupdate = 4
end

-- HUlib_drawTextLine()
hud.TextLine.draw = function(self, drawcursor)
  -- draw the new stuff
  local x = self.x
  for char in string.gmatch(self.l, '.') do
    local char = string.upper(char)
    -- FIXME: sc off-by-one?
    if char ~= ' ' and char >= self.startchar and char <= string.byte('_') then
      -- FIXME: Get real width of character
      local charwidth = 8
      if x + charwidth > video.SCREENWIDTH then
        break
      end
      -- FIXME: f index off-by-one?
      video.drawPatchDirect(x, self.y, self.font[string.byte(char) - self.startchar])
      x = x + charwidth
    else
      x = x + 4
      if x >= video.SCREENWIDTH then
        break
      end
    end
  end

  -- draw the cursor if requested
  -- FIXME: Get real width
  if drawcursor and x + 8 <= video.SCREENWIDTH then
    video.drawPatchDirect(x, self.y, hud.font[string.byte('_') - self.startchar])
  end
end

-- hu_stuff

local headsupactive = false

hud.HU_FONTSTART = string.byte('!') -- the first font characters
hud.HU_FONTEND = string.byte('_') -- the last font characters

-- Calculate # of glyphs in font.
hud.HU_FONTSIZE	= (hud.HU_FONTEND - hud.HU_FONTSTART + 1)

-- HUD Font graphics
hud.font = {}

-- HU_Init()
hud.init = function()
  local j = hud.HU_FONTSTART
  for i = 1, hud.HU_FONTSIZE do
    local buffer = string.format("STCFN%.3d", j)
    j = j + 1
    hud.font[i] = wad.cacheLumpName(buffer, 1) -- PU_STATIC
  end
end

-- HU_Stop()
hud.stop = function()
  headsupactive = false
end

-- HU_Start()
hud.start = function()
  if headsupactive then
    hud.stop()
  end

  -- More stuff goes here

  headsupactive = true
end

-- HU_Ticker()
hud.ticker = function()
  -- Stuff goes here
  video.drawPatchDirect(0, 0, hud.font[8])
end

return hud
