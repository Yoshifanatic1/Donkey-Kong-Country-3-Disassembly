
CODE_BDF1E8:
	JSR.w CODE_BDF1EC
	RTL

CODE_BDF1EC:
	STA.b $8C
	LDX.w #$FFFE
CODE_BDF1F1:
	INX
	INX
	CPX.w #$0010
	BEQ.b CODE_BDF223
	LDA.w $1AD3,x
	BEQ.b CODE_BDF208
	CMP.b $8C
	BNE.b CODE_BDF1F1
	LDA.w $1AE3,x
	BMI.b CODE_BDF1F1
	BRA.b CODE_BDF21D

CODE_BDF208:
	STX.b $76
CODE_BDF20A:
	INX
	INX
	CPX.w #$0010
	BEQ.b CODE_BDF253
	LDA.w $1AD3,x
	CMP.b $8C
	BNE.b CODE_BDF20A
	LDA.w $1AE3,x
	BMI.b CODE_BDF20A
CODE_BDF21D:
	INC.w $1AE3,x
	TXA
	XBA
	RTS

CODE_BDF223:
	LDA.w #$0000
	RTS

CODE_BDF227:
	STA.b $8C
	LDA.w $0C69,x
	XBA
	AND.w #$000E
	STA.b $76
	TAX
	LDA.w $1AD3,x
	CMP.b $8C
	BEQ.b CODE_BDF240
	JSR.w CODE_BDF253
	DEC.w $1AE3,x
CODE_BDF240:
	RTL

CODE_BDF241:
	STA.b $8C
	LDA.w $0C69,x
	XBA
	AND.w #$000E
	STA.b $76
	JSR.w CODE_BDF253
	DEC.w $1AE3,x
	RTL

CODE_BDF253:
	LDA.w $1E15
	AND.w #$0010
	BNE.b CODE_BDF28D
	LDA.w $1AD1
	ASL
	ASL
	TAX
	LDA.b $8C
	STA.w $1A8F,x
	LDA.b $76
	ASL
	ASL
	ASL
	CLC
	ADC.w #$0081
	XBA
	ORA.w #$00BC
	STA.w $1A91,x
	LDA.w $1AD1
	INC
	AND.w #$000F
	STA.w $1AD1
	LDX.b $76
	INC.w $1AE3,x
	LDA.b $8C
	STA.w $1AD3,x
	TXA
	XBA
	RTS

CODE_BDF28D:
	LDA.w $1AD1
	ASL
	ASL
	TAX
	LDA.b $8C
	CLC
	ADC.w #$A5AD
	STA.w $1A8F,x
	LDA.b $76
	ASL
	ASL
	ASL
	CLC
	ADC.w #$0081
	XBA
	ORA.w #$007F
	STA.w $1A91,x
	LDA.w $1AD1
	INC
	AND.w #$000F
	STA.w $1AD1
	LDX.b $76
	INC.w $1AE3,x
	LDA.b $8C
	STA.w $1AD3,x
	TXA
	XBA
	RTS

CODE_BDF2C3:
	JSR.w CODE_BDF2C7
	RTL

CODE_BDF2C7:
	XBA
	AND.w #$000E
	TAX
	DEC.w $1AE3,x
	BMI.b CODE_BDF2D4
	BEQ.b CODE_BDF2D4
	RTS

CODE_BDF2D4:
	STZ.w $1AD3,x
	RTS

CODE_BDF2D8:
	LDA.b $4C
	STA.b $4E
	LDY.w #$001C
CODE_BDF2DF:
	LDA.w $1A6F,y
	BEQ.b CODE_BDF2F3
CODE_BDF2E4:
	DEY
	DEY
	CPY.w #$0008
	BPL.b CODE_BDF2DF
CODE_BDF2EB:
	SEC
	RTS

CODE_BDF2ED:
	LDA.b $4E
	STA.b $4C
	BRA.b CODE_BDF2E4

CODE_BDF2F3:
	DEC.b $4C
	BEQ.b CODE_BDF310
	DEY
	DEY
	CPY.w #$0008
	BMI.b CODE_BDF2EB
