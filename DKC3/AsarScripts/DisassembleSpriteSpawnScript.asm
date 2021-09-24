@asar 1.81

; Modify these as needed
hirom						; The memory map of the ROM. Change this if the ROM uses a different memory map, or else the output may be wrong.
!ROMOffset = $FF49D6				; The ROM offset to begin disassembly from.
!DoTwoPassesFlag = 1				; If 1, the script will run twice, with the purpose of generating labels that appear before the branch that points to it. Turning this on may slow down disassembly speed, however.
!MaxBytes = 7768			; The maximum amount of bytes that will be read at a time. Setting this lower/higher will speed up/slow down disassembly.

; Don't touch these
!Input1 = $00
!Input2 = $00
!Output = ""
!ByteCounter = 0
!LoopCounter = 0
!Pass = 0
!CurrentOffset = 0

macro GetOpcode()
	!Input1 #= read1(!ROMOffset+!ByteCounter)
	;!Input1 #= !LoopCounter
	!ByteCounter #= !ByteCounter+1
	!CurrentOffset #= !ROMOffset+!ByteCounter
endmacro

macro readbyte(Input)
	!<Input> #= read1(!ROMOffset+!ByteCounter)
	;!<Input> = $01
	!ByteCounter #= !ByteCounter+1
	!CurrentOffset #= !ROMOffset+!ByteCounter
endmacro

macro readword(Input)
	!<Input> #= read2(!ROMOffset+!ByteCounter)
	;!<Input> = $0123
	!ByteCounter #= !ByteCounter+2
	!CurrentOffset #= !ROMOffset+!ByteCounter
endmacro

macro readlong(Input)
	!<Input> #= read3(!ROMOffset+!ByteCounter)
	;!<Input> = $012345
	!ByteCounter #= !ByteCounter+3
	!CurrentOffset #= !ROMOffset+!ByteCounter
endmacro

macro PrintLabel(Address)
if defined("ROM_<Address>") == 1
	if !ROM_<Address> == 1
		print ""
	endif
	print "DATA_",hex(!ROMOffset+!ByteCounter, 6),":"
endif
endmacro

macro DefineLabelAfterNoPassOpcode(Address)
	!ROM_<Address> = 1
endmacro

macro HandleJump(Address)
if defined("ROM_<Address>") == 0
	!ROM_<Address> = 0
endif
endmacro

macro Op0()
	%readword(Input2)
if !Pass == 1
	print "	%DKC3_SSS_OpXX($",hex(!Input1, 2),", $",hex(!Input2, 4),")"
endif
endmacro


macro Op239()
	%readbyte(Input1)
if !Pass == 1
	print "	%DKC3_SSS_OpEF()"
	if !Input1 == 0
		!CurrentOffset #= !CurrentOffset-1
		print ""
		print "	%FREE_BYTES($",hex(!CurrentOffset, 6),", 1, $00)"
		!CurrentOffset #= !CurrentOffset+1
	else
		!ByteCounter #= !ByteCounter-1
		!CurrentOffset #= !ROMOffset+!ByteCounter
	endif
endif
	%DefineLabelAfterNoPassOpcode(!CurrentOffset)
endmacro

macro Op240()
if !Pass == 1
	print "	%DKC3_SSS_OpF0()"
endif
	%DefineLabelAfterNoPassOpcode(!CurrentOffset)
endmacro

macro Op241()
	%readbyte(Input1)
	%readword(Input2)
if !Pass == 1
	print "	%DKC3_SSS_OpF1($",hex(!Input1, 2),", $",hex(!Input2, 4),")"
endif
endmacro

macro Op242()
	%readword(Input1)
if !Pass == 1
	print "	%DKC3_SSS_OpF2($",hex(!Input1, 4),")"
endif
endmacro

macro Op243()
	%readbyte(Input1)
	%readbyte(Input2)
if !Pass == 1
	print "	%DKC3_SSS_OpF3($",hex(!Input1, 2),", $",hex(!Input2, 2),")"
endif
endmacro

macro Op244()
	%readword(Input1)
	%readbyte(Input2)
	%readbyte(Input3)
	%readbyte(Input4)
	%readbyte(Input5)
	%readbyte(Input6)
	%readbyte(Input7)
	%readbyte(Input8)
	%readbyte(Input9)
	%readbyte(Input10)
	!Input11 #= !Input1+($FF<<16)
	%HandleJump(!Input11)
