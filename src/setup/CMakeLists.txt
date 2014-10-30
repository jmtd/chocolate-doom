set(SETUP_BINARY luadoom-setup)
file(GLOB SETUP_HEADERS *.h)
file(GLOB SETUP_SOURCES *.c)
list(APPEND SETUP_SOURCES
  ../d_iwad.c ../d_mode.c ../deh_str.c ../i_main.c ../i_system.c ../i_timer.c
  ../m_argv.c ../m_config.c ../m_controls.c ../m_misc.c ../net_io.c
  ../net_packet.c ../net_query.c ../net_sdl.c ../net_structrw.c ../z_zone.c)

include_directories(..)
include_directories(../../textscreen)

if(APPLE)
  list(APPEND SETUP_HEADERS ../osx/SDLmain.h)
  list(APPEND SETUP_SOURCES ../osx/SDLmain.m)
endif()

add_executable(${SETUP_BINARY} WIN32
  ${SETUP_SOURCES} ${SETUP_HEADERS})
target_link_libraries(${SETUP_BINARY} ${SDL_LIBRARY})
target_link_libraries(${SETUP_BINARY} ${SDLMIXER_LIBRARY})
target_link_libraries(${SETUP_BINARY} ${SDLNET_LIBRARY})
target_link_libraries(${SETUP_BINARY} textscreen)
