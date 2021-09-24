@echo off
setlocal EnableDelayedExpansion

set PATH="../../Global"

asar.exe DisassembleSpriteSpawnScript.asm DKC3.sfc > output1.asm

pause
exit