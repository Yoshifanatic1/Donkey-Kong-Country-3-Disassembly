
!RAM_DKC3_Global_CurrentLevelLo = $0000C0
!RAM_DKC3_Global_CurrentLevelHi = !RAM_DKC3_Global_CurrentLevelLo+$01

!RAM_DKC3_Global_CurrentBoatLo = $0005EB
!RAM_DKC3_Global_CurrentBoatHi = !RAM_DKC3_Global_CurrentBoatLo+$01

; $000632 = Level tile flag table?

!RAM_DKC3_Global_FrenchTextFlag = $0006D6

!RAM_DKC3_Level_SpriteDataRAM = $000878

!RAM_DKC3_Global_TextBuffer = $7EA9DE

struct DKC3_Level_SpriteDataRAM $00 ;!RAM_DKC3_Level_SpriteDataRAM
	.SpriteIDLo: skip $01		; $00
	.SpriteIDHi: skip $01		; $01
	.RoutinePtrLo: skip $01		; $02
	.RoutinePtrHi: skip $01		; $03
	.RoutinePtrBank: skip $01		; $04
	skip $01					; $05
	skip $01					; $06
	skip $01					; $07
	skip $01					; $08
	skip $01					; $09
	skip $01					; $0A
	skip $01					; $0B
	skip $01					; $0C
	skip $01					; $0D
	skip $01					; $0E
	skip $01					; $0F
	skip $01					; $10
	.SubXPos: skip $01			; $11
	.XPosLo: skip $01			; $12
	.XPosHi: skip $01			; $13
	skip $01					; $14
	.SubYPos: skip $01			; $15
	.YPosLo: skip $01			; $16
	.YPosHi: skip $01			; $17
	skip $01					; $18
	skip $01					; $19
	skip $01					; $1A
	skip $01					; $1B
	skip $01					; $1C
	skip $01					; $1D
	skip $01					; $1E
	skip $01					; $1F
	skip $01					; $20
	skip $01					; $21
	skip $01					; $22
	skip $01					; $23
	skip $01					; $24
	skip $01					; $25
	skip $01					; $26
	skip $01					; $27
	skip $01					; $28
	skip $01					; $29
	.XSpeedLo: skip $01		; $2A
	.XSpeedHi: skip $01		; $2B
	skip $01					; $2C
	skip $01					; $2D
	.YSpeedLo: skip $01		; $2E
	.YSpeedHi: skip $01		; $2F
	skip $01					; $30
	skip $01					; $31
	skip $01					; $32
	skip $01					; $33
	skip $01					; $34
	skip $01					; $35
	skip $01					; $36
	skip $01					; $37
	skip $01					; $38
	skip $01					; $39
	skip $01					; $3A
	skip $01					; $3B
	skip $01					; $3C
	skip $01					; $3D
	skip $01					; $3E
	skip $01					; $3F
	skip $01					; $40
	skip $01					; $41
	skip $01					; $42
	skip $01					; $43
	skip $01					; $44
	skip $01					; $45
	.AnimationScriptIndexLo: skip $01	; $46
	.AnimationScriptIndexHi: skip $01	; $47
	skip $01					; $48
	skip $01					; $49
	skip $01					; $4A
	skip $01					; $4B
	skip $01					; $4C
	skip $01					; $4D
	skip $01					; $4E
	skip $01					; $4F
	skip $01					; $50
	skip $01					; $51
	skip $01					; $52
	skip $01					; $53
	skip $01					; $54
	skip $01					; $55
	skip $01					; $56
	skip $01					; $57
	skip $01					; $58
	skip $01					; $59
	skip $01					; $5A
	skip $01					; $5B
	skip $01					; $5C
	skip $01					; $5D
endstruct align $6E
