file(GLOB_RECURSE SOURCES *.cpp)
add_executable(game2 ${SOURCES})

target_link_libraries(game2 engine)
