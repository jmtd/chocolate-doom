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
-- DESCRIPTION:
--	Printed strings for translation.
--	English language support (default).
--

local strings = {}

--
-- D_Main.C
--

strings['D_DEVSTR'] = "Development mode ON.\n"
strings['D_CDROM'] = "CD-ROM Version: default.cfg from c:\\doomdata\n"

--
--	M_Menu.C
--

strings['PRESSKEY'] = "press a key."
strings['PRESSYN'] = "press y or n."
strings['QUITMSG'] = "are you sure you want to\nquit this great game?"
strings['LOADNET'] = "you can't do load while in a net game!\n\n" .. strings['PRESSKEY']
strings['QLOADNET'] = "you can't quickload during a netgame!\n\n" .. strings['PRESSKEY']
strings['QSAVESPOT'] = "you haven't picked a quicksave slot yet!\n\n" .. strings['PRESSKEY']
strings['SAVEDEAD'] = "you can't save if you aren't playing!\n\n" .. strings['PRESSKEY']
strings['QSPROMPT'] = "quicksave over your game named\n\n'%s'?\n\n" .. strings['PRESSYN']
strings['QLPROMPT'] = "do you want to quickload the game named\n\n'%s'?\n\n" .. strings['PRESSYN']

strings['NEWGAME'] =
  "you can't start a new game\n" ..
  "while in a network game.\n\n" .. strings['PRESSKEY']

strings['NIGHTMARE'] =
  "are you sure? this skill level\n" ..
  "isn't even remotely fair.\n\n" .. strings['PRESSYN']

strings['SWSTRING'] =
  "this is the shareware version of doom.\n\n" ..
  "you need to order the entire trilogy.\n\n" .. strings['PRESSKEY']

strings['MSGOFF'] = "Messages OFF"
strings['MSGON'] = "Messages ON"
strings['NETEND'] = "you can't end a netgame!\n\n" .. strings['PRESSKEY']
strings['ENDGAME'] = "are you sure you want to end the game?\n\n".. strings['PRESSYN']

strings['DOSY'] = "(press y to quit to dos.)"

strings['DETAILHI'] = "High detail"
strings['DETAILLO'] = "Low detail"
strings['GAMMALVL0'] = "Gamma correction OFF"
strings['GAMMALVL1'] = "Gamma correction level 1"
strings['GAMMALVL2'] = "Gamma correction level 2"
strings['GAMMALVL3'] = "Gamma correction level 3"
strings['GAMMALVL4'] = "Gamma correction level 4"
strings['EMPTYSTRING'] = "empty slot"

--
--	P_inter.C
--

strings['GOTARMOR'] = "Picked up the armor."
strings['GOTMEGA'] = "Picked up the MegaArmor!"
strings['GOTHTHBONUS'] = "Picked up a health bonus."
strings['GOTARMBONUS'] = "Picked up an armor bonus."
strings['GOTSTIM'] = "Picked up a stimpack."
strings['GOTMEDINEED'] = "Picked up a medikit that you REALLY need!"
strings['GOTMEDIKIT'] = "Picked up a medikit."
strings['GOTSUPER'] = "Supercharge!"

strings['GOTBLUECARD'] = "Picked up a blue keycard."
strings['GOTYELWCARD'] = "Picked up a yellow keycard."
strings['GOTREDCARD'] = "Picked up a red keycard."
strings['GOTBLUESKUL'] = "Picked up a blue skull key."
strings['GOTYELWSKUL'] = "Picked up a yellow skull key."
strings['GOTREDSKULL'] = "Picked up a red skull key."

strings['GOTINVUL'] = "Invulnerability!"
strings['GOTBERSERK'] = "Berserk!"
strings['GOTINVIS'] = "Partial Invisibility"
strings['GOTSUIT'] = "Radiation Shielding Suit"
strings['GOTMAP'] = "Computer Area Map"
strings['GOTVISOR'] = "Light Amplification Visor"
strings['GOTMSPHERE'] = "MegaSphere!"

