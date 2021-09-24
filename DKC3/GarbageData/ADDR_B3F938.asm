 
 ADDR_B3F938:
	db $43
	STA.w $4337
	REP.b #$20
	LDA.w #$0E01
	STA.w $04E4
	RTS

ADDR_B3F945:
	JSR.w $B3ECDB
	LDA.w #$1300
	STA.b $80
	LDA.w #$0400
	TRB.w $04E4
	RTS

ADDR_B3F954:
	CPX.b $04
	RTS
