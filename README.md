
![Build status](https://travis-ci.org/crazyhappygame/modern_cmake.svg?branch=master)

![Build status](https://ci.appveyor.com/api/projects/status/c28chdikeqjxvggi?svg=true)


# Source code for all external dependecies and for all platforms
# Use modern cmake (target_*)
Example:
```
# create library
add_library(Box2D file.cpp)
target_compile_features(Box2D PUBLIC cxx_std_11)
target_include_directories(Box2D PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

# use library
target_link_libraries(game2 Box2D)
```
# setup CI for all platforms