strings['GOTCLIP'] = "Picked up a clip."
strings['GOTCLIPBOX'] = "Picked up a box of bullets."
strings['GOTROCKET'] = "Picked up a rocket."
strings['GOTROCKBOX'] = "Picked up a box of rockets."
strings['GOTCELL'] = "Picked up an energy cell."
strings['GOTCELLBOX'] = "Picked up an energy cell pack."
strings['GOTSHELLS'] = "Picked up 4 shotgun shells."
strings['GOTSHELLBOX'] = "Picked up a box of shotgun shells."
strings['GOTBACKPACK'] = "Picked up a backpack full of ammo!"

strings['GOTBFG9000'] = "You got the BFG9000!  Oh, yes."
strings['GOTCHAINGUN'] = "You got the chaingun!"
strings['GOTCHAINSAW'] = "A chainsaw!  Find some meat!"
strings['GOTLAUNCHER'] = "You got the rocket launcher!"
strings['GOTPLASMA'] = "You got the plasma gun!"
strings['GOTSHOTGUN'] = "You got the shotgun!"
strings['GOTSHOTGUN2'] = "You got the super shotgun!"

--
-- P_Doors.C
--

strings['PD_BLUEO'] = "You need a blue key to activate this object"
strings['PD_REDO'] = "You need a red key to activate this object"
strings['PD_YELLOWO'] = "You need a yellow key to activate this object"
strings['PD_BLUEK'] = "You need a blue key to open this door"
strings['PD_REDK'] = "You need a red key to open this door"
strings['PD_YELLOWK'] = "You need a yellow key to open this door"

--
--	G_game.C
--

strings['GGSAVED'] = "game saved."

--
--	HU_stuff.C
--

strings['HUSTR_MSGU'] = "[Message unsent]"

strings['HUSTR_E1M1'] = "E1M1: Hangar"
strings['HUSTR_E1M2'] = "E1M2: Nuclear Plant"
strings['HUSTR_E1M3'] = "E1M3: Toxin Refinery"
strings['HUSTR_E1M4'] = "E1M4: Command Control"
strings['HUSTR_E1M5'] = "E1M5: Phobos Lab"
strings['HUSTR_E1M6'] = "E1M6: Central Processing"
strings['HUSTR_E1M7'] = "E1M7: Computer Station"
strings['HUSTR_E1M8'] = "E1M8: Phobos Anomaly"
strings['HUSTR_E1M9'] = "E1M9: Military Base"

strings['HUSTR_E2M1'] = "E2M1: Deimos Anomaly"
strings['HUSTR_E2M2'] = "E2M2: Containment Area"
strings['HUSTR_E2M3'] = "E2M3: Refinery"
strings['HUSTR_E2M4'] = "E2M4: Deimos Lab"
strings['HUSTR_E2M5'] = "E2M5: Command Center"
strings['HUSTR_E2M6'] = "E2M6: Halls of the Damned"
strings['HUSTR_E2M7'] = "E2M7: Spawning Vats"
strings['HUSTR_E2M8'] = "E2M8: Tower of Babel"
strings['HUSTR_E2M9'] = "E2M9: Fortress of Mystery"

strings['HUSTR_E3M1'] = "E3M1: Hell Keep"
strings['HUSTR_E3M2'] = "E3M2: Slough of Despair"
strings['HUSTR_E3M3'] = "E3M3: Pandemonium"
strings['HUSTR_E3M4'] = "E3M4: House of Pain"
strings['HUSTR_E3M5'] = "E3M5: Unholy Cathedral"
strings['HUSTR_E3M6'] = "E3M6: Mt. Erebus"
strings['HUSTR_E3M7'] = "E3M7: Limbo"
strings['HUSTR_E3M8'] = "E3M8: Dis"
strings['HUSTR_E3M9'] = "E3M9: Warrens"

