@asar 1.81
; This will create a pointer table that uses relative offsets when applied to the ROM. Just set the beginning and end offset of the pointer table.

hirom

macro GetAddressOfLabel(Address)
if defined("ROM_<Address>") == 0
	!ROM_<Address> = 1
	!TEMP #= 0
else
	!TEMP #= 1
endif	
endmacro

!LoopCounter = 0
!Offset = $BC8000
!EndOffset = $BCC3FD
while !LoopCounter < !EndOffset-!Offset
	!Input1 #= read3(!Offset+!LoopCounter)
	!Input2 #= read2(!Offset+!LoopCounter+$03)
	print "	dl DATA_",hex(!Input1, 6)," : dw DATA_BC",hex(!Input2, 4)
	!LoopCounter #= !LoopCounter+5
endif

print ""
!LoopCounter #= 0
while !LoopCounter < !EndOffset-!Offset
	!Input1 #= read3(!Offset+!LoopCounter)
	print "DATA_",hex(!Input1, 6),":"
	!LoopCounter #= !LoopCounter+5
endif

print ""
!LoopCounter #= 0
while !LoopCounter < !EndOffset-!Offset
	!Input1 #= read2(!Offset+!LoopCounter+$03)
	%GetAddressOfLabel(!Input1)
	if !TEMP == 0
		print "DATA_BC",hex(!Input1, 4),":"
	endif
	!LoopCounter #= !LoopCounter+5
endif