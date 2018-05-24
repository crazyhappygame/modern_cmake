Set-PSDebug -Trace 1
$python = "C:\\Python27\\python.exe"

function Update-SubModule
{
    Push-Location $env:APPVEYOR_BUILD_FOLDER
    & git submodule init
    & git submodule update --recursive --depth=1
    Pop-Location
}

# Update-SubModule

# Download-Deps

# mkdir $env:APPVEYOR_BUILD_FOLDER\build
# if ($lastexitcode -ne 0) {throw}
# Push-Location $env:APPVEYOR_BUILD_FOLDER\build
# & cmake ..
# if ($lastexitcode -ne 0) {throw}
# & cmake --build .
# if ($lastexitcode -ne 0) {throw}
# Pop-Location
