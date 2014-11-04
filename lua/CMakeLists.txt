set(CORE_SOURCES lapi.c lcode.c lctype.c ldebug.c ldo.c ldump.c lfunc.c
  lgc.c llex.c lmem.c lobject.c lopcodes.c lparser.c lstate.c lstring.c
  ltable.c ltm.c lundump.c lvm.c lzio.c)
set(LIB_SOURCES lauxlib.c lbaselib.c lbitlib.c lcorolib.c ldblib.c
  liolib.c lmathlib.c loslib.c lstrlib.c ltablib.c lutf8lib.c loadlib.c
  linit.c)

set(LUA_LIBRARY lua53)
add_library(${LUA_LIBRARY} STATIC ${CORE_SOURCES} ${LIB_SOURCES})