strings['HUSTR_E4M1'] = "E4M1: Hell Beneath"
strings['HUSTR_E4M2'] = "E4M2: Perfect Hatred"
strings['HUSTR_E4M3'] = "E4M3: Sever The Wicked"
strings['HUSTR_E4M4'] = "E4M4: Unruly Evil"
strings['HUSTR_E4M5'] = "E4M5: They Will Repent"
strings['HUSTR_E4M6'] = "E4M6: Against Thee Wickedly"
strings['HUSTR_E4M7'] = "E4M7: And Hell Followed"
strings['HUSTR_E4M8'] = "E4M8: Unto The Cruel"
strings['HUSTR_E4M9'] = "E4M9: Fear"

strings['HUSTR_1'] = "level 1: entryway"
strings['HUSTR_2'] = "level 2: underhalls"
strings['HUSTR_3'] = "level 3: the gantlet"
strings['HUSTR_4'] = "level 4: the focus"
strings['HUSTR_5'] = "level 5: the waste tunnels"
strings['HUSTR_6'] = "level 6: the crusher"
strings['HUSTR_7'] = "level 7: dead simple"
strings['HUSTR_8'] = "level 8: tricks and traps"
strings['HUSTR_9'] = "level 9: the pit"
strings['HUSTR_10'] = "level 10: refueling base"
strings['HUSTR_11'] = "level 11: 'o' of destruction!"

strings['HUSTR_12'] = "level 12: the factory"
strings['HUSTR_13'] = "level 13: downtown"
strings['HUSTR_14'] = "level 14: the inmost dens"
strings['HUSTR_15'] = "level 15: industrial zone"
strings['HUSTR_16'] = "level 16: suburbs"
strings['HUSTR_17'] = "level 17: tenements"
strings['HUSTR_18'] = "level 18: the courtyard"
strings['HUSTR_19'] = "level 19: the citadel"
strings['HUSTR_20'] = "level 20: gotcha!"

strings['HUSTR_21'] = "level 21: nirvana"
strings['HUSTR_22'] = "level 22: the catacombs"
strings['HUSTR_23'] = "level 23: barrels o' fun"
strings['HUSTR_24'] = "level 24: the chasm"
strings['HUSTR_25'] = "level 25: bloodfalls"
strings['HUSTR_26'] = "level 26: the abandoned mines"
strings['HUSTR_27'] = "level 27: monster condo"
strings['HUSTR_28'] = "level 28: the spirit world"
strings['HUSTR_29'] = "level 29: the living end"
strings['HUSTR_30'] = "level 30: icon of sin"

strings['HUSTR_31'] = "level 31: wolfenstein"
strings['HUSTR_32'] = "level 32: grosse"

strings['PHUSTR_1'] = "level 1: congo"
strings['PHUSTR_2'] = "level 2: well of souls"
strings['PHUSTR_3'] = "level 3: aztec"
strings['PHUSTR_4'] = "level 4: caged"
strings['PHUSTR_5'] = "level 5: ghost town"
strings['PHUSTR_6'] = "level 6: baron's lair"
strings['PHUSTR_7'] = "level 7: caughtyard"
strings['PHUSTR_8'] = "level 8: realm"
strings['PHUSTR_9'] = "level 9: abattoire"
strings['PHUSTR_10'] = "level 10: onslaught"
strings['PHUSTR_11'] = "level 11: hunted"

strings['PHUSTR_12'] = "level 12: speed"
strings['PHUSTR_13'] = "level 13: the crypt"
strings['PHUSTR_14'] = "level 14: genesis"
strings['PHUSTR_15'] = "level 15: the twilight"
strings['PHUSTR_16'] = "level 16: the omen"
strings['PHUSTR_17'] = "level 17: compound"
strings['PHUSTR_18'] = "level 18: neurosphere"
strings['PHUSTR_19'] = "level 19: nme"
strings['PHUSTR_20'] = "level 20: the death domain"

strings['PHUSTR_21'] = "level 21: slayer"
strings['PHUSTR_22'] = "level 22: impossible mission"
strings['PHUSTR_23'] = "level 23: tombstone"
strings['PHUSTR_24'] = "level 24: the final frontier"
strings['PHUSTR_25'] = "level 25: the temple of darkness"
strings['PHUSTR_26'] = "level 26: bunker"
strings['PHUSTR_27'] = "level 27: anti-christ"
strings['PHUSTR_28'] = "level 28: the sewers"
strings['PHUSTR_29'] = "level 29: odyssey of noises"
strings['PHUSTR_30'] = "level 30: the gateway of hell"

