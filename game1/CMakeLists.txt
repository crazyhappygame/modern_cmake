file(GLOB_RECURSE SOURCES *.cpp)
add_executable(game1 ${SOURCES})

target_link_libraries(game1 engine)
