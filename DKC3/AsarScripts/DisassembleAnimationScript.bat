@echo off
setlocal EnableDelayedExpansion

set PATH="../../Global"

asar.exe DisassembleAnimationScript.asm DKC3.sfc > output1.asm

pause
exit