strings['PHUSTR_31'] = "level 31: cyberden"
strings['PHUSTR_32'] = "level 32: go 2 it"

strings['THUSTR_1'] = "level 1: system control"
strings['THUSTR_2'] = "level 2: human bbq"
strings['THUSTR_3'] = "level 3: power control"
strings['THUSTR_4'] = "level 4: wormhole"
strings['THUSTR_5'] = "level 5: hanger"
strings['THUSTR_6'] = "level 6: open season"
strings['THUSTR_7'] = "level 7: prison"
strings['THUSTR_8'] = "level 8: metal"
strings['THUSTR_9'] = "level 9: stronghold"
strings['THUSTR_10'] = "level 10: redemption"
strings['THUSTR_11'] = "level 11: storage facility"

strings['THUSTR_12'] = "level 12: crater"
strings['THUSTR_13'] = "level 13: nukage processing"
strings['THUSTR_14'] = "level 14: steel works"
strings['THUSTR_15'] = "level 15: dead zone"
strings['THUSTR_16'] = "level 16: deepest reaches"
strings['THUSTR_17'] = "level 17: processing area"
strings['THUSTR_18'] = "level 18: mill"
strings['THUSTR_19'] = "level 19: shipping/respawning"
strings['THUSTR_20'] = "level 20: central processing"

strings['THUSTR_21'] = "level 21: administration center"
strings['THUSTR_22'] = "level 22: habitat"
strings['THUSTR_23'] = "level 23: lunar mining project"
strings['THUSTR_24'] = "level 24: quarry"
strings['THUSTR_25'] = "level 25: baron's den"
strings['THUSTR_26'] = "level 26: ballistyx"
strings['THUSTR_27'] = "level 27: mount pain"
strings['THUSTR_28'] = "level 28: heck"
strings['THUSTR_29'] = "level 29: river styx"
strings['THUSTR_30'] = "level 30: last call"

strings['THUSTR_31'] = "level 31: pharaoh"
strings['THUSTR_32'] = "level 32: caribbean"

strings['HUSTR_CHATMACRO1'] = "I'm ready to kick butt!"
strings['HUSTR_CHATMACRO2'] = "I'm OK."
strings['HUSTR_CHATMACRO3'] = "I'm not looking too good!"
strings['HUSTR_CHATMACRO4'] = "Help!"
strings['HUSTR_CHATMACRO5'] = "You suck!"
strings['HUSTR_CHATMACRO6'] = "Next time, scumbag..."
strings['HUSTR_CHATMACRO7'] = "Come here!"
strings['HUSTR_CHATMACRO8'] = "I'll take care of it."
strings['HUSTR_CHATMACRO9'] = "Yes"
strings['HUSTR_CHATMACRO0'] = "No"

strings['HUSTR_TALKTOSELF1'] = "You mumble to yourself"
strings['HUSTR_TALKTOSELF2'] = "Who's there?"
strings['HUSTR_TALKTOSELF3'] = "You scare yourself"
strings['HUSTR_TALKTOSELF4'] = "You start to rave"
strings['HUSTR_TALKTOSELF5'] = "You've lost it..."

strings['HUSTR_MESSAGESENT'] = "[Message Sent]"

-- The following should NOT be changed unless it seems
-- just AWFULLY necessary

strings['HUSTR_PLRGREEN'] = "Green: "
strings['HUSTR_PLRINDIGO'] = "Indigo: "
strings['HUSTR_PLRBROWN'] = "Brown: "
strings['HUSTR_PLRRED'] = "Red: "

strings['HUSTR_KEYGREEN'] = 'g'
strings['HUSTR_KEYINDIGO'] = 'i'
strings['HUSTR_KEYBROWN'] = 'b'
strings['HUSTR_KEYRED'] = 'r'

--
-- AM_map.C
--