CODE_BDF2FE:
	LDA.w $1A6F,y
	BNE.b CODE_BDF2ED
	DEC.b $4C
	BEQ.b CODE_BDF310
	DEY
	DEY
	CPY.w #$0008
	BPL.b CODE_BDF2FE
	BRA.b CODE_BDF2EB

CODE_BDF310:
	TYA
	ASL
	ASL
	ASL
	ASL
	EOR.w $0C69,x
	AND.w #$01FF
	EOR.w $0C69,x
	STA.w $0C69,x
	BRA.b CODE_BDF325

CODE_BDF323:
	INY
	INY
CODE_BDF325:
	TXA
	STA.w $1A6F,y
	DEC.b $4E
	BNE.b CODE_BDF323
	CLC
	RTS

CODE_BDF32F:
	JSR.w CODE_BDF333
	RTL

CODE_BDF333:
	LDY.w #$001C
CODE_BDF336:
	LDA.w $1A6F,y
	BEQ.b CODE_BDF344
	DEY
	DEY
	CPY.w #$0008
	BPL.b CODE_BDF336
	SEC
	RTS

CODE_BDF344:
	TXA
	STA.w $1A6F,y
	TYA
	ASL
	ASL
	ASL
	ASL
	EOR.w $0C69,x
	AND.w #$01FF
	EOR.w $0C69,x
	STA.w $0C69,x
	CLC
	RTS

CODE_BDF35B:
	LDY.w #$001C
	LDX.w #$0000
CODE_BDF361:
	LDA.w $1A6F,y
	BNE.b CODE_BDF367
	INX
CODE_BDF367:
	DEY
	DEY
	CPY.w #$0008
	BPL.b CODE_BDF361
	TXA
	BEQ.b CODE_BDF373
	CLC
	RTL

CODE_BDF373:
	SEC
	RTL

CODE_BDF375:
	JSR.w CODE_BDF379
	RTL

CODE_BDF379:
	LDA.w $0C69,x
	AND.w #$01E0
	LSR
	LSR
	LSR
	LSR
	TAY
	LDA.w #$0000
	STA.w $1A6F,y
	RTS

CODE_BDF38B:
	JSR.w CODE_BDF38F
	RTL

CODE_BDF38F:
	LDX.w #$0002
CODE_BDF392:
	LDA.w $0D45,x
	BEQ.b CODE_BDF3A2
	INX
	INX
	CPX.w #$001E
	BNE.b CODE_BDF392
	STZ.b $86
	SEC
	RTS

CODE_BDF3A2:
	STX.b $86
	LDA.w #$8000
	STA.w $15FD,x
	CLC
	RTS

CODE_BDF3AC:
	JSR.w CODE_BDF3B0
	RTL

CODE_BDF3B0:
	LDX.w #$001E
CODE_BDF3B3:
	LDA.w $0D45,x
	BEQ.b CODE_BDF3C3
	INX
	INX
	CPX.w #$0034
	BNE.b CODE_BDF3B3
	STZ.b $86
	SEC
	RTS

CODE_BDF3C3:
	STX.b $86
	LDA.w #$8000
	STA.w $15FD,x
	CLC
	RTS

CODE_BDF3CD:
	STA.b $4C
	JSR.w CODE_BDF38F
	BCS.b CODE_BDF3DF
	STZ.w $0AE5,x
	PHY
	JSR.w CODE_BDF2D8
	PLY
	BCS.b CODE_BDF3DF
	RTL

CODE_BDF3DF:
	RTL

CODE_BDF3E0:
	JSR.w CODE_BDF38F
	BCS.b CODE_BDF3F0
	STZ.w $0AE5,x
	PHY
	JSR.w CODE_BDF333
	PLY
	BCS.b CODE_BDF3F0
	RTL

CODE_BDF3F0:
	RTL

CODE_BDF3F1:
	JSR.w CODE_BDF3B0
	BCS.b CODE_BDF401
	STZ.w $0AE5,x
	PHY
	JSR.w CODE_BDF333
	PLY
	BCS.b CODE_BDF401
	RTL

