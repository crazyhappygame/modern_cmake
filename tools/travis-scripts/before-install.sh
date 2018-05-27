#!/bin/bash

# exit this script if any commmand fails
set -e
set -x

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
COCOS2DX_ROOT="$DIR"/../..


if [ "$BUILD_TARGET" == "android_armeabi" ]; then
    python $COCOS2DX_ROOT/tools/appveyor-scripts/setup_android.py --ndk_only
fi


echo "before-install.sh execution finished!"
