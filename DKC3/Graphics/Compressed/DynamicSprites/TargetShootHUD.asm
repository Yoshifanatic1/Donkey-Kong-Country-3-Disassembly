
;Note: These addresses are for when Dixie Kong's target shoot graphics are loaded. They'll be different if Kiddy's graphics are loaded instead.

DATA_7F734C:
	db $00,$04,$00,$00,$00,$04,$00,$00,$70,$77,$78,$77,$80,$77,$85,$76
	;incbin "Graphics/DynamicSprites/GFX_Target_Pose1.bin"	; GFXSize = $80
	;dl $7F735C,$7F73DC,GFX_Target_Pose1,GFX_Target_Pose1End

DATA_7F73DC:
	db $01,$04,$02,$00,$00,$06,$10,$02,$7E,$6B,$77,$6F,$7B,$77,$74,$77
	db $70,$73
	;incbin "Graphics/DynamicSprites/GFX_Target_Pose2.bin"	; GFXSize = $100
	;dl $7F73EE,$7F74EE,GFX_Target_Pose2,GFX_Target_Pose2End

DATA_7F74EE:
	db $01,$06,$02,$00,$00,$08,$10,$02,$7A,$64,$78,$77,$80,$74,$87,$6A
	db $70,$72,$73,$6A,$78,$72
	;incbin "Graphics/DynamicSprites/GFX_Target_Pose3.bin"	; GFXSize = $140
	;dl $7F7504,$7F7644,GFX_Target_Pose3,GFX_Target_Pose3End

DATA_7F7644:
	db $02,$05,$04,$00,$00,$09,$10,$04,$7B,$5F,$70,$6F,$8A,$67,$74,$67
	db $80,$6F,$7D,$77,$84,$6F
	;incbin "Graphics/DynamicSprites/GFX_Target_Pose4.bin"	; GFXSize = $1A0
	;dl $7F765A,$7F77FA,GFX_Target_Pose4,GFX_Target_Pose4End

DATA_7F77FA:
	db $01,$02,$02,$00,$00,$04,$10,$02,$78,$79,$78,$71,$80,$71
	;incbin "Graphics/DynamicSprites/GFX_DixieHead_Winning.bin"	; GFXSize = $7F
	;dl $7F7808,$7F78C8,GFX_DixieHead_Winning,GFX_DixieHead_WinningEnd

DATA_7F78C8:
	db $01,$02,$02,$00,$00,$04,$10,$02,$78,$79,$78,$71,$80,$71
	;incbin "Graphics/DynamicSprites/GFX_DixieHead_Neutral.bin"	; GFXSize = $7F
	;dl $7F78D6,$7F7996,GFX_DixieHead_Neutral,GFX_DixieHead_NeutralEnd

DATA_7F7996:
	db $01,$02,$02,$00,$00,$04,$10,$02,$78,$79,$78,$71,$80,$71
	;incbin "Graphics/DynamicSprites/GFX_DixieHead_Losing.bin"	; GFXSize = $7F
	;dl $7F79A4,$7F7A64,GFX_DixieHead_Losing,GFX_DixieHead_LosingEnd

DATA_7F7A64:
	db $01,$04,$02,$00,$00,$06,$10,$02,$79,$7B,$76,$7D,$7B,$73,$7F,$73
	db $84,$7D
	;incbin "Graphics/DynamicSprites/GFX_KiddyHead_Winning.bin"	; GFXSize = $100
	;dl $7F7A76,$7F7B76,GFX_KiddyHead_Winning,GFX_KiddyHead_WinningEnd

DATA_7F7B76:
	db $01,$04,$02,$00,$00,$06,$10,$02,$79,$7A,$76,$7E,$7B,$72,$7F,$72
	db $84,$7E
	;incbin "Graphics/DynamicSprites/GFX_KiddyHead_Neutral.bin"	; GFXSize = $100
	;dl $7F7B88,$7F7C88,GFX_KiddyHead_Neutral,GFX_KiddyHead_NeutralEnd

DATA_7F7C88:
	db $01,$04,$02,$00,$00,$06,$10,$02,$76,$7A,$84,$7A,$7C,$72,$7F,$72
	db $84,$82
	;incbin "Graphics/DynamicSprites/GFX_KiddyHead_Losing.bin"	; GFXSize = $100
	;dl $7F7C9A,$7F7D9A,GFX_KiddyHead_Losing,GFX_KiddyHead_LosingEnd

DATA_7F7D9A:
	db $02,$02,$04,$00,$00,$06,$10,$04,$7A,$75,$7A,$85,$78,$7F,$78,$77
	;incbin "Graphics/DynamicSprites/GFX_CrankyHead_Winning.bin"	; GFXSize = $140
	;dl $7F7DAA,$7F7EEA,GFX_CrankyHead_Winning,GFX_CrankyHead_WinningEnd

DATA_7F7EEA:
	db $02,$02,$04,$00,$00,$06,$10,$04,$7A,$75,$7A,$85,$78,$7F,$78,$77
	;incbin "Graphics/DynamicSprites/GFX_CrankyHead_Neutral.bin"	; GFXSize = $140
	;dl $7F7EFA,$7F803A,GFX_CrankyHead_Neutral,GFX_CrankyHead_NeutralEnd

DATA_7F803A:
	db $02,$02,$04,$00,$00,$06,$10,$04,$7A,$75,$7A,$85,$78,$80,$78,$78
	;incbin "Graphics/DynamicSprites/GFX_CrankyHead_Losing.bin"	; GFXSize = $140
	;dl $7F804A,$7F818A,GFX_CrankyHead_Losing,GFX_CrankyHead_LosingEnd
