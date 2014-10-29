cmake_minimum_required(VERSION 2.8)

project("LUADoom")

if(MSVC)
  set(SHARED_CFLAGS "/D _CRT_NONSTDC_NO_DEPRECATE /D _CRT_SECURE_NO_WARNINGS")
else()
  set(SHARED_CFLAGS "-Wall -Wdeclaration-after-statement -Wredundant-decls")
endif()

find_package(SDL)
include_directories(${SDL_INCLUDE_DIR})

find_package(SDL_mixer)
include_directories(${SDLMIXER_INCLUDE_DIR})

add_subdirectory(lua)
add_subdirectory(opl)
add_subdirectory(pcsound)
add_subdirectory(textscreen)
add_subdirectory(src)
