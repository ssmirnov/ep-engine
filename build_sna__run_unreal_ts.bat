echo off

cd /D %~dp0

if not exist "bin" mkdir "bin"

if exist "bin\output.sna" del "bin\output.sna"
if exist "bin\output.sld.txt" del "bin\output.sld.txt"

echo on

c:\bitbucket\ssmirnov-dev\zx-spectrum\bin\sjasmplus-1.18.2.win\sjasmplus --fullpath --sld --msg=war build_sna.asm

echo off

move build_sna.sld.txt bin\output.sld.txt > nul

if exist "bin\output.sna" (
    start "UnrealSpeccy" c:\bitbucket\ssmirnov-dev\zx-spectrum\bin\unreal-0.37.9-ts\unreal.exe bin\output.sna
    resize_unreal_ts_sna.bat
)

echo on