strings['AMSTR_FOLLOWON'] = "Follow Mode ON"
strings['AMSTR_FOLLOWOFF'] = "Follow Mode OFF"

strings['AMSTR_GRIDON'] = "Grid ON"
strings['AMSTR_GRIDOFF'] = "Grid OFF"

strings['AMSTR_MARKEDSPOT'] = "Marked Spot"
strings['AMSTR_MARKSCLEARED'] = "All Marks Cleared"

--
-- ST_stuff.C
--

strings['STSTR_MUS'] = "Music Change"
strings['STSTR_NOMUS'] = "IMPOSSIBLE SELECTION"
strings['STSTR_DQDON'] = "Degreelessness Mode On"
strings['STSTR_DQDOFF'] = "Degreelessness Mode Off"

strings['STSTR_KFAADDED'] = "Very Happy Ammo Added"
strings['STSTR_FAADDED'] = "Ammo (no keys) Added"

strings['STSTR_NCON'] = "No Clipping Mode ON"
strings['STSTR_NCOFF'] = "No Clipping Mode OFF"

strings['STSTR_BEHOLD'] = "inVuln, Str, Inviso, Rad, Allmap, or Lite-amp"
strings['STSTR_BEHOLDX'] = "Power-up Toggled"

strings['STSTR_CHOPPERS'] = "... doesn't suck - GM"
strings['STSTR_CLEV'] = "Changing Level..."

--
-- F_Finale.C
--

strings['E1TEXT'] =
  "Once you beat the big badasses and\n" ..
  "clean out the moon base you're supposed\n" ..
  "to win, aren't you? Aren't you? Where's\n" ..
  "your fat reward and ticket home? What\n" ..
  "the hell is this? It's not supposed to\n" ..
  "end this way!\n" ..
  "\n"  ..
  "It stinks like rotten meat, but looks\n" ..
  "like the lost Deimos base.  Looks like\n" ..
  "you're stuck on The Shores of Hell.\n" ..
  "The only way out is through.\n" ..
  "\n" ..
  "To continue the DOOM experience, play\n" ..
  "The Shores of Hell and its amazing\n" ..
  "sequel, Inferno!\n"

strings['E2TEXT'] =
  "You've done it! The hideous cyber-\n" ..
  "demon lord that ruled the lost Deimos\n" ..
  "moon base has been slain and you\n" ..
  "are triumphant! But ... where are\n" ..
  "you? You clamber to the edge of the\n" ..
  "moon and look down to see the awful\n" ..
  "truth.\n"  ..
  "\n" ..
  "Deimos floats above Hell itself!\n" ..
  "You've never heard of anyone escaping\n" ..
  "from Hell, but you'll make the bastards\n" ..
  "sorry they ever heard of you! Quickly,\n" ..
  "you rappel down to  the surface of\n" ..
  "Hell.\n" ..
  "\n"  ..
  "Now, it's on to the final chapter of\n" ..
  "DOOM! -- Inferno."

strings['E3TEXT'] =
  "The loathsome spiderdemon that\n" ..
  "masterminded the invasion of the moon\n" ..
  "bases and caused so much death has had\n" ..
  "its ass kicked for all time.\n" ..
  "\n" ..
  "A hidden doorway opens and you enter.\n" ..
  "You've proven too tough for Hell to\n" ..
  "contain, and now Hell at last plays\n" ..
  "fair -- for you emerge from the door\n" ..
  "to see the green fields of Earth!\n" ..
  "Home at last.\n"  ..
  "\n" ..
  "You wonder what's been happening on\n" ..
  "Earth while you were battling evil\n" ..
  "unleashed. It's good that no Hell-\n" ..
  "spawn could have come through that\n" ..
  "door with you ..."

