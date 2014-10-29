find_package(SDL_net)
include_directories(${SDLNET_INCLUDE_DIR})

add_subdirectory(setup)

set(LUADOOM_BINARY luadoom)
file(GLOB LUADOOM_HEADERS *.h)
file(GLOB LUADOOM_SOURCES *.c)
list(REMOVE_ITEM LUADOOM_SOURCES ${CMAKE_SOURCE_DIR}/src/d_dedicated.c)
list(REMOVE_ITEM LUADOOM_SOURCES ${CMAKE_SOURCE_DIR}/src/z_zone.c)

set(DOOM_DIR doom)
file(GLOB DOOM_HEADERS ${DOOM_DIR}/*.h)
file(GLOB DOOM_SOURCES ${DOOM_DIR}/*.c)

include_directories(.)
include_directories(${DOOM_DIR})
include_directories(../lua)
include_directories(../opl)
include_directories(../pcsound)
include_directories(../textscreen)

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
