find_package(SDL_net)
include_directories(${SDLNET_INCLUDE_DIR})

add_subdirectory(setup)

set(LUADOOM_BINARY luadoom)
file(GLOB LUADOOM_HEADERS *.h)
file(GLOB LUADOOM_SOURCES *.c)
list(REMOVE_ITEM LUADOOM_SOURCES ${CMAKE_SOURCE_DIR}/src/d_dedicated.c)
list(REMOVE_ITEM LUADOOM_SOURCES ${CMAKE_SOURCE_DIR}/src/z_native.c)

set(DOOM_DIR doom)
file(GLOB DOOM_HEADERS ${DOOM_DIR}/*.h)
file(GLOB DOOM_SOURCES ${DOOM_DIR}/*.c)

include_directories(.)
include_directories(${DOOM_DIR})
include_directories(../lua)
include_directories(../opl)
include_directories(../pcsound)
include_directories(../textscreen)

if(APPLE)
  list(APPEND LUADOOM_HEADERS osx/SDLmain.h)
  list(APPEND LUADOOM_SOURCES osx/SDLmain.m)
  include_directories(osx)
endif()

add_definitions(${SHARED_CFLAGS})

add_executable(${LUADOOM_BINARY} WIN32
  ${LUADOOM_SOURCES} ${LUADOOM_HEADERS}
  ${DOOM_SOURCES} ${DOOM_HEADERS})
target_link_libraries(${LUADOOM_BINARY} ${SDL_LIBRARY})
target_link_libraries(${LUADOOM_BINARY} ${SDLMIXER_LIBRARY})
target_link_libraries(${LUADOOM_BINARY} ${SDLNET_LIBRARY})
target_link_libraries(${LUADOOM_BINARY} lua53)
target_link_libraries(${LUADOOM_BINARY} opl)
target_link_libraries(${LUADOOM_BINARY} pcsound)
target_link_libraries(${LUADOOM_BINARY} textscreen)

# Copy over lua files upon compile, not upon generation
file(GLOB LUADOOM_LUA_SOURCES doom_lua/*.lua)
foreach(_infile ${LUADOOM_LUA_SOURCES})
  get_filename_component(_outfile ${_infile} NAME)
  set(_outfile "${CMAKE_CURRENT_BINARY_DIR}/${_outfile}")
  add_custom_command(
    OUTPUT ${_outfile}
    COMMAND ${CMAKE_COMMAND} -E copy ${_infile} ${_outfile}
    MAIN_DEPENDENCY ${_infile})
  list(APPEND LUADOOM_LUA_COPIED_SOURCES ${_outfile})
endforeach()

add_custom_target(luadoom-lua DEPENDS ${LUADOOM_LUA_COPIED_SOURCES})
add_dependencies(${LUADOOM_BINARY} luadoom-lua)