strings['E4TEXT'] =
  "the spider mastermind must have sent forth\n" ..
  "its legions of hellspawn before your\n" ..
  "final confrontation with that terrible\n" ..
  "beast from hell.  but you stepped forward\n" ..
  "and brought forth eternal damnation and\n" ..
  "suffering upon the horde as a true hero\n" ..
  "would in the face of something so evil.\n" ..
  "\n" ..
  "besides, someone was gonna pay for what\n" ..
  "happened to daisy, your pet rabbit.\n" ..
  "\n" ..
  "but now, you see spread before you more\n" ..
  "potential pain and gibbitude as a nation\n" ..
  "of demons run amok among our cities.\n" ..
  "\n" ..
  "next stop, hell on earth!"

-- after level 6, put this:

strings['C1TEXT'] =
  "YOU HAVE ENTERED DEEPLY INTO THE INFESTED\n" ..
  "STARPORT. BUT SOMETHING IS WRONG. THE\n" ..
  "MONSTERS HAVE BROUGHT THEIR OWN REALITY\n" ..
  "WITH THEM, AND THE STARPORT'S TECHNOLOGY\n" ..
  "IS BEING SUBVERTED BY THEIR PRESENCE.\n" ..
  "\n" ..
  "AHEAD, YOU SEE AN OUTPOST OF HELL, A\n" ..
  "FORTIFIED ZONE. IF YOU CAN GET PAST IT,\n" ..
  "YOU CAN PENETRATE INTO THE HAUNTED HEART\n" ..
  "OF THE STARBASE AND FIND THE CONTROLLING\n" ..
  "SWITCH WHICH HOLDS EARTH'S POPULATION\n" ..
  "HOSTAGE."

-- After level 11, put this:

strings['C2TEXT'] =
  "YOU HAVE WON! YOUR VICTORY HAS ENABLED\n"  ..
  "HUMANKIND TO EVACUATE EARTH AND ESCAPE\n" ..
  "THE NIGHTMARE.  NOW YOU ARE THE ONLY\n" ..
  "HUMAN LEFT ON THE FACE OF THE PLANET.\n" ..
  "CANNIBAL MUTATIONS, CARNIVOROUS ALIENS,\n" ..
  "AND EVIL SPIRITS ARE YOUR ONLY NEIGHBORS.\n" ..
  "YOU SIT BACK AND WAIT FOR DEATH, CONTENT\n" ..
  "THAT YOU HAVE SAVED YOUR SPECIES.\n" ..
  "\n" ..
  "BUT THEN, EARTH CONTROL BEAMS DOWN A\n" ..
  "MESSAGE FROM SPACE: \"SENSORS HAVE LOCATED\n" ..
  "THE SOURCE OF THE ALIEN INVASION. IF YOU\n" ..
  "GO THERE, YOU MAY BE ABLE TO BLOCK THEIR\n" ..
  "ENTRY.  THE ALIEN BASE IS IN THE HEART OF\n" ..
  "YOUR OWN HOME CITY, NOT FAR FROM THE\n" ..
  "STARPORT.\" SLOWLY AND PAINFULLY YOU GET\n" ..
  "UP AND RETURN TO THE FRAY."

-- After level 20, put this:

strings['C3TEXT'] =
  "YOU ARE AT THE CORRUPT HEART OF THE CITY,\n" ..
  "SURROUNDED BY THE CORPSES OF YOUR ENEMIES.\n" ..
  "YOU SEE NO WAY TO DESTROY THE CREATURES'\n" ..
  "ENTRYWAY ON THIS SIDE, SO YOU CLENCH YOUR\n" ..
  "TEETH AND PLUNGE THROUGH IT.\n" ..
  "\n" ..
  "THERE MUST BE A WAY TO CLOSE IT ON THE\n" ..
  "OTHER SIDE. WHAT DO YOU CARE IF YOU'VE\n" ..
  "GOT TO GO THROUGH HELL TO GET TO IT?"

-- After level 29, put this:

