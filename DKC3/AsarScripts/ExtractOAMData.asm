; This will dump the data for an asar patch that will be applied to the USA DKC3 ROM. Said patch will set up the header data of all the poses in the specified range (and also generate an asset extraction line and incbin command) when applied to the ROM.
; The reason I'm generating a patch and not the tables directly is because of asar limitations. I don't think it's possible for asar to resolve commands through a define while in a print statement.
; Also, it may take a second before asar starts displaying anything on the command line. In addition, you'll need to replace the ' with " in the output patch, and the % with " in the second output patch, otherwise asar won't assemble the patch.
; Lastly, the last data block will likely be larger than it should be and must be cleaned up.

!PtrStartOffset = $D2FA46
!PtrEndOffset =	$D30000

hirom

macro HandleVariableDefine(ID)
	!Output<ID> #= !Input17
endmacro

macro ClearDefines()
	!Output0 = ""
	!Output1 = ""
	!Output2 = ""
	!Output3 = ""
	!Output4 = ""
	!Output5 = ""
	!Output6 = ""
	!Output7 = ""
	!Output8 = ""
	!Output9 = ""
	!Output10 = ""
	!Output11 = ""
	!Output12 = ""
	!Output13 = ""
	!Output14 = ""
	!Output15 = ""
endmacro

macro HandleLineOfData(ID)
	if <ID> == 0
		!PrintData += "	db $',hex(!Output<ID>, 2)"
	else
		!PrintData += ",',$',hex(!Output<ID>, 2)"
	endif
endmacro

macro PrintVariableData(Data)
	print "print '	<Data>"
endmacro

!SkipBytes = 0
!LoopCounter = 0
print "hirom"

while !PtrStartOffset+!LoopCounter < !PtrEndOffset
	!Input1 #= read1(!PtrStartOffset+!LoopCounter+$00)
	!Input2 #= read1(!PtrStartOffset+!LoopCounter+$01)
	!Input3 #= read1(!PtrStartOffset+!LoopCounter+$02)
	!Input4 #= read1(!PtrStartOffset+!LoopCounter+$03)
	!Input5 #= read1(!PtrStartOffset+!LoopCounter+$04)
	!Input6 #= read1(!PtrStartOffset+!LoopCounter+$05)
	!Input7 #= read1(!PtrStartOffset+!LoopCounter+$06)
	!Input8 #= read1(!PtrStartOffset+!LoopCounter+$07)
	!Input9 #= read1(!PtrStartOffset+!LoopCounter+$08)
	!Input10 #= read1(!PtrStartOffset+!LoopCounter+$09)
	!Input11 #= read1(!PtrStartOffset+!LoopCounter+$0A)
	!Input12 #= read1(!PtrStartOffset+!LoopCounter+$0B)
	!Input13 #= read1(!PtrStartOffset+!LoopCounter+$0C)
	!Input14 #= read1(!PtrStartOffset+!LoopCounter+$0D)
	!Input15 #= read1(!PtrStartOffset+!LoopCounter+$0E)
	!Input16 #= read1(!PtrStartOffset+!LoopCounter+$0F)
	%ClearDefines()
	!ByteCount = 0
	!RowByteCount = 0
	!PrintData = ""
	print "print 'DATA_',hex(!PtrStartOffset+!LoopCounter),':'"
	if !Input9 < $10
		!OAMDataSize #= ((!Input1+!Input2+!Input4+!Input9+!Input11+!Input13)*$02)+$0E
		!GFXSize #= (!Input1*$80)+(!Input2*$20)+(!Input4*$20)+(!Input9*$80)+(!Input11*$20)+(!Input13*$20)
	else
		!OAMDataSize #= ((!Input1+!Input2+!Input4)*$02)+$08
		!GFXSize #= (!Input1*$80)+(!Input2*$20)+(!Input4*$20)
	endif
	if !GFXSize != $00
		while !ByteCount < !OAMDataSize
			!Input17 = read1(!PtrStartOffset+!LoopCounter+!ByteCount)
			%HandleVariableDefine(!RowByteCount)
			%HandleLineOfData(!RowByteCount)
			!ByteCount #= !ByteCount+1
			!RowByteCount #= !RowByteCount+1
			if !RowByteCount == 16
				%PrintVariableData("!PrintData")
				%ClearDefines()
				!PrintData = ""
				!RowByteCount #= $00
			endif
		endif
		if !RowByteCount != 0
			%PrintVariableData("!PrintData")
		endif
		print "print '	;incbin %Graphics/GFX_Sprite_XXXX.bin%:0-0	; GFXSize = $',hex(!GFXSize)"
		print "print '	;dl $',hex(!PtrStartOffset+!LoopCounter+!ByteCount),',$',hex(!PtrStartOffset+!LoopCounter+!ByteCount+!GFXSize),',GFX_Sprite_XXXX,GFX_Sprite_XXXXEnd'"
		print "print ''"
		!LoopCounter #= !LoopCounter+!OAMDataSize+!GFXSize
	else
		!LoopCounter #= !PtrEndOffset
	endif
endif
