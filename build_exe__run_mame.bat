echo off

cd /D %~dp0

if not exist "bin" mkdir "bin"
if not exist "obj" mkdir "obj"

if exist "bin\output.exe" del "bin\output.exe"
if exist "obj\.build-succeeded" del "obj\.build-succeeded"

c:\bitbucket\ssmirnov-dev\zx-spectrum\bin\sjasmplus-1.18.2.win\sjasmplus --fullpath --msg=war build_exe_1.asm

if exist "obj\.build-succeeded" (
c:\bitbucket\ssmirnov-dev\zx-spectrum\bin\sjasmplus-1.18.2.win\sjasmplus --fullpath --msg=war build_exe_2.asm
)

if exist "bin\output.exe" (
    copy bin\output.exe C:\Sprinter\0-fat\output.exe

    if exist "bin\bpx.ini" (
        c:\bitbucket\ssmirnov-dev\zx-spectrum\shared\netcore\ZXSpectrum.BpxToMAME\bin\Debug\net6.0\ZXSpectrum.BpxToMAME.exe bin\bpx.ini C:\Sprinter\mame-2023-05-02-RC3\debugscript.txt
        del "bin\bpx.ini"
    )

    cd C:\Sprinter\
    make_output_chd.bat > make.log

    cd C:\Sprinter\mame-2023-05-02-RC3

    rem Work, windowed
    if exist debugscript.txt (
        rem Debugger enabled
        start mame.exe sprinter -window -mouse_device none -skip_gameinfo -hard1 .\img\output.chd -nofilter -resolution 1472x576 -aspect 371:200 -debug -debugscript debugscript.txt
    ) else (
        rem Debugger disabled
        start mame.exe sprinter -window -mouse_device none -skip_gameinfo -hard1 .\img\output.chd -nofilter -resolution 1472x576 -aspect 371:200
    )

    rem Work, fullscreen
    rem start mame.exe sprinter -window -mouse_device none -skip_gameinfo -hard1 .\img\output.chd -aspect 371:200

    rem Home
    rem start mame.exe sprinter -window -mouse_device none -skip_gameinfo -hard1 .\img\output.chd -screen0 \\.\DISPLAY2
)

echo on