strings['C4TEXT'] =
  "THE HORRENDOUS VISAGE OF THE BIGGEST\n" ..
  "DEMON YOU'VE EVER SEEN CRUMBLES BEFORE\n" ..
  "YOU, AFTER YOU PUMP YOUR ROCKETS INTO\n" ..
  "HIS EXPOSED BRAIN. THE MONSTER SHRIVELS\n" ..
  "UP AND DIES, ITS THRASHING LIMBS\n" ..
  "DEVASTATING UNTOLD MILES OF HELL'S\n" ..
  "SURFACE.\n" ..
  "\n" ..
  "YOU'VE DONE IT. THE INVASION IS OVER.\n" ..
  "EARTH IS SAVED. HELL IS A WRECK. YOU\n" ..
  "WONDER WHERE BAD FOLKS WILL GO WHEN THEY\n" ..
  "DIE, NOW. WIPING THE SWEAT FROM YOUR\n" ..
  "FOREHEAD YOU BEGIN THE LONG TREK BACK\n" ..
  "HOME. REBUILDING EARTH OUGHT TO BE A\n" ..
  "LOT MORE FUN THAN RUINING IT WAS.\n"

-- Before level 31, put this:

strings['C5TEXT'] =
  "CONGRATULATIONS, YOU'VE FOUND THE SECRET\n" ..
  "LEVEL! LOOKS LIKE IT'S BEEN BUILT BY\n" ..
  "HUMANS, RATHER THAN DEMONS. YOU WONDER\n" ..
  "WHO THE INMATES OF THIS CORNER OF HELL\n" ..
  "WILL BE."

-- Before level 32, put this:

strings['C6TEXT'] =
  "CONGRATULATIONS, YOU'VE FOUND THE\n" ..
  "SUPER SECRET LEVEL!  YOU'D BETTER\n" ..
  "BLAZE THROUGH THIS ONE!\n"

-- after map 06	

strings['P1TEXT'] =
  "You gloat over the steaming carcass of the\n" ..
  "Guardian.  With its death, you've wrested\n" ..
  "the Accelerator from the stinking claws\n" ..
  "of Hell.  You relax and glance around the\n" ..
  "room.  Damn!  There was supposed to be at\n" ..
  "least one working prototype, but you can't\n" ..
  "see it. The demons must have taken it.\n" ..
  "\n" ..
  "You must find the prototype, or all your\n" ..
  "struggles will have been wasted. Keep\n" ..
  "moving, keep fighting, keep killing.\n" ..
  "Oh yes, keep living, too."

-- after map 11

strings['P2TEXT'] =
  "Even the deadly Arch-Vile labyrinth could\n" ..
  "not stop you, and you've gotten to the\n" ..
  "prototype Accelerator which is soon\n" ..
  "efficiently and permanently deactivated.\n" ..
  "\n" ..
  "You're good at that kind of thing."

-- after map 20

strings['P3TEXT'] =
  "You've bashed and battered your way into\n" ..
  "the heart of the devil-hive.  Time for a\n" ..
  "Search-and-Destroy mission, aimed at the\n" ..
  "Gatekeeper, whose foul offspring is\n" ..
  "cascading to Earth.  Yeah, he's bad. But\n" ..
  "you know who's worse!\n" ..
  "\n" ..
  "Grinning evilly, you check your gear, and\n" ..
  "get ready to give the bastard a little Hell\n" ..
  "of your own making!"

-- after map 30

strings['P4TEXT'] =
  "The Gatekeeper's evil face is splattered\n" ..
  "all over the place.  As its tattered corpse\n" ..
  "collapses, an inverted Gate forms and\n" ..
  "sucks down the shards of the last\n" ..
  "prototype Accelerator, not to mention the\n" ..
  "few remaining demons.  You're done. Hell\n" ..
  "has gone back to pounding bad dead folks \n" ..
  "instead of good live ones.  Remember to\n" ..
  "tell your grandkids to put a rocket\n" ..
  "launcher in your coffin. If you go to Hell\n" ..
  "when you die, you'll need it for some\n" ..
  "final cleaning-up ..."

-- before map 31

strings['P5TEXT'] =
  "You've found the second-hardest level we\n" ..
  "got. Hope you have a saved game a level or\n" ..
  "two previous.  If not, be prepared to die\n" ..
  "aplenty. For master marines only."

-- before map 32

strings['P6TEXT'] =
  "Betcha wondered just what WAS the hardest\n" ..
  "level we had ready for ya?  Now you know.\n" ..
  "No one gets out alive."

