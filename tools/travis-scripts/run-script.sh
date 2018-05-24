#!/bin/bash

# exit this script if any commmand fails
set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
COCOS2DX_ROOT="$DIR"/../..
CPU_CORES=4

function build_linux()
{
    echo "Building tests ..."
    cd $COCOS2DX_ROOT/build
    mkdir -p build
    cd build
    cmake ..
    cmake --build .
}


build_linux
