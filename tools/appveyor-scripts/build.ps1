Set-PSDebug -Trace 1

mkdir $env:APPVEYOR_BUILD_FOLDER\build
if ($lastexitcode -ne 0) {throw}
Push-Location $env:APPVEYOR_BUILD_FOLDER\build
& cmake ..
if ($lastexitcode -ne 0) {throw}
& cmake --build .
if ($lastexitcode -ne 0) {throw}
Pop-Location

