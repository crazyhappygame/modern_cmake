#!/bin/bash

# exit this script if any commmand fails
set -e
set -x

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
COCOS2DX_ROOT="$DIR"/../..

function build_linux()
{
    echo "Building  ..."
    echo $TRAVIS_BUILD_DIR
    mkdir -p $COCOS2DX_ROOT/build
    cd $COCOS2DX_ROOT/build
    cmake ..
    cmake --build .
}

function build_android_armeabi()
{
    source ../environment.sh

    echo "Building build_android_armeabi ..."
    echo $TRAVIS_BUILD_DIR

    mkdir -p $COCOS2DX_ROOT/build
    cd $COCOS2DX_ROOT/build
    cmake .. -DCMAKE_TOOLCHAIN_FILE=$COCOS2DX_ROOT/tools/android_arm_toolchain.cmake -G Ninja
    cmake --build .
}


if [ "$BUILD_TARGET" == "android_armeabi" ]; then
    build_android_armeabi
    exit 0
fi

build_linux
