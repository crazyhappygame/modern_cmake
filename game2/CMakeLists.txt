cmake_minimum_required(VERSION 3.6)
project(game2)

if(${CMAKE_SYSTEM_NAME} MATCHES "Android")
    add_library(game2 SHARED
        android/app/src/main/cpp/hello-jni.c)
    target_link_libraries(game2 android log engine)
else()
    add_executable(game2 main.cpp)
    target_link_libraries(game2 engine)
endif()
