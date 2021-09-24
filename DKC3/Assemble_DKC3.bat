@echo off

set PATH="../Global"
set Input1=
set asarVer=asar
set GAMDID="DKC3"
set ROMVer=
set ROMExt=.sfc
set HackCheck=""
set HackName=""

setlocal EnableDelayedExpansion

echo Enter the ROM version you want to assemble.
echo Valid options: "DKC3_U" "DKC3_E" "DKC3_J1" "DKC3_J2"
echo For custom ROM versions, use "HACK_<HackName>, where <HackName> is the rest of the custom ROM Map file's name before the extension."

:Input
set /p Input1="%Input1%"
set HackCheck=%Input1:~0,5%
if "%Input1%" equ "" goto :Exit
if "%HackCheck%" equ "HACK_" goto :Hack
if "%Input1%" equ "DKC3_U" goto :USA
if "%Input1%" equ "DKC3_E" goto :PAL
if "%Input1%" equ "DKC3_J1" goto :Japan1
if "%Input1%" equ "DKC3_J2" goto :Japan2

echo. "%Input1%" is not a valid ROM version.
set Input1=
goto :Input

:Hack
set ROMNAME=%Input1:~5,100%
set ROMVer=(Hack)
goto :Assemble

:USA
set ROMVer=(USA)
set ROMNAME=Donkey Kong Country 3 - Dixie Kong's Double Trouble^^!
goto :Assemble

:PAL
set ROMVer=(Europe)
set ROMNAME=Donkey Kong Country 3 - Dixie Kong's Double Trouble^^!
goto :Assemble

:Japan1
set ROMVer=(Japan V1.0)
set ROMNAME=Super Donkey Kong 3 - Nazo no Kremis-tou
goto :Assemble

:Japan1
set ROMVer=(Japan V1.1)
set ROMNAME=Super Donkey Kong 3 - Nazo no Kremis-tou

:Assemble

set output="%ROMNAME% %ROMVer%%ROMExt%"

if exist %output% del %output%
echo Assembling "%ROMNAME% %ROMVer%%ROMExt%" ... this may take a minute.
echo.

%asarVer% --fix-checksum=on --define GameID="%GAMDID%" --define ROMID="%Input1%" --define FileType=0 ..\Global\AssembleFile.asm %output%

echo Assembling %ROMNAME% Initialize SPC700 code block...
%asarVer% --no-title-check --define GameID="%GAMDID%" --define ROMID="%Input1%" --define FileType=4 --define PathToFile="SPC700/InitializeSPC700.asm" ..\Global\AssembleFile.asm SPC700\InitializeSPC700.bin

echo Assembling %ROMNAME% SPC700 engine...
%asarVer% --no-title-check --define GameID="%GAMDID%" --define ROMID="%Input1%" --define FileType=4 --define PathToFile="SPC700/SPC700_Engine_%GAMDID%.asm" ..\Global\AssembleFile.asm SPC700\SPC700_Engine_%GAMDID%.bin

echo Assembling ROM...
%asarVer% --define GameID="%GAMDID%" --define ROMID="%Input1%" --define FileType=1 ..\Global\AssembleFile.asm %output%

if exist ..\%GAMDID%\Temp.txt del ..\%GAMDID%\Temp.txt
%asarVer% --define GameID="%GAMDID%" --define ROMID="%Input1%" --define FileType=6 ..\Global\AssembleFile.asm Temp.txt
for /f "delims=" %%x in (Temp.txt) do set Firmware=%%x
if "%Firmware%" equ "NULL" goto :NoFirmware
if exist %Firmware% goto :NoFirmware
if exist ..\Firmware\%Firmware% goto :CopyFirmware
goto :NoFirmware

:CopyFirmware
echo Copied %Firmware% to the disassembly folder
copy ..\Firmware\%Firmware% %Firmware%
:NoFirmware
if exist ..\%GAMDID%\Temp.txt del ..\%GAMDID%\Temp.txt

%asarVer% --define GameID="%GAMDID%" --define ROMID="%Input1%" --define FileType=2 ..\Global\AssembleFile.asm %output%

%asarVer% --fix-checksum=off --define GameID="%GAMDID%" --define ROMID="%Input1%" --define FileType=3 ..\Global\AssembleFile.asm %output%

echo Cleaning up...
if exist ..\%GAMDID%\SPC700\InitializeSPC700.bin del ..\%GAMDID%\SPC700\InitializeSPC700.bin
if exist ..\%GAMDID%\SPC700\SPC700_Engine_%GAMDID%.bin del ..\%GAMDID%\SPC700\SPC700_Engine_%GAMDID%.bin

echo.
echo Done^^!
echo.
echo Press Enter to re-assemble the chosen ROM.
goto :Input

:Exit
exit