CODE_BDF401:
	RTL

CODE_BDF402:
	JSR.w $BDF74B
	BCS.b CODE_BDF463
	RTL

CODE_BDF408:
	JSR.w $BDF6F9
	BCS.b CODE_BDF463
	RTL

CODE_BDF40E:
	JSR.w $BDF786
	BCS.b CODE_BDF463
	RTL

CODE_BDF414:
	JSR.w $BDF786
	BCS.b CODE_BDF41A
	RTL

CODE_BDF41A:
	JSL.l $BCBC3F
	JML.l $BDF463

CODE_BDF422:
	JSR.w $FDF7CE
	BCS.b CODE_BDF463
	RTL

CODE_BDF428:
	JSR.w $BDF786
	BCC.b CODE_BDF431
	JSL.l $BDF475
CODE_BDF431:
	RTL

CODE_BDF432:
	JSR.w $BDF786
	BCS.b CODE_BDF438
	RTL

CODE_BDF438:
	LDX.b $82
	LDA.w $0D45,x
	LDX.w #$0002
CODE_BDF440:
	CMP.w $0D45,x
	BEQ.b CODE_BDF44E
CODE_BDF445:
	INX
	INX
	CPX.w #$0034
	BMI.b CODE_BDF440
	BRA.b CODE_BDF463

CODE_BDF44E:
	CPX.b $82
	BEQ.b CODE_BDF445
	LDX.b $82
	LDA.w $0C69,x
	JSR.w CODE_BDF2C7
	LDX.b $82
	STZ.w $0D45,x
	STZ.w $15FD,x
	RTL

CODE_BDF463:
	LDX.b $82
	LDA.w $0D45,x
	BEQ.b CODE_BDF47D
	LDA.w $0C69,x
	JSR.w CODE_BDF2C7
	LDX.b $82
	JSR.w CODE_BDF379
CODE_BDF475:
	LDX.b $82
	STZ.w $0D45,x
	STZ.w $15FD,x
CODE_BDF47D:
	RTL

CODE_BDF47E:
	LDX.b $82
	LDA.w $0C69,x
	JSR.w CODE_BDF2C7
	LDX.b $82
	STZ.w $0D45,x
	RTL

CODE_BDF48C:
	JSR.w CODE_BDF490
	RTL

CODE_BDF490:
	LDX.w #$0034
CODE_BDF493:
	LDA.w $0D45,x
	BEQ.b CODE_BDF4A3
	INX
	INX
	CPX.w #$0074
	BNE.b CODE_BDF493
	STZ.b $86
	SEC
	RTS

CODE_BDF4A3:
	STX.b $86
	CLC
	RTS

CODE_BDF4A7:
	LDA.w $0535
	CMP.w #$0002
	BEQ.b CODE_BDF4EA
	JSR.w $BDF7CE
	LDX.b $82
	BCC.b CODE_BDF4C5
	DEC.w $14F9,x
	BPL.b CODE_BDF4CB
	JSL.l $BDF4EF
	BCS.b CODE_BDF4CB
	STZ.w $14F9,x
	RTL

CODE_BDF4C5:
	LDA.w $14C5,x
	STA.w $14F9,x
CODE_BDF4CB:
	RTL

CODE_BDF4CC:
	LDA.w $0535
	CMP.w #$0002
	BEQ.b CODE_BDF4EA
	JSR.w $BDF786
	BCS.b CODE_BDF4EF
	CLC
	RTL

CODE_BDF4DB:
	LDA.w $0535
	CMP.w #$0002
	BEQ.b CODE_BDF4EA
	JSR.w $BDF7CE
	BCS.b CODE_BDF4EF
	CLC
	RTL

CODE_BDF4EA:
	JMP.w $BDF6A3

CODE_BDF4ED:
	LDX.b $82
CODE_BDF4EF:
	PHB
	PHK
	PLB
	LDA.b $32
	CMP.w #$0003
	BNE.b CODE_BDF501
	LDA.w $1E0F
	CMP.w #$003E
	BEQ.b $4D
CODE_BDF501: