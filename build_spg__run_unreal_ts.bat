echo off

cd /D %~dp0

if not exist "bin" mkdir "bin"

if exist "bin\.build-succeeded" del "bin\.build-succeeded"
if exist "bin\output.spg" del "bin\output.spg"
if exist "bin\output.sld.txt" del "bin\output.sld.txt"

echo on

c:\bitbucket\ssmirnov-dev\zx-spectrum\bin\sjasmplus-1.18.2.win\sjasmplus --fullpath --sld --msg=war build_spg.asm

if exist "bin\.build-succeeded" tools\spgbld.exe -b build_spg.ini bin\output.spg -c 0

echo off

move build_spg.sld.txt bin\output.sld.txt > nul

if exist "bin\output.spg" (
    start "UnrealSpeccy" c:\bitbucket\ssmirnov-dev\zx-spectrum\bin\unreal-0.37.9-ts\unreal.exe bin\output.spg
    resize_unreal_ts_spg.bat
)

echo on



