file(GLOB_RECURSE SOURCES Box2D/*.cpp)

add_library(Box2D ${SOURCES})
target_compile_features(Box2D PUBLIC cxx_std_11)
target_include_directories(Box2D PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