strings['T1TEXT'] =
  "You've fought your way out of the infested\n" ..
  "experimental labs.   It seems that UAC has\n" ..
  "once again gulped it down.  With their\n" ..
  "high turnover, it must be hard for poor\n" ..
  "old UAC to buy corporate health insurance\n" ..
  "nowadays..\n" ..
  "\n" ..
  "Ahead lies the military complex, now\n" ..
  "swarming with diseased horrors hot to get\n" ..
  "their teeth into you. With luck, the\n" ..
  "complex still has some warlike ordnance\n" ..
  "laying around."

strings['T2TEXT'] =
  "You hear the grinding of heavy machinery\n" ..
  "ahead.  You sure hope they're not stamping\n" ..
  "out new hellspawn, but you're ready to\n" ..
  "ream out a whole herd if you have to.\n" ..
  "They might be planning a blood feast, but\n" ..
  "you feel about as mean as two thousand\n" ..
  "maniacs packed into one mad killer.\n" ..
  "\n" ..
  "You don't plan to go down easy."

strings['T3TEXT'] =
  "The vista opening ahead looks real damn\n" ..
  "familiar. Smells familiar, too -- like\n" ..
  "fried excrement. You didn't like this\n" ..
  "place before, and you sure as hell ain't\n" ..
  "planning to like it now. The more you\n" ..
  "brood on it, the madder you get.\n" ..
  "Hefting your gun, an evil grin trickles\n" ..
  "onto your face. Time to take some names."

strings['T4TEXT'] =
  "Suddenly, all is silent, from one horizon\n" ..
  "to the other. The agonizing echo of Hell\n" ..
  "fades away, the nightmare sky turns to\n" ..
  "blue, the heaps of monster corpses start \n" ..
  "to evaporate along with the evil stench \n" ..
  "that filled the air. Jeeze, maybe you've\n" ..
  "done it. Have you really won?\n" ..
  "\n" ..
  "Something rumbles in the distance.\n" ..
  "A blue light begins to glow inside the\n" ..
  "ruined skull of the demon-spitter."

strings['T5TEXT'] =
  "What now? Looks totally different. Kind\n" ..
  "of like King Tut's condo. Well,\n" ..
  "whatever's here can't be any worse\n" ..
  "than usual. Can it?  Or maybe it's best\n" ..
  "to let sleeping gods lie.."

strings['T6TEXT'] =
  "Time for a vacation. You've burst the\n" ..
  "bowels of hell and by golly you're ready\n" ..
  "for a break. You mutter to yourself,\n" ..
  "Maybe someone else can kick Hell's ass\n" ..
  "next time around. Ahead lies a quiet town,\n" ..
  "with peaceful flowing water, quaint\n" ..
  "buildings, and presumably no Hellspawn.\n" ..
  "\n" ..
  "As you step off the transport, you hear\n" ..
  "the stomp of a cyberdemon's iron shoe."

--
-- Character cast strings F_FINALE.C
--
strings['CC_ZOMBIE'] = "ZOMBIEMAN"
strings['CC_SHOTGUN'] = "SHOTGUN GUY"
strings['CC_HEAVY'] = "HEAVY WEAPON DUDE"
strings['CC_IMP'] = "IMP"
strings['CC_DEMON'] = "DEMON"
strings['CC_LOST'] = "LOST SOUL"
strings['CC_CACO'] = "CACODEMON"
strings['CC_HELL'] = "HELL KNIGHT"
strings['CC_BARON'] = "BARON OF HELL"
strings['CC_ARACH'] = "ARACHNOTRON"
strings['CC_PAIN'] = "PAIN ELEMENTAL"
strings['CC_REVEN'] = "REVENANT"
strings['CC_MANCU'] = "MANCUBUS"
strings['CC_ARCH'] = "ARCH-VILE"
strings['CC_SPIDER'] = "THE SPIDER MASTERMIND"
strings['CC_CYBER'] = "THE CYBERDEMON"
strings['CC_HERO'] = "OUR HERO"

return strings
