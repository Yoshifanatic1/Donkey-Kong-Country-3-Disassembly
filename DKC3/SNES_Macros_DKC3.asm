 
;--------------------------------------------------------------------

macro DKC3_AnS_OpXX(Param1, Param2)
	db <Param1> : dw <Param2>
endmacro

;--------------------------------------------------------------------

macro DKC3_AnS_Op80(Param1)
	db $80 : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro DKC3_AnS_Op81(Param1, Param2)
	db $81 : dw <Param1>,<Param2>
endmacro

;--------------------------------------------------------------------

macro DKC3_AnS_Op82(Param1)
	db $82 : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro DKC3_AnS_Op83(Param1)
	db $83 : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro DKC3_AnS_Op84(Param1, Param2)
	db $84 : dw <Param1>,<Param2>
endmacro

;--------------------------------------------------------------------

macro DKC3_AnS_Op85(Param1)
	db $85 : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro DKC3_AnS_Op86(Param1, Param2)
	db $86 : dw <Param1>,<Param2>
endmacro

;--------------------------------------------------------------------

macro DKC3_AnS_Op87(Param1)
	db $87 : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro DKC3_AnS_Op88(Param1, Param2)
	db $88 : dw <Param1>,<Param2>
endmacro

;--------------------------------------------------------------------

macro DKC3_AnS_Op89(Param1)
	db $89 : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro DKC3_AnS_Op8A(Param1, Param2)
	db $8A : db <Param1> : dw <Param2>
endmacro

;--------------------------------------------------------------------

macro DKC3_AnS_Op8B(Param1, Param2)
	db $8B : db <Param1> : dw <Param2>
endmacro

;--------------------------------------------------------------------

macro DKC3_AnS_Op8C(Param1, Param2)
	db $8C : db <Param1> : dw <Param2>
endmacro

;--------------------------------------------------------------------

macro DKC3_AnS_Op8D(Param1)
	db $8D : db <Param1>
endmacro

;--------------------------------------------------------------------

macro DKC3_AnS_Op8E(Param1)
	db $8E : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro DKC3_AnS_Op8F(Param1)
	db $8F : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro DKC3_AnS_Op90(Param1, Param2, Param3)
	db $90 : db <Param1> : dw <Param2>,<Param3>
endmacro

;--------------------------------------------------------------------

macro DKC3_AnS_Op91(Param1, Param2)
	db $91 : dw <Param1>,<Param2>
endmacro

;--------------------------------------------------------------------

macro DKC3_AnS_Op92(Param1, Param2, Param3)
	db $92 : db <Param1> : dw <Param2>,<Param3>
endmacro

;--------------------------------------------------------------------

macro DKC3_AnS_Op93(Param1, Param2, Param3, Param4)
	db $93 : db <Param1>,<Param2> : dw <Param3> : db <Param4>
endmacro

;--------------------------------------------------------------------

macro DKC3_AnS_Op94(Param1, Param2, Param3, Param4, Param5)
	db $94 : db <Param1> : dw <Param2> : db <Param3>,<Param4>,<Param5>
endmacro

;--------------------------------------------------------------------

macro DKC3_AnS_Op95(Param1, Param2, Param3, Param4)
	db $95 : db <Param1> : dw <Param2>,<Param3>,<Param4>
endmacro

;--------------------------------------------------------------------

macro DKC3_AnS_Op96(Param1, Param2, Param3, Param4, Param5)
	db $96 : db <Param1> : dw <Param2>,<Param3>,<Param4>,<Param5>
endmacro

;--------------------------------------------------------------------

macro DKC3_AnS_Op97(Param1, Param2, Param3, Param4)
	db $97 : db <Param1> : dw <Param2>,<Param3>,<Param4>
endmacro

;--------------------------------------------------------------------

macro DKC3_AnS_Op98(Param1, Param2, Param3, Param4, Param5, Param6)
	db $98 : db <Param1> : dw <Param2>,<Param3>,<Param4>,<Param5>,<Param6>
endmacro

;--------------------------------------------------------------------

macro DKC3_AnS_Op99()
	db $99
endmacro

;--------------------------------------------------------------------

macro DKC3_AnS_Op9A()
	db $9A
endmacro

;--------------------------------------------------------------------

macro DKC3_SSS_OpXX(Param1, Param2)
	db <Param1> : dw <Param2>
endmacro

;--------------------------------------------------------------------

macro DKC3_SSS_OpEF()
	db $EF
endmacro

;--------------------------------------------------------------------

macro DKC3_SSS_OpF0()
	db $F0
endmacro

;--------------------------------------------------------------------

macro DKC3_SSS_OpF1(Param1, Param2)
	db $F1 : db <Param1> : dw <Param2>
endmacro

;--------------------------------------------------------------------

macro DKC3_SSS_OpF2(Param1)
	db $F2 : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro DKC3_SSS_OpF3(Param1, Param2)
	db $F3 : db <Param1>,<Param2>
endmacro

;--------------------------------------------------------------------

macro DKC3_SSS_OpF4(Param1, Param2, Param3, Param4, Param5, Param6, Param7, Param8, Param9, Param10)
	db $F4 : dw <Param1> : db <Param2>,<Param3>,<Param4>,<Param5>,<Param6>,<Param7>,<Param8>,<Param9>,<Param10>
endmacro

;--------------------------------------------------------------------

macro DKC3_SSS_OpF5()
	db $F5
endmacro

;--------------------------------------------------------------------

macro DKC3_SSS_OpF6(Param1, Param2)
	db $F6 : db <Param1>,<Param2>
endmacro

;--------------------------------------------------------------------

macro DKC3_SSS_OpF7(Param1, Param2, Param3)
	db $F7 : dw <Param1>,<Param2> : db <Param3>
endmacro

;--------------------------------------------------------------------

macro DKC3_SSS_OpF8(Param1, Param2, Param3, Param4)
	db $F8 : dw <Param1>,<Param2>,<Param3>,<Param4>
endmacro

;--------------------------------------------------------------------

macro DKC3_SSS_OpF9(Param1)
	db $F9 : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro DKC3_SSS_OpFA(Param1)
	db $FA : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro DKC3_SSS_OpFB(Param1)
	db $FB : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro DKC3_SSS_OpFC(Param1)
	db $FC : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro DKC3_SSS_OpFD(Param1)
	db $FD : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro DKC3_SSS_OpFE(Param1)
	db $FE : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro DKC3_SSS_OpFF(Param1)
	db $FF : dw <Param1>
endmacro

;--------------------------------------------------------------------
