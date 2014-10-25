set(OPL_LIBRARY opl)
file(GLOB OPL_HEADERS *.h)
file(GLOB OPL_SOURCES *.c)

add_library(${OPL_LIBRARY} STATIC ${OPL_SOURCES} ${OPL_HEADERS})
target_link_libraries(${OPL_LIBRARY} ${SDL_LIBRARY})
target_link_libraries(${OPL_LIBRARY} ${SDLMIXER_LIBRARY})
