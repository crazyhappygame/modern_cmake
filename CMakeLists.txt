# main cmake
cmake_minimum_required(VERSION 3.6)
project(modern_cmake)

#target_compile_features(engine PUBLIC cxx_std_11)
# global settings
set(CXX_STANDARD 11)
set(CXX_STANDARD_REQUIRED ON)
set(CXX_EXTENSIONS OFF)

add_subdirectory(engine)
add_subdirectory(game1)
add_subdirectory(game2)