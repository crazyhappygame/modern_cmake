#!/bin/bash

# exit this script if any commmand fails
set -e
set -x

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
COCOS2DX_ROOT="$DIR"/../..
CPU_CORES=4

function build_linux()
{
    echo "Building tests ..."
    echo $TRAVIS_BUILD_DIR
    mkdir -p $COCOS2DX_ROOT/build
    cd $COCOS2DX_ROOT/build
    cmake ..
    cmake --build .
}


build_linux
