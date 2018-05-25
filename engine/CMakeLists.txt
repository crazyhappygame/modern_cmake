add_library(engine engine/engine.cpp)
target_include_directories(engine PUBLIC .)

add_subdirectory(external)
target_link_libraries(engine external)
