Set-PSDebug -Trace 1

$env:ANDROID_NDK_HOME=$env:APPVEYOR_BUILD_FOLDER + "\..\android-ndk-r16b"
$env:NDK_ROOT=$env:APPVEYOR_BUILD_FOLDER + "\..\android-ndk-r16b"
$env:ANDROID_NDK_ROOT=$env:APPVEYOR_BUILD_FOLDER + "\..\android-ndk-r16b"

If ($env:build_type -eq "android_armeabi") {
    & mkdir $env:APPVEYOR_BUILD_FOLDER\build
    # if ($lastexitcode -ne 0) {throw}
    Push-Location $env:APPVEYOR_BUILD_FOLDER\build
    & cmake .. -DCMAKE_ANDROID_STANDALONE_TOOLCHAIN=$env:APPVEYOR_BUILD_FOLDER\tools\android_arm_toolchain.cmake
    & cmake .. -DCMAKE_TOOLCHAIN_FILE=$env:APPVEYOR_BUILD_FOLDER\tools\android_arm_toolchain.cmake -G Ninja
    if ($lastexitcode -ne 0) {throw}
    & cmake --build .
    if ($lastexitcode -ne 0) {throw}
    Pop-Location
} Else {
    & mkdir $env:APPVEYOR_BUILD_FOLDER\build
    # if ($lastexitcode -ne 0) {throw}
    Push-Location $env:APPVEYOR_BUILD_FOLDER\build
    & cmake ..
    if ($lastexitcode -ne 0) {throw}
    & cmake --build .
    if ($lastexitcode -ne 0) {throw}
    Pop-Location
    
}




