@echo off
rem =========================================
rem  build.bat – Robokill  (debug / release)
rem =========================================
setlocal enabledelayedexpansion

pushd "%~dp0.."

set "MODE=release"
if /I "%~1"=="debug"   set "MODE=debug"
if /I "%~1"=="release" set "MODE=release"

if not "%~1"=="" (
    if /I not "%MODE%"=="%~1" (
        echo Usage:  build [debug^|release]
        goto :eof
    )
)

for %%I in ("%~dp0..") do set "PROJECT_ROOT=%%~fI"
set "FLEX_SDK=deps\apache-flex-sdk-4.16.1-bin"
set "PLAYERGLOBAL_HOME=%PROJECT_ROOT%\deps\playerglobal"
set "FLASH_PROJECTOR_RELEASE=deps\flash-bin\flashplayer_32_sa.exe"
set "FLASH_PROJECTOR_DEBUG=deps\flash-bin\flashplayer_32_sa_debug.exe"
set "MAIN_CLASS=src\Main.as"
set "TARGET_PLAYER=27.0"
set "OUTPUT_DIR=build"

if /I "%MODE%"=="debug" (
    set "FLASH_PROJECTOR=%FLASH_PROJECTOR_DEBUG%"
    set "DEBUG_FLAG=-debug=true"
    set "OPT_FLAG=-optimize=false"
    set "OUT_SUFFIX=-debug"
) else (
    set "FLASH_PROJECTOR=%FLASH_PROJECTOR_RELEASE%"
    set "DEBUG_FLAG="
    set "OPT_FLAG=-optimize=true"
    set "OUT_SUFFIX="
)

set "OUTPUT_SWF=%OUTPUT_DIR%\robokill%OUT_SUFFIX%.swf"
set "OUTPUT_EXE=%OUTPUT_DIR%\robokill%OUT_SUFFIX%.exe"

if not exist "%OUTPUT_DIR%" mkdir "%OUTPUT_DIR%"

echo [1/2] Compiling %MODE% SWF ... 
CALL "%FLEX_SDK%\bin\mxmlc" ^
    -source-path+=src ^
    -default-size 800 600 ^
    -default-frame-rate 100 ^
    -static-link-runtime-shared-libraries=true ^
    -target-player=%TARGET_PLAYER% ^
    -swf-version=27 ^
    %DEBUG_FLAG% %OPT_FLAG% ^
    -output "%OUTPUT_SWF%" ^
    "%MAIN_CLASS%"

if %ERRORLEVEL% GEQ 1 (
    echo *** Build failed - see errors above. ***
    goto :eof
)

echo [2/2] Bundling projector EXE ...
copy /B /Y "%FLASH_PROJECTOR%" + "%OUTPUT_SWF%" "%OUTPUT_EXE%" >nul

echo.
echo Build (%MODE%) succeeded:
echo    - %OUTPUT_SWF%
echo    - %OUTPUT_EXE%
endlocal