if !Pass == 1
	print "	%DKC3_SSS_OpF4(DATA_FF",hex(!Input1, 4),", $",hex(!Input2, 2),", $",hex(!Input3, 2),", $",hex(!Input4, 2),", $",hex(!Input5, 2),", $",hex(!Input6, 2),", $",hex(!Input7, 2),", $",hex(!Input8, 2),", $",hex(!Input9, 2),", $",hex(!Input10, 2),")"
endif
endmacro

macro Op245()
if !Pass == 1
	print "	%DKC3_SSS_OpF5()"
endif
	%DefineLabelAfterNoPassOpcode(!CurrentOffset)
endmacro

macro Op246()
	%readbyte(Input1)
	%readbyte(Input2)
if !Pass == 1
	print "	%DKC3_SSS_OpF6($",hex(!Input1, 2),", $",hex(!Input2, 2),")"
endif
endmacro

macro Op247()
	%readword(Input1)
	%readword(Input2)
	%readbyte(Input3)
if !Pass == 1
	print "	%DKC3_SSS_OpF7($",hex(!Input1, 4),", $",hex(!Input2, 4),", $",hex(!Input3, 2),")"
endif
endmacro

macro Op248()
	%readword(Input1)
	%readword(Input2)
	%readword(Input3)
	%readword(Input4)
	!Input5 #= !Input3+($FF<<16)
	%HandleJump(!Input5)
	!Input6 #= !Input4+($FF<<16)
	%HandleJump(!Input6)
if !Pass == 1
	print "	%DKC3_SSS_OpF8($",hex(!Input1, 4),", $",hex(!Input2, 4),", DATA_FF",hex(!Input3, 4),", DATA_FF",hex(!Input4, 4),")"
endif
endmacro

macro Op249()
	%readword(Input1)
	!Input2 #= !Input1+($FF<<16)
	%HandleJump(!Input2)
if !Pass == 1
	print "	%DKC3_SSS_OpF9(DATA_FF",hex(!Input1, 4),")"
endif
endmacro

macro Op250()
	%readword(Input1)
if !Pass == 1
	print "	%DKC3_SSS_OpFA($",hex(!Input1, 4),")"
endif
endmacro

macro Op251()
	%readword(Input1)
if !Pass == 1
	print "	%DKC3_SSS_OpFB($",hex(!Input1, 4),")"
endif
endmacro

macro Op252()
	%readword(Input1)
if !Pass == 1
	print "	%DKC3_SSS_OpFC($",hex(!Input1, 4),")"
endif
endmacro

macro Op253()
	%readword(Input1)
if !Pass == 1
	print "	%DKC3_SSS_OpFD($",hex(!Input1, 4),")"
endif
endmacro

macro Op254()
	%readword(Input1)
if !Pass == 1
	print "	%DKC3_SSS_OpFE($",hex(!Input1, 4),")"
endif
endmacro

macro Op255()
	%readword(Input1)
if !Pass == 1
	print "	%DKC3_SSS_OpFF($",hex(!Input1, 4),")"
endif
endmacro

macro Op256()
if !Pass == 1
	print "	Invalid opcode: $",hex(!Input1, 4)
endif
endmacro

org !ROMOffset
if !DoTwoPassesFlag == 1
	while !ByteCounter < !MaxBytes
		%GetOpcode()
		if !Input1 < 111
			%Op0()
		elseif !Input1 < 239
			%Op256()
		elseif !Input1 > 255
			%Op256()
		else
			!Input2 #= !Input1
			%Op!Input2()
		endif
		!LoopCounter #= !LoopCounter+1
	endif
	!LoopCounter #= 0
	!ByteCounter #= 0
endif
	!Pass = 1
while !ByteCounter < !MaxBytes
	%PrintLabel(!CurrentOffset)
	%GetOpcode()
	if !Input1 < 111
		%Op0()
	elseif !Input1 < 239
		%Op256()
	elseif !Input1 > 256
		%Op256()
	else
		!Input2 #= !Input1
		%Op!Input2()
	endif
	!LoopCounter #= !LoopCounter+1
endif

!Input1 #= !ROMOffset+!ByteCounter
print "Disassembly has ended at $",hex(!ROMOffset+!ByteCounter, 6)
