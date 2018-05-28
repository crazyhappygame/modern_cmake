cmake_minimum_required(VERSION 3.6)
project(game1)

if(${CMAKE_SYSTEM_NAME} MATCHES "Android")
    add_library(game1 SHARED
        android/app/src/main/cpp/hello-jni.c)
    target_link_libraries(game1 android log engine)
else()
    add_executable(game1 main.cpp)
    target_link_libraries(game1 engine)
endif()
