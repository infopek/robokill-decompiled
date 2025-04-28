@echo off
rem =========================================================
rem  test.bat - build in DEBUG mode and run it immediately
rem  (uses the same folders & projector paths as build.bat)
rem =========================================================
setlocal

pushd "%~dp0.."

call scripts\compile.bat debug
if errorlevel 1 (
    echo.
    echo *** Compile failed - aborting launch. ***
    goto :end
)

set "SWF=build\robokill-debug.swf"
set "PLAYER=deps\flash-bin\flashplayer_32_sa_debug.exe"

if not exist "%PLAYER%" (
    echo *** Debug projector not found: %PLAYER%
    goto :end
)

if not exist "%SWF%" (
    echo *** SWF not found: %SWF%
    goto :end
)

echo.
echo Launching %SWF% ...
start "" "%PLAYER%" "%SWF%"

:end
popd
endlocal