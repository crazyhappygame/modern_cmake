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

function android_game12()
{
    source ../environment.sh

    cd $COCOS2DX_ROOT/game1/android
    ./gradlew assembleRelease

    cd $COCOS2DX_ROOT/game2/android
    ./gradlew assembleRelease
}

function build_ios()
{
    cmake --version
    mkdir -p $COCOS2DX_ROOT/build_ios
    cd $COCOS2DX_ROOT/build_ios
    cmake .. -GXcode -DCMAKE_TOOLCHAIN_FILE=../tools/ios.toolchain.cmake -DIOS_ARCH=arm64
    cmake --build .
}

if [ "$BUILD_TARGET" == "ios_build" ]; then
    build_ios
    exit 0
fi

if [ "$BUILD_TARGET" == "android_armeabi" ]; then
    build_android_armeabi
    exit 0
fi

if [ "$BUILD_TARGET" == "android_game12" ]; then
    android_game12
    exit 0
fi

build_linux
