echo off

cd /D %~dp0

if not exist "bin" mkdir "bin"

if exist "bin\output.nex" del "bin\output.nex"
if exist "bin\output.sld.txt" del "bin\output.sld.txt"

echo on

c:\bitbucket\ssmirnov-dev\zx-spectrum\bin\sjasmplus-1.18.2.win\sjasmplus --fullpath --sld --msg=war --zxnext=cspect build_nex.asm

echo off

move build_nex.sld.txt bin\output.sld.txt > nul

if exist "bin\output.nex" (
    cd bin
        start c:\bitbucket\ssmirnov-dev\zx-spectrum\bin\CSpect2_19_0_3\CSpect.exe -w2 -vsync -zxnext -brk -mmc=.\ output.nex
    rem start ..\..\..\bin\CSpect2_19_0_3\CSpect.exe -w2 -vsync -zxnext -remote -brk -mmc=.\ output.nex
    rem start ..\..\..\bin\CSpect2_19_0_3\CSpect.exe -w2 -vsync -zxnext -remote -brk -mmc=.\ DMAtest.nex
    rem start ..\..\..\bin\CSpect2_19_0_3\CSpect.exe -w2 -vsync -zxnext -remote -brk -mmc=.\ flipULA2.nex
    cd ..\
    resize_cspect_nex.bat
)

echo on

