@echo off
setlocal EnableDelayedExpansion

set PATH="../../Global"

asar.exe --fix-checksum=off --no-title-check ExtractOAMData.asm DKC3.sfc > output1.asm

pause
asar.exe --fix-checksum=off --no-title-check output1.asm DKC3.sfc > output2.asm

pause
exit