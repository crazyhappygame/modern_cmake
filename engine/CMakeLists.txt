file(GLOB_RECURSE SOURCES engine/*.cpp)
add_library(engine ${SOURCES})
target_include_directories(engine PUBLIC .)

add_subdirectory(external)
target_link_libraries(engine external)
