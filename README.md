1. Source code for all external dependecies for all platforms 
2. Use moder cmake target_*If external projec support cmake use it 
# create library
file(GLOB_RECURSE SOURCES Box2D/*.cpp)
add_library(Box2D ${SOURCES})
target_compile_features(Box2D PUBLIC cxx_std_11)
target_include_directories(Box2D PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

# use library
target_link_libraries(game2 Box2D)
4. setup CI for all platforms
 