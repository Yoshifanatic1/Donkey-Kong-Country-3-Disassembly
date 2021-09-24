; This will dump the hitbox data at $BCC4C0 from the USA DKC3 ROM if applied to it.
; Note that in the dumped text, ' and & represents ", % represents a space, and ? represents something that wasn't a standard character.
; Also, it may take a second before asar starts displaying anything on the command line.

hirom
!Offset = $BCC4C0
!EndOffset = $BCE14B

!ByteCount = 0
!RowByteCount = 0
!PrintData = ""

macro HandleVariableDefine(ID)
	!Output<ID> #= !Input1
endmacro

macro ClearDefines()
	!RowByteCount #= 0
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
	!Output16 = ""
	!Output17 = ""
	!Output18 = ""
	!Output19 = ""
	!Output20 = ""
	!Output21 = ""
	!Output22 = ""
	!Output23 = ""
	!Output24 = ""
	!Output25 = ""
	!Output26 = ""
	!Output27 = ""
	!Output28 = ""
	!Output29 = ""
	!Output30 = ""
	!Output31 = ""
	!Output32 = ""
endmacro

macro HandleLineOfData(ID)
	!PrintData += "!Output<ID>"
endmacro

macro HandleLetters(ID)
	if !Input6 == $20
		!Output<ID> += "%"
	elseif !Input6 == $30
		!Output<ID> += 0
	elseif !Input6 == $31
		!Output<ID> += 1
	elseif !Input6 == $32
		!Output<ID> += 2
	elseif !Input6 == $33
		!Output<ID> += 3
	elseif !Input6 == $34
		!Output<ID> += 4
	elseif !Input6 == $35
		!Output<ID> += 5
	elseif !Input6 == $36
		!Output<ID> += 6
	elseif !Input6 == $37
		!Output<ID> += 7
	elseif !Input6 == $38
		!Output<ID> += 8
	elseif !Input6 == $39
		!Output<ID> += 9
	elseif !Input6 == $41
		!Output<ID> += A
	elseif !Input6 == $42
		!Output<ID> += B
	elseif !Input6 == $43
		!Output<ID> += C
	elseif !Input6 == $44
		!Output<ID> += D
	elseif !Input6 == $45
		!Output<ID> += E
	elseif !Input6 == $46
		!Output<ID> += F
	elseif !Input6 == $47
		!Output<ID> += G
	elseif !Input6 == $48
		!Output<ID> += H
	elseif !Input6 == $49
		!Output<ID> += I
	elseif !Input6 == $4A
		!Output<ID> += J
	elseif !Input6 == $4B
		!Output<ID> += K
	elseif !Input6 == $4C
		!Output<ID> += L
	elseif !Input6 == $4D
		!Output<ID> += M
	elseif !Input6 == $4E
		!Output<ID> += N
	elseif !Input6 == $4F
		!Output<ID> += O
	elseif !Input6 == $50
		!Output<ID> += P
	elseif !Input6 == $51
		!Output<ID> += Q
	elseif !Input6 == $52
		!Output<ID> += R
	elseif !Input6 == $53
		!Output<ID> += S
	elseif !Input6 == $54
		!Output<ID> += T
	elseif !Input6 == $55
		!Output<ID> += U
	elseif !Input6 == $56
		!Output<ID> += V
	elseif !Input6 == $57
		!Output<ID> += W
	elseif !Input6 == $58
		!Output<ID> += X
	elseif !Input6 == $59
		!Output<ID> += Y
	elseif !Input6 == $5A
		!Output<ID> += Z
	elseif !Input6 == $61
		!Output<ID> += a
	elseif !Input6 == $62
		!Output<ID> += b
	elseif !Input6 == $63
		!Output<ID> += c
	elseif !Input6 == $64
		!Output<ID> += d
	elseif !Input6 == $65
		!Output<ID> += e
	elseif !Input6 == $66
		!Output<ID> += f
	elseif !Input6 == $67
		!Output<ID> += g
	elseif !Input6 == $68
		!Output<ID> += h
	elseif !Input6 == $69
		!Output<ID> += i
	elseif !Input6 == $6A
		!Output<ID> += j
	elseif !Input6 == $6B
		!Output<ID> += k
	elseif !Input6 == $6C
		!Output<ID> += l
	elseif !Input6 == $6D
		!Output<ID> += m
	elseif !Input6 == $6E
		!Output<ID> += n
	elseif !Input6 == $6F
		!Output<ID> += o
	elseif !Input6 == $70
		!Output<ID> += p
	elseif !Input6 == $71
		!Output<ID> += q
	elseif !Input6 == $72
		!Output<ID> += r
	elseif !Input6 == $73
		!Output<ID> += s
	elseif !Input6 == $74
		!Output<ID> += t
	elseif !Input6 == $75
		!Output<ID> += u
	elseif !Input6 == $76
		!Output<ID> += v
	elseif !Input6 == $77
		!Output<ID> += w
	elseif !Input6 == $78
		!Output<ID> += x
	elseif !Input6 == $79
		!Output<ID> += y
	elseif !Input6 == $7A
		!Output<ID> += z
	elseif !Input6 == $2D
		!Output<ID> += "-"
	elseif !Input6 == $2E
		!Output<ID> += "."
	elseif !Input6 == $21
		!Output<ID> += "\!"
	elseif !Input6 == $3A
		!Output<ID> += ":"
	elseif !Input6 == $5F
		!Output<ID> += "_"
	elseif !Input6&$80 == $80
		!PrintData += "&,$',hex(!Input6, 2)"
	else
		!Output<ID> += "?"
	endif
endmacro

print "hirom"
while !Offset+!ByteCount < !EndOffset
	%ClearDefines()
	!PrintData = ""
	print "print ''"
	print "print 'DATA_",hex(!Offset+!ByteCount),":'"
	!Input1 #= read2(!Offset+!ByteCount+$00)
	!Input2 #= read2(!Offset+!ByteCount+$02)
	!Input3 #= read2(!Offset+!ByteCount+$04)
	!Input4 #= read2(!Offset+!ByteCount+$06)
	!Input5 #= read2(!Offset+!ByteCount+$08)
	!PrintData += "'	dw $',hex(!Input1, 4),',$',hex(!Input2, 4),',$',hex(!Input3, 4),',$',hex(!Input4, 4),',$',hex(!Input5, 4),' : db &"
	!ByteCount #= !ByteCount+$0A
	!Input6 #= 0
	while !Input6&$80 != $80
		!Input6 #= read1(!Offset+!ByteCount)
		%HandleLetters(!RowByteCount)
		%HandleLineOfData(!RowByteCount)
		!ByteCount #= !ByteCount+1
		!RowByteCount #= !RowByteCount+1
	endif
	print "print !PrintData"
endif
