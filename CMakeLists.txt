cmake_minimum_required(VERSION 2.8)

project("LUADoom")

if(MSVC)
  set(SHARED_CFLAGS "/D _CRT_NONSTDC_NO_DEPRECATE /D _CRT_SECURE_NO_WARNINGS")
else()
  set(SHARED_CFLAGS "-Wall -Wdeclaration-after-statement -Wredundant-decls")
  if(APPLE)
    # Add default framework search paths.  Without these, framework versions
    # of SDL_mixer and SDL_net can't find SDL.
    list(APPEND SHARED_CFLAGS "-F~/Library/Frameworks" "-F/Library/Frameworks")
  endif()
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
