add_library(external empty.cpp)

add_subdirectory(Box2D)
add_subdirectory(recast)

target_link_libraries(external Box2D recast)