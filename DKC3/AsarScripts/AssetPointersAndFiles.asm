; Note: This file is used by the ExtractAssets.bat batch script to define where each file is, how large they are, and their filenames.

hirom
;!ROMVer = $0000						; Note: This is set within the batch script
!DKC3_U = $0001
!DKC3_E = $0002
!DKC3_J1 = $0004
!DKC3_J2 = $0008

check bankcross off
org $C00000
MainPointerTableStart:
	dl MainPointerTableStart,MainPointerTableEnd-MainPointerTableStart
	dl UncompressedGFXPointersStart,(UncompressedGFXPointersEnd-UncompressedGFXPointersStart)/$0C
	dl DynamicSpriteGFXPointersStart,(DynamicSpriteGFXPointersEnd-DynamicSpriteGFXPointersStart)/$0C
	dl CompressedGFXPointersStart,(CompressedGFXPointersEnd-CompressedGFXPointersStart)/$0C
	dl CompressedDynamicSpriteGFXPointersStart,(CompressedDynamicSpriteGFXPointersEnd-CompressedDynamicSpriteGFXPointersStart)/$0C
	dl UncompressedTilemapsPointersStart,(UncompressedTilemapsPointersEnd-UncompressedTilemapsPointersStart)/$0C
	dl CompressedTilemapsPointersStart,(CompressedTilemapsPointersEnd-CompressedTilemapsPointersStart)/$0C
	dl Map32PointersStart,(Map32PointersEnd-Map32PointersStart)/$0C
	dl LevelDataPointersStart,(LevelDataPointersEnd-LevelDataPointersStart)/$0C
	dl LevelSpritePointersStart,(LevelSpritePointersEnd-LevelSpritePointersStart)/$0C
	dl BananaDataPointersStart,(BananaDataPointersEnd-BananaDataPointersStart)/$0C
	dl PalettesPointersStart,(PalettesPointersEnd-PalettesPointersStart)/$0C
	dl TextBank1PointersStart,(TextBank1PointersEnd-TextBank1PointersStart)/$0C
	dl TextBank2PointersStart,(TextBank2PointersEnd-TextBank2PointersStart)/$0C
	dl TextBank3PointersStart,(TextBank3PointersEnd-TextBank3PointersStart)/$0C
	dl OverworldCollisionPointersStart,(OverworldCollisionPointersEnd-OverworldCollisionPointersStart)/$0C
	dl GarbageDataPointersStart,(GarbageDataPointersEnd-GarbageDataPointersStart)/$0C
	dl MusicPointersStart,(MusicPointersEnd-MusicPointersStart)/$0C
	dl SoundEffectPointersStart,(SoundEffectPointersEnd-SoundEffectPointersStart)/$0C
	dl BRRPointersStart,(BRRPointersEnd-BRRPointersStart)/$0C
MainPointerTableEnd:

;--------------------------------------------------------------------

UncompressedGFXPointersStart:
	;dl $C00F26,$C01006,GFX_Sprite_TinySmokePuff,GFX_Sprite_TinySmokePuffEnd
	;dl $C01006,$C010E6,GFX_Sprite_AirBubbles,GFX_Sprite_AirBubblesEnd
	;dl $C010E6,$C011A6,GFX_Sprite_HeadToHeadHUDCircles,GFX_Sprite_HeadToHeadHUDCirclesEnd
	;dl $C011A6,$C01266,GFX_Sprite_ThownSoftball,GFX_Sprite_ThownSoftballEnd
	;dl $C01266,$C01546,GFX_Sprite_BarrelPieces,GFX_Sprite_BarrelPiecesEnd
	;dl $C01546,$C018C6,GFX_Sprite_BarrelShield,GFX_Sprite_BarrelShieldEnd
	;dl $C018C6,$C019C6,GFX_Sprite_MapWaterSplash,GFX_Sprite_MapWaterSplashEnd
	;dl $C019C6,$C021A6,GFX_Sprite_Minkey,GFX_Sprite_MinkeyEnd
	;dl $C021A6,$C025A6,GFX_Sprite_MinkeyAcorn,GFX_Sprite_MinkeyAcornEnd
	;dl $C025A6,$C02AE6,GFX_Sprite_RotatingCylinderPegs,GFX_Sprite_RotatingCylinderPegsEnd
	;dl $C02AE6,$C02E66,GFX_Sprite_RotatingCylinderKeys,GFX_Sprite_RotatingCylinderKeysEnd
	;dl $C02E66,$C03026,GFX_Sprite_ArichBouncingSpit,GFX_Sprite_ArichBouncingSpitEnd
	;dl $C03026,$C03D26,GFX_Sprite_BananaBird,GFX_Sprite_BananaBirdEnd
	;dl $C03D26,$C04886,GFX_Sprite_BelchaEyeAndTeeth,GFX_Sprite_BelchaEyeAndTeethEnd
	;dl $C04886,$C04C26,GFX_Sprite_SaveScreenBearCoin,GFX_Sprite_SaveScreenBearCoinEnd
	;dl $C04C26,$C04FA6,GFX_Sprite_SaveScreenBonusBCoin,GFX_Sprite_SaveScreenBonusBCoinEnd
	;dl $C04FA6,$C05206,GFX_Sprite_FileSelectDigitalDisplayText,GFX_Sprite_FileSelectDigitalDisplayTextEnd
	;dl $C05206,$C05546,GFX_Sprite_SaveScreenDKCoin,GFX_Sprite_SaveScreenDKCoinEnd
	;dl $C05546,$C05906,GFX_Sprite_SideRocketFlameJets,GFX_Sprite_SideRocketFlameJetsEnd
	;dl $C05906,$C05D06,GFX_Sprite_EllieHorizontalWaterShots,GFX_Sprite_EllieHorizontalWaterShotsEnd
	;dl $C05D06,$C05E86,GFX_Sprite_BarbosSpikeProjectiles,GFX_Sprite_BarbosSpikeProjectilesEnd
	;dl $C05E86,$C06286,GFX_Sprite_BarbosEyes,GFX_Sprite_BarbosEyesEnd
	;dl $C06286,$C06706,GFX_Sprite_SquirtsWaterStream,GFX_Sprite_SquirtsWaterStreamEnd
	;dl $C06706,$C067C6,GFX_Sprite_MusicTestNotes,GFX_Sprite_MusicTestNotesEnd
	;dl $C067C6,$C06AC6,GFX_Sprite_CottonTopCoveWaterFall1StartAndEnd,GFX_Sprite_CottonTopCoveWaterFall1StartAndEndEnd
	;dl $C06AC6,$C06DC6,GFX_Sprite_CottonTopCoveWaterFall2StartAndEnd,GFX_Sprite_CottonTopCoveWaterFall2StartAndEndEnd
	;dl $C06DC6,$C070C6,GFX_Sprite_CottonTopCoveWaterFall3StartAndEnd,GFX_Sprite_CottonTopCoveWaterFall3StartAndEndEnd
	;dl $C070C6,$C07286,GFX_Sprite_CottonTopCoveBananaBirdCaveCoverAndSpriteMasks,GFX_Sprite_CottonTopCoveBananaBirdCaveCoverAndSpriteMasksEnd
	;dl $C07286,$C07686,GFX_Sprite_BananaBirdCaveCoversAndSpriteMasks,GFX_Sprite_BananaBirdCaveCoversAndSpriteMasksEnd
	;dl $C07686,$C079A6,GFX_Sprite_UnknownBrokenPieces,GFX_Sprite_UnknownBrokenPiecesEnd
	;dl $C079A6,$C07A66,GFX_Sprite_KongFusedCliffsRope,GFX_Sprite_KongFusedCliffsRopeEnd
	;dl $C07A66,$C07DA6,GFX_Sprite_BoomersFuse,GFX_Sprite_BoomersFuseEnd
	;dl $DF04D4,$DF0DA4,GFX_Layer3_MurkyMillLights,GFX_Layer3_MurkyMillLightsEnd
	;dl $E98030,$E98550,GFX_Layer1_CopyrightScreen,GFX_Layer1_CopyrightScreenEnd
	;dl $E98D12,$E99AB2,GFX_Layer1_Arich,GFX_Layer1_ArichEnd
	;dl $E9D786,$E9DD86,GFX_Layer1_AnimatedKAOSTapeDriveTiles,GFX_Layer1_AnimatedKAOSTapeDriveTilesEnd
	;dl $E9E146,$E9F346,GFX_Layer1_KAOS,GFX_Layer1_KAOSEnd
	;dl $E9F818,$EA0488,GFX_Layer3_CoralReefLevels,GFX_Layer3_CoralReefLevelsEnd
	;dl $EA160B,$EA21AB,GFX_Layer3_WaterFallLevel,GFX_Layer3_WaterFallLevelEnd
	;dl $EB069C,$EB081C,GFX_Sprite_RocksSurroundingKremtoa,GFX_Sprite_RocksSurroundingKremtoaEnd
	;dl $EBB852,$EBC052,GFX_Sprite_BananaBirdQueenBarrierSymbols,GFX_Sprite_BananaBirdQueenBarrierSymbolsEnd
	;dl $EBC052,$EBCA52,GFX_Layer1_AnimatedConveyorRopeTiles,GFX_Layer1_AnimatedConveyorRopeTilesEnd
	;dl $EC475C,$EC4F6C,GFX_Layer3_KastleKaos,GFX_Layer3_KastleKaosEnd
	;dl $EC576C,$EC76CC,GFX_Layer2_FactoryLevels,GFX_Layer2_FactoryLevelsEnd
	;dl $EC76CC,$EC7CCC,GFX_Layer1_AnimatedShipWheelTiles,GFX_Layer1_AnimatedShipWheelTilesEnd
	;dl $EC7D0C,$EC7D4C,GFX_Layer2_KnautilusMovingCeilingBar,GFX_Layer2_KnautilusMovingCeilingBarEnd
	;dl $EC8978,$EC9B78,GFX_Layer1_AnimatedKaosKoreWaterfallTiles,GFX_Layer1_AnimatedKaosKoreWaterfallTilesEnd
	;dl $F30200,$F315C6,GFX_Layer1_NintendoPresentsScreen,GFX_Layer1_NintendoPresentsScreenEnd
	;dl $F316F0,$F31B38,GFX_Layer3_NintendoPresentsScreen,GFX_Layer3_NintendoPresentsScreenEnd
	;dl $F36033,$F37633,GFX_Layer1_AnimatedK3WaterfallTiles,GFX_Layer1_AnimatedK3WaterfallTilesEnd
	;dl $F40000,$F41800,GFX_Layer1_AnimatedCottonTopCoveWaterfall1Tiles,GFX_Layer1_AnimatedCottonTopCoveWaterfall1TilesEnd
	;dl $F41800,$F43000,GFX_Layer1_AnimatedCottonTopCoveWaterfall2Tiles,GFX_Layer1_AnimatedCottonTopCoveWaterfall2TilesEnd
	;dl $F43000,$F43E00,GFX_Layer1_Animatedlava1Tiles,GFX_Layer1_Animatedlava1TilesEnd
	;dl $F43E00,$F44600,GFX_Layer1_Animatedlava2Tiles,GFX_Layer1_Animatedlava2TilesEnd
	;dl $F44600,$F45600,GFX_Layer1_Animatedlava3Tiles,GFX_Layer1_Animatedlava3TilesEnd
	;dl $F45600,$F45CC0,GFX_Layer1_AnimatedFactoryMachineTiles,GFX_Layer1_AnimatedFactoryMachineTilesEnd
	;dl $F45F40,$F47B15,GFX_Layer2_AnimatedElectricFlowTiles,GFX_Layer2_AnimatedElectricFlowTilesEnd
	;dl $F47B15,$F47D5F,GFX_Layer3_BananaBirdQueenScreen,GFX_Layer3_BananaBirdQueenScreenEnd
	;dl $F6008E,$F60B11,GFX_Mode7_RareLogo,GFX_Mode7_RareLogoEnd
	;dl $F60B11,$F621E6,GFX_Layer2_NintendoPresentsScreen,GFX_Layer2_NintendoPresentsScreenEnd
	;dl $F62C4B,$F6344B,GFX_Layer3_AnimatedlightSnowfallTiles,GFX_Layer3_AnimatedlightSnowfallTilesEnd
	;dl $F6344B,$F6444B,GFX_Layer3_AnimatedMediumSnowfallTiles,GFX_Layer3_AnimatedMediumSnowfallTilesEnd
	;dl $F6444B,$F6644B,GFX_Layer3_AnimatedHeavySnowfallTiles,GFX_Layer3_AnimatedHeavySnowfallTilesEnd
	;dl $FC0000,$FC0F00,GFX_Sprite_AreaNameFont,GFX_Sprite_AreaNameFontEnd
	;dl $FC0F00,$FC1200,GFX_Layer2_EdgeOfBoatSelectionMenu,GFX_Layer2_EdgeOfBoatSelectionMenuEnd
	;dl $FC1200,$FC14A0,GFX_Sprite_CannonAndKremwoodForestLog,GFX_Sprite_CannonAndKremwoodForestLogEnd
	;dl $FC14A0,$FC1B40,GFX_Layer3_DialogueFont,GFX_Layer3_DialogueFontEnd
	;dl $FC1B40,$FC1F20,GFX_Sprite_BrashCabinSpeedrunTimerFont,GFX_Sprite_BrashCabinSpeedrunTimerFontEnd
	;dl $FC1F20,$FC21A0,GFX_Layer1_AnimatedFunkysFurnaceTiles,GFX_Layer1_AnimatedFunkysFurnaceTilesEnd
	;dl $FC21A0,$FC22C0,GFX_Sprite_OverworldDKCoinFlag,GFX_Sprite_OverworldDKCoinFlagEnd
	;dl $FC22C0,$FC2740,GFX_Sprite_OverworldClearedlevelFlag,GFX_Sprite_OverworldClearedlevelFlagEnd
	;dl $FC2740,$FC2A40,GFX_Sprite_OverworldUnclearedlevelFlag,GFX_Sprite_OverworldUnclearedlevelFlagEnd
	;dl $FC2A40,$FC2D40,GFX_Sprite_SwankysSideshowSpriteMask,GFX_Sprite_SwankysSideshowSpriteMaskEnd
	;dl $FC2D40,$FC2F40,GFX_Sprite_CollectedKONGLetters,GFX_Sprite_CollectedKONGLettersEnd
	;dl $FC2F40,$FC3020,GFX_Sprite_PhotoEdges,GFX_Sprite_PhotoEdgesEnd
	;dl $FC3020,$FC3720,GFX_Sprite_InventoryItems,GFX_Sprite_InventoryItemsEnd
	;dl $FC3720,$FC3900,GFX_Sprite_SpeedrunTimerFont,GFX_Sprite_SpeedrunTimerFontEnd
	;dl $FC3900,$FC3D00,GFX_Sprite_SquawksEgg,GFX_Sprite_SquawksEggEnd
	;dl $FC3D00,$FC4020,GFX_Sprite_KremtoaBridgeRocksAndCogs,GFX_Sprite_KremtoaBridgeRocksAndCogsEnd
	;dl $FC4020,$FC4420,GFX_Sprite_ChairliftChairs,GFX_Sprite_ChairliftChairsEnd
	;dl $FC4420,$FC46A0,GFX_Sprite_KaosKoreGrate,GFX_Sprite_KaosKoreGrateEnd
	;dl $FC46A0,$FC4A00,GFX_Sprite_RazorRidgeSpriteMask1,GFX_Sprite_RazorRidgeSpriteMask1End
	;dl $FC4A00,$FC4BC0,GFX_Sprite_RazorRidgeSpriteMask2,GFX_Sprite_RazorRidgeSpriteMask2End
	;dl $FC4BC0,$FC4FA0,GFX_Sprite_RazorRidgePipeAndWhirlpool,GFX_Sprite_RazorRidgePipeAndWhirlpoolEnd
	;dl $FC4FA0,$FC53A0,GFX_Sprite_EllieDiagonalWaterShots,GFX_Sprite_EllieDiagonalWaterShotsEnd
	;dl $FC53A0,$FC5420,GFX_Sprite_KuchukaBombs,GFX_Sprite_KuchukaBombsEnd
	;dl $FC5420,$FC5600,GFX_Sprite_MapBananaBirdFlock,GFX_Sprite_MapBananaBirdFlockEnd
	;dl $FC5600,$FC5840,GFX_Sprite_CrystalShardsAndRedGemInBananaBirdQueenBarrier,GFX_Sprite_CrystalShardsAndRedGemInBananaBirdQueenBarrierEnd
	;dl $FC5840,$FC5C80,GFX_Sprite_CrissKrossCliffsBazukaTNTBarrel,GFX_Sprite_CrissKrossCliffsBazukaTNTBarrelEnd
	;dl $FC5C80,$FC5F40,GFX_Sprite_KastleKaosPlatform,GFX_Sprite_KastleKaosPlatformEnd
	;dl $FC5F40,$FC6240,GFX_Sprite_KastleKaosBGElements,GFX_Sprite_KastleKaosBGElementsEnd
	;dl $FD1F4A,$FD1FCA,GFX_UnknownTiles1,GFX_UnknownTiles1End
	;dl $FD2023,$FD2033,GFX_Layer3_FunkyHighlightMenuMask,GFX_Layer3_FunkyHighlightMenuMaskEnd
	;dl $FD2033,$FD2053,GFX_Layer1_FunkyHighlightMenuMask,GFX_Layer1_FunkyHighlightMenuMaskEnd
	;dl $FD20BD,$FD20DD,GFX_Layer1_SwankyHighlightMenuMask,GFX_Layer1_SwankyHighlightMenuMaskEnd
	;dl $FD20DD,$FD20ED,GFX_Layer3_SwankyHighlightMenuMask,GFX_Layer3_SwankyHighlightMenuMaskEnd
	;dl $FD20ED,$FD210D,GFX_Layer2_SwankyKongTextBG,GFX_Layer2_SwankyKongTextBGEnd
	;dl $FD215B,$FD217B,GFX_Sprite_NameEntryBackground,GFX_Sprite_NameEntryBackgroundEnd
	;dl $FD217B,$FD21FB,GFX_Sprite_FileSelectNumbers,GFX_Sprite_FileSelectNumbersEnd
	;dl $FD222D,$FD224D,GFX_Sprite_DialogueSelectionArrow,GFX_Sprite_DialogueSelectionArrowEnd
	;dl $FD229C,$FD22DC,GFX_UnknownTiles2,GFX_UnknownTiles2End
	;dl $FD2300,$FD2320,GFX_Layer2_WrinklyKongTextBG,GFX_Layer2_WrinklyKongTextBGEnd
	;dl $FD23A0,$FD24A0,GFX_Sprite_GyrocopterShadow,GFX_Sprite_GyrocopterShadowEnd
	;dl $FD24A0,$FD24C0,GFX_Sprite_CollectableOverworldFlower,GFX_Sprite_CollectableOverworldFlowerEnd
	;dl $FD25BB,$FD265B,GFX_Sprite_CottenTopCoveRockBarrier,GFX_Sprite_CottenTopCoveRockBarrierEnd
	;dl $FD2694,$FD26B4,GFX_Layer2_SkyHighSecretRope,GFX_Layer2_SkyHighSecretRopeEnd
	;dl $FDE415,$FDE815,GFX_Sprite_CollectableOrnament,GFX_Sprite_CollectableOrnamentEnd
	;dl $FFDB80,$FFDF80,GFX_Sprite_CollectablePresent,GFX_Sprite_CollectablePresentEnd
	;dl $FFDF80,$FFE380,GFX_Sprite_CollectableStar,GFX_Sprite_CollectableStarEnd
	;dl $FFE380,$FFE600,GFX_Sprite_HUDNumbers,GFX_Sprite_HUDNumbersEnd
	;dl $FFE600,$FFEA00,GFX_Sprite_Bananas,GFX_Sprite_BananasEnd
	;dl $FFEA00,$FFEE00,GFX_Sprite_ShadedFont,GFX_Sprite_ShadedFontEnd
	;dl $FFEE00,$FFEF00,GFX_Sprite_EllieWaterHUD,GFX_Sprite_EllieWaterHUDEnd
	;dl $FFEF00,$FFF000,GFX_Sprite_FuelHUD,GFX_Sprite_FuelHUDEnd
UncompressedGFXPointersEnd:

;--------------------------------------------------------------------

DynamicSpriteGFXPointersStart:
	;dl $C10016,$C10216,GFX_Dixie_Walk1,GFX_Dixie_Walk1End
	;dl $C1022C,$C1042C,GFX_Dixie_Walk2,GFX_Dixie_Walk2End
	;dl $C10442,$C10642,GFX_Dixie_Walk3,GFX_Dixie_Walk3End
	;dl $C1065A,$C1087A,GFX_Dixie_Walk4,GFX_Dixie_Walk4End
	;dl $C10890,$C10A90,GFX_Dixie_Walk5,GFX_Dixie_Walk5End
	;dl $C10AA6,$C10CA6,GFX_Dixie_Walk6,GFX_Dixie_Walk6End
	;dl $C10CBC,$C10EBC,GFX_Dixie_Walk7,GFX_Dixie_Walk7End
	;dl $C10ED6,$C11116,GFX_Dixie_Walk8,GFX_Dixie_Walk8End
	;dl $C1112A,$C1136A,GFX_Dixie_Walk9,GFX_Dixie_Walk9End
	;dl $C1137E,$C115BE,GFX_Dixie_Walk10,GFX_Dixie_Walk10End
	;dl $C115D2,$C11812,GFX_Dixie_Walk11,GFX_Dixie_Walk11End
	;dl $C11826,$C11A66,GFX_Dixie_Walk12,GFX_Dixie_Walk12End
	;dl $C11A7A,$C11CBA,GFX_Dixie_Walk13,GFX_Dixie_Walk13End
	;dl $C11CCC,$C11EEC,GFX_Dixie_Walk14,GFX_Dixie_Walk14End
	;dl $C11F00,$C12140,GFX_Dixie_Walk15,GFX_Dixie_Walk15End
	;dl $C12154,$C12394,GFX_Dixie_Walk16,GFX_Dixie_Walk16End
	;dl $C123A8,$C12528,GFX_Dixie_Turn1,GFX_Dixie_Turn1End
	;dl $C1253A,$C1269A,GFX_Dixie_Turn2,GFX_Dixie_Turn2End
	;dl $C126B0,$C128B0,GFX_Dixie_Run1,GFX_Dixie_Run1End
	;dl $C128C4,$C12B04,GFX_Dixie_Run2,GFX_Dixie_Run2End
	;dl $C12B1A,$C12D1A,GFX_Dixie_Run3,GFX_Dixie_Run3End
	;dl $C12D32,$C12F52,GFX_Dixie_Run4,GFX_Dixie_Run4End
	;dl $C12F6C,$C131AC,GFX_Dixie_Run5,GFX_Dixie_Run5End
	;dl $C131C8,$C13428,GFX_Dixie_Run6,GFX_Dixie_Run6End
	;dl $C13442,$C136E2,GFX_Dixie_Run7,GFX_Dixie_Run7End
	;dl $C13700,$C13980,GFX_Dixie_Run8,GFX_Dixie_Run8End
	;dl $C1399E,$C13C1E,GFX_Dixie_Run9,GFX_Dixie_Run9End
	;dl $C13C3C,$C13EBC,GFX_Dixie_Run10,GFX_Dixie_Run10End
	;dl $C13EDA,$C1415A,GFX_Dixie_Run11,GFX_Dixie_Run11End
	;dl $C14174,$C143B4,GFX_Dixie_Run12,GFX_Dixie_Run12End
	;dl $C143D0,$C14630,GFX_Dixie_Run13,GFX_Dixie_Run13End
	;dl $C1464C,$C1484C,GFX_Dixie_Run14,GFX_Dixie_Run14End
	;dl $C14868,$C14AC8,GFX_Dixie_Run15,GFX_Dixie_Run15End
	;dl $C14AE2,$C14D22,GFX_Dixie_Run16,GFX_Dixie_Run16End
	;dl $C14D38,$C14F38,GFX_Dixie_Idle1,GFX_Dixie_Idle1End
	;dl $C14F4E,$C1514E,GFX_Dixie_Idle2,GFX_Dixie_Idle2End
	;dl $C15164,$C15364,GFX_Dixie_Idle3,GFX_Dixie_Idle3End
	;dl $C1537A,$C1557A,GFX_Dixie_Idle4,GFX_Dixie_Idle4End
	;dl $C15592,$C157B2,GFX_Dixie_Idle5,GFX_Dixie_Idle5End
	;dl $C157CA,$C159EA,GFX_Dixie_Idle6,GFX_Dixie_Idle6End
	;dl $C15A02,$C15C22,GFX_Dixie_Idle7,GFX_Dixie_Idle7End
	;dl $C15C3A,$C15E5A,GFX_Dixie_Idle8,GFX_Dixie_Idle8End
	;dl $C15E72,$C16092,GFX_Dixie_Idle9,GFX_Dixie_Idle9End
	;dl $C160AA,$C162CA,GFX_Dixie_Idle10,GFX_Dixie_Idle10End
	;dl $C162E2,$C16502,GFX_Dixie_Idle11,GFX_Dixie_Idle11End
	;dl $C1651C,$C1675C,GFX_Dixie_Idle12,GFX_Dixie_Idle12End
	;dl $C16776,$C169B6,GFX_Dixie_Idle13,GFX_Dixie_Idle13End
	;dl $C169D0,$C16C10,GFX_Dixie_Idle14,GFX_Dixie_Idle14End
	;dl $C16C2E,$C16EAE,GFX_Dixie_Idle15,GFX_Dixie_Idle15End
	;dl $C16EC8,$C17108,GFX_Dixie_Swim1,GFX_Dixie_Swim1End
	;dl $C17122,$C17362,GFX_Dixie_Swim2,GFX_Dixie_Swim2End
	;dl $C1737C,$C175BC,GFX_Dixie_Swim3,GFX_Dixie_Swim3End
	;dl $C175DC,$C1781C,GFX_Dixie_Swim4,GFX_Dixie_Swim4End
	;dl $C1783E,$C17A9E,GFX_Dixie_Swim5,GFX_Dixie_Swim5End
	;dl $C17ABE,$C17CFE,GFX_Dixie_Swim6,GFX_Dixie_Swim6End
	;dl $C17D1C,$C17F3C,GFX_Dixie_Swim7,GFX_Dixie_Swim7End
	;dl $C17F5C,$C1819C,GFX_Dixie_Swim8,GFX_Dixie_Swim8End
	;dl $C181BA,$C183DA,GFX_Dixie_Swim9,GFX_Dixie_Swim9End
	;dl $C183F8,$C18618,GFX_Dixie_Swim10,GFX_Dixie_Swim10End
	;dl $C18636,$C18856,GFX_Dixie_Swim11,GFX_Dixie_Swim11End
	;dl $C18874,$C18A94,GFX_Dixie_Swim12,GFX_Dixie_Swim12End
	;dl $C18AB0,$C18CB0,GFX_Dixie_Swim13,GFX_Dixie_Swim13End
	;dl $C18CCC,$C18ECC,GFX_Dixie_Swim14,GFX_Dixie_Swim14End
	;dl $C18EEC,$C1912C,GFX_Dixie_Swim15,GFX_Dixie_Swim15End
	;dl $C1914C,$C1938C,GFX_Dixie_Swim16,GFX_Dixie_Swim16End
	;dl $C193A4,$C19564,GFX_Dixie_TurnWhileSwimming1,GFX_Dixie_TurnWhileSwimming1End
	;dl $C1957A,$C196BA,GFX_Dixie_TurnWhileSwimming2,GFX_Dixie_TurnWhileSwimming2End
	;dl $C196D0,$C198D0,GFX_Dixie_Stand,GFX_Dixie_StandEnd
	;dl $C198E6,$C19AE6,GFX_Dixie_Jump1,GFX_Dixie_Jump1End
	;dl $C19AFC,$C19CFC,GFX_Dixie_Jump2,GFX_Dixie_Jump2End
	;dl $C19D12,$C19F12,GFX_Dixie_Jump3,GFX_Dixie_Jump3End
	;dl $C19F2C,$C1A16C,GFX_Dixie_Jump4,GFX_Dixie_Jump4End
	;dl $C1A180,$C1A360,GFX_Dixie_Jump5,GFX_Dixie_Jump5End
	;dl $C1A378,$C1A598,GFX_Dixie_Jump6,GFX_Dixie_Jump6End
	;dl $C1A5AE,$C1A7AE,GFX_Dixie_Jump7,GFX_Dixie_Jump7End
	;dl $C1A7C4,$C1A9C4,GFX_Dixie_Jump8,GFX_Dixie_Jump8End
	;dl $C1A9DA,$C1ABDA,GFX_Dixie_Jump9,GFX_Dixie_Jump9End
	;dl $C1ABEE,$C1ADCE,GFX_Dixie_Jump10,GFX_Dixie_Jump10End
	;dl $C1ADE0,$C1AFA0,GFX_Dixie_Jump11,GFX_Dixie_Jump11End
	;dl $C1AFB2,$C1B172,GFX_Dixie_Jump12,GFX_Dixie_Jump12End
	;dl $C1B18A,$C1B3AA,GFX_Dixie_Jump13,GFX_Dixie_Jump13End
	;dl $C1B3C4,$C1B604,GFX_Dixie_Jump14,GFX_Dixie_Jump14End
	;dl $C1B61E,$C1B85E,GFX_Dixie_Jump15,GFX_Dixie_Jump15End
	;dl $C1B874,$C1BA74,GFX_Dixie_Jump16,GFX_Dixie_Jump16End
	;dl $C1BA8A,$C1BC8A,GFX_Dixie_Jump17,GFX_Dixie_Jump17End
	;dl $C1BCA4,$C1BEE4,GFX_Dixie_Jump18,GFX_Dixie_Jump18End
	;dl $C1BF00,$C1C160,GFX_Dixie_Jump19,GFX_Dixie_Jump19End
	;dl $C1C180,$C1C3C0,GFX_Dixie_Jump20,GFX_Dixie_Jump20End
	;dl $C1C3DC,$C1C63C,GFX_Dixie_Land1,GFX_Dixie_Land1End
	;dl $C1C656,$C1C896,GFX_Dixie_Land2,GFX_Dixie_Land2End
	;dl $C1C8B0,$C1CAF0,GFX_Dixie_Land3,GFX_Dixie_Land3End
	;dl $C1CB06,$C1CD06,GFX_Dixie_Land4,GFX_Dixie_Land4End
	;dl $C1CD1E,$C1CF3E,GFX_Dixie_Land5,GFX_Dixie_Land5End
	;dl $C1CF54,$C1D154,GFX_Dixie_Land6,GFX_Dixie_Land6End
	;dl $C1D164,$C1D364,GFX_Dixie_Land7,GFX_Dixie_Land7End
	;dl $C1D37E,$C1D55E,GFX_Dixie_HangFromHorizontalRope1,GFX_Dixie_HangFromHorizontalRope1End
	;dl $C1D578,$C1D758,GFX_Dixie_HangFromHorizontalRope2,GFX_Dixie_HangFromHorizontalRope2End
	;dl $C1D772,$C1D952,GFX_Dixie_HangFromHorizontalRope3,GFX_Dixie_HangFromHorizontalRope3End
	;dl $C1D96C,$C1DB4C,GFX_Dixie_HangFromHorizontalRope4,GFX_Dixie_HangFromHorizontalRope4End
	;dl $C1DB66,$C1DD46,GFX_Dixie_HangFromHorizontalRope5,GFX_Dixie_HangFromHorizontalRope5End
	;dl $C1DD60,$C1DF40,GFX_Dixie_ClimbHorizontalRope1,GFX_Dixie_ClimbHorizontalRope1End
	;dl $C1DF5A,$C1E13A,GFX_Dixie_ClimbHorizontalRope2,GFX_Dixie_ClimbHorizontalRope2End
	;dl $C1E154,$C1E334,GFX_Dixie_ClimbHorizontalRope3,GFX_Dixie_ClimbHorizontalRope3End
	;dl $C1E34E,$C1E52E,GFX_Dixie_ClimbHorizontalRope4,GFX_Dixie_ClimbHorizontalRope4End
	;dl $C1E54A,$C1E74A,GFX_Dixie_ClimbHorizontalRope5,GFX_Dixie_ClimbHorizontalRope5End
	;dl $C1E764,$C1E944,GFX_Dixie_ClimbHorizontalRope6,GFX_Dixie_ClimbHorizontalRope6End
	;dl $C1E95E,$C1EB3E,GFX_Dixie_ClimbHorizontalRope7,GFX_Dixie_ClimbHorizontalRope7End
	;dl $C1EB58,$C1ED38,GFX_Dixie_ClimbHorizontalRope8,GFX_Dixie_ClimbHorizontalRope8End
	;dl $C1ED50,$C1EF10,GFX_Dixie_ClimbHorizontalRope9,GFX_Dixie_ClimbHorizontalRope9End
	;dl $C1EF26,$C1F0C6,GFX_Dixie_ClimbHorizontalRope10,GFX_Dixie_ClimbHorizontalRope10End
	;dl $C1F0DE,$C1F29E,GFX_Dixie_ClimbHorizontalRope11,GFX_Dixie_ClimbHorizontalRope11End
	;dl $C1F2B8,$C1F498,GFX_Dixie_ClimbHorizontalRope12,GFX_Dixie_ClimbHorizontalRope12End
	;dl $C1F4B2,$C1F692,GFX_Dixie_ClimbHorizontalRope13,GFX_Dixie_ClimbHorizontalRope13End
	;dl $C1F6AC,$C1F88C,GFX_Dixie_ClimbHorizontalRope14,GFX_Dixie_ClimbHorizontalRope14End
	;dl $C1F8A4,$C1FA64,GFX_Dixie_ClimbHorizontalRope15,GFX_Dixie_ClimbHorizontalRope15End
	;dl $C1FA7C,$C1FC3C,GFX_Dixie_ClimbHorizontalRope16,GFX_Dixie_ClimbHorizontalRope16End
	;dl $C246BF,$C2487F,GFX_Dixie_Roll1,GFX_Dixie_Roll1End
	;dl $C24897,$C24A57,GFX_Dixie_Roll2,GFX_Dixie_Roll2End
	;dl $C24A6F,$C24C2F,GFX_Dixie_Roll3,GFX_Dixie_Roll3End
	;dl $C24C49,$C24E29,GFX_Dixie_Roll4,GFX_Dixie_Roll4End
	;dl $C24E41,$C25061,GFX_Dixie_Roll5,GFX_Dixie_Roll5End
	;dl $C25077,$C25277,GFX_Dixie_Roll6,GFX_Dixie_Roll6End
	;dl $C2528F,$C254AF,GFX_Dixie_Roll7,GFX_Dixie_Roll7End
	;dl $C254C5,$C256C5,GFX_Dixie_Roll8,GFX_Dixie_Roll8End
	;dl $C256DF,$C258BF,GFX_Dixie_Roll9,GFX_Dixie_Roll9End
	;dl $C258D5,$C25AD5,GFX_Dixie_Roll10,GFX_Dixie_Roll10End
	;dl $C25AED,$C25D0D,GFX_Dixie_Roll11,GFX_Dixie_Roll11End
	;dl $C25D1F,$C25E7F,GFX_Dixie_Roll12,GFX_Dixie_Roll12End
	;dl $C25E97,$C260B7,GFX_Dixie_Roll13,GFX_Dixie_Roll13End
	;dl $C260D5,$C26355,GFX_Dixie_Roll14,GFX_Dixie_Roll14End
	;dl $C26369,$C265A9,GFX_Dixie_Roll15,GFX_Dixie_Roll15End
	;dl $C265C1,$C26781,GFX_Dixie_Roll16,GFX_Dixie_Roll16End
	;dl $C26799,$C26959,GFX_Dixie_Roll17,GFX_Dixie_Roll17End
	;dl $C2696F,$C26B0F,GFX_Dixie_Roll18,GFX_Dixie_Roll18End
	;dl $C26B23,$C26D03,GFX_Dixie_Roll19,GFX_Dixie_Roll19End
	;dl $C26D17,$C26EF7,GFX_Dixie_Roll20,GFX_Dixie_Roll20End
	;dl $C26F1F,$C2723F,GFX_Dixie_Hover1,GFX_Dixie_Hover1End
	;dl $C2725D,$C274DD,GFX_Dixie_Hover2,GFX_Dixie_Hover2End
	;dl $C274F7,$C27797,GFX_Dixie_Hover3,GFX_Dixie_Hover3End
	;dl $C277B3,$C27A73,GFX_Dixie_Hover4,GFX_Dixie_Hover4End
	;dl $C27A91,$C27D71,GFX_Dixie_Hover5,GFX_Dixie_Hover5End
	;dl $C27D8D,$C2804D,GFX_Dixie_Hover6,GFX_Dixie_Hover6End
	;dl $C28069,$C28329,GFX_Dixie_Hover7,GFX_Dixie_Hover7End
	;dl $C28347,$C28627,GFX_Dixie_Hover8,GFX_Dixie_Hover8End
	;dl $C28641,$C288E1,GFX_Dixie_Hover9,GFX_Dixie_Hover9End
	;dl $C288F9,$C28B79,GFX_Dixie_Hover10,GFX_Dixie_Hover10End
	;dl $C28B91,$C28E11,GFX_Dixie_Hover11,GFX_Dixie_Hover11End
	;dl $C28E2D,$C2908D,GFX_Dixie_Hover12,GFX_Dixie_Hover12End
	;dl $C290AD,$C2934D,GFX_Dixie_Fall1,GFX_Dixie_Fall1End
	;dl $C2936D,$C2960D,GFX_Dixie_Fall2,GFX_Dixie_Fall2End
	;dl $C2962B,$C298AB,GFX_Dixie_Fall3,GFX_Dixie_Fall3End
	;dl $C298C9,$C29B49,GFX_Dixie_Fall4,GFX_Dixie_Fall4End
	;dl $C29B63,$C29DA3,GFX_Dixie_Fall5,GFX_Dixie_Fall5End
	;dl $C29DBD,$C29FFD,GFX_Dixie_Fall6,GFX_Dixie_Fall6End
	;dl $C2A019,$C2A279,GFX_Dixie_Fall7,GFX_Dixie_Fall7End
	;dl $C2A291,$C2A451,GFX_Dixie_ClimbUpSingleVerticalRope1,GFX_Dixie_ClimbUpSingleVerticalRope1End
	;dl $C2A467,$C2A667,GFX_Dixie_ClimbUpSingleVerticalRope2,GFX_Dixie_ClimbUpSingleVerticalRope2End
	;dl $C2A67D,$C2A87D,GFX_Dixie_ClimbUpSingleVerticalRope3,GFX_Dixie_ClimbUpSingleVerticalRope3End
	;dl $C2A895,$C2AA55,GFX_Dixie_ClimbUpSingleVerticalRope4,GFX_Dixie_ClimbUpSingleVerticalRope4End
	;dl $C2AA6D,$C2AC2D,GFX_Dixie_ClimbUpSingleVerticalRope5,GFX_Dixie_ClimbUpSingleVerticalRope5End
	;dl $C2AC45,$C2AE05,GFX_Dixie_ClimbUpSingleVerticalRope6,GFX_Dixie_ClimbUpSingleVerticalRope6End
	;dl $C2AE19,$C2AF99,GFX_Dixie_ClimbUpSingleVerticalRope7,GFX_Dixie_ClimbUpSingleVerticalRope7End
	;dl $C2AFAD,$C2B12D,GFX_Dixie_ClimbUpSingleVerticalRope8,GFX_Dixie_ClimbUpSingleVerticalRope8End
	;dl $C2B141,$C2B2C1,GFX_Dixie_ClimbUpSingleVerticalRope9,GFX_Dixie_ClimbUpSingleVerticalRope9End
	;dl $C2B2D9,$C2B499,GFX_Dixie_ClimbUpSingleVerticalRope10,GFX_Dixie_ClimbUpSingleVerticalRope10End
	;dl $C2B4B3,$C2B693,GFX_Dixie_ClimbUpSingleVerticalRope11,GFX_Dixie_ClimbUpSingleVerticalRope11End
	;dl $C2B6B1,$C2B8D1,GFX_Dixie_ClimbUpSingleVerticalRope12,GFX_Dixie_ClimbUpSingleVerticalRope12End
	;dl $C2B8EB,$C2BACB,GFX_Dixie_HangOnVerticalRope,GFX_Dixie_HangOnVerticalRopeEnd
	;dl $C2BAE3,$C2BCA3,GFX_Dixie_TurnOnVerticalRope1,GFX_Dixie_TurnOnVerticalRope1End
	;dl $C2BCBB,$C2BE7B,GFX_Dixie_TurnOnVerticalRope2,GFX_Dixie_TurnOnVerticalRope2End
	;dl $C2BE8B,$C2BFCB,GFX_Dixie_TurnOnVerticalRope3,GFX_Dixie_TurnOnVerticalRope3End
	;dl $C2BFDF,$C2C15F,GFX_Dixie_IdleOnVerticalRope1,GFX_Dixie_IdleOnVerticalRope1End
	;dl $C2C173,$C2C2F3,GFX_Dixie_IdleOnVerticalRope2,GFX_Dixie_IdleOnVerticalRope2End
	;dl $C2C307,$C2C4E7,GFX_Dixie_IdleOnVerticalRope3,GFX_Dixie_IdleOnVerticalRope3End
	;dl $C2C4FF,$C2C6BF,GFX_Dixie_IdleOnVerticalRope4,GFX_Dixie_IdleOnVerticalRope4End
	;dl $C2C6D7,$C2C897,GFX_Dixie_IdleOnVerticalRope5,GFX_Dixie_IdleOnVerticalRope5End
	;dl $C2C8B1,$C2CA91,GFX_Dixie_IdleOnVerticalRope6,GFX_Dixie_IdleOnVerticalRope6End
	;dl $C31850,$C31AD0,GFX_Dixie_Hurt1,GFX_Dixie_Hurt1End
	;dl $C31AEA,$C31D2A,GFX_Dixie_Hurt2,GFX_Dixie_Hurt2End
	;dl $C31D42,$C31F62,GFX_Dixie_Hurt3,GFX_Dixie_Hurt3End
	;dl $C31F7E,$C321DE,GFX_Dixie_Hurt4,GFX_Dixie_Hurt4End
	;dl $C321FA,$C323FA,GFX_Dixie_Hurt5,GFX_Dixie_Hurt5End
	;dl $C32412,$C325D2,GFX_Dixie_Hurt6,GFX_Dixie_Hurt6End
	;dl $C325EA,$C327AA,GFX_Dixie_Hurt7,GFX_Dixie_Hurt7End
	;dl $C327C4,$C329A4,GFX_Dixie_Hurt8,GFX_Dixie_Hurt8End
	;dl $C329BE,$C32B9E,GFX_Dixie_Hurt9,GFX_Dixie_Hurt9End
	;dl $C32BBC,$C32DDC,GFX_Dixie_Hurt10,GFX_Dixie_Hurt10End
	;dl $C32DFC,$C3303C,GFX_Dixie_Hurt11,GFX_Dixie_Hurt11End
	;dl $C33058,$C33258,GFX_Dixie_Hurt12,GFX_Dixie_Hurt12End
	;dl $C33270,$C33430,GFX_Dixie_Hurt13,GFX_Dixie_Hurt13End
	;dl $C33448,$C33608,GFX_Dixie_Hurt14,GFX_Dixie_Hurt14End
	;dl $C33628,$C33868,GFX_Dixie_Hurt15,GFX_Dixie_Hurt15End
	;dl $C33880,$C33AA0,GFX_Dixie_Hurt16,GFX_Dixie_Hurt16End
	;dl $C33AB4,$C33C94,GFX_Dixie_Hurt17,GFX_Dixie_Hurt17End
	;dl $C33CA8,$C33E28,GFX_Dixie_Hurt18,GFX_Dixie_Hurt18End
	;dl $C33E3C,$C33FBC,GFX_Dixie_Hurt19,GFX_Dixie_Hurt19End
	;dl $C33FD2,$C34172,GFX_Dixie_Hurt20,GFX_Dixie_Hurt20End
	;dl $C34186,$C34306,GFX_Dixie_Hurt21,GFX_Dixie_Hurt21End
	;dl $C3431C,$C344BC,GFX_Dixie_Hurt22,GFX_Dixie_Hurt22End
	;dl $C344D2,$C34672,GFX_Dixie_Hurt23,GFX_Dixie_Hurt23End
	;dl $C3467E,$C346BE,GFX_DixieTears_Pose1,GFX_DixieTears_Pose1End
	;dl $C346CE,$C3474E,GFX_DixieTears_Pose2,GFX_DixieTears_Pose2End
	;dl $C3475C,$C347BC,GFX_DixieTears_Pose3,GFX_DixieTears_Pose3End
	;dl $C347CA,$C3482A,GFX_DixieTears_Pose4,GFX_DixieTears_Pose4End
	;dl $C34838,$C34898,GFX_DixieTears_Pose5,GFX_DixieTears_Pose5End
	;dl $C348A8,$C34928,GFX_DixieTears_Pose6,GFX_DixieTears_Pose6End
	;dl $C3493A,$C34AFA,GFX_Dixie_Bounce1,GFX_Dixie_Bounce1End
	;dl $C34B0C,$C34CCC,GFX_Dixie_Bounce2,GFX_Dixie_Bounce2End
	;dl $C34CDE,$C34E3E,GFX_Dixie_Bounce3,GFX_Dixie_Bounce3End
	;dl $C34E52,$C34FD2,GFX_Dixie_Bounce4,GFX_Dixie_Bounce4End
	;dl $C34FE6,$C35166,GFX_Dixie_Bounce5,GFX_Dixie_Bounce5End
	;dl $C3517C,$C3531C,GFX_Dixie_Bounce6,GFX_Dixie_Bounce6End
	;dl $C35332,$C354D2,GFX_Dixie_Bounce7,GFX_Dixie_Bounce7End
	;dl $C354E8,$C35688,GFX_Dixie_Bounce8,GFX_Dixie_Bounce8End
	;dl $C3569A,$C3585A,GFX_Dixie_Bounce9,GFX_Dixie_Bounce9End
	;dl $C3586C,$C35A2C,GFX_Dixie_Bounce10,GFX_Dixie_Bounce10End
	;dl $C35A40,$C35BC0,GFX_Dixie_Bounce11,GFX_Dixie_Bounce11End
	;dl $C35BD6,$C35D76,GFX_Dixie_Bounce12,GFX_Dixie_Bounce12End
	;dl $C35D8C,$C35F2C,GFX_Dixie_Bounce13,GFX_Dixie_Bounce13End
	;dl $C35F42,$C360E2,GFX_Dixie_Bounce14,GFX_Dixie_Bounce14End
	;dl $C360F4,$C36254,GFX_Dixie_Bounce15,GFX_Dixie_Bounce15End
	;dl $C3626A,$C3640A,GFX_Dixie_Bounce16,GFX_Dixie_Bounce16End
	;dl $C3641E,$C365FE,GFX_Dixie_Pickup1,GFX_Dixie_Pickup1End
	;dl $C36616,$C367D6,GFX_Dixie_Pickup2,GFX_Dixie_Pickup2End
	;dl $C367EC,$C3698C,GFX_Dixie_Pickup3,GFX_Dixie_Pickup3End
	;dl $C369A0,$C36B20,GFX_Dixie_Pickup4,GFX_Dixie_Pickup4End
	;dl $C36B34,$C36CB4,GFX_Dixie_Pickup5,GFX_Dixie_Pickup5End
	;dl $C36CC8,$C36EA8,GFX_Dixie_Pickup6,GFX_Dixie_Pickup6End
	;dl $C36EC0,$C37080,GFX_Dixie_Pickup7,GFX_Dixie_Pickup7End
	;dl $C37094,$C37274,GFX_Dixie_Pickup8,GFX_Dixie_Pickup8End
	;dl $C3728C,$C374AC,GFX_Dixie_Pickup9,GFX_Dixie_Pickup9End
	;dl $C374CA,$C3774A,GFX_Dixie_Pickup10,GFX_Dixie_Pickup10End
	;dl $C37768,$C379E8,GFX_Dixie_Pickup11,GFX_Dixie_Pickup11End
	;dl $C37A02,$C37CA2,GFX_Dixie_Pickup12,GFX_Dixie_Pickup12End
	;dl $C37CB6,$C37F56,GFX_Dixie_Pickup13,GFX_Dixie_Pickup13End
	;dl $C37F6A,$C3820A,GFX_Dixie_HoldIdle1,GFX_Dixie_HoldIdle1End
	;dl $C3821E,$C384BE,GFX_Dixie_HoldIdle2,GFX_Dixie_HoldIdle2End
	;dl $C384D8,$C38778,GFX_Dixie_HoldWalk1,GFX_Dixie_HoldWalk1End
	;dl $C38794,$C38A54,GFX_Dixie_HoldWalk2,GFX_Dixie_HoldWalk2End
	;dl $C38A70,$C38D30,GFX_Dixie_HoldWalk3,GFX_Dixie_HoldWalk3End
	;dl $C38D4A,$C38FEA,GFX_Dixie_HoldWalk4,GFX_Dixie_HoldWalk4End
	;dl $C39004,$C392A4,GFX_Dixie_HoldWalk5,GFX_Dixie_HoldWalk5End
	;dl $C392BE,$C3955E,GFX_Dixie_HoldWalk6,GFX_Dixie_HoldWalk6End
	;dl $C39578,$C39818,GFX_Dixie_HoldWalk7,GFX_Dixie_HoldWalk7End
	;dl $C39832,$C39AD2,GFX_Dixie_HoldWalk8,GFX_Dixie_HoldWalk8End
	;dl $C39AEC,$C39D8C,GFX_Dixie_HoldWalk9,GFX_Dixie_HoldWalk9End
	;dl $C39DA6,$C3A046,GFX_Dixie_HoldWalk10,GFX_Dixie_HoldWalk10End
	;dl $C3A062,$C3A322,GFX_Dixie_HoldWalk11,GFX_Dixie_HoldWalk11End
	;dl $C3A33C,$C3A5DC,GFX_Dixie_HoldWalk12,GFX_Dixie_HoldWalk12End
	;dl $C3A5F6,$C3A896,GFX_Dixie_HoldWalk13,GFX_Dixie_HoldWalk13End
	;dl $C3A8B0,$C3AB50,GFX_Dixie_HoldWalk14,GFX_Dixie_HoldWalk14End
	;dl $C3AB6C,$C3AE2C,GFX_Dixie_HoldWalk15,GFX_Dixie_HoldWalk15End
	;dl $C3AE46,$C3B0E6,GFX_Dixie_HoldWalk16,GFX_Dixie_HoldWalk16End
	;dl $C3B106,$C3B3A6,GFX_Dixie_Throw1,GFX_Dixie_Throw1End
	;dl $C3B3C6,$C3B666,GFX_Dixie_Throw2,GFX_Dixie_Throw2End
	;dl $C3B684,$C3B904,GFX_Dixie_Throw3,GFX_Dixie_Throw3End
	;dl $C3B922,$C3BBA2,GFX_Dixie_Throw4,GFX_Dixie_Throw4End
	;dl $C3BBBE,$C3BE1E,GFX_Dixie_Throw5,GFX_Dixie_Throw5End
	;dl $C3BE32,$C3C072,GFX_Dixie_Throw6,GFX_Dixie_Throw6End
	;dl $C3C086,$C3C2C6,GFX_Dixie_Throw7,GFX_Dixie_Throw7End
	;dl $C3C2DC,$C3C53C,GFX_Dixie_Throw8,GFX_Dixie_Throw8End
	;dl $C3C558,$C3C7B8,GFX_Dixie_Throw9,GFX_Dixie_Throw9End
	;dl $C3C7D2,$C3CA12,GFX_Dixie_Throw10,GFX_Dixie_Throw10End
	;dl $C3CA2A,$C3CCAA,GFX_Dixie_Throw11,GFX_Dixie_Throw11End
	;dl $C3CCC4,$C3CF64,GFX_Dixie_Throw12,GFX_Dixie_Throw12End
	;dl $C3CF80,$C3D1E0,GFX_Dixie_Throw13,GFX_Dixie_Throw13End
	;dl $C3D1FC,$C3D45C,GFX_Dixie_Throw14,GFX_Dixie_Throw14End
	;dl $C3D47A,$C3D6FA,GFX_Dixie_Throw15,GFX_Dixie_Throw15End
	;dl $C3D716,$C3D976,GFX_Dixie_Throw16,GFX_Dixie_Throw16End
	;dl $C3D992,$C3DBF2,GFX_Dixie_Throw17,GFX_Dixie_Throw17End
	;dl $C3DC0E,$C3DE6E,GFX_Dixie_Throw18,GFX_Dixie_Throw18End
	;dl $C3DE8A,$C3E08A,GFX_Dixie_Throw19,GFX_Dixie_Throw19End
	;dl $C3E0A0,$C3E240,GFX_Dixie_Throw20,GFX_Dixie_Throw20End
	;dl $C3E252,$C3E412,GFX_Dixie_Throw21,GFX_Dixie_Throw21End
	;dl $C41B75,$C41D55,GFX_Dixie_SitOnAnimalBuddy1,GFX_Dixie_SitOnAnimalBuddy1End
	;dl $C41D6F,$C41FAF,GFX_Dixie_SitOnAnimalBuddy2,GFX_Dixie_SitOnAnimalBuddy2End
	;dl $C41FC5,$C421C5,GFX_Dixie_SitOnAnimalBuddy3,GFX_Dixie_SitOnAnimalBuddy3End
	;dl $C421DD,$C423FD,GFX_Dixie_SitOnAnimalBuddy4,GFX_Dixie_SitOnAnimalBuddy4End
	;dl $C42413,$C42613,GFX_Dixie_SitOnAnimalBuddy5,GFX_Dixie_SitOnAnimalBuddy5End
	;dl $C42629,$C42829,GFX_Dixie_SitOnAnimalBuddy6,GFX_Dixie_SitOnAnimalBuddy6End
	;dl $C4283F,$C42A3F,GFX_Dixie_SitOnAnimalBuddy7,GFX_Dixie_SitOnAnimalBuddy7End
	;dl $C42A55,$C42C55,GFX_Dixie_SitOnAnimalBuddy8,GFX_Dixie_SitOnAnimalBuddy8End
	;dl $C42C6B,$C42E6B,GFX_Dixie_SitOnAnimalBuddy9,GFX_Dixie_SitOnAnimalBuddy9End
	;dl $C42E83,$C430A3,GFX_Dixie_SitOnAnimalBuddy10,GFX_Dixie_SitOnAnimalBuddy10End
	;dl $C430BB,$C432DB,GFX_Dixie_SitOnAnimalBuddy11,GFX_Dixie_SitOnAnimalBuddy11End
	;dl $C432F3,$C43513,GFX_Dixie_SitOnAnimalBuddy12,GFX_Dixie_SitOnAnimalBuddy12End
	;dl $C43527,$C43707,GFX_Dixie_IdleOnAnimalBuddy1,GFX_Dixie_IdleOnAnimalBuddy1End
	;dl $C4371F,$C4393F,GFX_Dixie_IdleOnAnimalBuddy2,GFX_Dixie_IdleOnAnimalBuddy2End
	;dl $C43953,$C43B33,GFX_Dixie_IdleOnAnimalBuddy3,GFX_Dixie_IdleOnAnimalBuddy3End
	;dl $C43B47,$C43D27,GFX_Dixie_IdleOnAnimalBuddy4,GFX_Dixie_IdleOnAnimalBuddy4End
	;dl $C43D39,$C43EF9,GFX_Dixie_IdleOnAnimalBuddy5,GFX_Dixie_IdleOnAnimalBuddy5End
	;dl $C43F0B,$C440CB,GFX_Dixie_IdleOnAnimalBuddy6,GFX_Dixie_IdleOnAnimalBuddy6End
	;dl $C440DD,$C4429D,GFX_Dixie_IdleOnAnimalBuddy7,GFX_Dixie_IdleOnAnimalBuddy7End
	;dl $C442B3,$C444B3,GFX_Dixie_Duck1,GFX_Dixie_Duck1End
	;dl $C444C7,$C44707,GFX_Dixie_Duck2,GFX_Dixie_Duck2End
	;dl $C4471B,$C448FB,GFX_Dixie_Duck3,GFX_Dixie_Duck3End
	;dl $C4490F,$C44AEF,GFX_Dixie_Duck4,GFX_Dixie_Duck4End
	;dl $C44B05,$C44CA5,GFX_Dixie_Duck5,GFX_Dixie_Duck5End
	;dl $C44CB5,$C44E55,GFX_Dixie_Duck6,GFX_Dixie_Duck6End
	;dl $C44E67,$C45027,GFX_Dixie_Duck7,GFX_Dixie_Duck7End
	;dl $C45039,$C451F9,GFX_Dixie_Duck8,GFX_Dixie_Duck8End
	;dl $C45217,$C45497,GFX_Dixie_RideSteelKeg1,GFX_Dixie_RideSteelKeg1End
	;dl $C454B1,$C456F1,GFX_Dixie_RideSteelKeg2,GFX_Dixie_RideSteelKeg2End
	;dl $C4570B,$C4594B,GFX_Dixie_RideSteelKeg3,GFX_Dixie_RideSteelKeg3End
	;dl $C45965,$C45BA5,GFX_Dixie_RideSteelKeg4,GFX_Dixie_RideSteelKeg4End
	;dl $C45BBF,$C45DFF,GFX_Dixie_RideSteelKeg5,GFX_Dixie_RideSteelKeg5End
	;dl $C45E1B,$C4607B,GFX_Dixie_RideSteelKeg6,GFX_Dixie_RideSteelKeg6End
	;dl $C46095,$C462D5,GFX_Dixie_RideSteelKeg7,GFX_Dixie_RideSteelKeg7End
	;dl $C462F5,$C46535,GFX_Dixie_RideSteelKeg8,GFX_Dixie_RideSteelKeg8End
	;dl $C4654B,$C4674B,GFX_Dixie_TeamUpWalk1,GFX_Dixie_TeamUpWalk1End
	;dl $C46761,$C46961,GFX_Dixie_TeamUpWalk2,GFX_Dixie_TeamUpWalk2End
	;dl $C46979,$C46B99,GFX_Dixie_TeamUpWalk3,GFX_Dixie_TeamUpWalk3End
	;dl $C46BB1,$C46DD1,GFX_Dixie_TeamUpWalk4,GFX_Dixie_TeamUpWalk4End
	;dl $C46DEB,$C4702B,GFX_Dixie_TeamUpWalk5,GFX_Dixie_TeamUpWalk5End
	;dl $C47043,$C47263,GFX_Dixie_TeamUpWalk6,GFX_Dixie_TeamUpWalk6End
	;dl $C4727B,$C4749B,GFX_Dixie_TeamUpWalk7,GFX_Dixie_TeamUpWalk7End
	;dl $C474B3,$C476D3,GFX_Dixie_TeamUpWalk8,GFX_Dixie_TeamUpWalk8End
	;dl $C476EB,$C4790B,GFX_Dixie_TeamUpWalk9,GFX_Dixie_TeamUpWalk9End
	;dl $C47923,$C47B43,GFX_Dixie_TeamUpWalk10,GFX_Dixie_TeamUpWalk10End
	;dl $C47B5B,$C47D7B,GFX_Dixie_TeamUpWalk11,GFX_Dixie_TeamUpWalk11End
	;dl $C47D95,$C47FD5,GFX_Dixie_TeamUpWalk12,GFX_Dixie_TeamUpWalk12End
	;dl $C47FEF,$C4822F,GFX_Dixie_TeamUpWalk13,GFX_Dixie_TeamUpWalk13End
	;dl $C48247,$C48467,GFX_Dixie_TeamUpWalk14,GFX_Dixie_TeamUpWalk14End
	;dl $C4847F,$C4869F,GFX_Dixie_TeamUpWalk15,GFX_Dixie_TeamUpWalk15End
	;dl $C486B7,$C488D7,GFX_Dixie_TeamUpWalk16,GFX_Dixie_TeamUpWalk16End
	;dl $C488EF,$C48B0F,GFX_Dixie_TeamUpIdle1,GFX_Dixie_TeamUpIdle1End
	;dl $C48B27,$C48D47,GFX_Dixie_TeamUpIdle2,GFX_Dixie_TeamUpIdle2End
	;dl $C48D5F,$C48F7F,GFX_Dixie_TeamUpIdle3,GFX_Dixie_TeamUpIdle3End
	;dl $C48F97,$C491B7,GFX_Dixie_TeamUpIdle4,GFX_Dixie_TeamUpIdle4End
	;dl $C491D5,$C493F5,GFX_Dixie_Carried1,GFX_Dixie_Carried1End
	;dl $C4940F,$C4964F,GFX_Dixie_Carried2,GFX_Dixie_Carried2End
	;dl $C49671,$C498D1,GFX_Dixie_Carried3,GFX_Dixie_Carried3End
	;dl $C498F3,$C49B53,GFX_Dixie_Carried4,GFX_Dixie_Carried4End
	;dl $C49B77,$C49DF7,GFX_Dixie_Carried5,GFX_Dixie_Carried5End
	;dl $C49E15,$C4A035,GFX_Dixie_Carried6,GFX_Dixie_Carried6End
	;dl $C4A055,$C4A295,GFX_Dixie_Carried7,GFX_Dixie_Carried7End
	;dl $C4A2B3,$C4A4D3,GFX_Dixie_Carried8,GFX_Dixie_Carried8End
	;dl $C4A4E3,$C4A6E3,GFX_Dixie_CarriedIdle1,GFX_Dixie_CarriedIdle1End
	;dl $C4A6F7,$C4A937,GFX_Dixie_CarriedIdle2,GFX_Dixie_CarriedIdle2End
	;dl $C4A94B,$C4AB8B,GFX_Dixie_CarriedIdle3,GFX_Dixie_CarriedIdle3End
	;dl $C4AB9F,$C4ADDF,GFX_Dixie_CarriedIdle4,GFX_Dixie_CarriedIdle4End
	;dl $C4ADEF,$C4AFEF,GFX_Dixie_CarriedIdle5,GFX_Dixie_CarriedIdle5End
	;dl $C4B003,$C4B183,GFX_Dixie_CarriedIdle6,GFX_Dixie_CarriedIdle6End
	;dl $C4B195,$C4B2F5,GFX_Dixie_CarriedIdle7,GFX_Dixie_CarriedIdle7End
	;dl $C4B30F,$C4B4EF,GFX_Dixie_TeamUpThrow1,GFX_Dixie_TeamUpThrow1End
	;dl $C4B507,$C4B727,GFX_Dixie_TeamUpThrow2,GFX_Dixie_TeamUpThrow2End
	;dl $C4B741,$C4B981,GFX_Dixie_TeamUpThrow3,GFX_Dixie_TeamUpThrow3End
	;dl $C4B997,$C4BB97,GFX_Dixie_TeamUpThrow4,GFX_Dixie_TeamUpThrow4End
	;dl $C4BBAD,$C4BDAD,GFX_Dixie_TeamUpThrow5,GFX_Dixie_TeamUpThrow5End
	;dl $C4BDC7,$C4C007,GFX_Dixie_TeamUpThrow6,GFX_Dixie_TeamUpThrow6End
	;dl $C4C027,$C4C2C7,GFX_Dixie_TeamUpThrow7,GFX_Dixie_TeamUpThrow7End
	;dl $C4C2E7,$C4C5E7,GFX_Kiddy_Carried1,GFX_Kiddy_Carried1End
	;dl $C4C607,$C4C907,GFX_Kiddy_Carried2,GFX_Kiddy_Carried2End
	;dl $C4C925,$C4CC05,GFX_Kiddy_Carried3,GFX_Kiddy_Carried3End
	;dl $C4CC23,$C4CF03,GFX_Kiddy_Carried4,GFX_Kiddy_Carried4End
	;dl $C4CF21,$C4D201,GFX_Kiddy_CarriedIdle1,GFX_Kiddy_CarriedIdle1End
	;dl $C4D21F,$C4D4FF,GFX_Kiddy_CarriedIdle2,GFX_Kiddy_CarriedIdle2End
	;dl $C4D51F,$C4D81F,GFX_Kiddy_CarriedIdle3,GFX_Kiddy_CarriedIdle3End
	;dl $C4D83F,$C4DB3F,GFX_Kiddy_CarriedIdle4,GFX_Kiddy_CarriedIdle4End
	;dl $C4DB5D,$C4DE3D,GFX_Kiddy_CarriedIdle5,GFX_Kiddy_CarriedIdle5End
	;dl $C4DE5B,$C4E13B,GFX_Kiddy_CarriedIdle6,GFX_Kiddy_CarriedIdle6End
	;dl $C4E159,$C4E439,GFX_Kiddy_CarriedIdle7,GFX_Kiddy_CarriedIdle7End
	;dl $C4E459,$C4E759,GFX_Kiddy_CarriedIdle8,GFX_Kiddy_CarriedIdle8End
	;dl $C4E779,$C4EA79,GFX_Kiddy_CarriedIdle9,GFX_Kiddy_CarriedIdle9End
	;dl $C4EA9B,$C4ED5B,GFX_Kiddy_CarriedIdle10,GFX_Kiddy_CarriedIdle10End
	;dl $C4ED7F,$C4F05F,GFX_Kiddy_CarriedIdle11,GFX_Kiddy_CarriedIdle11End
	;dl $C533D5,$C53675,GFX_Kiddy_TeamUpWalk1,GFX_Kiddy_TeamUpWalk1End
	;dl $C53695,$C53935,GFX_Kiddy_TeamUpWalk2,GFX_Kiddy_TeamUpWalk2End
	;dl $C53951,$C53BB1,GFX_Kiddy_TeamUpWalk3,GFX_Kiddy_TeamUpWalk3End
	;dl $C53BCF,$C53E4F,GFX_Kiddy_TeamUpWalk4,GFX_Kiddy_TeamUpWalk4End
	;dl $C53E6B,$C540CB,GFX_Kiddy_TeamUpWalk5,GFX_Kiddy_TeamUpWalk5End
	;dl $C540E7,$C54347,GFX_Kiddy_TeamUpWalk6,GFX_Kiddy_TeamUpWalk6End
	;dl $C54367,$C54607,GFX_Kiddy_TeamUpWalk7,GFX_Kiddy_TeamUpWalk7End
	;dl $C54623,$C548E3,GFX_Kiddy_TeamUpWalk8,GFX_Kiddy_TeamUpWalk8End
	;dl $C54905,$C54BC5,GFX_Kiddy_TeamUpWalk9,GFX_Kiddy_TeamUpWalk9End
	;dl $C54BE1,$C54EA1,GFX_Kiddy_TeamUpWalk10,GFX_Kiddy_TeamUpWalk10End
	;dl $C54EC1,$C55161,GFX_Kiddy_TeamUpWalk11,GFX_Kiddy_TeamUpWalk11End
	;dl $C55181,$C55421,GFX_Kiddy_TeamUpWalk12,GFX_Kiddy_TeamUpWalk12End
	;dl $C5543D,$C5569D,GFX_Kiddy_TeamUpWalk13,GFX_Kiddy_TeamUpWalk13End
	;dl $C556BB,$C5593B,GFX_Kiddy_TeamUpWalk14,GFX_Kiddy_TeamUpWalk14End
	;dl $C55957,$C55BB7,GFX_Kiddy_TeamUpWalk15,GFX_Kiddy_TeamUpWalk15End
	;dl $C55BD5,$C55E55,GFX_Kiddy_TeamUpWalk16,GFX_Kiddy_TeamUpWalk16End
	;dl $C55E6F,$C560AF,GFX_Kiddy_TeamUpIdle1,GFX_Kiddy_TeamUpIdle1End
	;dl $C560CD,$C5634D,GFX_Kiddy_TeamUpIdle2,GFX_Kiddy_TeamUpIdle2End
	;dl $C5636B,$C565EB,GFX_Kiddy_TeamUpIdle3,GFX_Kiddy_TeamUpIdle3End
	;dl $C56609,$C56889,GFX_Kiddy_TeamUpIdle4,GFX_Kiddy_TeamUpIdle4End
	;dl $C568A9,$C56BA9,GFX_Kiddy_Walk1,GFX_Kiddy_Walk1End
	;dl $C56BC5,$C56EE5,GFX_Kiddy_Walk2,GFX_Kiddy_Walk2End
	;dl $C56F01,$C57221,GFX_Kiddy_Walk3,GFX_Kiddy_Walk3End
	;dl $C5723F,$C5751F,GFX_Kiddy_Walk4,GFX_Kiddy_Walk4End
	;dl $C5753B,$C577FB,GFX_Kiddy_Walk5,GFX_Kiddy_Walk5End
	;dl $C57813,$C57AF3,GFX_Kiddy_Walk6,GFX_Kiddy_Walk6End
	;dl $C57B0F,$C57E2F,GFX_Kiddy_Walk7,GFX_Kiddy_Walk7End
	;dl $C57E4B,$C5816B,GFX_Kiddy_Walk8,GFX_Kiddy_Walk8End
	;dl $C58187,$C584A7,GFX_Kiddy_Walk9,GFX_Kiddy_Walk9End
	;dl $C584C3,$C587E3,GFX_Kiddy_Walk10,GFX_Kiddy_Walk10End
	;dl $C58805,$C58B85,GFX_Kiddy_Walk11,GFX_Kiddy_Walk11End
	;dl $C58BA5,$C58F05,GFX_Kiddy_Walk12,GFX_Kiddy_Walk12End
	;dl $C58F21,$C59241,GFX_Kiddy_Walk13,GFX_Kiddy_Walk13End
	;dl $C59261,$C59561,GFX_Kiddy_Walk14,GFX_Kiddy_Walk14End
	;dl $C5957F,$C5985F,GFX_Kiddy_Walk15,GFX_Kiddy_Walk15End
	;dl $C59885,$C59B85,GFX_Kiddy_Walk16,GFX_Kiddy_Walk16End
	;dl $C59B9F,$C59E9F,GFX_Kiddy_Victory1,GFX_Kiddy_Victory1End
	;dl $C59EB7,$C5A197,GFX_Kiddy_Victory2,GFX_Kiddy_Victory2End
	;dl $C5A1AF,$C5A42F,GFX_Kiddy_Victory3,GFX_Kiddy_Victory3End
	;dl $C5A449,$C5A6E9,GFX_Kiddy_Victory4,GFX_Kiddy_Victory4End
	;dl $C5A703,$C5A9A3,GFX_Kiddy_Victory5,GFX_Kiddy_Victory5End
	;dl $C5A9BD,$C5AC5D,GFX_Kiddy_Victory6,GFX_Kiddy_Victory6End
	;dl $C5AC77,$C5AF17,GFX_Kiddy_Victory7,GFX_Kiddy_Victory7End
	;dl $C5AF33,$C5B1F3,GFX_Kiddy_SitDown1,GFX_Kiddy_SitDown1End
	;dl $C5B20F,$C5B4CF,GFX_Kiddy_SitDown2,GFX_Kiddy_SitDown2End
	;dl $C5B4E9,$C5B7E9,GFX_Kiddy_SitDown3,GFX_Kiddy_SitDown3End
	;dl $C5B803,$C5BB03,GFX_Kiddy_SitDown4,GFX_Kiddy_SitDown4End
	;dl $C5BB25,$C5BE45,GFX_Kiddy_SitDown5,GFX_Kiddy_SitDown5End
	;dl $C5BE69,$C5C1A9,GFX_Kiddy_SitDown6,GFX_Kiddy_SitDown6End
	;dl $C5C1C3,$C5C463,GFX_Kiddy_Run1,GFX_Kiddy_Run1End
	;dl $C5C481,$C5C761,GFX_Kiddy_Run2,GFX_Kiddy_Run2End
	;dl $C5C781,$C5CA81,GFX_Kiddy_Run3,GFX_Kiddy_Run3End
	;dl $C5CA9F,$C5CDDF,GFX_Kiddy_Run4,GFX_Kiddy_Run4End
	;dl $C5CDFF,$C5D0FF,GFX_Kiddy_Run5,GFX_Kiddy_Run5End
	;dl $C5D11B,$C5D3DB,GFX_Kiddy_Run6,GFX_Kiddy_Run6End
	;dl $C5D3F9,$C5D6D9,GFX_Kiddy_Run7,GFX_Kiddy_Run7End
	;dl $C5D6F3,$C5D993,GFX_Kiddy_Run8,GFX_Kiddy_Run8End
	;dl $C5D9AF,$C5DC6F,GFX_Kiddy_Run9,GFX_Kiddy_Run9End
	;dl $C5DC91,$C5DF51,GFX_Kiddy_Run10,GFX_Kiddy_Run10End
	;dl $C5DF6F,$C5E1EF,GFX_Kiddy_Run11,GFX_Kiddy_Run11End
	;dl $C5E209,$C5E4A9,GFX_Kiddy_Run12,GFX_Kiddy_Run12End
	;dl $C613CC,$C6168C,GFX_Kiddy_Jump1,GFX_Kiddy_Jump1End
	;dl $C616A0,$C618E0,GFX_Kiddy_Jump2,GFX_Kiddy_Jump2End
	;dl $C618F8,$C61B78,GFX_Kiddy_Jump3,GFX_Kiddy_Jump3End
	;dl $C61B90,$C61E10,GFX_Kiddy_Jump4,GFX_Kiddy_Jump4End
	;dl $C61E32,$C620F2,GFX_Kiddy_Jump5,GFX_Kiddy_Jump5End
	;dl $C6210E,$C623CE,GFX_Kiddy_Jump6,GFX_Kiddy_Jump6End
	;dl $C623E8,$C626E8,GFX_Kiddy_Jump7,GFX_Kiddy_Jump7End
	;dl $C62704,$C629C4,GFX_Kiddy_Jump8,GFX_Kiddy_Jump8End
	;dl $C629DC,$C62CBC,GFX_Kiddy_Land1,GFX_Kiddy_Land1End
	;dl $C62CD8,$C62F98,GFX_Kiddy_Land2,GFX_Kiddy_Land2End
	;dl $C62FB6,$C63236,GFX_Kiddy_Land3,GFX_Kiddy_Land3End
	;dl $C63258,$C63518,GFX_Kiddy_Roll1,GFX_Kiddy_Roll1End
	;dl $C6352C,$C6376C,GFX_Kiddy_Roll2,GFX_Kiddy_Roll2End
	;dl $C63782,$C639E2,GFX_Kiddy_Roll3,GFX_Kiddy_Roll3End
	;dl $C639F8,$C63C58,GFX_Kiddy_Roll4,GFX_Kiddy_Roll4End
	;dl $C63C6C,$C63EAC,GFX_Kiddy_Roll5,GFX_Kiddy_Roll5End
	;dl $C63EC0,$C64100,GFX_Kiddy_Roll6,GFX_Kiddy_Roll6End
	;dl $C64118,$C64398,GFX_Kiddy_Roll7,GFX_Kiddy_Roll7End
	;dl $C643B6,$C645D6,GFX_Kiddy_Roll8,GFX_Kiddy_Roll8End
	;dl $C645EA,$C6482A,GFX_Kiddy_Roll9,GFX_Kiddy_Roll9End
	;dl $C6483E,$C64A7E,GFX_Kiddy_Roll10,GFX_Kiddy_Roll10End
	;dl $C64A94,$C64CF4,GFX_Kiddy_Roll11,GFX_Kiddy_Roll11End
	;dl $C64D08,$C64F48,GFX_Kiddy_Roll12,GFX_Kiddy_Roll12End
	;dl $C64F5E,$C651BE,GFX_Kiddy_Roll13,GFX_Kiddy_Roll13End
	;dl $C651D6,$C653F6,GFX_Kiddy_Roll14,GFX_Kiddy_Roll14End
	;dl $C65410,$C656B0,GFX_Kiddy_Roll15,GFX_Kiddy_Roll15End
	;dl $C656CA,$C6596A,GFX_Kiddy_Roll16,GFX_Kiddy_Roll16End
	;dl $C65982,$C65C02,GFX_Kiddy_Roll17,GFX_Kiddy_Roll17End
	;dl $C65C1C,$C65EBC,GFX_Kiddy_Roll18,GFX_Kiddy_Roll18End
	;dl $C65ED8,$C66198,GFX_Kiddy_Roll19,GFX_Kiddy_Roll19End
	;dl $C661C2,$C66562,GFX_Kiddy_Pickup1,GFX_Kiddy_Pickup1End
	;dl $C6658C,$C668CC,GFX_Kiddy_Pickup2,GFX_Kiddy_Pickup2End
	;dl $C668F4,$C66C14,GFX_Kiddy_Pickup3,GFX_Kiddy_Pickup3End
	;dl $C66C3C,$C66F5C,GFX_Kiddy_Pickup4,GFX_Kiddy_Pickup4End
	;dl $C66F7C,$C6727C,GFX_Kiddy_Pickup5,GFX_Kiddy_Pickup5End
	;dl $C6729C,$C6759C,GFX_Kiddy_Pickup6,GFX_Kiddy_Pickup6End
	;dl $C675B6,$C678B6,GFX_Kiddy_HoldWalk1,GFX_Kiddy_HoldWalk1End
	;dl $C678D2,$C67BF2,GFX_Kiddy_HoldWalk2,GFX_Kiddy_HoldWalk2End
	;dl $C67C10,$C67F50,GFX_Kiddy_HoldWalk3,GFX_Kiddy_HoldWalk3End
	;dl $C67F6E,$C682AE,GFX_Kiddy_HoldWalk4,GFX_Kiddy_HoldWalk4End
	;dl $C682CC,$C6860C,GFX_Kiddy_HoldWalk5,GFX_Kiddy_HoldWalk5End
	;dl $C6862E,$C6894E,GFX_Kiddy_HoldWalk6,GFX_Kiddy_HoldWalk6End
	;dl $C6896C,$C68CAC,GFX_Kiddy_HoldWalk7,GFX_Kiddy_HoldWalk7End
	;dl $C68CC8,$C68FE8,GFX_Kiddy_HoldWalk8,GFX_Kiddy_HoldWalk8End
	;dl $C69004,$C69324,GFX_Kiddy_HoldWalk9,GFX_Kiddy_HoldWalk9End
	;dl $C69340,$C69660,GFX_Kiddy_HoldWalk10,GFX_Kiddy_HoldWalk10End
	;dl $C6967C,$C6999C,GFX_Kiddy_HoldWalk11,GFX_Kiddy_HoldWalk11End
	;dl $C699BC,$C69D1C,GFX_Kiddy_PullPajamas1,GFX_Kiddy_PullPajamas1End
	;dl $C69D3C,$C6A09C,GFX_Kiddy_PullPajamas2,GFX_Kiddy_PullPajamas2End
	;dl $C6A0BC,$C6A41C,GFX_Kiddy_PullPajamas3,GFX_Kiddy_PullPajamas3End
	;dl $C6A43E,$C6A7BE,GFX_Kiddy_PullPajamas4,GFX_Kiddy_PullPajamas4End
	;dl $C6A7E0,$C6AB60,GFX_Kiddy_PullPajamas5,GFX_Kiddy_PullPajamas5End
	;dl $C6AB82,$C6AF02,GFX_Kiddy_PullPajamas6,GFX_Kiddy_PullPajamas6End
	;dl $C6AF24,$C6B2A4,GFX_Kiddy_PullPajamas7,GFX_Kiddy_PullPajamas7End
	;dl $C6B2C4,$C6B624,GFX_Kiddy_PullPajamas8,GFX_Kiddy_PullPajamas8End
	;dl $C6B644,$C6B9A4,GFX_Kiddy_PullPajamas9,GFX_Kiddy_PullPajamas9End
	;dl $C6B9C0,$C6BD40,GFX_Kiddy_PullPajamas10,GFX_Kiddy_PullPajamas10End
	;dl $C6BD5C,$C6C0DC,GFX_Kiddy_PullPajamas11,GFX_Kiddy_PullPajamas11End
	;dl $C6C0F8,$C6C478,GFX_Kiddy_PullPajamas12,GFX_Kiddy_PullPajamas12End
	;dl $C6C49A,$C6C81A,GFX_Kiddy_PullPajamas13,GFX_Kiddy_PullPajamas13End
	;dl $C6C83A,$C6CB9A,GFX_Kiddy_PullPajamas14,GFX_Kiddy_PullPajamas14End
	;dl $C6CBBA,$C6CF1A,GFX_Kiddy_PullPajamas15,GFX_Kiddy_PullPajamas15End
	;dl $C6CF3A,$C6D29A,GFX_Kiddy_PullPajamas16,GFX_Kiddy_PullPajamas16End
	;dl $C6D2BA,$C6D61A,GFX_Kiddy_PullPajamas17,GFX_Kiddy_PullPajamas17End
	;dl $C6D63A,$C6D99A,GFX_Kiddy_PullPajamas18,GFX_Kiddy_PullPajamas18End
	;dl $C6D9BA,$C6DD1A,GFX_Kiddy_PullPajamas19,GFX_Kiddy_PullPajamas19End
	;dl $C6DD3A,$C6E09A,GFX_Kiddy_PullPajamas20,GFX_Kiddy_PullPajamas20End
	;dl $C6E0BA,$C6E41A,GFX_Kiddy_PullPajamas21,GFX_Kiddy_PullPajamas21End
	;dl $C6E442,$C6E822,GFX_Kiddy_PullPajamas22,GFX_Kiddy_PullPajamas22End
	;dl $C6E846,$C6EB26,GFX_Kiddy_PullPajamas23,GFX_Kiddy_PullPajamas23End
	;dl $C6EB40,$C6ED20,GFX_Kiddy_PullPajamas24,GFX_Kiddy_PullPajamas24End
	;dl $C6ED3C,$C6EF9C,GFX_Kiddy_PullPajamas25,GFX_Kiddy_PullPajamas25End
	;dl $C6EFBC,$C6F25C,GFX_Kiddy_PullPajamas26,GFX_Kiddy_PullPajamas26End
	;dl $C6F278,$C6F598,GFX_Kiddy_PullPajamas27,GFX_Kiddy_PullPajamas27End
	;dl $C6F5BC,$C6F8FC,GFX_Kiddy_Tantrum1,GFX_Kiddy_Tantrum1End
	;dl $C6F91C,$C6FC1C,GFX_Kiddy_Tantrum2,GFX_Kiddy_Tantrum2End
	;dl $C6FC3E,$C6FEFE,GFX_Kiddy_Tantrum3,GFX_Kiddy_Tantrum3End
	;dl $C74480,$C74760,GFX_Kiddy_Tantrum4,GFX_Kiddy_Tantrum4End
	;dl $C7477E,$C74A5E,GFX_Kiddy_Tantrum5,GFX_Kiddy_Tantrum5End
	;dl $C74A7E,$C74D7E,GFX_Kiddy_Tantrum6,GFX_Kiddy_Tantrum6End
	;dl $C74D9A,$C750BA,GFX_Kiddy_Tantrum7,GFX_Kiddy_Tantrum7End
	;dl $C750E4,$C754E4,GFX_Kiddy_Hurt1,GFX_Kiddy_Hurt1End
	;dl $C7550E,$C7590E,GFX_Kiddy_Hurt2,GFX_Kiddy_Hurt2End
	;dl $C7593C,$C75D1C,GFX_Kiddy_Hurt3,GFX_Kiddy_Hurt3End
	;dl $C75D3E,$C7611E,GFX_Kiddy_Hurt4,GFX_Kiddy_Hurt4End
	;dl $C7613E,$C7649E,GFX_Kiddy_Hurt5,GFX_Kiddy_Hurt5End
	;dl $C764BA,$C767DA,GFX_Kiddy_Hurt6,GFX_Kiddy_Hurt6End
	;dl $C767FE,$C76B3E,GFX_Kiddy_Hurt7,GFX_Kiddy_Hurt7End
	;dl $C76B60,$C76E80,GFX_Kiddy_Hurt8,GFX_Kiddy_Hurt8End
	;dl $C76EA2,$C77222,GFX_Kiddy_Hurt9,GFX_Kiddy_Hurt9End
	;dl $C7723E,$C7755E,GFX_Kiddy_Hurt10,GFX_Kiddy_Hurt10End
	;dl $C77578,$C77878,GFX_Kiddy_Hurt11,GFX_Kiddy_Hurt11End
	;dl $C77894,$C77AF4,GFX_Kiddy_Hurt12,GFX_Kiddy_Hurt12End
	;dl $C77B10,$C77D10,GFX_Kiddy_Hurt13,GFX_Kiddy_Hurt13End
	;dl $C77D30,$C78030,GFX_Kiddy_Throw1,GFX_Kiddy_Throw1End
	;dl $C7804C,$C7836C,GFX_Kiddy_Throw2,GFX_Kiddy_Throw2End
	;dl $C7838C,$C786EC,GFX_Kiddy_Throw3,GFX_Kiddy_Throw3End
	;dl $C7870E,$C78A2E,GFX_Kiddy_Throw4,GFX_Kiddy_Throw4End
	;dl $C78A48,$C78CE8,GFX_Kiddy_Throw5,GFX_Kiddy_Throw5End
	;dl $C78D06,$C78FE6,GFX_Kiddy_Throw6,GFX_Kiddy_Throw6End
	;dl $C79008,$C792C8,GFX_Kiddy_Throw7,GFX_Kiddy_Throw7End
	;dl $C792E6,$C79626,GFX_Kiddy_Throw8,GFX_Kiddy_Throw8End
	;dl $C79644,$C79984,GFX_Kiddy_Throw9,GFX_Kiddy_Throw9End
	;dl $C799A8,$C79D48,GFX_Kiddy_Throw10,GFX_Kiddy_Throw10End
	;dl $C79D6A,$C7A08A,GFX_Kiddy_Throw11,GFX_Kiddy_Throw11End
	;dl $C7A0A8,$C7A388,GFX_Kiddy_Throw12,GFX_Kiddy_Throw12End
	;dl $C7A3A0,$C7A680,GFX_Kiddy_Throw13,GFX_Kiddy_Throw13End
	;dl $C7A69E,$C7A91E,GFX_Kiddy_Throw14,GFX_Kiddy_Throw14End
	;dl $C7A93C,$C7ABBC,GFX_Kiddy_Throw15,GFX_Kiddy_Throw15End
	;dl $C7ABDE,$C7AE3E,GFX_Kiddy_Throw16,GFX_Kiddy_Throw16End
	;dl $C7AE5C,$C7B0DC,GFX_Kiddy_Swim1,GFX_Kiddy_Swim1End
	;dl $C7B0FA,$C7B3DA,GFX_Kiddy_Swim2,GFX_Kiddy_Swim2End
	;dl $C7B3F8,$C7B6D8,GFX_Kiddy_Swim3,GFX_Kiddy_Swim3End
	;dl $C7B6F2,$C7B9F2,GFX_Kiddy_Swim4,GFX_Kiddy_Swim4End
	;dl $C7BA0A,$C7BCEA,GFX_Kiddy_Swim5,GFX_Kiddy_Swim5End
	;dl $C7BD08,$C7BFE8,GFX_Kiddy_Swim6,GFX_Kiddy_Swim6End
	;dl $C7C006,$C7C2E6,GFX_Kiddy_Swim7,GFX_Kiddy_Swim7End
	;dl $C7C304,$C7C5E4,GFX_Kiddy_Swim8,GFX_Kiddy_Swim8End
	;dl $C7C602,$C7C942,GFX_Kiddy_Swim9,GFX_Kiddy_Swim9End
	;dl $C7C95E,$C7CC7E,GFX_Kiddy_Swim10,GFX_Kiddy_Swim10End
	;dl $C7CC9C,$C7CF7C,GFX_Kiddy_Swim11,GFX_Kiddy_Swim11End
	;dl $C7CF9E,$C7D31E,GFX_Kiddy_Swim12,GFX_Kiddy_Swim12End
	;dl $C7D338,$C7D698,GFX_Kiddy_Swim13,GFX_Kiddy_Swim13End
	;dl $C7D6B4,$C7DA34,GFX_Kiddy_Swim14,GFX_Kiddy_Swim14End
	;dl $C7DA56,$C7DDD6,GFX_Kiddy_Swim15,GFX_Kiddy_Swim15End
	;dl $C7DDF4,$C7E0D4,GFX_Kiddy_Swim16,GFX_Kiddy_Swim16End
	;dl $C7E0F0,$C7E3B0,GFX_Kiddy_TurnWhileSwimming1,GFX_Kiddy_TurnWhileSwimming1End
	;dl $C7E3CC,$C7E68C,GFX_Kiddy_TurnWhileSwimming2,GFX_Kiddy_TurnWhileSwimming2End
	;dl $C7E6B2,$C7EA72,GFX_Kiddy_HangFromHorizontalRope1,GFX_Kiddy_HangFromHorizontalRope1End
	;dl $C7EA96,$C7EE36,GFX_Kiddy_HangFromHorizontalRope2,GFX_Kiddy_HangFromHorizontalRope2End
	;dl $C7EE5A,$C7F1FA,GFX_Kiddy_HangFromHorizontalRope3,GFX_Kiddy_HangFromHorizontalRope3End
	;dl $C7F21E,$C7F5BE,GFX_Kiddy_HangFromHorizontalRope4,GFX_Kiddy_HangFromHorizontalRope4End
	;dl $C7F5E4,$C7F9A4,GFX_Kiddy_HangFromHorizontalRope5,GFX_Kiddy_HangFromHorizontalRope5End
	;dl $C7F9CA,$C7FD8A,GFX_Kiddy_HangFromHorizontalRope6,GFX_Kiddy_HangFromHorizontalRope6End
	;dl $C84569,$C84929,GFX_Kiddy_HangFromHorizontalRope7,GFX_Kiddy_HangFromHorizontalRope7End
	;dl $C8494F,$C84D0F,GFX_Kiddy_HangFromHorizontalRope8,GFX_Kiddy_HangFromHorizontalRope8End
	;dl $C84D35,$C850F5,GFX_Kiddy_GrabHorizontalRope1,GFX_Kiddy_GrabHorizontalRope1End
	;dl $C85115,$C854D5,GFX_Kiddy_GrabHorizontalRope2,GFX_Kiddy_GrabHorizontalRope2End
	;dl $C854EF,$C857EF,GFX_Kiddy_ClimbHorizontalRope1,GFX_Kiddy_ClimbHorizontalRope1End
	;dl $C85809,$C85B09,GFX_Kiddy_ClimbHorizontalRope2,GFX_Kiddy_ClimbHorizontalRope2End
	;dl $C85B25,$C85DE5,GFX_Kiddy_ClimbHorizontalRope3,GFX_Kiddy_ClimbHorizontalRope3End
	;dl $C85E03,$C86143,GFX_Kiddy_ClimbHorizontalRope4,GFX_Kiddy_ClimbHorizontalRope4End
	;dl $C86169,$C86529,GFX_Kiddy_ClimbHorizontalRope5,GFX_Kiddy_ClimbHorizontalRope5End
	;dl $C86549,$C868A9,GFX_Kiddy_ClimbHorizontalRope6,GFX_Kiddy_ClimbHorizontalRope6End
	;dl $C868CD,$C86C0D,GFX_Kiddy_ClimbHorizontalRope7,GFX_Kiddy_ClimbHorizontalRope7End
	;dl $C86C29,$C86F49,GFX_Kiddy_ClimbHorizontalRope8,GFX_Kiddy_ClimbHorizontalRope8End
	;dl $C86F63,$C87263,GFX_Kiddy_ClimbHorizontalRope9,GFX_Kiddy_ClimbHorizontalRope9End
	;dl $C87281,$C87621,GFX_Kiddy_ClimbHorizontalRope10,GFX_Kiddy_ClimbHorizontalRope10End
	;dl $C87643,$C879C3,GFX_Kiddy_ClimbHorizontalRope11,GFX_Kiddy_ClimbHorizontalRope11End
	;dl $C879E7,$C87DE7,GFX_Kiddy_ClimbHorizontalRope12,GFX_Kiddy_ClimbHorizontalRope12End
	;dl $C87E0D,$C881CD,GFX_Kiddy_ClimbHorizontalRope13,GFX_Kiddy_ClimbHorizontalRope13End
	;dl $C881F1,$C88591,GFX_Kiddy_ClimbHorizontalRope14,GFX_Kiddy_ClimbHorizontalRope14End
	;dl $C885B1,$C88911,GFX_Kiddy_ClimbHorizontalRope15,GFX_Kiddy_ClimbHorizontalRope15End
	;dl $C8892F,$C88C6F,GFX_Kiddy_ClimbHorizontalRope16,GFX_Kiddy_ClimbHorizontalRope16End
	;dl $C88C89,$C88F29,GFX_Kiddy_Turn1,GFX_Kiddy_Turn1End
	;dl $C88F47,$C89227,GFX_Kiddy_Turn2,GFX_Kiddy_Turn2End
	;dl $C8924D,$C8954D,GFX_Kiddy_ClimbUpSingleVerticalRope1,GFX_Kiddy_ClimbUpSingleVerticalRope1End
	;dl $C8956D,$C8986D,GFX_Kiddy_ClimbUpSingleVerticalRope2,GFX_Kiddy_ClimbUpSingleVerticalRope2End
	;dl $C8988B,$C89BCB,GFX_Kiddy_ClimbUpSingleVerticalRope3,GFX_Kiddy_ClimbUpSingleVerticalRope3End
	;dl $C89BE3,$C89F23,GFX_Kiddy_ClimbUpSingleVerticalRope4,GFX_Kiddy_ClimbUpSingleVerticalRope4End
	;dl $C89F45,$C8A205,GFX_Kiddy_ClimbUpSingleVerticalRope5,GFX_Kiddy_ClimbUpSingleVerticalRope5End
	;dl $C8A221,$C8A4E1,GFX_Kiddy_ClimbUpSingleVerticalRope6,GFX_Kiddy_ClimbUpSingleVerticalRope6End
	;dl $C8A503,$C8A823,GFX_Kiddy_ClimbUpSingleVerticalRope7,GFX_Kiddy_ClimbUpSingleVerticalRope7End
	;dl $C8A845,$C8AB65,GFX_Kiddy_ClimbUpSingleVerticalRope8,GFX_Kiddy_ClimbUpSingleVerticalRope8End
	;dl $C8AB8B,$C8AE8B,GFX_Kiddy_ClimbUpSingleVerticalRope9,GFX_Kiddy_ClimbUpSingleVerticalRope9End
	;dl $C8AEB1,$C8B1B1,GFX_Kiddy_ClimbUpSingleVerticalRope10,GFX_Kiddy_ClimbUpSingleVerticalRope10End
	;dl $C8B1D1,$C8B471,GFX_Kiddy_ClimbUpSingleVerticalRope11,GFX_Kiddy_ClimbUpSingleVerticalRope11End
	;dl $C8B48F,$C8B76F,GFX_Kiddy_ClimbUpSingleVerticalRope12,GFX_Kiddy_ClimbUpSingleVerticalRope12End
	;dl $C8B791,$C8BA51,GFX_Kiddy_ClimbUpSingleVerticalRope13,GFX_Kiddy_ClimbUpSingleVerticalRope13End
	;dl $C8BA77,$C8BD77,GFX_Kiddy_ClimbUpSingleVerticalRope14,GFX_Kiddy_ClimbUpSingleVerticalRope14End
	;dl $C8BD97,$C8C097,GFX_Kiddy_ClimbUpSingleVerticalRope15,GFX_Kiddy_ClimbUpSingleVerticalRope15End
	;dl $C8C0B9,$C8C3D9,GFX_Kiddy_ClimbUpSingleVerticalRope16,GFX_Kiddy_ClimbUpSingleVerticalRope16End
	;dl $C8C3FF,$C8C6FF,GFX_Kiddy_HangOnVerticalRope,GFX_Kiddy_HangOnVerticalRopeEnd
	;dl $C8C719,$C8C9B9,GFX_Kiddy_TurnOnVerticalRope1,GFX_Kiddy_TurnOnVerticalRope1End
	;dl $C8C9D5,$C8CC95,GFX_Kiddy_TurnOnVerticalRope2,GFX_Kiddy_TurnOnVerticalRope2End
	;dl $C8CCAF,$C8CF4F,GFX_Kiddy_TurnOnVerticalRope3,GFX_Kiddy_TurnOnVerticalRope3End
	;dl $C8CF75,$C8D275,GFX_Kiddy_IdleOnVerticalRope1,GFX_Kiddy_IdleOnVerticalRope1End
	;dl $C8D29B,$C8D59B,GFX_Kiddy_IdleOnVerticalRope2,GFX_Kiddy_IdleOnVerticalRope2End
	;dl $C8D5C1,$C8D8C1,GFX_Kiddy_IdleOnVerticalRope3,GFX_Kiddy_IdleOnVerticalRope3End
	;dl $C8D8E7,$C8DBE7,GFX_Kiddy_IdleOnVerticalRope4,GFX_Kiddy_IdleOnVerticalRope4End
	;dl $C8DC0D,$C8DF0D,GFX_Kiddy_IdleOnVerticalRope5,GFX_Kiddy_IdleOnVerticalRope5End
	;dl $C8DF33,$C8E233,GFX_Kiddy_IdleOnVerticalRope6,GFX_Kiddy_IdleOnVerticalRope6End
	;dl $C8E259,$C8E559,GFX_Kiddy_IdleOnVerticalRope7,GFX_Kiddy_IdleOnVerticalRope7End
	;dl $C8E575,$C8E7D5,GFX_Kiddy_SitOnAnimalBuddy1,GFX_Kiddy_SitOnAnimalBuddy1End
	;dl $C8E7F3,$C8EA73,GFX_Kiddy_SitOnAnimalBuddy2,GFX_Kiddy_SitOnAnimalBuddy2End
	;dl $C8EA91,$C8ED11,GFX_Kiddy_SitOnAnimalBuddy3,GFX_Kiddy_SitOnAnimalBuddy3End
	;dl $C8ED2F,$C8EFAF,GFX_Kiddy_SitOnAnimalBuddy4,GFX_Kiddy_SitOnAnimalBuddy4End
	;dl $C8EFCB,$C8F22B,GFX_Kiddy_SitOnAnimalBuddy5,GFX_Kiddy_SitOnAnimalBuddy5End
	;dl $C8F247,$C8F4A7,GFX_Kiddy_SitOnAnimalBuddy6,GFX_Kiddy_SitOnAnimalBuddy6End
	;dl $C8F4C3,$C8F723,GFX_Kiddy_SitOnAnimalBuddy7,GFX_Kiddy_SitOnAnimalBuddy7End
	;dl $C8F73F,$C8F99F,GFX_Kiddy_SitOnAnimalBuddy8,GFX_Kiddy_SitOnAnimalBuddy8End
	;dl $C8F9BB,$C8FC1B,GFX_Kiddy_IdleOnAnimalBuddy1,GFX_Kiddy_IdleOnAnimalBuddy1End
	;dl $C8FC35,$C8FE75,GFX_Kiddy_IdleOnAnimalBuddy2,GFX_Kiddy_IdleOnAnimalBuddy2End
	;dl $C927FD,$C92A1D,GFX_Kiddy_IdleOnAnimalBuddy3,GFX_Kiddy_IdleOnAnimalBuddy3End
	;dl $C92A35,$C92C55,GFX_Kiddy_IdleOnAnimalBuddy4,GFX_Kiddy_IdleOnAnimalBuddy4End
	;dl $C92C6D,$C92E8D,GFX_Kiddy_IdleOnAnimalBuddy5,GFX_Kiddy_IdleOnAnimalBuddy5End
	;dl $C92EAD,$C9320D,GFX_Kiddy_RideSteelKeg1,GFX_Kiddy_RideSteelKeg1End
	;dl $C9322D,$C9358D,GFX_Kiddy_RideSteelKeg2,GFX_Kiddy_RideSteelKeg2End
	;dl $C935A9,$C938C9,GFX_Kiddy_RideSteelKeg3,GFX_Kiddy_RideSteelKeg3End
	;dl $C938E3,$C93BE3,GFX_Kiddy_RideSteelKeg4,GFX_Kiddy_RideSteelKeg4End
	;dl $C93BFD,$C93EFD,GFX_Kiddy_RideSteelKeg5,GFX_Kiddy_RideSteelKeg5End
	;dl $C93F1B,$C941FB,GFX_Kiddy_RideSteelKeg6,GFX_Kiddy_RideSteelKeg6End
	;dl $C94215,$C94515,GFX_Kiddy_RideSteelKeg7,GFX_Kiddy_RideSteelKeg7End
	;dl $C94531,$C94851,GFX_Kiddy_RideSteelKeg8,GFX_Kiddy_RideSteelKeg8End
	;dl $C94875,$C94BB5,GFX_Buzz_Dead1,GFX_Buzz_Dead1End
	;dl $C94BCF,$C94ECF,GFX_Buzz_Dead2,GFX_Buzz_Dead2End
	;dl $C94EEB,$C9520B,GFX_Buzz_Dead3,GFX_Buzz_Dead3End
	;dl $C95225,$C95585,GFX_Buzz_Dead4,GFX_Buzz_Dead4End
	;dl $C955AB,$C9590B,GFX_Buzz_Dead5,GFX_Buzz_Dead5End
	;dl $C95921,$C95B81,GFX_Buzz_Fly1,GFX_Buzz_Fly1End
	;dl $C95B9F,$C95E1F,GFX_Buzz_Fly2,GFX_Buzz_Fly2End
	;dl $C95E41,$C96101,GFX_Buzz_Fly3,GFX_Buzz_Fly3End
	;dl $C9611F,$C9639F,GFX_Buzz_Fly4,GFX_Buzz_Fly4End
	;dl $C963B5,$C96615,GFX_Buzz_Fly5,GFX_Buzz_Fly5End
	;dl $C96633,$C968B3,GFX_Buzz_Fly6,GFX_Buzz_Fly6End
	;dl $C968D1,$C96BB1,GFX_Buzz_Fly7,GFX_Buzz_Fly7End
	;dl $C96BCF,$C96E4F,GFX_Buzz_Fly8,GFX_Buzz_Fly8End
	;dl $C96E65,$C97065,GFX_Buzz_Turn1,GFX_Buzz_Turn1End
	;dl $C97081,$C97281,GFX_Buzz_Turn2,GFX_Buzz_Turn2End
	;dl $C972AB,$C9764B,GFX_DKBarrel_Pose1,GFX_DKBarrel_Pose1End
	;dl $C97675,$C97A15,GFX_DKBarrel_Pose2,GFX_DKBarrel_Pose2End
	;dl $C97A3F,$C97DDF,GFX_DKBarrel_Pose3,GFX_DKBarrel_Pose3End
	;dl $C97E09,$C981A9,GFX_DKBarrel_Pose4,GFX_DKBarrel_Pose4End
	;dl $C981D1,$C98551,GFX_DKBarrel_Pose5,GFX_DKBarrel_Pose5End
	;dl $C98579,$C988F9,GFX_DKBarrel_Pose6,GFX_DKBarrel_Pose6End
	;dl $C98921,$C98CA1,GFX_DKBarrel_Pose7,GFX_DKBarrel_Pose7End
	;dl $C98CCB,$C9906B,GFX_DKBarrel_Pose8,GFX_DKBarrel_Pose8End
	;dl $C99079,$C99139,GFX_Timer_Zero,GFX_Timer_ZeroEnd
	;dl $C99147,$C99207,GFX_Timer_One,GFX_Timer_OneEnd
	;dl $C99215,$C992D5,GFX_Timer_Two,GFX_Timer_TwoEnd
	;dl $C992E3,$C993A3,GFX_Timer_Three,GFX_Timer_ThreeEnd
	;dl $C993AF,$C9944F,GFX_Timer_Four,GFX_Timer_FourEnd
	;dl $C9945D,$C9951D,GFX_Timer_Five,GFX_Timer_FiveEnd
	;dl $C9952B,$C995EB,GFX_Timer_Six,GFX_Timer_SixEnd
	;dl $C995F9,$C996B9,GFX_Timer_Seven,GFX_Timer_SevenEnd
	;dl $C996C7,$C99787,GFX_Timer_Eight,GFX_Timer_EightEnd
	;dl $C99795,$C99855,GFX_Timer_Nine,GFX_Timer_NineEnd
	;dl $C9987B,$C99C3B,GFX_SwankyKong_Idle1,GFX_SwankyKong_Idle1End
	;dl $C99C67,$C9A027,GFX_SwankyKong_Idle2,GFX_SwankyKong_Idle2End
	;dl $C9A051,$C9A3F1,GFX_SwankyKong_Idle3,GFX_SwankyKong_Idle3End
	;dl $C9A419,$C9A799,GFX_SwankyKong_Idle4,GFX_SwankyKong_Idle4End
	;dl $C9A7C3,$C9AC23,GFX_SwankyKong_Presents1,GFX_SwankyKong_Presents1End
	;dl $C9AC51,$C9B0F1,GFX_SwankyKong_Presents2,GFX_SwankyKong_Presents2End
	;dl $C9B11F,$C9B5BF,GFX_SwankyKong_Presents3,GFX_SwankyKong_Presents3End
	;dl $C9B5E3,$C9B983,GFX_SwankyKong_Idle5,GFX_SwankyKong_Idle5End
	;dl $C9B9B1,$C9BD91,GFX_SwankyKong_Presents4,GFX_SwankyKong_Presents4End
	;dl $C9BDBD,$C9C1DD,GFX_SwankyKong_Presents5,GFX_SwankyKong_Presents5End
	;dl $C9C1FB,$C9C47B,GFX_FunkysRentalsPool_Pose1,GFX_FunkysRentalsPool_Pose1End
	;dl $C9C499,$C9C719,GFX_FunkysRentalsPool_Pose2,GFX_FunkysRentalsPool_Pose2End
	;dl $C9C737,$C9C9B7,GFX_FunkysRentalsPool_Pose3,GFX_FunkysRentalsPool_Pose3End
	;dl $C9C9D5,$C9CC55,GFX_FunkysRentalsPool_Pose4,GFX_FunkysRentalsPool_Pose4End
	;dl $C9CC73,$C9CEF3,GFX_FunkysRentalsPool_Pose5,GFX_FunkysRentalsPool_Pose5End
	;dl $C9CF11,$C9D191,GFX_FunkysRentalsPool_Pose6,GFX_FunkysRentalsPool_Pose6End
	;dl $C9D1AF,$C9D42F,GFX_FunkysRentalsPool_Pose7,GFX_FunkysRentalsPool_Pose7End
	;dl $C9D44D,$C9D6CD,GFX_FunkysRentalsPool_Pose8,GFX_FunkysRentalsPool_Pose8End
	;dl $C9D6D9,$C9D779,GFX_MapKiddy_WalkUp1,GFX_MapKiddy_WalkUp1End
	;dl $C9D785,$C9D825,GFX_MapKiddy_WalkUp2,GFX_MapKiddy_WalkUp2End
	;dl $C9D831,$C9D8D1,GFX_MapKiddy_WalkUp3,GFX_MapKiddy_WalkUp3End
	;dl $C9D8DD,$C9D97D,GFX_MapKiddy_WalkUp4,GFX_MapKiddy_WalkUp4End
	;dl $C9D989,$C9DA29,GFX_MapKiddy_WalkUp5,GFX_MapKiddy_WalkUp5End
	;dl $C9DA35,$C9DAD5,GFX_MapKiddy_WalkUp6,GFX_MapKiddy_WalkUp6End
	;dl $C9DAE1,$C9DB81,GFX_MapKiddy_WalkUp7,GFX_MapKiddy_WalkUp7End
	;dl $C9DB8F,$C9DC4F,GFX_MapKiddy_WalkUp8,GFX_MapKiddy_WalkUp8End
	;dl $C9DC5B,$C9DCFB,GFX_MapKiddy_WalkDiagonalUp1,GFX_MapKiddy_WalkDiagonalUp1End
	;dl $C9DD09,$C9DDC9,GFX_MapKiddy_WalkDiagonalUp2,GFX_MapKiddy_WalkDiagonalUp2End
	;dl $C9DDD5,$C9DE75,GFX_MapKiddy_WalkDiagonalUp3,GFX_MapKiddy_WalkDiagonalUp3End
	;dl $C9DE83,$C9DF43,GFX_MapKiddy_WalkDiagonalUp4,GFX_MapKiddy_WalkDiagonalUp4End
	;dl $C9DF51,$C9E011,GFX_MapKiddy_WalkDiagonalUp5,GFX_MapKiddy_WalkDiagonalUp5End
	;dl $C9E01F,$C9E0DF,GFX_MapKiddy_WalkDiagonalUp6,GFX_MapKiddy_WalkDiagonalUp6End
	;dl $C9E0ED,$C9E1AD,GFX_MapKiddy_WalkDiagonalUp7,GFX_MapKiddy_WalkDiagonalUp7End
	;dl $C9E1BB,$C9E27B,GFX_MapKiddy_WalkDiagonalUp8,GFX_MapKiddy_WalkDiagonalUp8End
	;dl $C9E28F,$C9E34F,GFX_MapKiddy_WalkSide1,GFX_MapKiddy_WalkSide1End
	;dl $C9E361,$C9E401,GFX_MapKiddy_WalkSide2,GFX_MapKiddy_WalkSide2End
	;dl $C9E413,$C9E4B3,GFX_MapKiddy_WalkSide3,GFX_MapKiddy_WalkSide3End
	;dl $C9E4C5,$C9E565,GFX_MapKiddy_WalkSide4,GFX_MapKiddy_WalkSide4End
	;dl $C9E577,$C9E617,GFX_MapKiddy_WalkSide5,GFX_MapKiddy_WalkSide5End
	;dl $C9E629,$C9E6C9,GFX_MapKiddy_WalkSide6,GFX_MapKiddy_WalkSide6End
	;dl $C9E6D9,$C9E7B9,GFX_MapKiddy_WalkSide7,GFX_MapKiddy_WalkSide7End
	;dl $C9E7C7,$C9E887,GFX_MapKiddy_WalkSide8,GFX_MapKiddy_WalkSide8End
	;dl $C9E895,$C9E955,GFX_MapKiddy_WalkDiagonallyDown1,GFX_MapKiddy_WalkDiagonallyDown1End
	;dl $C9E963,$C9EA23,GFX_MapKiddy_WalkDiagonallyDown2,GFX_MapKiddy_WalkDiagonallyDown2End
	;dl $C9EA2F,$C9EACF,GFX_MapKiddy_WalkDiagonallyDown3,GFX_MapKiddy_WalkDiagonallyDown3End
	;dl $C9EADB,$C9EB7B,GFX_MapKiddy_WalkDiagonallyDown4,GFX_MapKiddy_WalkDiagonallyDown4End
	;dl $C9EB87,$C9EC27,GFX_MapKiddy_WalkDiagonallyDown5,GFX_MapKiddy_WalkDiagonallyDown5End
	;dl $C9EC39,$C9ECD9,GFX_MapKiddy_WalkDiagonallyDown6,GFX_MapKiddy_WalkDiagonallyDown6End
	;dl $C9ECE7,$C9EDA7,GFX_MapKiddy_WalkDiagonallyDown7,GFX_MapKiddy_WalkDiagonallyDown7End
	;dl $C9EDB9,$C9EE59,GFX_MapKiddy_WalkDiagonallyDown8,GFX_MapKiddy_WalkDiagonallyDown8End
	;dl $C9EE63,$C9EEE3,GFX_MapKiddy_WalkDown1,GFX_MapKiddy_WalkDown1End
	;dl $C9EEEF,$C9EF8F,GFX_MapKiddy_WalkDown2,GFX_MapKiddy_WalkDown2End
	;dl $C9EF9B,$C9F03B,GFX_MapKiddy_WalkDown3,GFX_MapKiddy_WalkDown3End
	;dl $C9F047,$C9F0E7,GFX_MapKiddy_WalkDown4,GFX_MapKiddy_WalkDown4End
	;dl $C9F0F1,$C9F171,GFX_MapKiddy_WalkDown5,GFX_MapKiddy_WalkDown5End
	;dl $C9F17D,$C9F21D,GFX_MapKiddy_WalkDown6,GFX_MapKiddy_WalkDown6End
	;dl $C9F229,$C9F2C9,GFX_MapKiddy_WalkDown7,GFX_MapKiddy_WalkDown7End
	;dl $C9F2D5,$C9F375,GFX_MapKiddy_WalkDown8,GFX_MapKiddy_WalkDown8End
	;dl $C9F383,$C9F3E3,GFX_MapDixie_WalkUp1,GFX_MapDixie_WalkUp1End
	;dl $C9F3F1,$C9F451,GFX_MapDixie_WalkUp2,GFX_MapDixie_WalkUp2End
	;dl $C9F45D,$C9F49D,GFX_MapDixie_WalkUp3,GFX_MapDixie_WalkUp3End
	;dl $C9F4AB,$C9F50B,GFX_MapDixie_WalkUp4,GFX_MapDixie_WalkUp4End
	;dl $C9F51B,$C9F59B,GFX_MapDixie_WalkUp5,GFX_MapDixie_WalkUp5End
	;dl $C9F5AB,$C9F62B,GFX_MapDixie_WalkUp6,GFX_MapDixie_WalkUp6End
	;dl $C9F639,$C9F699,GFX_MapDixie_WalkUp7,GFX_MapDixie_WalkUp7End
	;dl $C9F6A7,$C9F707,GFX_MapDixie_WalkUp8,GFX_MapDixie_WalkUp8End
	;dl $C9F711,$C9F791,GFX_MapDixie_WalkDiagonalUp1,GFX_MapDixie_WalkDiagonalUp1End
	;dl $C9F79B,$C9F81B,GFX_MapDixie_WalkDiagonalUp2,GFX_MapDixie_WalkDiagonalUp2End
	;dl $C9F825,$C9F8A5,GFX_MapDixie_WalkDiagonalUp3,GFX_MapDixie_WalkDiagonalUp3End
	;dl $C9F8AF,$C9F92F,GFX_MapDixie_WalkDiagonalUp4,GFX_MapDixie_WalkDiagonalUp4End
	;dl $C9F939,$C9F9B9,GFX_MapDixie_WalkDiagonalUp5,GFX_MapDixie_WalkDiagonalUp5End
	;dl $C9F9C3,$C9FA43,GFX_MapDixie_WalkDiagonalUp6,GFX_MapDixie_WalkDiagonalUp6End
	;dl $C9FA4D,$C9FACD,GFX_MapDixie_WalkDiagonalUp7,GFX_MapDixie_WalkDiagonalUp7End
	;dl $C9FAD7,$C9FB57,GFX_MapDixie_WalkDiagonalUp8,GFX_MapDixie_WalkDiagonalUp8End
	;dl $C9FB61,$C9FBE1,GFX_MapDixie_WalkSide1,GFX_MapDixie_WalkSide1End
	;dl $C9FBEB,$C9FC6B,GFX_MapDixie_WalkSide2,GFX_MapDixie_WalkSide2End
	;dl $C9FC75,$C9FCF5,GFX_MapDixie_WalkSide3,GFX_MapDixie_WalkSide3End
	;dl $C9FCFF,$C9FD7F,GFX_MapDixie_WalkSide4,GFX_MapDixie_WalkSide4End
	;dl $C9FD89,$C9FE09,GFX_MapDixie_WalkSide5,GFX_MapDixie_WalkSide5End
	;dl $C9FE13,$C9FE93,GFX_MapDixie_WalkSide6,GFX_MapDixie_WalkSide6End
	;dl $C9FE9D,$C9FF1D,GFX_MapDixie_WalkSide7,GFX_MapDixie_WalkSide7End
	;dl $C9FF27,$C9FFA7,GFX_MapDixie_WalkSide8,GFX_MapDixie_WalkSide8End
	;dl $CA012B,$CA01AB,GFX_MapDixie_WalkDiagonallyDown1,GFX_MapDixie_WalkDiagonallyDown1End
	;dl $CA01B5,$CA0235,GFX_MapDixie_WalkDiagonallyDown2,GFX_MapDixie_WalkDiagonallyDown2End
	;dl $CA023F,$CA02BF,GFX_MapDixie_WalkDiagonallyDown3,GFX_MapDixie_WalkDiagonallyDown3End
	;dl $CA02C9,$CA0349,GFX_MapDixie_WalkDiagonallyDown4,GFX_MapDixie_WalkDiagonallyDown4End
	;dl $CA0353,$CA03D3,GFX_MapDixie_WalkDiagonallyDown5,GFX_MapDixie_WalkDiagonallyDown5End
	;dl $CA03DD,$CA045D,GFX_MapDixie_WalkDiagonallyDown6,GFX_MapDixie_WalkDiagonallyDown6End
	;dl $CA0467,$CA04E7,GFX_MapDixie_WalkDiagonallyDown7,GFX_MapDixie_WalkDiagonallyDown7End
	;dl $CA04F1,$CA0571,GFX_MapDixie_WalkDiagonallyDown8,GFX_MapDixie_WalkDiagonallyDown8End
	;dl $CA057F,$CA05DF,GFX_MapDixie_WalkDown1,GFX_MapDixie_WalkDown1End
	;dl $CA05ED,$CA064D,GFX_MapDixie_WalkDown2,GFX_MapDixie_WalkDown2End
	;dl $CA065B,$CA06BB,GFX_MapDixie_WalkDown3,GFX_MapDixie_WalkDown3End
	;dl $CA06C9,$CA0729,GFX_MapDixie_WalkDown4,GFX_MapDixie_WalkDown4End
	;dl $CA0737,$CA0797,GFX_MapDixie_WalkDown5,GFX_MapDixie_WalkDown5End
	;dl $CA07A5,$CA0805,GFX_MapDixie_WalkDown6,GFX_MapDixie_WalkDown6End
	;dl $CA0813,$CA0873,GFX_MapDixie_WalkDown7,GFX_MapDixie_WalkDown7End
	;dl $CA0881,$CA08E1,GFX_MapDixie_WalkDown8,GFX_MapDixie_WalkDown8End
	;dl $CA08EB,$CA096B,GFX_MapKiddy_BoatDriver1,GFX_MapKiddy_BoatDriver1End
	;dl $CA0975,$CA09F5,GFX_MapKiddy_BoatDriver2,GFX_MapKiddy_BoatDriver2End
	;dl $CA09FF,$CA0A7F,GFX_MapKiddy_BoatDriver3,GFX_MapKiddy_BoatDriver3End
	;dl $CA0A89,$CA0B09,GFX_MapKiddy_BoatDriver4,GFX_MapKiddy_BoatDriver4End
	;dl $CA0B17,$CA0B77,GFX_MapKiddy_BoatDriver5,GFX_MapKiddy_BoatDriver5End
	;dl $CA0B81,$CA0C01,GFX_MapKiddy_BoatDriver6,GFX_MapKiddy_BoatDriver6End
	;dl $CA0C0B,$CA0C8B,GFX_MapKiddy_BoatDriver7,GFX_MapKiddy_BoatDriver7End
	;dl $CA0C99,$CA0CF9,GFX_MapKiddy_BoatDriver8,GFX_MapKiddy_BoatDriver8End
	;dl $CA0D07,$CA0D67,GFX_MapKiddy_BoatDriver9,GFX_MapKiddy_BoatDriver9End
	;dl $CA0D71,$CA0DF1,GFX_MapKiddy_BoatPassanger1,GFX_MapKiddy_BoatPassanger1End
	;dl $CA0DFB,$CA0E7B,GFX_MapKiddy_BoatPassanger2,GFX_MapKiddy_BoatPassanger2End
	;dl $CA0E89,$CA0EE9,GFX_MapKiddy_BoatPassanger3,GFX_MapKiddy_BoatPassanger3End
	;dl $CA0EF7,$CA0F57,GFX_MapKiddy_BoatPassanger4,GFX_MapKiddy_BoatPassanger4End
	;dl $CA0F65,$CA0FC5,GFX_MapKiddy_BoatPassanger5,GFX_MapKiddy_BoatPassanger5End
	;dl $CA0FCF,$CA104F,GFX_MapKiddy_BoatPassanger6,GFX_MapKiddy_BoatPassanger6End
	;dl $CA1059,$CA10D9,GFX_MapKiddy_BoatPassanger7,GFX_MapKiddy_BoatPassanger7End
	;dl $CA10E3,$CA1163,GFX_MapKiddy_BoatPassanger8,GFX_MapKiddy_BoatPassanger8End
	;dl $CA116D,$CA11ED,GFX_MapKiddy_BoatPassanger9,GFX_MapKiddy_BoatPassanger9End
	;dl $CA11F7,$CA1277,GFX_MapKiddy_Jump1,GFX_MapKiddy_Jump1End
	;dl $CA1285,$CA1345,GFX_MapKiddy_Jump2,GFX_MapKiddy_Jump2End
	;dl $CA1353,$CA1413,GFX_MapKiddy_Jump3,GFX_MapKiddy_Jump3End
	;dl $CA141F,$CA14BF,GFX_MapKiddy_Jump4,GFX_MapKiddy_Jump4End
	;dl $CA14C9,$CA1549,GFX_MapKiddy_Jump5,GFX_MapKiddy_Jump5End
	;dl $CA1555,$CA1595,GFX_MapDixie_BoatDriver1,GFX_MapDixie_BoatDriver1End
	;dl $CA15A3,$CA1603,GFX_MapDixie_BoatDriver2,GFX_MapDixie_BoatDriver2End
	;dl $CA1611,$CA1671,GFX_MapDixie_BoatDriver3,GFX_MapDixie_BoatDriver3End
	;dl $CA167F,$CA16DF,GFX_MapDixie_BoatDriver4,GFX_MapDixie_BoatDriver4End
	;dl $CA16ED,$CA174D,GFX_MapDixie_BoatDriver5,GFX_MapDixie_BoatDriver5End
	;dl $CA175B,$CA17BB,GFX_MapDixie_BoatDriver6,GFX_MapDixie_BoatDriver6End
	;dl $CA17C7,$CA1807,GFX_MapDixie_BoatDriver7,GFX_MapDixie_BoatDriver7End
	;dl $CA1811,$CA1831,GFX_MapDixie_BoatDriver8,GFX_MapDixie_BoatDriver8End
	;dl $CA183B,$CA185B,GFX_MapDixie_BoatDriver9,GFX_MapDixie_BoatDriver9End
	;dl $CA1867,$CA18A7,GFX_MapDixie_BoatPassanger1,GFX_MapDixie_BoatPassanger1End
	;dl $CA18B3,$CA18F3,GFX_MapDixie_BoatPassanger2,GFX_MapDixie_BoatPassanger2End
	;dl $CA18FF,$CA193F,GFX_MapDixie_BoatPassanger3,GFX_MapDixie_BoatPassanger3End
	;dl $CA194B,$CA198B,GFX_MapDixie_BoatPassanger4,GFX_MapDixie_BoatPassanger4End
	;dl $CA1999,$CA19F9,GFX_MapDixie_BoatPassanger5,GFX_MapDixie_BoatPassanger5End
	;dl $CA1A05,$CA1A45,GFX_MapDixie_BoatPassanger6,GFX_MapDixie_BoatPassanger6End
	;dl $CA1A51,$CA1A91,GFX_MapDixie_BoatPassanger7,GFX_MapDixie_BoatPassanger7End
	;dl $CA1A9D,$CA1ADD,GFX_MapDixie_BoatPassanger8,GFX_MapDixie_BoatPassanger8End
	;dl $CA1AE9,$CA1B29,GFX_MapDixie_BoatPassanger9,GFX_MapDixie_BoatPassanger9End
	;dl $CA1B35,$CA1BD5,GFX_MapDixie_Jump1,GFX_MapDixie_Jump1End
	;dl $CA1BE7,$CA1C87,GFX_MapDixie_Jump2,GFX_MapDixie_Jump2End
	;dl $CA1C91,$CA1D11,GFX_MapDixie_Jump3,GFX_MapDixie_Jump3End
	;dl $CA1D1D,$CA1DBD,GFX_MapDixie_Jump4,GFX_MapDixie_Jump4End
	;dl $CA1DC9,$CA1E69,GFX_MapDixie_Jump5,GFX_MapDixie_Jump5End
	;dl $CA1E73,$CA1EF3,GFX_MapKiddy_SwimUp1,GFX_MapKiddy_SwimUp1End
	;dl $CA1EFD,$CA1F7D,GFX_MapKiddy_SwimUp2,GFX_MapKiddy_SwimUp2End
	;dl $CA1F87,$CA2007,GFX_MapKiddy_SwimUp3,GFX_MapKiddy_SwimUp3End
	;dl $CA2011,$CA2091,GFX_MapKiddy_SwimUp4,GFX_MapKiddy_SwimUp4End
	;dl $CA209B,$CA211B,GFX_MapKiddy_SwimUp5,GFX_MapKiddy_SwimUp5End
	;dl $CA2125,$CA21A5,GFX_MapKiddy_SwimUp6,GFX_MapKiddy_SwimUp6End
	;dl $CA21AF,$CA222F,GFX_MapKiddy_SwimUp7,GFX_MapKiddy_SwimUp7End
	;dl $CA2239,$CA22B9,GFX_MapKiddy_SwimUp8,GFX_MapKiddy_SwimUp8End
	;dl $CA22C3,$CA2343,GFX_MapKiddy_SwimDiagonallyUp1,GFX_MapKiddy_SwimDiagonallyUp1End
	;dl $CA234D,$CA23CD,GFX_MapKiddy_SwimDiagonallyUp2,GFX_MapKiddy_SwimDiagonallyUp2End
	;dl $CA23D7,$CA2457,GFX_MapKiddy_SwimDiagonallyUp3,GFX_MapKiddy_SwimDiagonallyUp3End
	;dl $CA2467,$CA24E7,GFX_MapKiddy_SwimDiagonallyUp4,GFX_MapKiddy_SwimDiagonallyUp4End
	;dl $CA24F7,$CA2577,GFX_MapKiddy_SwimDiagonallyUp5,GFX_MapKiddy_SwimDiagonallyUp5End
	;dl $CA2585,$CA25E5,GFX_MapKiddy_SwimDiagonallyUp6,GFX_MapKiddy_SwimDiagonallyUp6End
	;dl $CA25EF,$CA266F,GFX_MapKiddy_SwimDiagonallyUp7,GFX_MapKiddy_SwimDiagonallyUp7End
	;dl $CA2679,$CA26F9,GFX_MapKiddy_SwimDiagonallyUp8,GFX_MapKiddy_SwimDiagonallyUp8End
	;dl $CA2705,$CA2745,GFX_MapKiddy_SwimSide1,GFX_MapKiddy_SwimSide1End
	;dl $CA2753,$CA27B3,GFX_MapKiddy_SwimSide2,GFX_MapKiddy_SwimSide2End
	;dl $CA27C1,$CA2821,GFX_MapKiddy_SwimSide3,GFX_MapKiddy_SwimSide3End
	;dl $CA2831,$CA28B1,GFX_MapKiddy_SwimSide4,GFX_MapKiddy_SwimSide4End
	;dl $CA28C1,$CA2941,GFX_MapKiddy_SwimSide5,GFX_MapKiddy_SwimSide5End
	;dl $CA294F,$CA29AF,GFX_MapKiddy_SwimSide6,GFX_MapKiddy_SwimSide6End
	;dl $CA29BF,$CA2A3F,GFX_MapKiddy_SwimSide7,GFX_MapKiddy_SwimSide7End
	;dl $CA2A4F,$CA2ACF,GFX_MapKiddy_SwimSide8,GFX_MapKiddy_SwimSide8End
	;dl $CA2ADD,$CA2B3D,GFX_MapKiddy_SwimDiagonallyDown1,GFX_MapKiddy_SwimDiagonallyDown1End
	;dl $CA2B4B,$CA2BAB,GFX_MapKiddy_SwimDiagonallyDown2,GFX_MapKiddy_SwimDiagonallyDown2End
	;dl $CA2BB9,$CA2C19,GFX_MapKiddy_SwimDiagonallyDown3,GFX_MapKiddy_SwimDiagonallyDown3End
	;dl $CA2C27,$CA2C87,GFX_MapKiddy_SwimDiagonallyDown4,GFX_MapKiddy_SwimDiagonallyDown4End
	;dl $CA2C91,$CA2D11,GFX_MapKiddy_SwimDiagonallyDown5,GFX_MapKiddy_SwimDiagonallyDown5End
	;dl $CA2D1F,$CA2D7F,GFX_MapKiddy_SwimDiagonallyDown6,GFX_MapKiddy_SwimDiagonallyDown6End
	;dl $CA2D8F,$CA2E0F,GFX_MapKiddy_SwimDiagonallyDown7,GFX_MapKiddy_SwimDiagonallyDown7End
	;dl $CA2E1F,$CA2E9F,GFX_MapKiddy_SwimDiagonallyDown8,GFX_MapKiddy_SwimDiagonallyDown8End
	;dl $CA2EAB,$CA2EEB,GFX_MapKiddy_SwimDown1,GFX_MapKiddy_SwimDown1End
	;dl $CA2EF9,$CA2F59,GFX_MapKiddy_SwimDown2,GFX_MapKiddy_SwimDown2End
	;dl $CA2F67,$CA2FC7,GFX_MapKiddy_SwimDown3,GFX_MapKiddy_SwimDown3End
	;dl $CA2FD5,$CA3035,GFX_MapKiddy_SwimDown4,GFX_MapKiddy_SwimDown4End
	;dl $CA3043,$CA30A3,GFX_MapKiddy_SwimDown5,GFX_MapKiddy_SwimDown5End
	;dl $CA30B1,$CA3111,GFX_MapKiddy_SwimDown6,GFX_MapKiddy_SwimDown6End
	;dl $CA311F,$CA317F,GFX_MapKiddy_SwimDown7,GFX_MapKiddy_SwimDown7End
	;dl $CA318D,$CA31ED,GFX_MapKiddy_SwimDown8,GFX_MapKiddy_SwimDown8End
	;dl $CA31F9,$CA3239,GFX_MapDixie_SwimUp1,GFX_MapDixie_SwimUp1End
	;dl $CA3247,$CA32A7,GFX_MapDixie_SwimUp2,GFX_MapDixie_SwimUp2End
	;dl $CA32B5,$CA3315,GFX_MapDixie_SwimUp3,GFX_MapDixie_SwimUp3End
	;dl $CA3323,$CA3383,GFX_MapDixie_SwimUp4,GFX_MapDixie_SwimUp4End
	;dl $CA3391,$CA33F1,GFX_MapDixie_SwimUp5,GFX_MapDixie_SwimUp5End
	;dl $CA33FF,$CA345F,GFX_MapDixie_SwimUp6,GFX_MapDixie_SwimUp6End
	;dl $CA3469,$CA34E9,GFX_MapDixie_SwimUp7,GFX_MapDixie_SwimUp7End
	;dl $CA34F7,$CA3557,GFX_MapDixie_SwimUp8,GFX_MapDixie_SwimUp8End
	;dl $CA3565,$CA35C5,GFX_MapDixie_SwimDiagonallyUp1,GFX_MapDixie_SwimDiagonallyUp1End
	;dl $CA35D3,$CA3633,GFX_MapDixie_SwimDiagonallyUp2,GFX_MapDixie_SwimDiagonallyUp2End
	;dl $CA3641,$CA36A1,GFX_MapDixie_SwimDiagonallyUp3,GFX_MapDixie_SwimDiagonallyUp3End
	;dl $CA36AF,$CA370F,GFX_MapDixie_SwimDiagonallyUp4,GFX_MapDixie_SwimDiagonallyUp4End
	;dl $CA371D,$CA377D,GFX_MapDixie_SwimDiagonallyUp5,GFX_MapDixie_SwimDiagonallyUp5End
	;dl $CA378B,$CA37EB,GFX_MapDixie_SwimDiagonallyUp6,GFX_MapDixie_SwimDiagonallyUp6End
	;dl $CA37F9,$CA3859,GFX_MapDixie_SwimDiagonallyUp7,GFX_MapDixie_SwimDiagonallyUp7End
	;dl $CA3867,$CA38C7,GFX_MapDixie_SwimDiagonallyUp8,GFX_MapDixie_SwimDiagonallyUp8End
	;dl $CA38D5,$CA3935,GFX_MapDixie_SwimSide1,GFX_MapDixie_SwimSide1End
	;dl $CA3943,$CA39A3,GFX_MapDixie_SwimSide2,GFX_MapDixie_SwimSide2End
	;dl $CA39B1,$CA3A11,GFX_MapDixie_SwimSide3,GFX_MapDixie_SwimSide3End
	;dl $CA3A1F,$CA3A7F,GFX_MapDixie_SwimSide4,GFX_MapDixie_SwimSide4End
	;dl $CA3A8D,$CA3AED,GFX_MapDixie_SwimSide5,GFX_MapDixie_SwimSide5End
	;dl $CA3AFB,$CA3B5B,GFX_MapDixie_SwimSide6,GFX_MapDixie_SwimSide6End
	;dl $CA3B69,$CA3BC9,GFX_MapDixie_SwimSide7,GFX_MapDixie_SwimSide7End
	;dl $CA3BD7,$CA3C37,GFX_MapDixie_SwimSide8,GFX_MapDixie_SwimSide8End
	;dl $CA3C43,$CA3C83,GFX_MapDixie_SwimDiagonallyDown1,GFX_MapDixie_SwimDiagonallyDown1End
	;dl $CA3C91,$CA3CF1,GFX_MapDixie_SwimDiagonallyDown2,GFX_MapDixie_SwimDiagonallyDown2End
	;dl $CA3CFF,$CA3D5F,GFX_MapDixie_SwimDiagonallyDown3,GFX_MapDixie_SwimDiagonallyDown3End
	;dl $CA3D6B,$CA3DAB,GFX_MapDixie_SwimDiagonallyDown4,GFX_MapDixie_SwimDiagonallyDown4End
	;dl $CA3DB7,$CA3DF7,GFX_MapDixie_SwimDiagonallyDown5,GFX_MapDixie_SwimDiagonallyDown5End
	;dl $CA3E05,$CA3E65,GFX_MapDixie_SwimDiagonallyDown6,GFX_MapDixie_SwimDiagonallyDown6End
	;dl $CA3E71,$CA3EB1,GFX_MapDixie_SwimDiagonallyDown7,GFX_MapDixie_SwimDiagonallyDown7End
	;dl $CA3EBD,$CA3EFD,GFX_MapDixie_SwimDiagonallyDown8,GFX_MapDixie_SwimDiagonallyDown8End
	;dl $CA3F07,$CA3F27,GFX_MapDixie_SwimDown1,GFX_MapDixie_SwimDown1End
	;dl $CA3F35,$CA3F95,GFX_MapDixie_SwimDown2,GFX_MapDixie_SwimDown2End
	;dl $CA3FA3,$CA4003,GFX_MapDixie_SwimDown3,GFX_MapDixie_SwimDown3End
	;dl $CA400F,$CA404F,GFX_MapDixie_SwimDown4,GFX_MapDixie_SwimDown4End
	;dl $CA405B,$CA409B,GFX_MapDixie_SwimDown5,GFX_MapDixie_SwimDown5End
	;dl $CA40A9,$CA4109,GFX_MapDixie_SwimDown6,GFX_MapDixie_SwimDown6End
	;dl $CA4115,$CA4155,GFX_MapDixie_SwimDown7,GFX_MapDixie_SwimDown7End
	;dl $CA4161,$CA41A1,GFX_MapDixie_SwimDown8,GFX_MapDixie_SwimDown8End
	;dl $CA41AB,$CA41CB,GFX_UnknownEffect1_Pose1,GFX_UnknownEffect1_Pose1End
	;dl $CA41D5,$CA41F5,GFX_UnknownEffect1_Pose2,GFX_UnknownEffect1_Pose2End
	;dl $CA4201,$CA4241,GFX_UnknownEffect1_Pose3,GFX_UnknownEffect1_Pose3End
	;dl $CA424D,$CA428D,GFX_UnknownEffect1_Pose4,GFX_UnknownEffect1_Pose4End
	;dl $CA4299,$CA42D9,GFX_UnknownEffect1_Pose5,GFX_UnknownEffect1_Pose5End
	;dl $CA42EB,$CA43EB,GFX_MotorBoat_Pose1,GFX_MotorBoat_Pose1End
	;dl $CA43FD,$CA44FD,GFX_MotorBoat_Pose2,GFX_MotorBoat_Pose2End
	;dl $CA4509,$CA4609,GFX_MotorBoat_Pose3,GFX_MotorBoat_Pose3End
	;dl $CA4617,$CA4737,GFX_MotorBoat_Pose4,GFX_MotorBoat_Pose4End
	;dl $CA4745,$CA4865,GFX_MotorBoat_Pose5,GFX_MotorBoat_Pose5End
	;dl $CA4873,$CA4993,GFX_MotorBoat_Pose6,GFX_MotorBoat_Pose6End
	;dl $CA499F,$CA4A9F,GFX_MotorBoat_Pose7,GFX_MotorBoat_Pose7End
	;dl $CA4AB1,$CA4BB1,GFX_MotorBoat_Pose8,GFX_MotorBoat_Pose8End
	;dl $CA4BC3,$CA4CC3,GFX_MotorBoat_Pose9,GFX_MotorBoat_Pose9End
	;dl $CA4CD5,$CA4DD5,GFX_Hovercraft_Pose1,GFX_Hovercraft_Pose1End
	;dl $CA4DE9,$CA4F09,GFX_Hovercraft_Pose2,GFX_Hovercraft_Pose2End
	;dl $CA4F1B,$CA507B,GFX_Hovercraft_Pose3,GFX_Hovercraft_Pose3End
	;dl $CA508F,$CA520F,GFX_Hovercraft_Pose4,GFX_Hovercraft_Pose4End
	;dl $CA521F,$CA535F,GFX_Hovercraft_Pose5,GFX_Hovercraft_Pose5End
	;dl $CA5371,$CA54D1,GFX_Hovercraft_Pose6,GFX_Hovercraft_Pose6End
	;dl $CA54E3,$CA5643,GFX_Hovercraft_Pose7,GFX_Hovercraft_Pose7End
	;dl $CA5653,$CA5793,GFX_Hovercraft_Pose8,GFX_Hovercraft_Pose8End
	;dl $CA57A3,$CA58E3,GFX_Hovercraft_Pose9,GFX_Hovercraft_Pose9End
	;dl $CA58F3,$CA59D3,GFX_BananaBunch_Pose1,GFX_BananaBunch_Pose1End
	;dl $CA59E3,$CA5AC3,GFX_BananaBunch_Pose2,GFX_BananaBunch_Pose2End
	;dl $CA5AD3,$CA5BB3,GFX_BananaBunch_Pose3,GFX_BananaBunch_Pose3End
	;dl $CA5BC5,$CA5CC5,GFX_BananaBunch_Pose4,GFX_BananaBunch_Pose4End
	;dl $CA5CD7,$CA5DD7,GFX_BananaBunch_Pose5,GFX_BananaBunch_Pose5End
	;dl $CA5DE9,$CA5EE9,GFX_BananaBunch_Pose6,GFX_BananaBunch_Pose6End
	;dl $CA5EFD,$CA601D,GFX_K_Rotate1,GFX_K_Rotate1End
	;dl $CA6031,$CA6151,GFX_K_Rotate2,GFX_K_Rotate2End
	;dl $CA6165,$CA6285,GFX_K_Rotate3,GFX_K_Rotate3End
	;dl $CA6297,$CA6397,GFX_K_Rotate4,GFX_K_Rotate4End
	;dl $CA63A7,$CA6427,GFX_K_Rotate5,GFX_K_Rotate5End
	;dl $CA6439,$CA6539,GFX_K_Rotate6,GFX_K_Rotate6End
	;dl $CA654D,$CA666D,GFX_K_Rotate7,GFX_K_Rotate7End
	;dl $CA6681,$CA67A1,GFX_K_Rotate8,GFX_K_Rotate8End
	;dl $CA67B5,$CA68D5,GFX_O_Rotate1,GFX_O_Rotate1End
	;dl $CA68E9,$CA6A09,GFX_O_Rotate2,GFX_O_Rotate2End
	;dl $CA6A1D,$CA6B3D,GFX_O_Rotate3,GFX_O_Rotate3End
	;dl $CA6B4F,$CA6C4F,GFX_O_Rotate4,GFX_O_Rotate4End
	;dl $CA6C5F,$CA6CDF,GFX_O_Rotate5,GFX_O_Rotate5End
	;dl $CA6CF1,$CA6DF1,GFX_O_Rotate6,GFX_O_Rotate6End
	;dl $CA6E05,$CA6F25,GFX_O_Rotate7,GFX_O_Rotate7End
	;dl $CA6F39,$CA7059,GFX_O_Rotate8,GFX_O_Rotate8End
	;dl $CA706D,$CA718D,GFX_N_Rotate1,GFX_N_Rotate1End
	;dl $CA71A1,$CA72C1,GFX_N_Rotate2,GFX_N_Rotate2End
	;dl $CA72D5,$CA73F5,GFX_N_Rotate3,GFX_N_Rotate3End
	;dl $CA7407,$CA7507,GFX_N_Rotate4,GFX_N_Rotate4End
	;dl $CA7517,$CA7597,GFX_N_Rotate5,GFX_N_Rotate5End
	;dl $CA75A9,$CA76A9,GFX_N_Rotate6,GFX_N_Rotate6End
	;dl $CA76BD,$CA77DD,GFX_N_Rotate7,GFX_N_Rotate7End
	;dl $CA77F1,$CA7911,GFX_N_Rotate8,GFX_N_Rotate8End
	;dl $CA7925,$CA7A45,GFX_G_Rotate1,GFX_G_Rotate1End
	;dl $CA7A59,$CA7B79,GFX_G_Rotate2,GFX_G_Rotate2End
	;dl $CA7B8D,$CA7CAD,GFX_G_Rotate3,GFX_G_Rotate3End
	;dl $CA7CBF,$CA7DBF,GFX_G_Rotate4,GFX_G_Rotate4End
	;dl $CA7DCF,$CA7E4F,GFX_G_Rotate5,GFX_G_Rotate5End
	;dl $CA7E61,$CA7F61,GFX_G_Rotate6,GFX_G_Rotate6End
	;dl $CA7F75,$CA8095,GFX_G_Rotate7,GFX_G_Rotate7End
	;dl $CA80A9,$CA81C9,GFX_G_Rotate8,GFX_G_Rotate8End
	;dl $CA81DD,$CA82FD,GFX_K_Shrink1,GFX_K_Shrink1End
	;dl $CA8311,$CA8431,GFX_K_Shrink2,GFX_K_Shrink2End
	;dl $CA8445,$CA8565,GFX_O_Shrink1,GFX_O_Shrink1End
	;dl $CA8579,$CA8699,GFX_O_Shrink2,GFX_O_Shrink2End
	;dl $CA86AD,$CA87CD,GFX_N_Shrink1,GFX_N_Shrink1End
	;dl $CA87E1,$CA8901,GFX_N_Shrink2,GFX_N_Shrink2End
	;dl $CA8915,$CA8A35,GFX_G_Shrink1,GFX_G_Shrink1End
	;dl $CA8A49,$CA8B69,GFX_G_Shrink2,GFX_G_Shrink2End
	;dl $CA8B9D,$CA92DD,GFX_SneekWheel_Pose1,GFX_SneekWheel_Pose1End
	;dl $CA9311,$CA9A51,GFX_SneekWheel_Pose2,GFX_SneekWheel_Pose2End
	;dl $CA9A81,$CAA1E1,GFX_SneekWheel_Pose3,GFX_SneekWheel_Pose3End
	;dl $CAA1EF,$CAA30F,GFX_DoorGear_Pose1,GFX_DoorGear_Pose1End
	;dl $CAA31D,$CAA43D,GFX_DoorGear_Pose2,GFX_DoorGear_Pose2End
	;dl $CAA44B,$CAA56B,GFX_DoorGear_Pose3,GFX_DoorGear_Pose3End
	;dl $CAA579,$CAA699,GFX_DoorGear_Pose4,GFX_DoorGear_Pose4End
	;dl $CAA6A7,$CAA7C7,GFX_DoorGear_Pose5,GFX_DoorGear_Pose5End
	;dl $CAA7D5,$CAA8F5,GFX_DoorGear_Pose6,GFX_DoorGear_Pose6End
	;dl $CAA903,$CAAA23,GFX_DoorGear_Pose7,GFX_DoorGear_Pose7End
	;dl $CAAA31,$CAAB51,GFX_DoorGear_Pose8,GFX_DoorGear_Pose8End
	;dl $CAAB6B,$CAAC8B,GFX_MetalDoor_Pose,GFX_MetalDoor_PoseEnd
	;dl $CAACA9,$CAAE09,GFX_DoorLeverBar_Pose,GFX_DoorLeverBar_PoseEnd
	;dl $CAAE29,$CAB1E9,GFX_ArichLegs_Pose1,GFX_ArichLegs_Pose1End
	;dl $CAB20B,$CAB52B,GFX_ArichLegs_Pose2,GFX_ArichLegs_Pose2End
	;dl $CAB54F,$CAB88F,GFX_ArichLegs_Pose3,GFX_ArichLegs_Pose3End
	;dl $CAB8B3,$CABBF3,GFX_ArichLegs_Pose4,GFX_ArichLegs_Pose4End
	;dl $CABC17,$CABF57,GFX_ArichLegs_Pose5,GFX_ArichLegs_Pose5End
	;dl $CABF7D,$CAC27D,GFX_ArichLegs_Pose6,GFX_ArichLegs_Pose6End
	;dl $CAC2A7,$CAC5E7,GFX_ArichLegs_Pose7,GFX_ArichLegs_Pose7End
	;dl $CAC60D,$CAC90D,GFX_ArichLegs_Pose8,GFX_ArichLegs_Pose8End
	;dl $CAC91F,$CACADF,GFX_ArichFace_Idle1,GFX_ArichFace_Idle1End
	;dl $CACAF1,$CACCB1,GFX_ArichFace_Idle2,GFX_ArichFace_Idle2End
	;dl $CACCC3,$CACE83,GFX_ArichFace_Idle3,GFX_ArichFace_Idle3End
	;dl $CACE95,$CAD055,GFX_ArichFace_Idle4,GFX_ArichFace_Idle4End
	;dl $CAD069,$CAD1E9,GFX_ArichFace_SpitDown1,GFX_ArichFace_SpitDown1End
	;dl $CAD1FD,$CAD37D,GFX_ArichFace_SpitDown2,GFX_ArichFace_SpitDown2End
	;dl $CAD391,$CAD511,GFX_ArichFace_SpitDown3,GFX_ArichFace_SpitDown3End
	;dl $CAD523,$CAD683,GFX_ArichFace_SpitDiagonallyDownLeft1,GFX_ArichFace_SpitDiagonallyDownLeft1End
	;dl $CAD699,$CAD7D9,GFX_ArichFace_SpitDiagonallyDownLeft2,GFX_ArichFace_SpitDiagonallyDownLeft2End
	;dl $CAD7EF,$CAD92F,GFX_ArichFace_SpitDiagonallyDownLeft3,GFX_ArichFace_SpitDiagonallyDownLeft3End
	;dl $CAD943,$CADAC3,GFX_ArichFace_SpitDiagonallyDownRight1,GFX_ArichFace_SpitDiagonallyDownRight1End
	;dl $CADAD7,$CADC57,GFX_ArichFace_SpitDiagonallyDownRight2,GFX_ArichFace_SpitDiagonallyDownRight2End
	;dl $CADC6D,$CADDAD,GFX_ArichFace_SpitDiagonallyDownRight3,GFX_ArichFace_SpitDiagonallyDownRight3End
	;dl $CADDC3,$CADF63,GFX_ArichFace_Hurt1,GFX_ArichFace_Hurt1End
	;dl $CADF77,$CAE0F7,GFX_ArichFace_Hurt2,GFX_ArichFace_Hurt2End
	;dl $CAE10B,$CAE28B,GFX_ArichFace_Hurt3,GFX_ArichFace_Hurt3End
	;dl $CAE295,$CAE2B5,GFX_ArichEye_Pose,GFX_ArichEye_PoseEnd
	;dl $CAE2C1,$CAE301,GFX_Sawdust_Pose1,GFX_Sawdust_Pose1End
	;dl $CAE30D,$CAE3AD,GFX_Sawdust_Pose2,GFX_Sawdust_Pose2End
	;dl $CAE3BD,$CAE4FD,GFX_Sawdust_Pose3,GFX_Sawdust_Pose3End
	;dl $CAE511,$CAE691,GFX_Sawdust_Pose4,GFX_Sawdust_Pose4End
	;dl $CAE6A3,$CAE803,GFX_Sawdust_Pose5,GFX_Sawdust_Pose5End
	;dl $CAE815,$CAE975,GFX_Sawdust_Pose6,GFX_Sawdust_Pose6End
	;dl $CAE987,$CAEA87,GFX_Sawdust_Pose7,GFX_Sawdust_Pose7End
	;dl $CAEA93,$CAEB33,GFX_Sawdust_Pose8,GFX_Sawdust_Pose8End
	;dl $CAEB45,$CAEBE5,GFX_TopOfK3Waterfall_Pose1,GFX_TopOfK3Waterfall_Pose1End
	;dl $CAEBF7,$CAEC97,GFX_TopOfK3Waterfall_Pose2,GFX_TopOfK3Waterfall_Pose2End
	;dl $CAECA9,$CAED49,GFX_TopOfK3Waterfall_Pose3,GFX_TopOfK3Waterfall_Pose3End
	;dl $CAED5B,$CAEDFB,GFX_TopOfK3Waterfall_Pose4,GFX_TopOfK3Waterfall_Pose4End
	;dl $CAEE15,$CAEF35,GFX_KremwoodForestWaterTrail1_Pose1,GFX_KremwoodForestWaterTrail1_Pose1End
	;dl $CAEF4F,$CAF06F,GFX_KremwoodForestWaterTrail1_Pose2,GFX_KremwoodForestWaterTrail1_Pose2End
	;dl $CAF089,$CAF1A9,GFX_KremwoodForestWaterTrail1_Pose3,GFX_KremwoodForestWaterTrail1_Pose3End
	;dl $CAF1C3,$CAF2E3,GFX_KremwoodForestWaterTrail1_Pose4,GFX_KremwoodForestWaterTrail1_Pose4End
	;dl $CAF2F3,$CAF373,GFX_BrashsCabinSmoke_Pose1,GFX_BrashsCabinSmoke_Pose1End
	;dl $CAF381,$CAF3E1,GFX_BrashsCabinSmoke_Pose2,GFX_BrashsCabinSmoke_Pose2End
	;dl $CAF3EF,$CAF44F,GFX_BrashsCabinSmoke_Pose3,GFX_BrashsCabinSmoke_Pose3End
	;dl $CAF45D,$CAF4BD,GFX_BrashsCabinSmoke_Pose4,GFX_BrashsCabinSmoke_Pose4End
	;dl $CAF4CB,$CAF52B,GFX_BrashsCabinSmoke_Pose5,GFX_BrashsCabinSmoke_Pose5End
	;dl $CAF539,$CAF599,GFX_BrashsCabinSmoke_Pose6,GFX_BrashsCabinSmoke_Pose6End
	;dl $CAF5A9,$CAF629,GFX_BrashsCabinSmoke_Pose7,GFX_BrashsCabinSmoke_Pose7End
	;dl $CAF639,$CAF6B9,GFX_BrashsCabinSmoke_Pose8,GFX_BrashsCabinSmoke_Pose8End
	;dl $CAF6CD,$CAF90D,GFX_BleaksHouseFace_Pose1,GFX_BleaksHouseFace_Pose1End
	;dl $CAF921,$CAFB61,GFX_BleaksHouseFace_Pose2,GFX_BleaksHouseFace_Pose2End
	;dl $CAFB75,$CAFDB5,GFX_BleaksHouseFace_Pose3,GFX_BleaksHouseFace_Pose3End
	;dl $CB4C33,$CB4E73,GFX_BleaksHouseFace_Pose4,GFX_BleaksHouseFace_Pose4End
	;dl $CB4E87,$CB50C7,GFX_BleaksHouseFace_Pose5,GFX_BleaksHouseFace_Pose5End
	;dl $CB50DB,$CB531B,GFX_BleaksHouseFace_Pose6,GFX_BleaksHouseFace_Pose6End
	;dl $CB532D,$CB542D,GFX_ArichAmbushFace_Pose1,GFX_ArichAmbushFace_Pose1End
	;dl $CB543F,$CB553F,GFX_ArichAmbushFace_Pose2,GFX_ArichAmbushFace_Pose2End
	;dl $CB5551,$CB5651,GFX_ArichAmbushFace_Pose3,GFX_ArichAmbushFace_Pose3End
	;dl $CB5663,$CB5763,GFX_ArichAmbushFace_Pose4,GFX_ArichAmbushFace_Pose4End
	;dl $CB5775,$CB5875,GFX_ArichAmbushFace_Pose5,GFX_ArichAmbushFace_Pose5End
	;dl $CB5887,$CB5987,GFX_ArichAmbushFace_Pose6,GFX_ArichAmbushFace_Pose6End
	;dl $CB5991,$CB5A11,GFX_WrinklysSaveCave_Pose1,GFX_WrinklysSaveCave_Pose1End
	;dl $CB5A1B,$CB5A9B,GFX_WrinklysSaveCave_Pose2,GFX_WrinklysSaveCave_Pose2End
	;dl $CB5AA5,$CB5B25,GFX_WrinklysSaveCave_Pose3,GFX_WrinklysSaveCave_Pose3End
	;dl $CB5B2F,$CB5BAF,GFX_BurstEffect_Pose1,GFX_BurstEffect_Pose1End
	;dl $CB5BC1,$CB5CC1,GFX_BurstEffect_Pose2,GFX_BurstEffect_Pose2End
	;dl $CB5CD7,$CB5ED7,GFX_BurstEffect_Pose3,GFX_BurstEffect_Pose3End
	;dl $CB5EED,$CB614D,GFX_BurstEffect_Pose4,GFX_BurstEffect_Pose4End
	;dl $CB6177,$CB6397,GFX_BurstEffect_Pose5,GFX_BurstEffect_Pose5End
	;dl $CB63B9,$CB6559,GFX_BurstEffect_Pose6,GFX_BurstEffect_Pose6End
	;dl $CB6571,$CB67F1,GFX_TNTBarrel_Idle,GFX_TNTBarrel_IdleEnd
	;dl $CB6807,$CB6A67,GFX_ThrowBarrel_Idle,GFX_ThrowBarrel_IdleEnd
	;dl $CB6A7D,$CB6CDD,GFX_ThrowBarrel_Grabbed1,GFX_ThrowBarrel_Grabbed1End
	;dl $CB6CED,$CB6EED,GFX_ThrowBarrel_Grabbed2,GFX_ThrowBarrel_Grabbed2End
	;dl $CB6EFD,$CB70FD,GFX_ThrowBarrel_Grabbed3,GFX_ThrowBarrel_Grabbed3End
	;dl $CB7111,$CB7351,GFX_ThrowBarrel_Grabbed4,GFX_ThrowBarrel_Grabbed4End
	;dl $CB7367,$CB75C7,GFX_ThrowBarrel_Thrown1,GFX_ThrowBarrel_Thrown1End
	;dl $CB75DD,$CB783D,GFX_ThrowBarrel_Thrown2,GFX_ThrowBarrel_Thrown2End
	;dl $CB7853,$CB7AB3,GFX_ThrowBarrel_Thrown3,GFX_ThrowBarrel_Thrown3End
	;dl $CB7AC7,$CB7D07,GFX_ThrowBarrel_Thrown4,GFX_ThrowBarrel_Thrown4End
	;dl $CB7D1B,$CB7F5B,GFX_ThrowBarrel_Thrown5,GFX_ThrowBarrel_Thrown5End
	;dl $CB7F6F,$CB81AF,GFX_ThrowBarrel_Thrown6,GFX_ThrowBarrel_Thrown6End
	;dl $CB81C5,$CB8425,GFX_ThrowBarrel_Thrown7,GFX_ThrowBarrel_Thrown7End
	;dl $CB843B,$CB869B,GFX_ThrowBarrel_Thrown8,GFX_ThrowBarrel_Thrown8End
	;dl $CB86B1,$CB8911,GFX_SteelKeg_Idle,GFX_SteelKeg_IdleEnd
	;dl $CB8925,$CB8B65,GFX_SteelKeg_Grabbed1,GFX_SteelKeg_Grabbed1End
	;dl $CB8B7D,$CB8D3D,GFX_SteelKeg_Grabbed2,GFX_SteelKeg_Grabbed2End
	;dl $CB8D55,$CB8F15,GFX_SteelKeg_Grabbed3,GFX_SteelKeg_Grabbed3End
	;dl $CB8F29,$CB9169,GFX_SteelKeg_Thrown1,GFX_SteelKeg_Thrown1End
	;dl $CB917D,$CB93BD,GFX_SteelKeg_Thrown2,GFX_SteelKeg_Thrown2End
	;dl $CB93D7,$CB95B7,GFX_SteelKeg_Thrown3,GFX_SteelKeg_Thrown3End
	;dl $CB95CF,$CB978F,GFX_SteelKeg_Thrown4,GFX_SteelKeg_Thrown4End
	;dl $CB97A7,$CB9967,GFX_SteelKeg_Thrown5,GFX_SteelKeg_Thrown5End
	;dl $CB997F,$CB9B3F,GFX_SteelKeg_Thrown6,GFX_SteelKeg_Thrown6End
	;dl $CB9B57,$CB9D17,GFX_SteelKeg_Thrown7,GFX_SteelKeg_Thrown7End
	;dl $CB9D2B,$CB9F6B,GFX_SteelKeg_Thrown8,GFX_SteelKeg_Thrown8End
	;dl $CB9F81,$CBA1E1,GFX_CheckpointBarrel_Idle1,GFX_CheckpointBarrel_Idle1End
	;dl $CBA1F7,$CBA457,GFX_CheckpointBarrel_Idle2,GFX_CheckpointBarrel_Idle2End
	;dl $CBA46D,$CBA6CD,GFX_CheckpointBarrel_Idle3,GFX_CheckpointBarrel_Idle3End
	;dl $CBA6E3,$CBA943,GFX_CheckpointBarrel_Idle4,GFX_CheckpointBarrel_Idle4End
	;dl $CBA959,$CBABB9,GFX_CheckpointBarrel_Idle5,GFX_CheckpointBarrel_Idle5End
	;dl $CBABCF,$CBAE2F,GFX_CheckpointBarrel_Idle6,GFX_CheckpointBarrel_Idle6End
	;dl $CBAE45,$CBB0A5,GFX_CheckpointBarrel_Idle7,GFX_CheckpointBarrel_Idle7End
	;dl $CBB0BB,$CBB31B,GFX_CheckpointBarrel_Idle8,GFX_CheckpointBarrel_Idle8End
	;dl $CBB335,$CBB515,GFX_WoodenBox_Idle,GFX_WoodenBox_IdleEnd
	;dl $CBB529,$CBB6A9,GFX_WoodenBox_Grabbed1,GFX_WoodenBox_Grabbed1End
	;dl $CBB6BF,$CBB7FF,GFX_WoodenBox_Grabbed2,GFX_WoodenBox_Grabbed2End
	;dl $CBB813,$CBB993,GFX_WoodenBox_Grabbed3,GFX_WoodenBox_Grabbed3End
	;dl $CBB99F,$CBBA3F,GFX_SmokePuff_Pose1,GFX_SmokePuff_Pose1End
	;dl $CBBA53,$CBBB73,GFX_SmokePuff_Pose2,GFX_SmokePuff_Pose2End
	;dl $CBBB87,$CBBD07,GFX_SmokePuff_Pose3,GFX_SmokePuff_Pose3End
	;dl $CBBD1B,$CBBF5B,GFX_SmokePuff_Pose4,GFX_SmokePuff_Pose4End
	;dl $CBBF71,$CBC231,GFX_SmokePuff_Pose5,GFX_SmokePuff_Pose5End
	;dl $CBC249,$CBC529,GFX_SmokePuff_Pose6,GFX_SmokePuff_Pose6End
	;dl $CBC547,$CBC767,GFX_SmokePuff_Pose7,GFX_SmokePuff_Pose7End
	;dl $CBC779,$CBC879,GFX_SmokePuff_Pose8,GFX_SmokePuff_Pose8End
	;dl $CBC88B,$CBC98B,GFX_BigSmokeCloud_Pose1,GFX_BigSmokeCloud_Pose1End
	;dl $CBC99D,$CBCAFD,GFX_BigSmokeCloud_Pose2,GFX_BigSmokeCloud_Pose2End
	;dl $CBCB11,$CBCCF1,GFX_BigSmokeCloud_Pose3,GFX_BigSmokeCloud_Pose3End
	;dl $CBCD01,$CBCF01,GFX_BigSmokeCloud_Pose4,GFX_BigSmokeCloud_Pose4End
	;dl $CBCF15,$CBD155,GFX_BigSmokeCloud_Pose5,GFX_BigSmokeCloud_Pose5End
	;dl $CBD16B,$CBD3CB,GFX_BigSmokeCloud_Pose6,GFX_BigSmokeCloud_Pose6End
	;dl $CBD3E5,$CBD685,GFX_BigSmokeCloud_Pose7,GFX_BigSmokeCloud_Pose7End
	;dl $CBD69F,$CBD93F,GFX_BigSmokeCloud_Pose8,GFX_BigSmokeCloud_Pose8End
	;dl $CBD95B,$CBDC1B,GFX_BigSmokeCloud_Pose9,GFX_BigSmokeCloud_Pose9End
	;dl $CBDC39,$CBDE59,GFX_BigSmokeCloud_Pose10,GFX_BigSmokeCloud_Pose10End
	;dl $CBDE75,$CBE075,GFX_BigSmokeCloud_Pose11,GFX_BigSmokeCloud_Pose11End
	;dl $CBE089,$CBE209,GFX_BigSmokeCloud_Pose12,GFX_BigSmokeCloud_Pose12End
	;dl $CBE21F,$CBE2FF,GFX_BigSmokeCloud_Pose13,GFX_BigSmokeCloud_Pose13End
	;dl $CBE309,$CBE389,GFX_Explosion_Pose1,GFX_Explosion_Pose1End
	;dl $CBE39B,$CBE49B,GFX_Explosion_Pose2,GFX_Explosion_Pose2End
	;dl $CBE4AD,$CBE60D,GFX_Explosion_Pose3,GFX_Explosion_Pose3End
	;dl $CBE623,$CBE7C3,GFX_Explosion_Pose4,GFX_Explosion_Pose4End
	;dl $CBE7DB,$CBE99B,GFX_Explosion_Pose5,GFX_Explosion_Pose5End
	;dl $CBE9B1,$CBEBB1,GFX_Explosion_Pose6,GFX_Explosion_Pose6End
	;dl $CBEBC7,$CBEE27,GFX_Explosion_Pose7,GFX_Explosion_Pose7End
	;dl $CBEE41,$CBF081,GFX_Explosion_Pose8,GFX_Explosion_Pose8End
	;dl $CBF0A3,$CBF363,GFX_Explosion_Pose9,GFX_Explosion_Pose9End
	;dl $CBF37D,$CBF67D,GFX_Explosion_Pose10,GFX_Explosion_Pose10End
	;dl $CBF695,$CBF975,GFX_Explosion_Pose11,GFX_Explosion_Pose11End
	;dl $CBF98F,$CBFC2F,GFX_Explosion_Pose12,GFX_Explosion_Pose12End
	;dl $CBFC4D,$CBFE6D,GFX_Explosion_Pose13,GFX_Explosion_Pose13End
	;dl $CC3A01,$CC3BC1,GFX_Explosion_Pose14,GFX_Explosion_Pose14End
	;dl $CC3BD3,$CC3D33,GFX_Explosion_Pose15,GFX_Explosion_Pose15End
	;dl $CC3D45,$CC3EA5,GFX_BearCoin_Pose1,GFX_BearCoin_Pose1End
	;dl $CC3EB7,$CC4017,GFX_BearCoin_Pose2,GFX_BearCoin_Pose2End
	;dl $CC4029,$CC4189,GFX_BearCoin_Pose3,GFX_BearCoin_Pose3End
	;dl $CC419F,$CC42DF,GFX_BearCoin_Pose4,GFX_BearCoin_Pose4End
	;dl $CC42EF,$CC43CF,GFX_BearCoin_Pose5,GFX_BearCoin_Pose5End
	;dl $CC43DF,$CC44BF,GFX_BearCoin_Pose6,GFX_BearCoin_Pose6End
	;dl $CC44CF,$CC45AF,GFX_BearCoin_Pose7,GFX_BearCoin_Pose7End
	;dl $CC45C5,$CC4705,GFX_BearCoin_Pose8,GFX_BearCoin_Pose8End
	;dl $CC4719,$CC47D9,GFX_DKCoin_Pose1,GFX_DKCoin_Pose1End
	;dl $CC47F1,$CC4A11,GFX_DKCoin_Pose2,GFX_DKCoin_Pose2End
	;dl $CC4A29,$CC4D69,GFX_DKCoin_Pose3,GFX_DKCoin_Pose3End
	;dl $CC4D85,$CC5105,GFX_DKCoin_Pose4,GFX_DKCoin_Pose4End
	;dl $CC5121,$CC54A1,GFX_DKCoin_Pose5,GFX_DKCoin_Pose5End
	;dl $CC54BD,$CC583D,GFX_DKCoin_Pose6,GFX_DKCoin_Pose6End
	;dl $CC5853,$CC5B13,GFX_DKCoin_Pose7,GFX_DKCoin_Pose7End
	;dl $CC5B2B,$CC5D4B,GFX_DKCoin_Pose8,GFX_DKCoin_Pose8End
	;dl $CC5D5B,$CC5F5B,GFX_BonusBCoin_Pose1,GFX_BonusBCoin_Pose1End
	;dl $CC5F6B,$CC616B,GFX_BonusBCoin_Pose2,GFX_BonusBCoin_Pose2End
	;dl $CC617B,$CC637B,GFX_BonusBCoin_Pose3,GFX_BonusBCoin_Pose3End
	;dl $CC638F,$CC650F,GFX_BonusBCoin_Pose4,GFX_BonusBCoin_Pose4End
	;dl $CC651B,$CC661B,GFX_BonusBCoin_Pose5,GFX_BonusBCoin_Pose5End
	;dl $CC6629,$CC66E9,GFX_BonusBCoin_Pose6,GFX_BonusBCoin_Pose6End
	;dl $CC66F7,$CC6817,GFX_BonusBCoin_Pose7,GFX_BonusBCoin_Pose7End
	;dl $CC682B,$CC69AB,GFX_BonusBCoin_Pose8,GFX_BonusBCoin_Pose8End
	;dl $CC69BB,$CC6BBB,GFX_BonusBCoin_Collected,GFX_BonusBCoin_CollectedEnd
	;dl $CC6BC7,$CC6CC7,GFX_LargeWaterSplash_Pose1,GFX_LargeWaterSplash_Pose1End
	;dl $CC6CD7,$CC6E17,GFX_LargeWaterSplash_Pose2,GFX_LargeWaterSplash_Pose2End
	;dl $CC6E2B,$CC6FAB,GFX_LargeWaterSplash_Pose3,GFX_LargeWaterSplash_Pose3End
	;dl $CC6FBF,$CC71FF,GFX_LargeWaterSplash_Pose4,GFX_LargeWaterSplash_Pose4End
	;dl $CC721D,$CC74FD,GFX_LargeWaterSplash_Pose5,GFX_LargeWaterSplash_Pose5End
	;dl $CC751F,$CC77DF,GFX_LargeWaterSplash_Pose6,GFX_LargeWaterSplash_Pose6End
	;dl $CC7803,$CC7B43,GFX_LargeWaterSplash_Pose7,GFX_LargeWaterSplash_Pose7End
	;dl $CC7B6D,$CC7EAD,GFX_LargeWaterSplash_Pose8,GFX_LargeWaterSplash_Pose8End
	;dl $CC7ED5,$CC81F5,GFX_LargeWaterSplash_Pose9,GFX_LargeWaterSplash_Pose9End
	;dl $CC8211,$CC84D1,GFX_LargeWaterSplash_Pose10,GFX_LargeWaterSplash_Pose10End
	;dl $CC84F1,$CC8791,GFX_LargeWaterSplash_Pose11,GFX_LargeWaterSplash_Pose11End
	;dl $CC87A5,$CC8985,GFX_LargeWaterSplash_Pose12,GFX_LargeWaterSplash_Pose12End
	;dl $CC8997,$CC8BB7,GFX_LargeWaterSplash_Pose13,GFX_LargeWaterSplash_Pose13End
	;dl $CC8BC9,$CC8DE9,GFX_LargeWaterSplash_Pose14,GFX_LargeWaterSplash_Pose14End
	;dl $CC8E05,$CC8F45,GFX_LargeWaterSplash_Pose15,GFX_LargeWaterSplash_Pose15End
	;dl $CC8F5F,$CC907F,GFX_LargeWaterSplash_Pose16,GFX_LargeWaterSplash_Pose16End
	;dl $CC908D,$CC914D,GFX_KongWaterSplash_Pose1,GFX_KongWaterSplash_Pose1End
	;dl $CC9159,$CC9259,GFX_KongWaterSplash_Pose2,GFX_KongWaterSplash_Pose2End
	;dl $CC926F,$CC940F,GFX_KongWaterSplash_Pose3,GFX_KongWaterSplash_Pose3End
	;dl $CC9425,$CC95C5,GFX_KongWaterSplash_Pose4,GFX_KongWaterSplash_Pose4End
	;dl $CC95D7,$CC9737,GFX_KongWaterSplash_Pose5,GFX_KongWaterSplash_Pose5End
	;dl $CC9749,$CC9849,GFX_KongWaterSplash_Pose6,GFX_KongWaterSplash_Pose6End
	;dl $CC985D,$CC9B5D,GFX_BarrelCannon_Base1,GFX_BarrelCannon_Base1End
	;dl $CC9B79,$CC9EF9,GFX_BarrelCannon_Base2,GFX_BarrelCannon_Base2End
	;dl $CC9F1F,$CCA27F,GFX_BarrelCannon_Base3,GFX_BarrelCannon_Base3End
	;dl $CCA29D,$CCA5DD,GFX_BarrelCannon_Base4,GFX_BarrelCannon_Base4End
	;dl $CCA5F1,$CCA8F1,GFX_BarrelCannon_Base5,GFX_BarrelCannon_Base5End
	;dl $CCA911,$CCAC71,GFX_BarrelCannon_Base6,GFX_BarrelCannon_Base6End
	;dl $CCAC8D,$CCB00D,GFX_BarrelCannon_Base7,GFX_BarrelCannon_Base7End
	;dl $CCB02D,$CCB38D,GFX_BarrelCannon_Base8,GFX_BarrelCannon_Base8End
	;dl $CCB3A1,$CCB6A1,GFX_BarrelCannon_Base9,GFX_BarrelCannon_Base9End
	;dl $CCB6BD,$CCBA3D,GFX_BarrelCannon_Base10,GFX_BarrelCannon_Base10End
	;dl $CCBA63,$CCBDC3,GFX_BarrelCannon_Base11,GFX_BarrelCannon_Base11End
	;dl $CCBDE1,$CCC121,GFX_BarrelCannon_Base12,GFX_BarrelCannon_Base12End
	;dl $CCC135,$CCC435,GFX_BarrelCannon_Base13,GFX_BarrelCannon_Base13End
	;dl $CCC455,$CCC7B5,GFX_BarrelCannon_Base14,GFX_BarrelCannon_Base14End
	;dl $CCC7D1,$CCCB51,GFX_BarrelCannon_Base15,GFX_BarrelCannon_Base15End
	;dl $CCCB71,$CCCED1,GFX_BarrelCannon_Base16,GFX_BarrelCannon_Base16End
	;dl $CCCEE5,$CCD1E5,GFX_BarrelCannon_AutoFire1,GFX_BarrelCannon_AutoFire1End
	;dl $CCD201,$CCD581,GFX_BarrelCannon_AutoFire2,GFX_BarrelCannon_AutoFire2End
	;dl $CCD5A7,$CCD907,GFX_BarrelCannon_AutoFire3,GFX_BarrelCannon_AutoFire3End
	;dl $CCD925,$CCDC65,GFX_BarrelCannon_AutoFire4,GFX_BarrelCannon_AutoFire4End
	;dl $CCDC79,$CCDF79,GFX_BarrelCannon_AutoFire5,GFX_BarrelCannon_AutoFire5End
	;dl $CCDF99,$CCE2F9,GFX_BarrelCannon_AutoFire6,GFX_BarrelCannon_AutoFire6End
	;dl $CCE315,$CCE695,GFX_BarrelCannon_AutoFire7,GFX_BarrelCannon_AutoFire7End
	;dl $CCE6B5,$CCEA15,GFX_BarrelCannon_AutoFire8,GFX_BarrelCannon_AutoFire8End
	;dl $CCEA29,$CCED29,GFX_BarrelCannon_AutoFire9,GFX_BarrelCannon_AutoFire9End
	;dl $CCED45,$CCF0C5,GFX_BarrelCannon_AutoFire10,GFX_BarrelCannon_AutoFire10End
	;dl $CCF0EB,$CCF44B,GFX_BarrelCannon_AutoFire11,GFX_BarrelCannon_AutoFire11End
	;dl $CCF469,$CCF7A9,GFX_BarrelCannon_AutoFire12,GFX_BarrelCannon_AutoFire12End
	;dl $CCF7BD,$CCFABD,GFX_BarrelCannon_AutoFire13,GFX_BarrelCannon_AutoFire13End
	;dl $CCFADD,$CCFE3D,GFX_BarrelCannon_AutoFire14,GFX_BarrelCannon_AutoFire14End
	;dl $CD3DEE,$CD416E,GFX_BarrelCannon_AutoFire15,GFX_BarrelCannon_AutoFire15End
	;dl $CD418E,$CD44EE,GFX_BarrelCannon_AutoFire16,GFX_BarrelCannon_AutoFire16End
	;dl $CD4502,$CD4802,GFX_ArrowBarrelCannon_Pose1,GFX_ArrowBarrelCannon_Pose1End
	;dl $CD4820,$CD4B60,GFX_ArrowBarrelCannon_Pose2,GFX_ArrowBarrelCannon_Pose2End
	;dl $CD4B74,$CD4E74,GFX_ArrowBarrelCannon_Pose3,GFX_ArrowBarrelCannon_Pose3End
	;dl $CD4E8A,$CD4FCA,GFX_BarrelCannonSymbols_Bonus,GFX_BarrelCannonSymbols_BonusEnd
	;dl $CD4FDC,$CD519C,GFX_BarrelCannonSymbols_BonusSwirl1,GFX_BarrelCannonSymbols_BonusSwirl1End
	;dl $CD51AC,$CD534C,GFX_BarrelCannonSymbols_BonusSwirl2,GFX_BarrelCannonSymbols_BonusSwirl2End
	;dl $CD535C,$CD54FC,GFX_BarrelCannonSymbols_BonusSwirl3,GFX_BarrelCannonSymbols_BonusSwirl3End
	;dl $CD550E,$CD566E,GFX_BarrelCannonSymbols_BonusSwirl4,GFX_BarrelCannonSymbols_BonusSwirl4End
	;dl $CD5684,$CD57C4,GFX_BarrelCannonSymbols_BonusSwirl5,GFX_BarrelCannonSymbols_BonusSwirl5End
	;dl $CD57DA,$CD591A,GFX_BarrelCannonSymbols_BonusSwirl6,GFX_BarrelCannonSymbols_BonusSwirl6End
	;dl $CD5930,$CD5A70,GFX_BarrelCannonSymbols_BonusSwirl7,GFX_BarrelCannonSymbols_BonusSwirl7End
	;dl $CD5A84,$CD5BA4,GFX_BarrelCannonSymbols_BonusSwirl8,GFX_BarrelCannonSymbols_BonusSwirl8End
	;dl $CD5BBC,$CD5CBC,GFX_BarrelCannonSymbols_BonusSwirl9,GFX_BarrelCannonSymbols_BonusSwirl9End
	;dl $CD5CCC,$CD5D4C,GFX_BarrelCannonSymbols_BonusSwirl10,GFX_BarrelCannonSymbols_BonusSwirl10End
	;dl $CD5D62,$CD5F02,GFX_BarrelCannonSymbols_Warp,GFX_BarrelCannonSymbols_WarpEnd
	;dl $CD5F1C,$CD615C,GFX_ReKoil_Bounce1,GFX_ReKoil_Bounce1End
	;dl $CD6178,$CD63D8,GFX_ReKoil_Bounce2,GFX_ReKoil_Bounce2End
	;dl $CD63EE,$CD664E,GFX_ReKoil_Bounce3,GFX_ReKoil_Bounce3End
	;dl $CD6666,$CD68E6,GFX_ReKoil_Bounce4,GFX_ReKoil_Bounce4End
	;dl $CD6904,$CD6B84,GFX_ReKoil_Bounce5,GFX_ReKoil_Bounce5End
	;dl $CD6BA0,$CD6E00,GFX_ReKoil_Bounce6,GFX_ReKoil_Bounce6End
	;dl $CD6E1E,$CD709E,GFX_ReKoil_Bounce7,GFX_ReKoil_Bounce7End
	;dl $CD70BA,$CD737A,GFX_ReKoil_Bounce8,GFX_ReKoil_Bounce8End
	;dl $CD7396,$CD7656,GFX_ReKoil_Bounce9,GFX_ReKoil_Bounce9End
	;dl $CD766C,$CD78CC,GFX_ReKoil_Bounce10,GFX_ReKoil_Bounce10End
	;dl $CD78E6,$CD7B26,GFX_ReKoil_Bounce11,GFX_ReKoil_Bounce11End
	;dl $CD7B44,$CD7DC4,GFX_ReKoil_Turn1,GFX_ReKoil_Turn1End
	;dl $CD7DDE,$CD801E,GFX_ReKoil_Turn2,GFX_ReKoil_Turn2End
	;dl $CD803A,$CD829A,GFX_ReKoil_Dead1,GFX_ReKoil_Dead1End
	;dl $CD82BE,$CD859E,GFX_ReKoil_Dead2,GFX_ReKoil_Dead2End
	;dl $CD85C0,$CD8880,GFX_ReKoil_Dead3,GFX_ReKoil_Dead3End
	;dl $CD889A,$CD8B9A,GFX_ReKoil_PeakOfJump1,GFX_ReKoil_PeakOfJump1End
	;dl $CD8BBA,$CD8EBA,GFX_ReKoil_PeakOfJump2,GFX_ReKoil_PeakOfJump2End
	;dl $CD8EDC,$CD919C,GFX_ReKoil_PeakOfJump3,GFX_ReKoil_PeakOfJump3End
	;dl $CD91BA,$CD943A,GFX_ReKoil_PeakOfJump4,GFX_ReKoil_PeakOfJump4End
	;dl $CD9458,$CD96D8,GFX_ReKoil_PeakOfJump5,GFX_ReKoil_PeakOfJump5End
	;dl $CD96F0,$CD9A30,GFX_Klasp_MoveOnRope1,GFX_Klasp_MoveOnRope1End
	;dl $CD9A48,$CD9D88,GFX_Klasp_MoveOnRope2,GFX_Klasp_MoveOnRope2End
	;dl $CD9DA8,$CDA108,GFX_Klasp_MoveOnRope3,GFX_Klasp_MoveOnRope3End
	;dl $CDA128,$CDA488,GFX_Klasp_MoveOnRope4,GFX_Klasp_MoveOnRope4End
	;dl $CDA4A8,$CDA808,GFX_Klasp_MoveOnRope5,GFX_Klasp_MoveOnRope5End
	;dl $CDA826,$CDAB66,GFX_Klasp_MoveOnRope6,GFX_Klasp_MoveOnRope6End
	;dl $CDAB82,$CDAEA2,GFX_Klasp_MoveOnRope7,GFX_Klasp_MoveOnRope7End
	;dl $CDAEBE,$CDB1DE,GFX_Klasp_MoveOnRope8,GFX_Klasp_MoveOnRope8End
	;dl $CDB1FC,$CDB53C,GFX_Klasp_MoveOnRope9,GFX_Klasp_MoveOnRope9End
	;dl $CDB55A,$CDB89A,GFX_Klasp_MoveOnRope10,GFX_Klasp_MoveOnRope10End
	;dl $CDB8B6,$CDBBD6,GFX_Klasp_MoveOnRope11,GFX_Klasp_MoveOnRope11End
	;dl $CDBBF2,$CDBF12,GFX_Klasp_MoveOnRope12,GFX_Klasp_MoveOnRope12End
	;dl $CDBF36,$CDC276,GFX_Klasp_Idle1,GFX_Klasp_Idle1End
	;dl $CDC29A,$CDC5DA,GFX_Klasp_Idle2,GFX_Klasp_Idle2End
	;dl $CDC5FE,$CDC93E,GFX_Klasp_Idle3,GFX_Klasp_Idle3End
	;dl $CDC962,$CDCCA2,GFX_Klasp_Idle4,GFX_Klasp_Idle4End
	;dl $CDCCC6,$CDD006,GFX_Klasp_Idle5,GFX_Klasp_Idle5End
	;dl $CDD02A,$CDD36A,GFX_Klasp_Idle6,GFX_Klasp_Idle6End
	;dl $CDD38E,$CDD6CE,GFX_Klasp_Idle7,GFX_Klasp_Idle7End
	;dl $CDD6F2,$CDDA32,GFX_Klasp_Idle8,GFX_Klasp_Idle8End
	;dl $CDDA52,$CDDDB2,GFX_Klasp_Turn,GFX_Klasp_TurnEnd
	;dl $CDDDC2,$CDDF02,GFX_MainMapWaterFallByCottonTopCove_Pose1,GFX_MainMapWaterFallByCottonTopCove_Pose1End
	;dl $CDDF12,$CDE052,GFX_MainMapWaterFallByCottonTopCove_Pose2,GFX_MainMapWaterFallByCottonTopCove_Pose2End
	;dl $CDE062,$CDE1A2,GFX_MainMapWaterFallByCottonTopCove_Pose3,GFX_MainMapWaterFallByCottonTopCove_Pose3End
	;dl $CDE1B2,$CDE2F2,GFX_MainMapWaterFallByCottonTopCove_Pose4,GFX_MainMapWaterFallByCottonTopCove_Pose4End
	;dl $CDE302,$CDE502,GFX_MainMapWideWaterfalls_Pose1,GFX_MainMapWideWaterfalls_Pose1End
	;dl $CDE512,$CDE712,GFX_MainMapWideWaterfalls_Pose2,GFX_MainMapWideWaterfalls_Pose2End
	;dl $CDE722,$CDE922,GFX_MainMapWideWaterfalls_Pose3,GFX_MainMapWideWaterfalls_Pose3End
	;dl $CDE932,$CDEB32,GFX_MainMapWideWaterfalls_Pose4,GFX_MainMapWideWaterfalls_Pose4End
	;dl $CDEB42,$CDED42,GFX_MainMapWideWaterfalls_Pose5,GFX_MainMapWideWaterfalls_Pose5End
	;dl $CDED52,$CDEF52,GFX_MainMapWideWaterfalls_Pose6,GFX_MainMapWideWaterfalls_Pose6End
	;dl $CDEF62,$CDF162,GFX_MainMapWideWaterfalls_Pose7,GFX_MainMapWideWaterfalls_Pose7End
	;dl $CDF172,$CDF372,GFX_MainMapWideWaterfalls_Pose8,GFX_MainMapWideWaterfalls_Pose8End
	;dl $CDF380,$CDF3E0,GFX_UnknownEffect2_Pose1,GFX_UnknownEffect2_Pose1End
	;dl $CDF3EE,$CDF44E,GFX_UnknownEffect2_Pose2,GFX_UnknownEffect2_Pose2End
	;dl $CDF45C,$CDF4BC,GFX_UnknownEffect2_Pose3,GFX_UnknownEffect2_Pose3End
	;dl $CDF4CA,$CDF52A,GFX_UnknownEffect2_Pose4,GFX_UnknownEffect2_Pose4End
	;dl $CDF538,$CDF598,GFX_UnknownEffect2_Pose5,GFX_UnknownEffect2_Pose5End
	;dl $CDF5A6,$CDF606,GFX_UnknownEffect2_Pose6,GFX_UnknownEffect2_Pose6End
	;dl $CDF614,$CDF674,GFX_UnknownEffect2_Pose7,GFX_UnknownEffect2_Pose7End
	;dl $CDF682,$CDF6E2,GFX_UnknownEffect2_Pose8,GFX_UnknownEffect2_Pose8End
	;dl $CDF6FE,$CDFADE,GFX_MillPlatform_Pose,GFX_MillPlatform_PoseEnd
	;dl $CDFAF8,$CDFCD8,GFX_LifeBallon_Idle1,GFX_LifeBallon_Idle1End
	;dl $CDFCF2,$CDFED2,GFX_LifeBallon_Idle2,GFX_LifeBallon_Idle2End
	;dl $CE3AFF,$CE3CDF,GFX_LifeBallon_Idle3,GFX_LifeBallon_Idle3End
	;dl $CE3CF9,$CE3ED9,GFX_LifeBallon_Idle4,GFX_LifeBallon_Idle4End
	;dl $CE3EF3,$CE40D3,GFX_LifeBallon_Idle5,GFX_LifeBallon_Idle5End
	;dl $CE40ED,$CE42CD,GFX_LifeBallon_Idle6,GFX_LifeBallon_Idle6End
	;dl $CE42E7,$CE44C7,GFX_LifeBallon_Idle7,GFX_LifeBallon_Idle7End
	;dl $CE44E1,$CE46C1,GFX_LifeBallon_Idle8,GFX_LifeBallon_Idle8End
	;dl $CE46D1,$CE4751,GFX_Dixie_LifeIcon,GFX_Dixie_LifeIconEnd
	;dl $CE4765,$CE4A65,GFX_TrackerBarrel_Pose,GFX_TrackerBarrel_PoseEnd
	;dl $CE4A83,$CE4CA3,GFX_Sneek_Walk1,GFX_Sneek_Walk1End
	;dl $CE4CC1,$CE4EE1,GFX_Sneek_Walk2,GFX_Sneek_Walk2End
	;dl $CE4EFD,$CE50FD,GFX_Sneek_Walk3,GFX_Sneek_Walk3End
	;dl $CE511B,$CE533B,GFX_Sneek_Walk4,GFX_Sneek_Walk4End
	;dl $CE5357,$CE5557,GFX_Sneek_Walk5,GFX_Sneek_Walk5End
	;dl $CE5573,$CE5773,GFX_Sneek_Walk6,GFX_Sneek_Walk6End
	;dl $CE578F,$CE598F,GFX_Sneek_Walk7,GFX_Sneek_Walk7End
	;dl $CE59AD,$CE5BCD,GFX_Sneek_Walk8,GFX_Sneek_Walk8End
	;dl $CE5BDF,$CE5D3F,GFX_Sneek_Turn1,GFX_Sneek_Turn1End
	;dl $CE5D53,$CE5E73,GFX_Sneek_Turn2,GFX_Sneek_Turn2End
	;dl $CE5E91,$CE60B1,GFX_Sneek_Dead1,GFX_Sneek_Dead1End
	;dl $CE60CD,$CE632D,GFX_Sneek_Dead2,GFX_Sneek_Dead2End
	;dl $CE6349,$CE6609,GFX_Sneek_Dead3,GFX_Sneek_Dead3End
	;dl $CE661F,$CE687F,GFX_Sneek_ScareEllie1,GFX_Sneek_ScareEllie1End
	;dl $CE689F,$CE6ADF,GFX_Sneek_ScareEllie2,GFX_Sneek_ScareEllie2End
	;dl $CE6AFD,$CE6D7D,GFX_Sneek_ScareEllie3,GFX_Sneek_ScareEllie3End
	;dl $CE6DA3,$CE7103,GFX_Kiddy_LookAroundIdle1,GFX_Kiddy_LookAroundIdle1End
	;dl $CE712B,$CE74AB,GFX_Kiddy_LookAroundIdle2,GFX_Kiddy_LookAroundIdle2End
	;dl $CE74D3,$CE7853,GFX_Kiddy_LookAroundIdle3,GFX_Kiddy_LookAroundIdle3End
	;dl $CE787B,$CE7BFB,GFX_Kiddy_LookAroundIdle4,GFX_Kiddy_LookAroundIdle4End
	;dl $CE7C23,$CE7FA3,GFX_Kiddy_LookAroundIdle5,GFX_Kiddy_LookAroundIdle5End
	;dl $CE7FCB,$CE834B,GFX_Kiddy_LookAroundIdle6,GFX_Kiddy_LookAroundIdle6End
	;dl $CE8371,$CE86D1,GFX_Kiddy_LookAroundIdle7,GFX_Kiddy_LookAroundIdle7End
	;dl $CE86F7,$CE8A57,GFX_Kiddy_LookAroundIdle8,GFX_Kiddy_LookAroundIdle8End
	;dl $CE8A7D,$CE8DDD,GFX_Kiddy_LookAroundIdle9,GFX_Kiddy_LookAroundIdle9End
	;dl $CE8E03,$CE9163,GFX_Kiddy_LookAroundIdle10,GFX_Kiddy_LookAroundIdle10End
	;dl $CE9189,$CE94E9,GFX_Kiddy_LookAroundIdle11,GFX_Kiddy_LookAroundIdle11End
	;dl $CE951F,$CE9B5F,GFX_DoubleTroubleSign_Pose,GFX_DoubleTroubleSign_PoseEnd
	;dl $CE9B6B,$CE9BAB,GFX_TM_Pose,GFX_TM_PoseEnd
	;dl $CE9BD7,$CEA057,GFX_MusicTestSign_Pose,GFX_MusicTestSign_PoseEnd
	;dl $CEA077,$CEA377,GFX_Kiddy_Duck1,GFX_Kiddy_Duck1End
	;dl $CEA397,$CEA697,GFX_Kiddy_Duck2,GFX_Kiddy_Duck2End
	;dl $CEA6B1,$CEA9B1,GFX_Kiddy_Duck3,GFX_Kiddy_Duck3End
	;dl $CEA9C7,$CEAC87,GFX_Kiddy_Duck4,GFX_Kiddy_Duck4End
	;dl $CEACA3,$CEAF63,GFX_Kiddy_Duck5,GFX_Kiddy_Duck5End
	;dl $CEAF7F,$CEB23F,GFX_Kiddy_Duck6,GFX_Kiddy_Duck6End
	;dl $CEB25B,$CEB51B,GFX_Kiddy_Duck7,GFX_Kiddy_Duck7End
	;dl $CEB539,$CEB819,GFX_Kiddy_Duck8,GFX_Kiddy_Duck8End
	;dl $CEB831,$CEBA51,GFX_Dixie_BeingThrown1,GFX_Dixie_BeingThrown1End
	;dl $CEBA65,$CEBC45,GFX_Dixie_BeingThrown2,GFX_Dixie_BeingThrown2End
	;dl $CEBC5D,$CEBE1D,GFX_Dixie_BeingThrown3,GFX_Dixie_BeingThrown3End
	;dl $CEBE2F,$CEBF8F,GFX_Dixie_BeingThrown4,GFX_Dixie_BeingThrown4End
	;dl $CEBFAB,$CEC20B,GFX_Kiddy_TeamUpThrow1,GFX_Kiddy_TeamUpThrow1End
	;dl $CEC22D,$CEC4ED,GFX_Kiddy_TeamUpThrow2,GFX_Kiddy_TeamUpThrow2End
	;dl $CEC511,$CEC7F1,GFX_Kiddy_TeamUpThrow3,GFX_Kiddy_TeamUpThrow3End
	;dl $CEC811,$CECB71,GFX_Kiddy_TeamUpThrow4,GFX_Kiddy_TeamUpThrow4End
	;dl $CECB93,$CECF13,GFX_Ellie_Idle1,GFX_Ellie_Idle1End
	;dl $CECF39,$CED299,GFX_Ellie_Idle2,GFX_Ellie_Idle2End
	;dl $CED2C1,$CED641,GFX_Ellie_Idle3,GFX_Ellie_Idle3End
	;dl $CED667,$CED9C7,GFX_Ellie_Idle4,GFX_Ellie_Idle4End
	;dl $CED9EB,$CEDDEB,GFX_Ellie_Walk1,GFX_Ellie_Walk1End
	;dl $CEDE11,$CEE1D1,GFX_Ellie_Walk2,GFX_Ellie_Walk2End
	;dl $CEE1FB,$CEE5FB,GFX_Ellie_Walk3,GFX_Ellie_Walk3End
	;dl $CEE61F,$CEE9BF,GFX_Ellie_Walk4,GFX_Ellie_Walk4End
	;dl $CEE9E7,$CEEDC7,GFX_Ellie_Walk5,GFX_Ellie_Walk5End
	;dl $CEEDEF,$CEF1CF,GFX_Ellie_Walk6,GFX_Ellie_Walk6End
	;dl $CEF1F5,$CEF5B5,GFX_Ellie_Walk7,GFX_Ellie_Walk7End
	;dl $CEF5DB,$CEF93B,GFX_Ellie_Walk8,GFX_Ellie_Walk8End
	;dl $CEF961,$CEFD21,GFX_Ellie_Walk9,GFX_Ellie_Walk9End
	;dl $CF411C,$CF44DC,GFX_Ellie_Walk10,GFX_Ellie_Walk10End
	;dl $CF44FE,$CF487E,GFX_Ellie_Walk11,GFX_Ellie_Walk11End
	;dl $CF48A4,$CF4C64,GFX_Ellie_Walk12,GFX_Ellie_Walk12End
	;dl $CF4C88,$CF5028,GFX_Ellie_Walk13,GFX_Ellie_Walk13End
	;dl $CF504E,$CF540E,GFX_Ellie_Walk14,GFX_Ellie_Walk14End
	;dl $CF542C,$CF570C,GFX_Ellie_Turn1,GFX_Ellie_Turn1End
	;dl $CF5726,$CF5966,GFX_Ellie_Turn2,GFX_Ellie_Turn2End
	;dl $CF5986,$CF5CE6,GFX_Ellie_Grab1,GFX_Ellie_Grab1End
	;dl $CF5D06,$CF6066,GFX_Ellie_Grab2,GFX_Ellie_Grab2End
	;dl $CF6086,$CF63E6,GFX_Ellie_Grab3,GFX_Ellie_Grab3End
	;dl $CF640E,$CF678E,GFX_Ellie_Jump1,GFX_Ellie_Jump1End
	;dl $CF67AE,$CF6B6E,GFX_Ellie_Jump2,GFX_Ellie_Jump2End
	;dl $CF6B8C,$CF6F2C,GFX_Ellie_Jump3,GFX_Ellie_Jump3End
	;dl $CF6F54,$CF72D4,GFX_Ellie_Scared1,GFX_Ellie_Scared1End
	;dl $CF72F8,$CF76F8,GFX_Ellie_Scared2,GFX_Ellie_Scared2End
	;dl $CF7720,$CF7B00,GFX_Ellie_Scared3,GFX_Ellie_Scared3End
	;dl $CF7B2A,$CF7F2A,GFX_Ellie_Scared4,GFX_Ellie_Scared4End
	;dl $CF7F54,$CF8354,GFX_Ellie_Scared5,GFX_Ellie_Scared5End
	;dl $CF837E,$CF877E,GFX_Ellie_Scared6,GFX_Ellie_Scared6End
	;dl $CF87A2,$CF8AE2,GFX_Ellie_SideSuck1,GFX_Ellie_SideSuck1End
	;dl $CF8B0C,$CF8EAC,GFX_Ellie_SideSuck2,GFX_Ellie_SideSuck2End
	;dl $CF8ED4,$CF9254,GFX_Ellie_SideSuck3,GFX_Ellie_SideSuck3End
	;dl $CF927C,$CF95FC,GFX_Ellie_SideSuck4,GFX_Ellie_SideSuck4End
	;dl $CF9624,$CF99A4,GFX_Ellie_SideSuck5,GFX_Ellie_SideSuck5End
	;dl $CF99CC,$CF9D4C,GFX_Ellie_SideSuck6,GFX_Ellie_SideSuck6End
	;dl $CF9D74,$CFA0F4,GFX_Ellie_SideSuck7,GFX_Ellie_SideSuck7End
	;dl $CFA11E,$CFA4BE,GFX_Ellie_SideSuck8,GFX_Ellie_SideSuck8End
	;dl $CFA4E6,$CFA866,GFX_Ellie_SideSuck9,GFX_Ellie_SideSuck9End
	;dl $CFA88C,$CFABEC,GFX_Ellie_DownSuck1,GFX_Ellie_DownSuck1End
	;dl $CFAC12,$CFAFD2,GFX_Ellie_DownSuck2,GFX_Ellie_DownSuck2End
	;dl $CFAFF8,$CFB3B8,GFX_Ellie_DownSuck3,GFX_Ellie_DownSuck3End
	;dl $CFB3DC,$CFB77C,GFX_Ellie_DownSuck4,GFX_Ellie_DownSuck4End
	;dl $CFB7A0,$CFBB40,GFX_Ellie_DownSuck5,GFX_Ellie_DownSuck5End
	;dl $CFBB64,$CFBF04,GFX_Ellie_DownSuck6,GFX_Ellie_DownSuck6End
	;dl $CFBF28,$CFC2C8,GFX_Ellie_DownSuck7,GFX_Ellie_DownSuck7End
	;dl $CFC2EC,$CFC68C,GFX_Ellie_DownSuck8,GFX_Ellie_DownSuck8End
	;dl $CFC6B0,$CFCA50,GFX_Ellie_DownSuck9,GFX_Ellie_DownSuck9End
	;dl $CFCA74,$CFCDB4,GFX_Ellie_SideShoot1,GFX_Ellie_SideShoot1End
	;dl $CFCDD8,$CFD118,GFX_Ellie_SideShoot2,GFX_Ellie_SideShoot2End
	;dl $CFD13C,$CFD47C,GFX_Ellie_SideShoot3,GFX_Ellie_SideShoot3End
	;dl $CFD4A0,$CFD7E0,GFX_Ellie_SideShoot4,GFX_Ellie_SideShoot4End
	;dl $CFD804,$CFDB44,GFX_Ellie_SideShoot5,GFX_Ellie_SideShoot5End
	;dl $CFDB68,$CFDEA8,GFX_Ellie_SideShoot6,GFX_Ellie_SideShoot6End
	;dl $CFDECC,$CFE20C,GFX_Ellie_UpShoot1,GFX_Ellie_UpShoot1End
	;dl $CFE230,$CFE570,GFX_Ellie_UpShoot2,GFX_Ellie_UpShoot2End
	;dl $CFE594,$CFE8D4,GFX_Ellie_UpShoot3,GFX_Ellie_UpShoot3End
	;dl $CFE8F8,$CFEC38,GFX_Ellie_UpShoot4,GFX_Ellie_UpShoot4End
	;dl $CFEC5E,$CFF01E,GFX_Ellie_Swim1,GFX_Ellie_Swim1End
	;dl $CFF03E,$CFF39E,GFX_Ellie_Swim2,GFX_Ellie_Swim2End
	;dl $CFF3CA,$CFF78A,GFX_Ellie_Swim3,GFX_Ellie_Swim3End
	;dl $CFF7B8,$CFFB98,GFX_Ellie_Swim4,GFX_Ellie_Swim4End
	;dl $CFFBBE,$CFFF7E,GFX_Ellie_Swim5,GFX_Ellie_Swim5End
	;dl $D04F85,$D05325,GFX_Ellie_Swim6,GFX_Ellie_Swim6End
	;dl $D05349,$D056E9,GFX_Ellie_Swim7,GFX_Ellie_Swim7End
	;dl $D0570D,$D05AAD,GFX_Ellie_Swim8,GFX_Ellie_Swim8End
	;dl $D05ACD,$D05E8D,GFX_Ellie_Swim9,GFX_Ellie_Swim9End
	;dl $D05EB3,$D06273,GFX_Ellie_Swim10,GFX_Ellie_Swim10End
	;dl $D0629F,$D0659F,GFX_Enguarde_Swim1,GFX_Enguarde_Swim1End
	;dl $D065C9,$D068A9,GFX_Enguarde_Swim2,GFX_Enguarde_Swim2End
	;dl $D068D3,$D06BB3,GFX_Enguarde_Swim3,GFX_Enguarde_Swim3End
	;dl $D06BDB,$D06E9B,GFX_Enguarde_Swim4,GFX_Enguarde_Swim4End
	;dl $D06EC5,$D071A5,GFX_Enguarde_Swim5,GFX_Enguarde_Swim5End
	;dl $D071D1,$D074D1,GFX_Enguarde_Swim6,GFX_Enguarde_Swim6End
	;dl $D074FD,$D077FD,GFX_Enguarde_Swim7,GFX_Enguarde_Swim7End
	;dl $D07829,$D07B29,GFX_Enguarde_Swim8,GFX_Enguarde_Swim8End
	;dl $D07B4B,$D07E0B,GFX_Enguarde_Turn1,GFX_Enguarde_Turn1End
	;dl $D07E25,$D08005,GFX_Enguarde_Turn2,GFX_Enguarde_Turn2End
	;dl $D0801D,$D081DD,GFX_Enguarde_Turn3,GFX_Enguarde_Turn3End
	;dl $D081FB,$D083BB,GFX_Enguarde_Turn4,GFX_Enguarde_Turn4End
	;dl $D083DD,$D0869D,GFX_Enguarde_Hurt,GFX_Enguarde_HurtEnd
	;dl $D086C1,$D089A1,GFX_Enguarde_Stab1,GFX_Enguarde_Stab1End
	;dl $D089C7,$D08C67,GFX_Enguarde_Stab2,GFX_Enguarde_Stab2End
	;dl $D08C8B,$D08F0B,GFX_Enguarde_Stab3,GFX_Enguarde_Stab3End
	;dl $D08F31,$D09171,GFX_Enguarde_Stab4,GFX_Enguarde_Stab4End
	;dl $D09191,$D09371,GFX_Enguarde_Stab5,GFX_Enguarde_Stab5End
	;dl $D09399,$D096B9,GFX_Enguarde_Stab6,GFX_Enguarde_Stab6End
	;dl $D096E1,$D09A01,GFX_Enguarde_Stab7,GFX_Enguarde_Stab7End
	;dl $D09A2B,$D09D0B,GFX_Enguarde_Stab8,GFX_Enguarde_Stab8End
	;dl $D09D21,$D09F81,GFX_Knocka_Idle,GFX_Knocka_IdleEnd
	;dl $D09F97,$D0A1F7,GFX_Knocka_Emerge1,GFX_Knocka_Emerge1End
	;dl $D0A20F,$D0A48F,GFX_Knocka_Emerge2,GFX_Knocka_Emerge2End
	;dl $D0A4A5,$D0A765,GFX_Knocka_Emerge3,GFX_Knocka_Emerge3End
	;dl $D0A77D,$D0A9FD,GFX_Knocka_Emerge4,GFX_Knocka_Emerge4End
	;dl $D0AA19,$D0ACD9,GFX_Knocka_Run1,GFX_Knocka_Run1End
	;dl $D0ACF5,$D0AFB5,GFX_Knocka_Run2,GFX_Knocka_Run2End
	;dl $D0AFCF,$D0B26F,GFX_Knocka_Run3,GFX_Knocka_Run3End
	;dl $D0B289,$D0B529,GFX_Knocka_Run4,GFX_Knocka_Run4End
	;dl $D0B543,$D0B7E3,GFX_Knocka_Run5,GFX_Knocka_Run5End
	;dl $D0B7FD,$D0BA9D,GFX_Knocka_Run6,GFX_Knocka_Run6End
	;dl $D0BAB7,$D0BD57,GFX_Knocka_Run7,GFX_Knocka_Run7End
	;dl $D0BD71,$D0C011,GFX_Knocka_Run8,GFX_Knocka_Run8End
	;dl $D0C02D,$D0C2ED,GFX_Knocka_Turn1,GFX_Knocka_Turn1End
	;dl $D0C309,$D0C5C9,GFX_Knocka_Turn2,GFX_Knocka_Turn2End
	;dl $D0C5D9,$D0C659,GFX_KnockaLimbs_Emerge1,GFX_KnockaLimbs_Emerge1End
	;dl $D0C669,$D0C6E9,GFX_KnockaLimbs_Emerge2,GFX_KnockaLimbs_Emerge2End
	;dl $D0C701,$D0C861,GFX_KnockaLimbs_Emerge3,GFX_KnockaLimbs_Emerge3End
	;dl $D0C885,$D0CA45,GFX_KnockaLimbs_Emerge4,GFX_KnockaLimbs_Emerge4End
	;dl $D0CA69,$D0CC29,GFX_KnockaLimbs_Run1,GFX_KnockaLimbs_Run1End
	;dl $D0CC4B,$D0CDEB,GFX_KnockaLimbs_Run2,GFX_KnockaLimbs_Run2End
	;dl $D0CE0F,$D0CFCF,GFX_KnockaLimbs_Run3,GFX_KnockaLimbs_Run3End
	;dl $D0CFE3,$D0D163,GFX_KnockaLimbs_Run4,GFX_KnockaLimbs_Run4End
	;dl $D0D17D,$D0D2FD,GFX_KnockaLimbs_Run5,GFX_KnockaLimbs_Run5End
	;dl $D0D31B,$D0D47B,GFX_KnockaLimbs_Run6,GFX_KnockaLimbs_Run6End
	;dl $D0D491,$D0D631,GFX_KnockaLimbs_Run7,GFX_KnockaLimbs_Run7End
	;dl $D0D64B,$D0D82B,GFX_KnockaLimbs_Run8,GFX_KnockaLimbs_Run8End
	;dl $D0D84D,$D0D9ED,GFX_KnockaLimbs_Turn1,GFX_KnockaLimbs_Turn1End
	;dl $D0DA0B,$D0DBCB,GFX_KnockaLimbs_Turn2,GFX_KnockaLimbs_Turn2End
	;dl $D0DBE1,$D0DE41,GFX_Kracka_Idle,GFX_Kracka_IdleEnd
	;dl $D0DE57,$D0E0B7,GFX_Kracka_Emerge1,GFX_Kracka_Emerge1End
	;dl $D0E0CD,$D0E38D,GFX_Kracka_Emerge2,GFX_Kracka_Emerge2End
	;dl $D0E3A3,$D0E663,GFX_Kracka_Emerge3,GFX_Kracka_Emerge3End
	;dl $D0E679,$D0E939,GFX_Kracka_Emerge4,GFX_Kracka_Emerge4End
	;dl $D0E951,$D0EC31,GFX_Kracka_Run1,GFX_Kracka_Run1End
	;dl $D0EC49,$D0EF29,GFX_Kracka_Run2,GFX_Kracka_Run2End
	;dl $D0EF41,$D0F221,GFX_Kracka_Run3,GFX_Kracka_Run3End
	;dl $D0F239,$D0F519,GFX_Kracka_Run4,GFX_Kracka_Run4End
	;dl $D0F531,$D0F811,GFX_Kracka_Run5,GFX_Kracka_Run5End
	;dl $D0F829,$D0FB09,GFX_Kracka_Run6,GFX_Kracka_Run6End
	;dl $D0FB21,$D0FE01,GFX_Kracka_Run7,GFX_Kracka_Run7End
	;dl $D10119,$D103F9,GFX_Kracka_Run8,GFX_Kracka_Run8End
	;dl $D1040F,$D106CF,GFX_Kracka_Turn1,GFX_Kracka_Turn1End
	;dl $D106E5,$D109A5,GFX_Kracka_Turn2,GFX_Kracka_Turn2End
	;dl $D109C9,$D10D09,GFX_SideOfBelchasMouth_Pose,GFX_SideOfBelchasMouth_PoseEnd
	;dl $D10D15,$D10E15,GFX_Koco_Swim1,GFX_Koco_Swim1End
	;dl $D10E23,$D10F43,GFX_Koco_Swim2,GFX_Koco_Swim2End
	;dl $D10F51,$D11071,GFX_Koco_Swim3,GFX_Koco_Swim3End
	;dl $D1107F,$D1119F,GFX_Koco_Swim4,GFX_Koco_Swim4End
	;dl $D111AD,$D112CD,GFX_Koco_Swim5,GFX_Koco_Swim5End
	;dl $D112DB,$D113FB,GFX_Koco_Swim6,GFX_Koco_Swim6End
	;dl $D11409,$D11529,GFX_Koco_Swim7,GFX_Koco_Swim7End
	;dl $D11537,$D11657,GFX_Koco_Swim8,GFX_Koco_Swim8End
	;dl $D11665,$D11725,GFX_Koco_Turn1,GFX_Koco_Turn1End
	;dl $D11731,$D117D1,GFX_Koco_Turn2,GFX_Koco_Turn2End
	;dl $D117DD,$D1187D,GFX_Koco_Turn3,GFX_Koco_Turn3End
	;dl $D1188B,$D1194B,GFX_Koco_Turn4,GFX_Koco_Turn4End
	;dl $D11955,$D119D5,GFX_Koco_Dead1,GFX_Koco_Dead1End
	;dl $D119E3,$D11B03,GFX_Koco_Dead2,GFX_Koco_Dead2End
	;dl $D11B11,$D11C31,GFX_Koco_Dead3,GFX_Koco_Dead3End
	;dl $D11C45,$D11D65,GFX_Koco_Dead4,GFX_Koco_Dead4End
	;dl $D11D77,$D11ED7,GFX_AnimalBuddyIcon_Ellie,GFX_AnimalBuddyIcon_EllieEnd
	;dl $D11EEB,$D1200B,GFX_AnimalBuddyIcon_Enguarde,GFX_AnimalBuddyIcon_EnguardeEnd
	;dl $D1201D,$D1211D,GFX_AnimalBuddyIcon_Squawks,GFX_AnimalBuddyIcon_SquawksEnd
	;dl $D12133,$D12273,GFX_AnimalBuddyIcon_Squitter,GFX_AnimalBuddyIcon_SquitterEnd
	;dl $D12291,$D12691,GFX_AnimalBuddyBox_Open,GFX_AnimalBuddyBox_OpenEnd
	;dl $D126AF,$D12A4F,GFX_AnimalBuddyBox_Ellie,GFX_AnimalBuddyBox_EllieEnd
	;dl $D12A6D,$D12E0D,GFX_AnimalBuddyBox_Enguarde,GFX_AnimalBuddyBox_EnguardeEnd
	;dl $D12E2B,$D131CB,GFX_AnimalBuddyBox_Squitter,GFX_AnimalBuddyBox_SquitterEnd
	;dl $D131E9,$D13589,GFX_AnimalBuddyBox_Squawks,GFX_AnimalBuddyBox_SquawksEnd
	;dl $D1359D,$D1371D,GFX_AnimalBuddyBox_Parry,GFX_AnimalBuddyBox_ParryEnd
	;dl $D1373D,$D13A3D,GFX_NoAnimalBuddySign_Ellie,GFX_NoAnimalBuddySign_EllieEnd
	;dl $D13A5D,$D13D5D,GFX_NoAnimalBuddySign_Enguarde,GFX_NoAnimalBuddySign_EnguardeEnd
	;dl $D13D7D,$D1407D,GFX_NoAnimalBuddySign_Squitter,GFX_NoAnimalBuddySign_SquitterEnd
	;dl $D1409D,$D1439D,GFX_NoAnimalBuddySign_Squawks,GFX_NoAnimalBuddySign_SquawksEnd
	;dl $D143BD,$D146BD,GFX_NoAnimalBuddySign_Parry,GFX_NoAnimalBuddySign_ParryEnd
	;dl $D146DD,$D149DD,GFX_NoAnimalBuddySign_Nibbla,GFX_NoAnimalBuddySign_NibblaEnd
	;dl $D149FF,$D14D1F,GFX_NoKrosshairSign_Pose,GFX_NoKrosshairSign_PoseEnd
	;dl $D14D3B,$D14F9B,GFX_WarningSign_Pose,GFX_WarningSign_PoseEnd
	;dl $D14FB7,$D151B7,GFX_KnikKnak_Walk1,GFX_KnikKnak_Walk1End
	;dl $D151D1,$D153B1,GFX_KnikKnak_Walk2,GFX_KnikKnak_Walk2End
	;dl $D153C7,$D155C7,GFX_KnikKnak_Walk3,GFX_KnikKnak_Walk3End
	;dl $D155DB,$D157BB,GFX_KnikKnak_Walk4,GFX_KnikKnak_Walk4End
	;dl $D157CF,$D159AF,GFX_KnikKnak_Walk5,GFX_KnikKnak_Walk5End
	;dl $D159C3,$D15BA3,GFX_KnikKnak_Walk6,GFX_KnikKnak_Walk6End
	;dl $D15BB7,$D15D97,GFX_KnikKnak_Walk7,GFX_KnikKnak_Walk7End
	;dl $D15DAD,$D15FAD,GFX_KnikKnak_Walk8,GFX_KnikKnak_Walk8End
	;dl $D15FC5,$D161E5,GFX_KnikKnak_Fly1,GFX_KnikKnak_Fly1End
	;dl $D16203,$D16423,GFX_KnikKnak_Fly2,GFX_KnikKnak_Fly2End
	;dl $D16439,$D16699,GFX_KnikKnak_Fly3,GFX_KnikKnak_Fly3End
	;dl $D166B5,$D16915,GFX_KnikKnak_Fly4,GFX_KnikKnak_Fly4End
	;dl $D16931,$D16B31,GFX_KnikKnak_Fly5,GFX_KnikKnak_Fly5End
	;dl $D16B51,$D16D91,GFX_KnikKnak_Fly6,GFX_KnikKnak_Fly6End
	;dl $D16DA7,$D17007,GFX_KnikKnak_Fly7,GFX_KnikKnak_Fly7End
	;dl $D17023,$D17283,GFX_KnikKnak_Fly8,GFX_KnikKnak_Fly8End
	;dl $D1729F,$D1749F,GFX_KnikKnak_TurnWhileFlying1,GFX_KnikKnak_TurnWhileFlying1End
	;dl $D174B9,$D17699,GFX_KnikKnak_TurnWhileFlying2,GFX_KnikKnak_TurnWhileFlying2End
	;dl $D176AD,$D1788D,GFX_KnikKnak_Turn1,GFX_KnikKnak_Turn1End
	;dl $D178A9,$D17A49,GFX_KnikKnak_Turn2,GFX_KnikKnak_Turn2End
	;dl $D17A61,$D17C21,GFX_KnikKnak_Unknown1,GFX_KnikKnak_Unknown1End
	;dl $D17C39,$D17E59,GFX_KnikKnak_Unknown2,GFX_KnikKnak_Unknown2End
	;dl $D17E71,$D18091,GFX_KnikKnak_Unknown3,GFX_KnikKnak_Unknown3End
	;dl $D180A7,$D18247,GFX_KnikKnak_Squish1,GFX_KnikKnak_Squish1End
	;dl $D18259,$D183B9,GFX_KnikKnak_Squish2,GFX_KnikKnak_Squish2End
	;dl $D183C9,$D18509,GFX_KnikKnak_Squish3,GFX_KnikKnak_Squish3End
	;dl $D1851D,$D186FD,GFX_KnikKnak_Dead1,GFX_KnikKnak_Dead1End
	;dl $D1870F,$D188CF,GFX_KnikKnak_Dead2,GFX_KnikKnak_Dead2End
	;dl $D188E5,$D18A25,GFX_KnikKnak_Dead3,GFX_KnikKnak_Dead3End
	;dl $D18A37,$D18B97,GFX_KnikKnak_Dead4,GFX_KnikKnak_Dead4End
	;dl $D18BAD,$D18CED,GFX_KnikKnak_Helpless1,GFX_KnikKnak_Helpless1End
	;dl $D18CFF,$D18E5F,GFX_KnikKnak_Helpless2,GFX_KnikKnak_Helpless2End
	;dl $D18E7B,$D190DB,GFX_Krimp_Walk1,GFX_Krimp_Walk1End
	;dl $D190F5,$D19335,GFX_Krimp_Walk2,GFX_Krimp_Walk2End
	;dl $D19351,$D19551,GFX_Krimp_Walk3,GFX_Krimp_Walk3End
	;dl $D1956B,$D1974B,GFX_Krimp_Walk4,GFX_Krimp_Walk4End
	;dl $D19765,$D19945,GFX_Krimp_Walk5,GFX_Krimp_Walk5End
	;dl $D1995F,$D19B3F,GFX_Krimp_Walk6,GFX_Krimp_Walk6End
	;dl $D19B59,$D19D99,GFX_Krimp_Walk7,GFX_Krimp_Walk7End
	;dl $D19DB1,$D1A031,GFX_Krimp_Walk8,GFX_Krimp_Walk8End
	;dl $D1A049,$D1A2C9,GFX_Krimp_Walk9,GFX_Krimp_Walk9End
	;dl $D1A2E1,$D1A561,GFX_Krimp_Walk10,GFX_Krimp_Walk10End
	;dl $D1A57B,$D1A81B,GFX_Krimp_Walk11,GFX_Krimp_Walk11End
	;dl $D1A837,$D1AAF7,GFX_Krimp_Walk12,GFX_Krimp_Walk12End
	;dl $D1AB11,$D1ACF1,GFX_Krimp_Turn1,GFX_Krimp_Turn1End
	;dl $D1AD05,$D1AE85,GFX_Krimp_Turn2,GFX_Krimp_Turn2End
	;dl $D1AEA3,$D1B123,GFX_Krimp_Dead1,GFX_Krimp_Dead1End
	;dl $D1B139,$D1B399,GFX_Krimp_Dead2,GFX_Krimp_Dead2End
	;dl $D1B3B7,$D1B697,GFX_Krimp_Dead3,GFX_Krimp_Dead3End
	;dl $D1B6A1,$D1B721,GFX_BarbosMouth_Squished1,GFX_BarbosMouth_Squished1End
	;dl $D1B72B,$D1B7AB,GFX_BarbosMouth_Squished2,GFX_BarbosMouth_Squished2End
	;dl $D1B7BB,$D1B83B,GFX_BarbosMouth_Hurt1,GFX_BarbosMouth_Hurt1End
	;dl $D1B847,$D1B8E7,GFX_BarbosMouth_Hurt2,GFX_BarbosMouth_Hurt2End
	;dl $D1B8F1,$D1B971,GFX_BarbosMouth_Idle1,GFX_BarbosMouth_Idle1End
	;dl $D1B97D,$D1BA1D,GFX_BarbosMouth_Idle2,GFX_BarbosMouth_Idle2End
	;dl $D1BA2F,$D1BACF,GFX_BarbosMouth_Idle3,GFX_BarbosMouth_Idle3End
	;dl $D1BAE1,$D1BCA1,GFX_Lurchin_Idle1,GFX_Lurchin_Idle1End
	;dl $D1BCB5,$D1BE95,GFX_Lurchin_Idle2,GFX_Lurchin_Idle2End
	;dl $D1BEA5,$D1C0A5,GFX_Lurchin_Idle3,GFX_Lurchin_Idle3End
	;dl $D1C0B9,$D1C2F9,GFX_Lurchin_Idle4,GFX_Lurchin_Idle4End
	;dl $D1C311,$D1C531,GFX_Lurchin_Idle5,GFX_Lurchin_Idle5End
	;dl $D1C549,$D1C769,GFX_Lurchin_Idle6,GFX_Lurchin_Idle6End
	;dl $D1C77F,$D1C9DF,GFX_Lurchin_Idle7,GFX_Lurchin_Idle7End
	;dl $D1C9F5,$D1CC55,GFX_Lurchin_Idle8,GFX_Lurchin_Idle8End
	;dl $D1CC6F,$D1CF0F,GFX_Lurchin_Rotate1,GFX_Lurchin_Rotate1End
	;dl $D1CF23,$D1D163,GFX_Lurchin_Rotate2,GFX_Lurchin_Rotate2End
	;dl $D1D173,$D1D373,GFX_Lurchin_Rotate3,GFX_Lurchin_Rotate3End
	;dl $D1D387,$D1D4A7,GFX_Lurchin_Rotate4,GFX_Lurchin_Rotate4End
	;dl $D1D4B9,$D1D5B9,GFX_Lurchin_Rotate5,GFX_Lurchin_Rotate5End
	;dl $D1D5CF,$D1D82F,GFX_Bristles_Walk1,GFX_Bristles_Walk1End
	;dl $D1D845,$D1DAA5,GFX_Bristles_Walk2,GFX_Bristles_Walk2End
	;dl $D1DABB,$D1DD1B,GFX_Bristles_Walk3,GFX_Bristles_Walk3End
	;dl $D1DD33,$D1DF53,GFX_Bristles_Walk4,GFX_Bristles_Walk4End
	;dl $D1DF69,$D1E1C9,GFX_Bristles_Walk5,GFX_Bristles_Walk5End
	;dl $D1E1DF,$D1E43F,GFX_Bristles_Walk6,GFX_Bristles_Walk6End
	;dl $D1E455,$D1E6B5,GFX_Bristles_Walk7,GFX_Bristles_Walk7End
	;dl $D1E6CB,$D1E92B,GFX_Bristles_Walk8,GFX_Bristles_Walk8End
	;dl $D1E941,$D1EBA1,GFX_Bristles_Roll1,GFX_Bristles_Roll1End
	;dl $D1EBB7,$D1EE17,GFX_Bristles_Roll2,GFX_Bristles_Roll2End
	;dl $D1EE31,$D1F0D1,GFX_Bristles_Roll3,GFX_Bristles_Roll3End
	;dl $D1F0E9,$D1F3C9,GFX_Bristles_Roll4,GFX_Bristles_Roll4End
	;dl $D1F3E7,$D1F6C7,GFX_Bristles_Roll5,GFX_Bristles_Roll5End
	;dl $D1F6E3,$D1F9A3,GFX_Bristles_Roll6,GFX_Bristles_Roll6End
	;dl $D1F9C1,$D1FCA1,GFX_Bristles_Roll7,GFX_Bristles_Roll7End
	;dl $D1FCBD,$D1FF7D,GFX_Bristles_Roll8,GFX_Bristles_Roll8End
	;dl $D2032C,$D205CC,GFX_Bristles_Roll9,GFX_Bristles_Roll9End
	;dl $D205EA,$D2086A,GFX_Bristles_Roll10,GFX_Bristles_Roll10End
	;dl $D20886,$D20B46,GFX_Bristles_Roll11,GFX_Bristles_Roll11End
	;dl $D20B5E,$D20DDE,GFX_Bristles_Roll12,GFX_Bristles_Roll12End
	;dl $D20DF6,$D21076,GFX_Bristles_Roll13,GFX_Bristles_Roll13End
	;dl $D21090,$D21330,GFX_Bristles_Roll14,GFX_Bristles_Roll14End
	;dl $D21348,$D215C8,GFX_Bristles_Roll15,GFX_Bristles_Roll15End
	;dl $D215DA,$D217FA,GFX_Bristles_Turn1,GFX_Bristles_Turn1End
	;dl $D2180A,$D21A0A,GFX_Bristles_Turn2,GFX_Bristles_Turn2End
	;dl $D21A24,$D21C64,GFX_Bristles_Dead1,GFX_Bristles_Dead1End
	;dl $D21C7E,$D21F1E,GFX_Bristles_Dead2,GFX_Bristles_Dead2End
	;dl $D21F38,$D221D8,GFX_Bristles_Dead3,GFX_Bristles_Dead3End
	;dl $D221E4,$D22224,GFX_RocketEyes_Pose1,GFX_RocketEyes_Pose1End
	;dl $D22230,$D22270,GFX_RocketEyes_Pose2,GFX_RocketEyes_Pose2End
	;dl $D2227C,$D222BC,GFX_RocketEyes_Pose3,GFX_RocketEyes_Pose3End
	;dl $D222C8,$D22308,GFX_RocketEyes_Pose4,GFX_RocketEyes_Pose4End
	;dl $D22314,$D22354,GFX_RocketEyes_Pose5,GFX_RocketEyes_Pose5End
	;dl $D22360,$D223A0,GFX_RocketEyes_Pose6,GFX_RocketEyes_Pose6End
	;dl $D223AC,$D223EC,GFX_RocketEyes_Pose7,GFX_RocketEyes_Pose7End
	;dl $D223F8,$D22438,GFX_RocketEyes_Pose8,GFX_RocketEyes_Pose8End
	;dl $D22444,$D22484,GFX_RocketEyes_Pose9,GFX_RocketEyes_Pose9End
	;dl $D224A2,$D228A2,GFX_Rocket_Pose,GFX_Rocket_PoseEnd
	;dl $D228B4,$D22A14,GFX_RocketLid_Pose1,GFX_RocketLid_Pose1End
	;dl $D22A24,$D22B64,GFX_RocketLid_Pose2,GFX_RocketLid_Pose2End
	;dl $D22B78,$D22C98,GFX_RocketFlame_Pose1,GFX_RocketFlame_Pose1End
	;dl $D22CAC,$D22DCC,GFX_RocketFlame_Pose2,GFX_RocketFlame_Pose2End
	;dl $D22DE2,$D22F22,GFX_RocketFlame_Pose3,GFX_RocketFlame_Pose3End
	;dl $D22F38,$D23078,GFX_RocketFlame_Pose4,GFX_RocketFlame_Pose4End
	;dl $D2308C,$D231AC,GFX_RocketFlame_Pose5,GFX_RocketFlame_Pose5End
	;dl $D231BE,$D232BE,GFX_RocketFlame_Pose6,GFX_RocketFlame_Pose6End
	;dl $D232D2,$D233F2,GFX_RocketFlame_Pose7,GFX_RocketFlame_Pose7End
	;dl $D23406,$D23526,GFX_RocketFlame_Pose8,GFX_RocketFlame_Pose8End
	;dl $D2353A,$D2365A,GFX_RocketFlame_Pose9,GFX_RocketFlame_Pose9End
	;dl $D23670,$D237B0,GFX_RocketFlame_Pose10,GFX_RocketFlame_Pose10End
	;dl $D237C4,$D238E4,GFX_RocketFlame_Pose11,GFX_RocketFlame_Pose11End
	;dl $D238F6,$D239F6,GFX_RocketFlame_Pose12,GFX_RocketFlame_Pose12End
	;dl $D23A08,$D23B08,GFX_RopeFlame_Pose1,GFX_RopeFlame_Pose1End
	;dl $D23B1A,$D23C1A,GFX_RopeFlame_Pose2,GFX_RopeFlame_Pose2End
	;dl $D23C2C,$D23D2C,GFX_RopeFlame_Pose3,GFX_RopeFlame_Pose3End
	;dl $D23D3E,$D23E3E,GFX_RopeFlame_Pose4,GFX_RopeFlame_Pose4End
	;dl $D23E50,$D23F50,GFX_RopeFlame_Pose5,GFX_RopeFlame_Pose5End
	;dl $D23F62,$D24062,GFX_RopeFlame_Pose6,GFX_RopeFlame_Pose6End
	;dl $D24074,$D24174,GFX_RopeFlame_Pose7,GFX_RopeFlame_Pose7End
	;dl $D24186,$D24286,GFX_RopeFlame_Pose8,GFX_RopeFlame_Pose8End
	;dl $D24298,$D24398,GFX_RopeFlame_Pose9,GFX_RopeFlame_Pose9End
	;dl $D243AA,$D244AA,GFX_RopeFlame_Pose10,GFX_RopeFlame_Pose10End
	;dl $D244BC,$D245BC,GFX_RopeFlame_Pose11,GFX_RopeFlame_Pose11End
	;dl $D245CE,$D246CE,GFX_RopeFlame_Pose12,GFX_RopeFlame_Pose12End
	;dl $D246DC,$D2479C,GFX_RopeFlame_Pose13,GFX_RopeFlame_Pose13End
	;dl $D247C2,$D24A62,GFX_Squitter_Walk1,GFX_Squitter_Walk1End
	;dl $D24A88,$D24D28,GFX_Squitter_Walk2,GFX_Squitter_Walk2End
	;dl $D24D46,$D24FC6,GFX_Squitter_Walk3,GFX_Squitter_Walk3End
	;dl $D24FE4,$D25264,GFX_Squitter_Walk4,GFX_Squitter_Walk4End
	;dl $D25284,$D25524,GFX_Squitter_Walk5,GFX_Squitter_Walk5End
	;dl $D25544,$D257E4,GFX_Squitter_Walk6,GFX_Squitter_Walk6End
	;dl $D257FE,$D25A3E,GFX_Squitter_Walk7,GFX_Squitter_Walk7End
	;dl $D25A5A,$D25CBA,GFX_Squitter_Walk8,GFX_Squitter_Walk8End
	;dl $D25CD6,$D25F36,GFX_Squitter_Walk9,GFX_Squitter_Walk9End
	;dl $D25F52,$D261B2,GFX_Squitter_Walk10,GFX_Squitter_Walk10End
	;dl $D261D0,$D26450,GFX_Squitter_Walk11,GFX_Squitter_Walk11End
	;dl $D2646E,$D266EE,GFX_Squitter_Walk12,GFX_Squitter_Walk12End
	;dl $D2670C,$D2698C,GFX_Squitter_Walk13,GFX_Squitter_Walk13End
	;dl $D269AC,$D26C4C,GFX_Squitter_Walk14,GFX_Squitter_Walk14End
	;dl $D26C6C,$D26F0C,GFX_Squitter_Walk15,GFX_Squitter_Walk15End
	;dl $D26F2E,$D271EE,GFX_Squitter_Walk16,GFX_Squitter_Walk16End
	;dl $D2720C,$D2748C,GFX_Squitter_Stand1,GFX_Squitter_Stand1End
	;dl $D274AA,$D2772A,GFX_Squitter_Stand2,GFX_Squitter_Stand2End
	;dl $D27748,$D279C8,GFX_Squitter_Stand3,GFX_Squitter_Stand3End
	;dl $D279E6,$D27C66,GFX_Squitter_Jump1,GFX_Squitter_Jump1End
	;dl $D27C84,$D27F64,GFX_Squitter_Jump2,GFX_Squitter_Jump2End
	;dl $D27F8A,$D2828A,GFX_Squitter_Jump3,GFX_Squitter_Jump3End
	;dl $D282AA,$D2860A,GFX_Squitter_Jump4,GFX_Squitter_Jump4End
	;dl $D28628,$D28968,GFX_Squitter_Jump5,GFX_Squitter_Jump5End
	;dl $D28992,$D28D92,GFX_Squitter_Hurt,GFX_Squitter_HurtEnd
	;dl $D28D9C,$D28DBC,GFX_WebShot_Attack1,GFX_WebShot_Attack1End
	;dl $D28DCA,$D28E2A,GFX_WebShot_Attack2,GFX_WebShot_Attack2End
	;dl $D28E38,$D28EF8,GFX_WebShot_Attack3,GFX_WebShot_Attack3End
	;dl $D28F06,$D28FC6,GFX_WebShot_Attack4,GFX_WebShot_Attack4End
	;dl $D28FD6,$D29056,GFX_WebShot_Attack5,GFX_WebShot_Attack5End
	;dl $D29062,$D29102,GFX_WebShot_Attack6,GFX_WebShot_Attack6End
	;dl $D2910E,$D291AE,GFX_WebShot_Attack7,GFX_WebShot_Attack7End
	;dl $D291B8,$D29238,GFX_WebShot_Blob1,GFX_WebShot_Blob1End
	;dl $D29242,$D292C2,GFX_WebShot_Blob2,GFX_WebShot_Blob2End
	;dl $D292CC,$D2934C,GFX_WebShot_Blob3,GFX_WebShot_Blob3End
	;dl $D2935A,$D293BA,GFX_WebShot_Blob4,GFX_WebShot_Blob4End
	;dl $D293C8,$D29428,GFX_WebPlatform_Deploy1,GFX_WebPlatform_Deploy1End
	;dl $D29432,$D294B2,GFX_WebPlatform_Deploy2,GFX_WebPlatform_Deploy2End
	;dl $D294BE,$D2955E,GFX_WebPlatform_Deploy3,GFX_WebPlatform_Deploy3End
	;dl $D2956C,$D2962C,GFX_WebPlatform_Deploy4,GFX_WebPlatform_Deploy4End
	;dl $D2963E,$D2973E,GFX_WebPlatform_Deploy5,GFX_WebPlatform_Deploy5End
	;dl $D2974E,$D2988E,GFX_WebPlatform_Deploy6,GFX_WebPlatform_Deploy6End
	;dl $D298A6,$D29A66,GFX_WebPlatform_Deploy7,GFX_WebPlatform_Deploy7End
	;dl $D29A7A,$D29C5A,GFX_WebPlatform_Deploy8,GFX_WebPlatform_Deploy8End
	;dl $D29C70,$D29E70,GFX_WebPlatform_Deploy9,GFX_WebPlatform_Deploy9End
	;dl $D29E86,$D2A086,GFX_WebPlatform_Deploy10,GFX_WebPlatform_Deploy10End
	;dl $D2A09C,$D2A29C,GFX_WebPlatform_Deploy11,GFX_WebPlatform_Deploy11End
	;dl $D2A2BE,$D2A57E,GFX_Squawks_SpitEgg1,GFX_Squawks_SpitEgg1End
	;dl $D2A596,$D2A816,GFX_Squawks_SpitEgg2,GFX_Squawks_SpitEgg2End
	;dl $D2A832,$D2AA92,GFX_Squawks_SpitEgg3,GFX_Squawks_SpitEgg3End
	;dl $D2AAAC,$D2AD4C,GFX_Squawks_SpitEgg4,GFX_Squawks_SpitEgg4End
	;dl $D2AD6C,$D2B00C,GFX_Squawks_SpitEgg5,GFX_Squawks_SpitEgg5End
	;dl $D2B026,$D2B266,GFX_Squawks_Fly1,GFX_Squawks_Fly1End
	;dl $D2B282,$D2B482,GFX_Squawks_Fly2,GFX_Squawks_Fly2End
	;dl $D2B49C,$D2B67C,GFX_Squawks_Fly3,GFX_Squawks_Fly3End
	;dl $D2B698,$D2B898,GFX_Squawks_Fly4,GFX_Squawks_Fly4End
	;dl $D2B8B6,$D2BAD6,GFX_Squawks_Fly5,GFX_Squawks_Fly5End
	;dl $D2BAF4,$D2BD14,GFX_Squawks_Fly6,GFX_Squawks_Fly6End
	;dl $D2BD30,$D2BF30,GFX_Squawks_Fly7,GFX_Squawks_Fly7End
	;dl $D2BF4C,$D2C14C,GFX_Squawks_Fly8,GFX_Squawks_Fly8End
	;dl $D2C168,$D2C368,GFX_Squawks_Fly9,GFX_Squawks_Fly9End
	;dl $D2C384,$D2C584,GFX_Squawks_Fly10,GFX_Squawks_Fly10End
	;dl $D2C5A0,$D2C800,GFX_Squawks_Fly11,GFX_Squawks_Fly11End
	;dl $D2C81C,$D2CA7C,GFX_Squawks_Fly12,GFX_Squawks_Fly12End
	;dl $D2CA98,$D2CCF8,GFX_Squawks_Fly13,GFX_Squawks_Fly13End
	;dl $D2CD1C,$D2CF9C,GFX_Squawks_Fly14,GFX_Squawks_Fly14End
	;dl $D2CFB4,$D2D1D4,GFX_Squawks_Hurt,GFX_Squawks_HurtEnd
	;dl $D2D1F6,$D2D4B6,GFX_Squawks_GrabKongs,GFX_Squawks_GrabKongsEnd
	;dl $D2D4CE,$D2D68E,GFX_Squawks_Turn1,GFX_Squawks_Turn1End
	;dl $D2D6A2,$D2D822,GFX_Squawks_Turn2,GFX_Squawks_Turn2End
	;dl $D2D83C,$D2D9BC,GFX_Parry_Fly1,GFX_Parry_Fly1End
	;dl $D2D9D4,$D2DB34,GFX_Parry_Fly2,GFX_Parry_Fly2End
	;dl $D2DB42,$D2DC62,GFX_Parry_Fly3,GFX_Parry_Fly3End
	;dl $D2DC78,$D2DE18,GFX_Parry_Fly4,GFX_Parry_Fly4End
	;dl $D2DE30,$D2E050,GFX_Parry_Fly5,GFX_Parry_Fly5End
	;dl $D2E06A,$D2E24A,GFX_Parry_Fly6,GFX_Parry_Fly6End
	;dl $D2E260,$D2E400,GFX_Parry_Fly7,GFX_Parry_Fly7End
	;dl $D2E418,$D2E578,GFX_Parry_Fly8,GFX_Parry_Fly8End
	;dl $D2E58E,$D2E72E,GFX_Parry_Fly9,GFX_Parry_Fly9End
	;dl $D2E744,$D2E8E4,GFX_Parry_Fly10,GFX_Parry_Fly10End
	;dl $D2E8FE,$D2EA7E,GFX_Parry_Turn1,GFX_Parry_Turn1End
	;dl $D2EA96,$D2EBF6,GFX_Parry_Turn2,GFX_Parry_Turn2End
	;dl $D2EC0A,$D2ED8A,GFX_Parry_Hurt1,GFX_Parry_Hurt1End
	;dl $D2EDA4,$D2EF84,GFX_Parry_Hurt2,GFX_Parry_Hurt2End
	;dl $D2EF9A,$D2F19A,GFX_Parry_Hurt3,GFX_Parry_Hurt3End
	;dl $D2F1B0,$D2F410,GFX_Parry_Hurt4,GFX_Parry_Hurt4End
	;dl $D2F422,$D2F622,GFX_ChairliftPulley_Pose1,GFX_ChairliftPulley_Pose1End
	;dl $D2F634,$D2F834,GFX_ChairliftPulley_Pose2,GFX_ChairliftPulley_Pose2End
	;dl $D2F846,$D2FA46,GFX_ChairliftPulley_Pose3,GFX_ChairliftPulley_Pose3End
	;dl $D2FA54,$D2FBD4,GFX_BarnaclesBirdCage_Pose,GFX_BarnaclesBirdCage_PoseEnd
	;dl $D2FBE2,$D2FCA2,GFX_BramblesVase_Pose,GFX_BramblesVase_PoseEnd
	;dl $D2FCC2,$D2FF02,GFX_PlayerSelectIcons_1Player,GFX_PlayerSelectIcons_1PlayerEnd
	;dl $D31B72,$D31E52,GFX_PlayerSelectIcons_2PlayerTeam,GFX_PlayerSelectIcons_2PlayerTeamEnd
	;dl $D31E8C,$D320EC,GFX_PlayerSelectIcons_2PlayerContest,GFX_PlayerSelectIcons_2PlayerContestEnd
	;dl $D32114,$D32374,GFX_Toboggan_Pose1,GFX_Toboggan_Pose1End
	;dl $D32396,$D32656,GFX_Toboggan_Pose2,GFX_Toboggan_Pose2End
	;dl $D32674,$D328F4,GFX_Toboggan_Pose3,GFX_Toboggan_Pose3End
	;dl $D32912,$D32B92,GFX_Toboggan_Pose4,GFX_Toboggan_Pose4End
	;dl $D32BB0,$D32E30,GFX_Toboggan_Pose5,GFX_Toboggan_Pose5End
	;dl $D32E4E,$D330CE,GFX_Toboggan_Pose6,GFX_Toboggan_Pose6End
	;dl $D330EA,$D3334A,GFX_Toboggan_Pose7,GFX_Toboggan_Pose7End
	;dl $D33368,$D335E8,GFX_Toboggan_Pose8,GFX_Toboggan_Pose8End
	;dl $D33608,$D338A8,GFX_Toboggan_Pose9,GFX_Toboggan_Pose9End
	;dl $D338C8,$D33B68,GFX_Toboggan_Pose10,GFX_Toboggan_Pose10End
	;dl $D33B88,$D33E28,GFX_Toboggan_Pose11,GFX_Toboggan_Pose11End
	;dl $D33E46,$D34126,GFX_Toboggan_Pose12,GFX_Toboggan_Pose12End
	;dl $D34142,$D34402,GFX_Toboggan_Pose13,GFX_Toboggan_Pose13End
	;dl $D34412,$D34492,GFX_TobogganBackwall_Pose1,GFX_TobogganBackwall_Pose1End
	;dl $D344A2,$D34522,GFX_TobogganBackwall_Pose2,GFX_TobogganBackwall_Pose2End
	;dl $D34532,$D345B2,GFX_TobogganBackwall_Pose3,GFX_TobogganBackwall_Pose3End
	;dl $D345C2,$D34642,GFX_TobogganBackwall_Pose4,GFX_TobogganBackwall_Pose4End
	;dl $D34652,$D346D2,GFX_TobogganBackwall_Pose5,GFX_TobogganBackwall_Pose5End
	;dl $D346E2,$D34762,GFX_TobogganBackwall_Pose6,GFX_TobogganBackwall_Pose6End
	;dl $D34772,$D347F2,GFX_TobogganBackwall_Pose7,GFX_TobogganBackwall_Pose7End
	;dl $D34802,$D34882,GFX_TobogganBackwall_Pose8,GFX_TobogganBackwall_Pose8End
	;dl $D34890,$D348F0,GFX_TobogganBackwall_Pose9,GFX_TobogganBackwall_Pose9End
	;dl $D348FE,$D3495E,GFX_TobogganBackwall_Pose10,GFX_TobogganBackwall_Pose10End
	;dl $D3496C,$D349CC,GFX_TobogganBackwall_Pose11,GFX_TobogganBackwall_Pose11End
	;dl $D349DA,$D34A3A,GFX_TobogganBackwall_Pose12,GFX_TobogganBackwall_Pose12End
	;dl $D34A48,$D34AA8,GFX_TobogganBackwall_Pose13,GFX_TobogganBackwall_Pose13End
	;dl $D34ABA,$D34B5A,GFX_TobogganHook_Pose1,GFX_TobogganHook_Pose1End
	;dl $D34B6C,$D34C0C,GFX_TobogganHook_Pose2,GFX_TobogganHook_Pose2End
	;dl $D34C1E,$D34CBE,GFX_TobogganHook_Pose3,GFX_TobogganHook_Pose3End
	;dl $D34CD0,$D34D70,GFX_TobogganHook_Pose4,GFX_TobogganHook_Pose4End
	;dl $D34D82,$D34E22,GFX_TobogganHook_Pose5,GFX_TobogganHook_Pose5End
	;dl $D34E30,$D34EF0,GFX_TobogganHook_Pose6,GFX_TobogganHook_Pose6End
	;dl $D34EFE,$D34FBE,GFX_TobogganHook_Pose7,GFX_TobogganHook_Pose7End
	;dl $D34FCC,$D3508C,GFX_TobogganHook_Pose8,GFX_TobogganHook_Pose8End
	;dl $D3509A,$D3515A,GFX_TobogganHook_Pose9,GFX_TobogganHook_Pose9End
	;dl $D3516C,$D3520C,GFX_TobogganHook_Pose10,GFX_TobogganHook_Pose10End
	;dl $D3521E,$D352BE,GFX_TobogganHook_Pose11,GFX_TobogganHook_Pose11End
	;dl $D352D0,$D35370,GFX_TobogganHook_Pose12,GFX_TobogganHook_Pose12End
	;dl $D35382,$D35422,GFX_TobogganHook_Pose13,GFX_TobogganHook_Pose13End
	;dl $D3543A,$D355FA,GFX_Kiddy_RideToboggan1,GFX_Kiddy_RideToboggan1End
	;dl $D35610,$D357B0,GFX_Kiddy_RideToboggan2,GFX_Kiddy_RideToboggan2End
	;dl $D357C8,$D35988,GFX_Kiddy_RideToboggan3,GFX_Kiddy_RideToboggan3End
	;dl $D359A0,$D35B60,GFX_Kiddy_RideToboggan4,GFX_Kiddy_RideToboggan4End
	;dl $D35B76,$D35D16,GFX_Kiddy_RideToboggan5,GFX_Kiddy_RideToboggan5End
	;dl $D35D2E,$D35EEE,GFX_Kiddy_RideToboggan6,GFX_Kiddy_RideToboggan6End
	;dl $D35F06,$D360C6,GFX_Kiddy_RideToboggan7,GFX_Kiddy_RideToboggan7End
	;dl $D360DC,$D3627C,GFX_Kiddy_RideToboggan8,GFX_Kiddy_RideToboggan8End
	;dl $D36292,$D36432,GFX_Kiddy_RideToboggan9,GFX_Kiddy_RideToboggan9End
	;dl $D36448,$D365E8,GFX_Kiddy_RideToboggan10,GFX_Kiddy_RideToboggan10End
	;dl $D365FE,$D3679E,GFX_Kiddy_RideToboggan11,GFX_Kiddy_RideToboggan11End
	;dl $D367B4,$D36954,GFX_Kiddy_RideToboggan12,GFX_Kiddy_RideToboggan12End
	;dl $D36968,$D36AE8,GFX_Kiddy_RideToboggan13,GFX_Kiddy_RideToboggan13End
	;dl $D36B00,$D36CC0,GFX_Kiddy_LookToSideInToboggan1,GFX_Kiddy_LookToSideInToboggan1End
	;dl $D36CDA,$D36E5A,GFX_Kiddy_LookToSideInToboggan2,GFX_Kiddy_LookToSideInToboggan2End
	;dl $D36E74,$D37054,GFX_Kiddy_LookDownInToboggan1,GFX_Kiddy_LookDownInToboggan1End
	;dl $D3706C,$D3722C,GFX_Kiddy_LookDownInToboggan2,GFX_Kiddy_LookDownInToboggan2End
	;dl $D37256,$D37656,GFX_Kiddy_Zapped,GFX_Kiddy_ZappedEnd
	;dl $D37666,$D377A6,GFX_Dixie_RideToboggan1,GFX_Dixie_RideToboggan1End
	;dl $D377B6,$D378F6,GFX_Dixie_RideToboggan2,GFX_Dixie_RideToboggan2End
	;dl $D37904,$D37A24,GFX_Dixie_RideToboggan3,GFX_Dixie_RideToboggan3End
	;dl $D37A34,$D37B74,GFX_Dixie_RideToboggan4,GFX_Dixie_RideToboggan4End
	;dl $D37B84,$D37CC4,GFX_Dixie_RideToboggan5,GFX_Dixie_RideToboggan5End
	;dl $D37CD2,$D37DF2,GFX_Dixie_RideToboggan6,GFX_Dixie_RideToboggan6End
	;dl $D37E00,$D37F20,GFX_Dixie_RideToboggan7,GFX_Dixie_RideToboggan7End
	;dl $D37F2E,$D3804E,GFX_Dixie_RideToboggan8,GFX_Dixie_RideToboggan8End
	;dl $D3805C,$D3817C,GFX_Dixie_RideToboggan9,GFX_Dixie_RideToboggan9End
	;dl $D3818C,$D382CC,GFX_Dixie_RideToboggan10,GFX_Dixie_RideToboggan10End
	;dl $D382DC,$D3841C,GFX_Dixie_RideToboggan11,GFX_Dixie_RideToboggan11End
	;dl $D3842C,$D3856C,GFX_Dixie_RideToboggan12,GFX_Dixie_RideToboggan12End
	;dl $D3857C,$D386BC,GFX_Dixie_RideToboggan13,GFX_Dixie_RideToboggan13End
	;dl $D386CC,$D3880C,GFX_Dixie_LookToSideInToboggan1,GFX_Dixie_LookToSideInToboggan1End
	;dl $D38818,$D38918,GFX_Dixie_LookToSideInToboggan2,GFX_Dixie_LookToSideInToboggan2End
	;dl $D38928,$D38A68,GFX_Dixie_LookDownInToboggan1,GFX_Dixie_LookDownInToboggan1End
	;dl $D38A78,$D38BB8,GFX_Dixie_LookDownInToboggan2,GFX_Dixie_LookDownInToboggan2End
	;dl $D38BD6,$D38E56,GFX_Dixie_Zapped,GFX_Dixie_ZappedEnd
	;dl $D38E64,$D38F84,GFX_SeashellMissle_Pose1,GFX_SeashellMissle_Pose1End
	;dl $D38F92,$D390B2,GFX_SeashellMissle_Pose2,GFX_SeashellMissle_Pose2End
	;dl $D390C0,$D391E0,GFX_SeashellMissle_Pose3,GFX_SeashellMissle_Pose3End
	;dl $D391F0,$D39330,GFX_SeashellMissle_Pose4,GFX_SeashellMissle_Pose4End
	;dl $D39342,$D394A2,GFX_SeashellMissle_Pose5,GFX_SeashellMissle_Pose5End
	;dl $D394B4,$D39614,GFX_SeashellMissle_Pose6,GFX_SeashellMissle_Pose6End
	;dl $D39624,$D39764,GFX_SeashellMissle_Pose7,GFX_SeashellMissle_Pose7End
	;dl $D39774,$D398B4,GFX_SeashellMissle_Pose8,GFX_SeashellMissle_Pose8End
	;dl $D398C4,$D39A04,GFX_SeashellMissle_Pose9,GFX_SeashellMissle_Pose9End
	;dl $D39A14,$D39B54,GFX_SeashellMissle_Pose10,GFX_SeashellMissle_Pose10End
	;dl $D39B64,$D39CA4,GFX_SeashellMissle_Pose11,GFX_SeashellMissle_Pose11End
	;dl $D39CB6,$D39E16,GFX_SeashellMissle_Pose12,GFX_SeashellMissle_Pose12End
	;dl $D39E28,$D39F28,GFX_SeashellMissle_Pose13,GFX_SeashellMissle_Pose13End
	;dl $D39F36,$D3A056,GFX_SeashellMissle_Pose14,GFX_SeashellMissle_Pose14End
	;dl $D3A064,$D3A184,GFX_SeashellMissle_Pose15,GFX_SeashellMissle_Pose15End
	;dl $D3A1A8,$D3A548,GFX_Krumple_Walk1,GFX_Krumple_Walk1End
	;dl $D3A56E,$D3A92E,GFX_Krumple_Walk2,GFX_Krumple_Walk2End
	;dl $D3A958,$D3AD58,GFX_Krumple_Walk3,GFX_Krumple_Walk3End
	;dl $D3AD82,$D3B182,GFX_Krumple_Walk4,GFX_Krumple_Walk4End
	;dl $D3B1AA,$D3B58A,GFX_Krumple_Walk5,GFX_Krumple_Walk5End
	;dl $D3B5B2,$D3B992,GFX_Krumple_Walk6,GFX_Krumple_Walk6End
	;dl $D3B9B8,$D3BD78,GFX_Krumple_Walk7,GFX_Krumple_Walk7End
	;dl $D3BD9E,$D3C15E,GFX_Krumple_Walk8,GFX_Krumple_Walk8End
	;dl $D3C188,$D3C588,GFX_Krumple_Turn1,GFX_Krumple_Turn1End
	;dl $D3C5AC,$D3C9AC,GFX_Krumple_Turn2,GFX_Krumple_Turn2End
	;dl $D3C9D0,$D3CD70,GFX_Krumple_Taunt1,GFX_Krumple_Taunt1End
	;dl $D3CD94,$D3D134,GFX_Krumple_Taunt2,GFX_Krumple_Taunt2End
	;dl $D3D158,$D3D4F8,GFX_Krumple_Taunt3,GFX_Krumple_Taunt3End
	;dl $D3D51C,$D3D91C,GFX_Krumple_Dead1,GFX_Krumple_Dead1End
	;dl $D3D93C,$D3DCFC,GFX_Krumple_Dead2,GFX_Krumple_Dead2End
	;dl $D3DD1A,$D3E11A,GFX_Krumple_Dead3,GFX_Krumple_Dead3End
	;dl $D3E136,$D3E336,GFX_Swoopy_Fly1,GFX_Swoopy_Fly1End
	;dl $D3E354,$D3E574,GFX_Swoopy_Fly2,GFX_Swoopy_Fly2End
	;dl $D3E58A,$D3E78A,GFX_Swoopy_Fly3,GFX_Swoopy_Fly3End
	;dl $D3E7A0,$D3E940,GFX_Swoopy_Fly4,GFX_Swoopy_Fly4End
	;dl $D3E95C,$D3EB5C,GFX_Swoopy_Fly5,GFX_Swoopy_Fly5End
	;dl $D3EB74,$D3ED34,GFX_Swoopy_Fly6,GFX_Swoopy_Fly6End
	;dl $D3ED48,$D3EEC8,GFX_Swoopy_Fly7,GFX_Swoopy_Fly7End
	;dl $D3EEDE,$D3F07E,GFX_Swoopy_Fly8,GFX_Swoopy_Fly8End
	;dl $D3F096,$D3F2B6,GFX_Swoopy_Swoop1,GFX_Swoopy_Swoop1End
	;dl $D3F2D2,$D3F532,GFX_Swoopy_Swoop2,GFX_Swoopy_Swoop2End
	;dl $D3F554,$D3F7B4,GFX_Swoopy_Swoop3,GFX_Swoopy_Swoop3End
	;dl $D3F7CE,$D3F9AE,GFX_Swoopy_Swoop4,GFX_Swoopy_Swoop4End
	;dl $D3F9CC,$D3FBEC,GFX_Swoopy_Swoop5,GFX_Swoopy_Swoop5End
	;dl $D3FC0A,$D3FE2A,GFX_Swoopy_Swoop6,GFX_Swoopy_Swoop6End
	;dl $D41EA7,$D420A7,GFX_Swoopy_Swoop7,GFX_Swoopy_Swoop7End
	;dl $D420C3,$D422C3,GFX_Swoopy_Swoop8,GFX_Swoopy_Swoop8End
	;dl $D422DB,$D4249B,GFX_Swoopy_Swoop9,GFX_Swoopy_Swoop9End
	;dl $D424B3,$D42673,GFX_Swoopy_Swoop10,GFX_Swoopy_Swoop10End
	;dl $D42689,$D42829,GFX_Swoopy_Swoop11,GFX_Swoopy_Swoop11End
	;dl $D4283F,$D429DF,GFX_Swoopy_Swoop12,GFX_Swoopy_Swoop12End
	;dl $D429F3,$D42B73,GFX_Swoopy_Swoop13,GFX_Swoopy_Swoop13End
	;dl $D42B89,$D42D89,GFX_Swoopy_Dead1,GFX_Swoopy_Dead1End
	;dl $D42DA7,$D42FC7,GFX_Swoopy_Dead2,GFX_Swoopy_Dead2End
	;dl $D42FE7,$D43227,GFX_Swoopy_Dead3,GFX_Swoopy_Dead3End
	;dl $D43237,$D43317,GFX_NibblaBody_Swim1,GFX_NibblaBody_Swim1End
	;dl $D43327,$D43407,GFX_NibblaBody_Swim2,GFX_NibblaBody_Swim2End
	;dl $D43417,$D434F7,GFX_NibblaBody_Swim3,GFX_NibblaBody_Swim3End
	;dl $D43509,$D43609,GFX_NibblaBody_Swim4,GFX_NibblaBody_Swim4End
	;dl $D4361B,$D4371B,GFX_NibblaBody_Swim5,GFX_NibblaBody_Swim5End
	;dl $D4372B,$D4380B,GFX_NibblaBody_Swim6,GFX_NibblaBody_Swim6End
	;dl $D4381B,$D438FB,GFX_NibblaBody_Swim7,GFX_NibblaBody_Swim7End
	;dl $D4390B,$D439EB,GFX_NibblaBody_Swim8,GFX_NibblaBody_Swim8End
	;dl $D43A03,$D43B63,GFX_NibblaBody_Turn1,GFX_NibblaBody_Turn1End
	;dl $D43B77,$D43C97,GFX_NibblaBody_Turn2,GFX_NibblaBody_Turn2End
	;dl $D43CA9,$D43DA9,GFX_NibblaBody_Turn3,GFX_NibblaBody_Turn3End
	;dl $D43DBB,$D43F1B,GFX_NibblaBody_Turn4,GFX_NibblaBody_Turn4End
	;dl $D43F2F,$D4410F,GFX_NibblaHead_Bite1,GFX_NibblaHead_Bite1End
	;dl $D44123,$D44363,GFX_NibblaHead_Bite2,GFX_NibblaHead_Bite2End
	;dl $D4437D,$D445BD,GFX_NibblaHead_Bite3,GFX_NibblaHead_Bite3End
	;dl $D445D9,$D44839,GFX_NibblaHead_Bite4,GFX_NibblaHead_Bite4End
	;dl $D44847,$D44907,GFX_NibblaHead_Happy1,GFX_NibblaHead_Happy1End
	;dl $D44915,$D449D5,GFX_NibblaHead_Happy2,GFX_NibblaHead_Happy2End
	;dl $D449E3,$D44AA3,GFX_NibblaHead_Happy3,GFX_NibblaHead_Happy3End
	;dl $D44AB1,$D44B71,GFX_NibblaHead_Happy4,GFX_NibblaHead_Happy4End
	;dl $D44B7F,$D44C3F,GFX_NibblaHead_Happy5,GFX_NibblaHead_Happy5End
	;dl $D44C4D,$D44D0D,GFX_NibblaHead_Happy6,GFX_NibblaHead_Happy6End
	;dl $D44D1B,$D44DDB,GFX_NibblaHead_Happy7,GFX_NibblaHead_Happy7End
	;dl $D44DE9,$D44EA9,GFX_NibblaHead_Happy8,GFX_NibblaHead_Happy8End
	;dl $D44EB7,$D44F77,GFX_NibblaHead_Sad1,GFX_NibblaHead_Sad1End
	;dl $D44F85,$D45045,GFX_NibblaHead_Sad2,GFX_NibblaHead_Sad2End
	;dl $D45053,$D45113,GFX_NibblaHead_Sad3,GFX_NibblaHead_Sad3End
	;dl $D45121,$D451E1,GFX_NibblaHead_Sad4,GFX_NibblaHead_Sad4End
	;dl $D451EF,$D452AF,GFX_NibblaHead_Sad5,GFX_NibblaHead_Sad5End
	;dl $D452BD,$D4537D,GFX_NibblaHead_Sad6,GFX_NibblaHead_Sad6End
	;dl $D4538B,$D4544B,GFX_NibblaHead_Sad7,GFX_NibblaHead_Sad7End
	;dl $D45459,$D45519,GFX_NibblaHead_Sad8,GFX_NibblaHead_Sad8End
	;dl $D45527,$D455E7,GFX_NibblaHead_Angry1,GFX_NibblaHead_Angry1End
	;dl $D455F5,$D456B5,GFX_NibblaHead_Angry2,GFX_NibblaHead_Angry2End
	;dl $D456C3,$D45783,GFX_NibblaHead_Angry3,GFX_NibblaHead_Angry3End
	;dl $D45791,$D45851,GFX_NibblaHead_Angry4,GFX_NibblaHead_Angry4End
	;dl $D4585F,$D4591F,GFX_NibblaHead_Angry5,GFX_NibblaHead_Angry5End
	;dl $D4592D,$D459ED,GFX_NibblaHead_Angry6,GFX_NibblaHead_Angry6End
	;dl $D459FB,$D45ABB,GFX_NibblaHead_Angry7,GFX_NibblaHead_Angry7End
	;dl $D45AC9,$D45B89,GFX_NibblaHead_Angry8,GFX_NibblaHead_Angry8End
	;dl $D45B93,$D45BB3,GFX_KuchukaHand_Pose1,GFX_KuchukaHand_Pose1End
	;dl $D45BC1,$D45C21,GFX_KuchukaHand_Pose2,GFX_KuchukaHand_Pose2End
	;dl $D45C31,$D45CB1,GFX_KuchukaHand_Pose3,GFX_KuchukaHand_Pose3End
	;dl $D45CC3,$D45D63,GFX_KuchukaHand_Pose4,GFX_KuchukaHand_Pose4End
	;dl $D45D73,$D45DF3,GFX_KuchukaHand_Pose5,GFX_KuchukaHand_Pose5End
	;dl $D45E03,$D45E83,GFX_KuchukaHand_Pose6,GFX_KuchukaHand_Pose6End
	;dl $D45E93,$D45F13,GFX_KuchukaHand_Pose7,GFX_KuchukaHand_Pose7End
	;dl $D45F23,$D45FA3,GFX_KuchukaHand_Pose8,GFX_KuchukaHand_Pose8End
	;dl $D45FB3,$D46033,GFX_KuchukaHand_Pose9,GFX_KuchukaHand_Pose9End
	;dl $D46041,$D460A1,GFX_KuchukaHand_Pose10,GFX_KuchukaHand_Pose10End
	;dl $D460B1,$D46131,GFX_KuchukaHand_Pose11,GFX_KuchukaHand_Pose11End
	;dl $D46149,$D46309,GFX_Bazza_Swim1,GFX_Bazza_Swim1End
	;dl $D46321,$D464E1,GFX_Bazza_Swim2,GFX_Bazza_Swim2End
	;dl $D464F9,$D466B9,GFX_Bazza_Swim3,GFX_Bazza_Swim3End
	;dl $D466CD,$D4684D,GFX_Bazza_Swim4,GFX_Bazza_Swim4End
	;dl $D46865,$D46A25,GFX_Bazza_Swim5,GFX_Bazza_Swim5End
	;dl $D46A3D,$D46BFD,GFX_Bazza_Swim6,GFX_Bazza_Swim6End
	;dl $D46C17,$D46DF7,GFX_Bazza_Swim7,GFX_Bazza_Swim7End
	;dl $D46E09,$D46FC9,GFX_Bazza_Swim8,GFX_Bazza_Swim8End
	;dl $D46FE1,$D471A1,GFX_Bazza_Dead,GFX_Bazza_DeadEnd
	;dl $D471BD,$D4735D,GFX_BuzzSwarm_Pose1,GFX_BuzzSwarm_Pose1End
	;dl $D47373,$D47513,GFX_BuzzSwarm_Pose2,GFX_BuzzSwarm_Pose2End
	;dl $D47529,$D47669,GFX_BuzzSwarm_Pose3,GFX_BuzzSwarm_Pose3End
	;dl $D47683,$D47803,GFX_BuzzSwarm_Pose4,GFX_BuzzSwarm_Pose4End
	;dl $D4781F,$D479BF,GFX_BuzzSwarm_Pose5,GFX_BuzzSwarm_Pose5End
	;dl $D479D7,$D47B37,GFX_BuzzSwarm_Pose6,GFX_BuzzSwarm_Pose6End
	;dl $D47B51,$D47CD1,GFX_BuzzSwarm_Pose7,GFX_BuzzSwarm_Pose7End
	;dl $D47CE9,$D47E49,GFX_BuzzSwarm_Pose8,GFX_BuzzSwarm_Pose8End
	;dl $D47E5F,$D47F9F,GFX_BuzzSwarm_Pose9,GFX_BuzzSwarm_Pose9End
	;dl $D47FB7,$D48117,GFX_BuzzSwarm_Pose10,GFX_BuzzSwarm_Pose10End
	;dl $D4812D,$D4826D,GFX_BuzzSwarm_Pose11,GFX_BuzzSwarm_Pose11End
	;dl $D48283,$D483C3,GFX_BuzzSwarm_Pose12,GFX_BuzzSwarm_Pose12End
	;dl $D483DD,$D4855D,GFX_BuzzSwarm_Pose13,GFX_BuzzSwarm_Pose13End
	;dl $D48575,$D486D5,GFX_BuzzSwarm_Pose14,GFX_BuzzSwarm_Pose14End
	;dl $D486ED,$D4884D,GFX_BuzzSwarm_Pose15,GFX_BuzzSwarm_Pose15End
	;dl $D48867,$D489E7,GFX_BuzzSwarm_Pose16,GFX_BuzzSwarm_Pose16End
	;dl $D489FF,$D48C1F,GFX_BountyBass_Swim1,GFX_BountyBass_Swim1End
	;dl $D48C3D,$D48E5D,GFX_BountyBass_Swim2,GFX_BountyBass_Swim2End
	;dl $D48E79,$D490D9,GFX_BountyBass_Swim3,GFX_BountyBass_Swim3End
	;dl $D490F5,$D49355,GFX_BountyBass_Swim4,GFX_BountyBass_Swim4End
	;dl $D4936F,$D495AF,GFX_BountyBass_Swim5,GFX_BountyBass_Swim5End
	;dl $D495CD,$D4984D,GFX_BountyBass_Swim6,GFX_BountyBass_Swim6End
	;dl $D49869,$D49AC9,GFX_BountyBass_Swim7,GFX_BountyBass_Swim7End
	;dl $D49AE7,$D49D07,GFX_BountyBass_Swim8,GFX_BountyBass_Swim8End
	;dl $D49D1F,$D49F3F,GFX_BountyBass_Turn1,GFX_BountyBass_Turn1End
	;dl $D49F57,$D4A117,GFX_BountyBass_Turn2,GFX_BountyBass_Turn2End
	;dl $D4A12D,$D4A32D,GFX_BountyBass_Turn3,GFX_BountyBass_Turn3End
	;dl $D4A343,$D4A543,GFX_BountyBass_Turn4,GFX_BountyBass_Turn4End
	;dl $D4A55F,$D4A7BF,GFX_BountyBass_Dead1,GFX_BountyBass_Dead1End
	;dl $D4A7DF,$D4AA1F,GFX_BountyBass_Dead2,GFX_BountyBass_Dead2End
	;dl $D4AA3B,$D4AC3B,GFX_BountyBass_Dead3,GFX_BountyBass_Dead3End
	;dl $D4AC4B,$D4AD8B,GFX_BountyBass_Dead4,GFX_BountyBass_Dead4End
	;dl $D4AD9B,$D4AE1B,GFX_BountyBass_Dead5,GFX_BountyBass_Dead5End
	;dl $D4AE2B,$D4AF0B,GFX_Gyrocopter_Pose1,GFX_Gyrocopter_Pose1End
	;dl $D4AF19,$D4AFD9,GFX_Gyrocopter_Pose2,GFX_Gyrocopter_Pose2End
	;dl $D4AFEB,$D4B0EB,GFX_Gyrocopter_Pose3,GFX_Gyrocopter_Pose3End
	;dl $D4B0F9,$D4B219,GFX_Gyrocopter_Pose4,GFX_Gyrocopter_Pose4End
	;dl $D4B227,$D4B347,GFX_Gyrocopter_Pose5,GFX_Gyrocopter_Pose5End
	;dl $D4B355,$D4B475,GFX_Gyrocopter_Pose6,GFX_Gyrocopter_Pose6End
	;dl $D4B483,$D4B5A3,GFX_Gyrocopter_Pose7,GFX_Gyrocopter_Pose7End
	;dl $D4B5B3,$D4B693,GFX_Gyrocopter_Pose8,GFX_Gyrocopter_Pose8End
	;dl $D4B6A3,$D4B783,GFX_Gyrocopter_Pose9,GFX_Gyrocopter_Pose9End
	;dl $D4B791,$D4B7F1,GFX_GyrocopterBlades_Pose1,GFX_GyrocopterBlades_Pose1End
	;dl $D4B801,$D4B881,GFX_GyrocopterBlades_Pose2,GFX_GyrocopterBlades_Pose2End
	;dl $D4B895,$D4B955,GFX_GyrocopterBlades_Pose3,GFX_GyrocopterBlades_Pose3End
	;dl $D4B96B,$D4BA4B,GFX_GyrocopterBlades_Pose4,GFX_GyrocopterBlades_Pose4End
	;dl $D4BA61,$D4BB41,GFX_GyrocopterBlades_Pose5,GFX_GyrocopterBlades_Pose5End
	;dl $D4BB57,$D4BC37,GFX_GyrocopterBlades_Pose6,GFX_GyrocopterBlades_Pose6End
	;dl $D4BC4B,$D4BD0B,GFX_GyrocopterBlades_Pose7,GFX_GyrocopterBlades_Pose7End
	;dl $D4BD1B,$D4BD9B,GFX_GyrocopterBlades_Pose8,GFX_GyrocopterBlades_Pose8End
	;dl $D4BDA7,$D4BE47,GFX_TurboSki_Pose1,GFX_TurboSki_Pose1End
	;dl $D4BE57,$D4BF37,GFX_TurboSki_Pose2,GFX_TurboSki_Pose2End
	;dl $D4BF47,$D4C027,GFX_TurboSki_Pose3,GFX_TurboSki_Pose3End
	;dl $D4C037,$D4C117,GFX_TurboSki_Pose4,GFX_TurboSki_Pose4End
	;dl $D4C127,$D4C207,GFX_TurboSki_Pose5,GFX_TurboSki_Pose5End
	;dl $D4C217,$D4C2F7,GFX_TurboSki_Pose6,GFX_TurboSki_Pose6End
	;dl $D4C307,$D4C3E7,GFX_TurboSki_Pose7,GFX_TurboSki_Pose7End
	;dl $D4C3F5,$D4C4B5,GFX_TurboSki_Pose8,GFX_TurboSki_Pose8End
	;dl $D4C4C3,$D4C583,GFX_TurboSki_Pose9,GFX_TurboSki_Pose9End
	;dl $D4C5A7,$D4C887,GFX_BootyBird_Fly1,GFX_BootyBird_Fly1End
	;dl $D4C8AB,$D4CB8B,GFX_BootyBird_Fly2,GFX_BootyBird_Fly2End
	;dl $D4CBA5,$D4CE45,GFX_BootyBird_Fly3,GFX_BootyBird_Fly3End
	;dl $D4CE63,$D4D0E3,GFX_BootyBird_Fly4,GFX_BootyBird_Fly4End
	;dl $D4D0FF,$D4D35F,GFX_BootyBird_Fly5,GFX_BootyBird_Fly5End
	;dl $D4D37B,$D4D5DB,GFX_BootyBird_Fly6,GFX_BootyBird_Fly6End
	;dl $D4D5F7,$D4D8B7,GFX_BootyBird_Fly7,GFX_BootyBird_Fly7End
	;dl $D4D8D3,$D4DB93,GFX_BootyBird_Fly8,GFX_BootyBird_Fly8End
	;dl $D4DBB1,$D4DE91,GFX_BootyBird_Turn1,GFX_BootyBird_Turn1End
	;dl $D4DEB1,$D4E151,GFX_BootyBird_Turn2,GFX_BootyBird_Turn2End
	;dl $D4E171,$D4E411,GFX_BootyBird_Dead1,GFX_BootyBird_Dead1End
	;dl $D4E42F,$D4E70F,GFX_BootyBird_Dead2,GFX_BootyBird_Dead2End
	;dl $D4E72D,$D4E9AD,GFX_BootyBird_Dead3,GFX_BootyBird_Dead3End
	;dl $D4E9C5,$D4EB85,GFX_BootyBird_Dead4,GFX_BootyBird_Dead4End
	;dl $D4EB99,$D4ECB9,GFX_BootyBird_Dead5,GFX_BootyBird_Dead5End
	;dl $D4ECC7,$D4ED87,GFX_BootyBird_Dead6,GFX_BootyBird_Dead6End
	;dl $D4ED9F,$D4F13F,GFX_Bazuka_ShootSide1,GFX_Bazuka_ShootSide1End
	;dl $D4F15B,$D4F53B,GFX_Bazuka_ShootSide2,GFX_Bazuka_ShootSide2End
	;dl $D4F557,$D4F8D7,GFX_Bazuka_ShootSide3,GFX_Bazuka_ShootSide3End
	;dl $D4F8F7,$D4FC57,GFX_Bazuka_ShootSide4,GFX_Bazuka_ShootSide4End
	;dl $D4FC77,$D4FFD7,GFX_Bazuka_ShootSide5,GFX_Bazuka_ShootSide5End
	;dl $D550C1,$D55461,GFX_Bazuka_ShootSide6,GFX_Bazuka_ShootSide6End
	;dl $D5547D,$D5585D,GFX_Bazuka_Walk1,GFX_Bazuka_Walk1End
	;dl $D55877,$D55C37,GFX_Bazuka_Walk2,GFX_Bazuka_Walk2End
	;dl $D55C53,$D56033,GFX_Bazuka_Walk3,GFX_Bazuka_Walk3End
	;dl $D5604F,$D5642F,GFX_Bazuka_Walk4,GFX_Bazuka_Walk4End
	;dl $D5644B,$D5682B,GFX_Bazuka_Walk5,GFX_Bazuka_Walk5End
	;dl $D56843,$D56BE3,GFX_Bazuka_Idle1,GFX_Bazuka_Idle1End
	;dl $D56BFB,$D56F9B,GFX_Bazuka_Idle2,GFX_Bazuka_Idle2End
	;dl $D56FB9,$D572F9,GFX_Bazuka_ShootUp1,GFX_Bazuka_ShootUp1End
	;dl $D57317,$D57657,GFX_Bazuka_ShootUp2,GFX_Bazuka_ShootUp2End
	;dl $D5766F,$D5794F,GFX_Bazuka_ShootUp3,GFX_Bazuka_ShootUp3End
	;dl $D57969,$D57C69,GFX_Bazuka_ShootUp4,GFX_Bazuka_ShootUp4End
	;dl $D57C89,$D57F89,GFX_Bazuka_ShootUp5,GFX_Bazuka_ShootUp5End
	;dl $D57FA9,$D582A9,GFX_Bazuka_ShootUp6,GFX_Bazuka_ShootUp6End
	;dl $D582C5,$D585E5,GFX_Bazuka_Dead1,GFX_Bazuka_Dead1End
	;dl $D5860B,$D5896B,GFX_Bazuka_Dead2,GFX_Bazuka_Dead2End
	;dl $D58991,$D58D51,GFX_Bazuka_Dead3,GFX_Bazuka_Dead3End
	;dl $D58D75,$D59175,GFX_Bazuka_Dead4,GFX_Bazuka_Dead4End
	;dl $D5919B,$D5955B,GFX_Bazuka_Dead5,GFX_Bazuka_Dead5End
	;dl $D5956B,$D5964B,GFX_BarrelSwitchS_Pose,GFX_BarrelSwitchS_PoseEnd
	;dl $D5966D,$D599ED,GFX_Koindozer_Run1,GFX_Koindozer_Run1End
	;dl $D59A11,$D59DB1,GFX_Koindozer_Run2,GFX_Koindozer_Run2End
	;dl $D59DD1,$D5A131,GFX_Koindozer_Run3,GFX_Koindozer_Run3End
	;dl $D5A153,$D5A4D3,GFX_Koindozer_Run4,GFX_Koindozer_Run4End
	;dl $D5A4F3,$D5A8B3,GFX_Koindozer_Run5,GFX_Koindozer_Run5End
	;dl $D5A8D3,$D5AC93,GFX_Koindozer_Run6,GFX_Koindozer_Run6End
	;dl $D5ACB9,$D5B019,GFX_Koindozer_Run7,GFX_Koindozer_Run7End
	;dl $D5B037,$D5B3D7,GFX_Koindozer_Run8,GFX_Koindozer_Run8End
	;dl $D5B3FB,$D5B6DB,GFX_Kopter_TakeOff1,GFX_Kopter_TakeOff1End
	;dl $D5B6FB,$D5B9FB,GFX_Kopter_TakeOff2,GFX_Kopter_TakeOff2End
	;dl $D5BA19,$D5BC99,GFX_Kopter_TakeOff3,GFX_Kopter_TakeOff3End
	;dl $D5BCB9,$D5BEF9,GFX_Kopter_TakeOff4,GFX_Kopter_TakeOff4End
	;dl $D5BF1B,$D5C1DB,GFX_Kopter_TakeOff5,GFX_Kopter_TakeOff5End
	;dl $D5C1F7,$D5C457,GFX_Kopter_TakeOff6,GFX_Kopter_TakeOff6End
	;dl $D5C471,$D5C651,GFX_Kopter_Fly1,GFX_Kopter_Fly1End
	;dl $D5C675,$D5C8F5,GFX_Kopter_Fly2,GFX_Kopter_Fly2End
	;dl $D5C919,$D5CB99,GFX_Kopter_Fly3,GFX_Kopter_Fly3End
	;dl $D5CBBB,$D5CE1B,GFX_Kopter_Fly4,GFX_Kopter_Fly4End
	;dl $D5CE3B,$D5D07B,GFX_Kopter_Fly5,GFX_Kopter_Fly5End
	;dl $D5D095,$D5D275,GFX_Kopter_Fly6,GFX_Kopter_Fly6End
	;dl $D5D28B,$D5D48B,GFX_Kopter_Fly7,GFX_Kopter_Fly7End
	;dl $D5D4A9,$D5D729,GFX_Kopter_Fly8,GFX_Kopter_Fly8End
	;dl $D5D74B,$D5D9AB,GFX_Kopter_Fly9,GFX_Kopter_Fly9End
	;dl $D5D9CD,$D5DC2D,GFX_Kopter_Fly10,GFX_Kopter_Fly10End
	;dl $D5DC4D,$D5DE8D,GFX_Kopter_Fly11,GFX_Kopter_Fly11End
	;dl $D5DEA5,$D5E065,GFX_Kopter_Fly12,GFX_Kopter_Fly12End
	;dl $D5E089,$D5E369,GFX_Kopter_Stand1,GFX_Kopter_Stand1End
	;dl $D5E38D,$D5E66D,GFX_Kopter_Stand2,GFX_Kopter_Stand2End
	;dl $D5E691,$D5E971,GFX_Kopter_Stand3,GFX_Kopter_Stand3End
	;dl $D5E999,$D5ED19,GFX_Kopter_Dead1,GFX_Kopter_Dead1End
	;dl $D5ED45,$D5EFE5,GFX_Kopter_Dead2,GFX_Kopter_Dead2End
	;dl $D5F009,$D5F349,GFX_Kopter_Dead3,GFX_Kopter_Dead3End
	;dl $D64B6F,$D64CCF,GFX_Nid_Idle1,GFX_Nid_Idle1End
	;dl $D64CE1,$D64E41,GFX_Nid_Idle2,GFX_Nid_Idle2End
	;dl $D64E55,$D64FD5,GFX_Nid_Idle3,GFX_Nid_Idle3End
	;dl $D64FE9,$D65169,GFX_Nid_Jump1,GFX_Nid_Jump1End
	;dl $D65181,$D65341,GFX_Nid_Jump2,GFX_Nid_Jump2End
	;dl $D65351,$D65551,GFX_Nid_Jump3,GFX_Nid_Jump3End
	;dl $D65565,$D657A5,GFX_Nid_Jump4,GFX_Nid_Jump4End
	;dl $D657BD,$D659DD,GFX_Nid_Jump5,GFX_Nid_Jump5End
	;dl $D65A11,$D65F71,GFX_Crystal_Red,GFX_Crystal_RedEnd
	;dl $D65F9B,$D6645B,GFX_Crystal_Green,GFX_Crystal_GreenEnd
	;dl $D66487,$D66A87,GFX_Crystal_Blue,GFX_Crystal_BlueEnd
	;dl $D66AB7,$D67097,GFX_Crystal_Yellow,GFX_Crystal_YellowEnd
	;dl $D670AF,$D672CF,GFX_CrackedCrystal_Pose,GFX_CrackedCrystal_PoseEnd
	;dl $D672E3,$D675E3,GFX_GhostBarrelCannon_Pose1,GFX_GhostBarrelCannon_Pose1End
	;dl $D67607,$D67947,GFX_GhostBarrelCannon_Pose2,GFX_GhostBarrelCannon_Pose2End
	;dl $D67967,$D67C67,GFX_GhostBarrelCannon_Pose3,GFX_GhostBarrelCannon_Pose3End
	;dl $D67C85,$D68025,GFX_GhostBarrelCannon_Pose4,GFX_GhostBarrelCannon_Pose4End
	;dl $D68039,$D68339,GFX_GhostBarrelCannon_Pose5,GFX_GhostBarrelCannon_Pose5End
	;dl $D68361,$D686E1,GFX_WrinklyKong_Stand1,GFX_WrinklyKong_Stand1End
	;dl $D686FF,$D68A3F,GFX_WrinklyKong_Stand2,GFX_WrinklyKong_Stand2End
	;dl $D68A65,$D68DC5,GFX_WrinklyKong_Stand3,GFX_WrinklyKong_Stand3End
	;dl $D68DED,$D6916D,GFX_WrinklyKong_Stand4,GFX_WrinklyKong_Stand4End
	;dl $D69195,$D69515,GFX_WrinklyKong_Stand5,GFX_WrinklyKong_Stand5End
	;dl $D69537,$D69857,GFX_WrinklyKong_Stand6,GFX_WrinklyKong_Stand6End
	;dl $D6987F,$D69BFF,GFX_WrinklyKong_Stand7,GFX_WrinklyKong_Stand7End
	;dl $D69C17,$D69E37,GFX_WrinklyKong_Sleeping1,GFX_WrinklyKong_Sleeping1End
	;dl $D69E4F,$D6A0CF,GFX_WrinklyKong_Sleeping2,GFX_WrinklyKong_Sleeping2End
	;dl $D6A0E5,$D6A345,GFX_WrinklyKong_Sleeping3,GFX_WrinklyKong_Sleeping3End
	;dl $D6A35B,$D6A5BB,GFX_WrinklyKong_Sleeping4,GFX_WrinklyKong_Sleeping4End
	;dl $D6A5D9,$D6A919,GFX_WrinklyKong_PlayN64_1,GFX_WrinklyKong_PlayN64_1End
	;dl $D6A93B,$D6AC5B,GFX_WrinklyKong_PlayN64_2,GFX_WrinklyKong_PlayN64_2End
	;dl $D6AC81,$D6AF81,GFX_WrinklyKong_PlayN64_3,GFX_WrinklyKong_PlayN64_3End
	;dl $D6AFA1,$D6B2A1,GFX_WrinklyKong_PlayN64_4,GFX_WrinklyKong_PlayN64_4End
	;dl $D6B2B9,$D6B4D9,GFX_Nintendo64_Pose,GFX_Nintendo64_PoseEnd
	;dl $D6B4EF,$D6B6EF,GFX_Dixie_KiddyTakesLead1,GFX_Dixie_KiddyTakesLead1End
	;dl $D6B703,$D6B943,GFX_Dixie_KiddyTakesLead2,GFX_Dixie_KiddyTakesLead2End
	;dl $D6B953,$D6BB53,GFX_Dixie_KiddyTakesLead3,GFX_Dixie_KiddyTakesLead3End
	;dl $D6BB67,$D6BD47,GFX_Dixie_KiddyTakesLead4,GFX_Dixie_KiddyTakesLead4End
	;dl $D6BD5B,$D6BF3B,GFX_Dixie_KiddyTakesLead5,GFX_Dixie_KiddyTakesLead5End
	;dl $D6BF51,$D6C151,GFX_Dixie_KiddyTakesLead6,GFX_Dixie_KiddyTakesLead6End
	;dl $D6C16B,$D6C3AB,GFX_Dixie_KiddyTakesLead7,GFX_Dixie_KiddyTakesLead7End
	;dl $D6C3C5,$D6C605,GFX_Dixie_KiddyTakesLead8,GFX_Dixie_KiddyTakesLead8End
	;dl $D6C621,$D6C881,GFX_Dixie_KiddyTakesLead9,GFX_Dixie_KiddyTakesLead9End
	;dl $D6C89B,$D6CADB,GFX_Dixie_KiddyTakesLead10,GFX_Dixie_KiddyTakesLead10End
	;dl $D6CAF5,$D6CCD5,GFX_Dixie_KiddyTakesLead11,GFX_Dixie_KiddyTakesLead11End
	;dl $D6CCED,$D6CF0D,GFX_Dixie_KiddyTakesLead12,GFX_Dixie_KiddyTakesLead12End
	;dl $D6CF27,$D6D167,GFX_Dixie_KiddyTakesLead13,GFX_Dixie_KiddyTakesLead13End
	;dl $D6D17F,$D6D39F,GFX_Dixie_KiddyTakesLead14,GFX_Dixie_KiddyTakesLead14End
	;dl $D6D3B9,$D6D599,GFX_Dixie_KiddyTakesLead15,GFX_Dixie_KiddyTakesLead15End
	;dl $D6D5B5,$D6D7B5,GFX_Dixie_KiddyTakesLead16,GFX_Dixie_KiddyTakesLead16End
	;dl $D6D7CF,$D6DA0F,GFX_Dixie_KiddyTakesLead17,GFX_Dixie_KiddyTakesLead17End
	;dl $D6DA27,$D6DC47,GFX_Dixie_KiddyTakesLead18,GFX_Dixie_KiddyTakesLead18End
	;dl $D73339,$D735F9,GFX_Kiddy_KiddyTakesLead1,GFX_Kiddy_KiddyTakesLead1End
	;dl $D73613,$D73913,GFX_Kiddy_KiddyTakesLead2,GFX_Kiddy_KiddyTakesLead2End
	;dl $D7392D,$D73C2D,GFX_Kiddy_KiddyTakesLead3,GFX_Kiddy_KiddyTakesLead3End
	;dl $D73C45,$D73F25,GFX_Kiddy_KiddyTakesLead4,GFX_Kiddy_KiddyTakesLead4End
	;dl $D73F3D,$D7421D,GFX_Kiddy_KiddyTakesLead5,GFX_Kiddy_KiddyTakesLead5End
	;dl $D74239,$D74559,GFX_Kiddy_KiddyTakesLead6,GFX_Kiddy_KiddyTakesLead6End
	;dl $D7456F,$D748EF,GFX_Kiddy_KiddyTakesLead7,GFX_Kiddy_KiddyTakesLead7End
	;dl $D74907,$D74CA7,GFX_Kiddy_KiddyTakesLead8,GFX_Kiddy_KiddyTakesLead8End
	;dl $D74CC5,$D750C5,GFX_Kiddy_KiddyTakesLead9,GFX_Kiddy_KiddyTakesLead9End
	;dl $D750E3,$D75483,GFX_Kiddy_KiddyTakesLead10,GFX_Kiddy_KiddyTakesLead10End
	;dl $D7549D,$D7579D,GFX_Kiddy_KiddyTakesLead11,GFX_Kiddy_KiddyTakesLead11End
	;dl $D757BD,$D75ABD,GFX_Kiddy_KiddyTakesLead12,GFX_Kiddy_KiddyTakesLead12End
	;dl $D75AD3,$D75D33,GFX_Dixie_DixieTakesLead1,GFX_Dixie_DixieTakesLead1End
	;dl $D75D4B,$D75FCB,GFX_Dixie_DixieTakesLead2,GFX_Dixie_DixieTakesLead2End
	;dl $D75FE3,$D76263,GFX_Dixie_DixieTakesLead3,GFX_Dixie_DixieTakesLead3End
	;dl $D7627F,$D7653F,GFX_Dixie_DixieTakesLead4,GFX_Dixie_DixieTakesLead4End
	;dl $D76557,$D76777,GFX_Dixie_DixieTakesLead5,GFX_Dixie_DixieTakesLead5End
	;dl $D7678D,$D7698D,GFX_Dixie_DixieTakesLead6,GFX_Dixie_DixieTakesLead6End
	;dl $D769A5,$D76BC5,GFX_Dixie_DixieTakesLead7,GFX_Dixie_DixieTakesLead7End
	;dl $D76BE5,$D76EE5,GFX_Kiddy_DixieTakesLead1,GFX_Kiddy_DixieTakesLead1End
	;dl $D76F05,$D77205,GFX_Kiddy_DixieTakesLead2,GFX_Kiddy_DixieTakesLead2End
	;dl $D7722B,$D7758B,GFX_Kiddy_DixieTakesLead3,GFX_Kiddy_DixieTakesLead3End
	;dl $D775AF,$D779AF,GFX_Kiddy_DixieTakesLead4,GFX_Kiddy_DixieTakesLead4End
	;dl $D779DF,$D77DDF,GFX_Kiddy_DixieTakesLead5,GFX_Kiddy_DixieTakesLead5End
	;dl $D77E09,$D78209,GFX_Kiddy_DixieTakesLead6,GFX_Kiddy_DixieTakesLead6End
	;dl $D78233,$D78633,GFX_Kiddy_DixieTakesLead7,GFX_Kiddy_DixieTakesLead7End
	;dl $D78655,$D789D5,GFX_KuffNKlout_Jump1,GFX_KuffNKlout_Jump1End
	;dl $D789F7,$D78D77,GFX_KuffNKlout_Jump2,GFX_KuffNKlout_Jump2End
	;dl $D78D9B,$D7913B,GFX_KuffNKlout_Jump3,GFX_KuffNKlout_Jump3End
	;dl $D79161,$D79521,GFX_KuffNKlout_Jump4,GFX_KuffNKlout_Jump4End
	;dl $D79543,$D798C3,GFX_KuffNKlout_Jump5,GFX_KuffNKlout_Jump5End
	;dl $D798E5,$D79C65,GFX_KuffNKlout_Jump6,GFX_KuffNKlout_Jump6End
	;dl $D79C83,$D79FC3,GFX_KuffNKlout_Jump7,GFX_KuffNKlout_Jump7End
	;dl $D79FDB,$D7A31B,GFX_KuffNKlout_Jump8,GFX_KuffNKlout_Jump8End
	;dl $D7A33B,$D7A69B,GFX_KuffNKlout_Turn1,GFX_KuffNKlout_Turn1End
	;dl $D7A6BF,$D7AA5F,GFX_KuffNKlout_Turn2,GFX_KuffNKlout_Turn2End
	;dl $D7AA7F,$D7ADDF,GFX_KuffNKlout_Tackle1,GFX_KuffNKlout_Tackle1End
	;dl $D7AE03,$D7B1A3,GFX_KuffNKlout_Tackle2,GFX_KuffNKlout_Tackle2End
	;dl $D7B1C5,$D7B5A5,GFX_KuffNKlout_Tackle3,GFX_KuffNKlout_Tackle3End
	;dl $D7B5C3,$D7B963,GFX_KuffNKlout_Tackle4,GFX_KuffNKlout_Tackle4End
	;dl $D7B98B,$D7BD0B,GFX_KuffNKlout_Tackle5,GFX_KuffNKlout_Tackle5End
	;dl $D7BD35,$D7C0D5,GFX_KuffNKlout_Tackle6,GFX_KuffNKlout_Tackle6End
	;dl $D7C0F7,$D7C477,GFX_KuffNKlout_Tackle7,GFX_KuffNKlout_Tackle7End
	;dl $D7C49B,$D7C83B,GFX_KuffNKlout_Tackle8,GFX_KuffNKlout_Tackle8End
	;dl $D7C85F,$D7CBFF,GFX_KuffNKlout_Idle1,GFX_KuffNKlout_Idle1End
	;dl $D7CC25,$D7CFE5,GFX_KuffNKlout_Idle2,GFX_KuffNKlout_Idle2End
	;dl $D7D015,$D7D415,GFX_KuffNKlout_Dead1,GFX_KuffNKlout_Dead1End
	;dl $D7D439,$D7D839,GFX_KuffNKlout_Dead2,GFX_KuffNKlout_Dead2End
	;dl $D7D85B,$D7DC3B,GFX_KuffNKlout_Dead3,GFX_KuffNKlout_Dead3End
	;dl $D7DC5B,$D7E01B,GFX_KuffNKlout_Dead4,GFX_KuffNKlout_Dead4End
	;dl $D82E95,$D83315,GFX_FGBleak_Throw1,GFX_FGBleak_Throw1End
	;dl $D8333F,$D8385F,GFX_FGBleak_Throw2,GFX_FGBleak_Throw2End
	;dl $D8388F,$D83E6F,GFX_FGBleak_Throw3,GFX_FGBleak_Throw3End
	;dl $D83E99,$D84419,GFX_FGBleak_Throw4,GFX_FGBleak_Throw4End
	;dl $D8443D,$D8483D,GFX_FGBleak_Throw5,GFX_FGBleak_Throw5End
	;dl $D84857,$D84C17,GFX_FGBleak_Throw6,GFX_FGBleak_Throw6End
	;dl $D84C3D,$D8517D,GFX_FGBleak_Throw7,GFX_FGBleak_Throw7End
	;dl $D8519F,$D855DF,GFX_FGBleak_Throw8,GFX_FGBleak_Throw8End
	;dl $D85607,$D85B67,GFX_FGBleak_Laugh1,GFX_FGBleak_Laugh1End
	;dl $D85B8B,$D860AB,GFX_FGBleak_Laugh2,GFX_FGBleak_Laugh2End
	;dl $D860D3,$D864B3,GFX_FGBleak_ShootToSide1,GFX_FGBleak_ShootToSide1End
	;dl $D864D7,$D868D7,GFX_FGBleak_ShootToSide2,GFX_FGBleak_ShootToSide2End
	;dl $D868F9,$D86CD9,GFX_FGBleak_ShootToSide3,GFX_FGBleak_ShootToSide3End
	;dl $D86CFD,$D870FD,GFX_FGBleak_ShootToSide4,GFX_FGBleak_ShootToSide4End
	;dl $D87121,$D87521,GFX_FGBleak_ShootToSide5,GFX_FGBleak_ShootToSide5End
	;dl $D87545,$D87945,GFX_FGBleak_ShootForward1,GFX_FGBleak_ShootForward1End
	;dl $D87969,$D87D69,GFX_FGBleak_ShootForward2,GFX_FGBleak_ShootForward2End
	;dl $D87D91,$D881D1,GFX_FGBleak_ShootForward3,GFX_FGBleak_ShootForward3End
	;dl $D881F3,$D88633,GFX_FGBleak_Idle1,GFX_FGBleak_Idle1End
	;dl $D88657,$D88AB7,GFX_FGBleak_Idle2,GFX_FGBleak_Idle2End
	;dl $D88ADB,$D88F3B,GFX_FGBleak_Idle3,GFX_FGBleak_Idle3End
	;dl $D88F63,$D894C3,GFX_FGBleak_Idle4,GFX_FGBleak_Idle4End
	;dl $D894E9,$D899C9,GFX_FGBleak_LowerHead1,GFX_FGBleak_LowerHead1End
	;dl $D899E7,$D89E47,GFX_FGBleak_LowerHead2,GFX_FGBleak_LowerHead2End
	;dl $D89E69,$D8A2A9,GFX_FGBleak_LowerHead3,GFX_FGBleak_LowerHead3End
	;dl $D8A2D9,$D8A919,GFX_FGBleak_Hurt1,GFX_FGBleak_Hurt1End
	;dl $D8A945,$D8AFA5,GFX_FGBleak_Hurt2,GFX_FGBleak_Hurt2End
	;dl $D8AFBF,$D8B13F,GFX_BGBleak_Throw1,GFX_BGBleak_Throw1End
	;dl $D8B155,$D8B2F5,GFX_BGBleak_Throw2,GFX_BGBleak_Throw2End
	;dl $D8B311,$D8B511,GFX_BGBleak_Throw3,GFX_BGBleak_Throw3End
	;dl $D8B52B,$D8B70B,GFX_BGBleak_Throw4,GFX_BGBleak_Throw4End
	;dl $D8B725,$D8B8A5,GFX_BGBleak_Throw5,GFX_BGBleak_Throw5End
	;dl $D8B8B5,$D8BA55,GFX_BGBleak_Throw6,GFX_BGBleak_Throw6End
	;dl $D8BA6D,$D8BC2D,GFX_BGBleak_Throw7,GFX_BGBleak_Throw7End
	;dl $D8BC41,$D8BDC1,GFX_BGBleak_Throw8,GFX_BGBleak_Throw8End
	;dl $D8BDD3,$D8BF33,GFX_BGBleak_Idle1,GFX_BGBleak_Idle1End
	;dl $D8BF45,$D8C0A5,GFX_BGBleak_Idle2,GFX_BGBleak_Idle2End
	;dl $D8C0B9,$D8C239,GFX_BGBleak_Hurt1,GFX_BGBleak_Hurt1End
	;dl $D8C24F,$D8C3EF,GFX_BGBleak_Hurt2,GFX_BGBleak_Hurt2End
	;dl $D8C409,$D8C5E9,GFX_BGBleak_Hurt3,GFX_BGBleak_Hurt3End
	;dl $D8C5FD,$D8C71D,GFX_LargeSnowball_Pose1,GFX_LargeSnowball_Pose1End
	;dl $D8C72F,$D8C88F,GFX_LargeSnowball_Pose2,GFX_LargeSnowball_Pose2End
	;dl $D8C8A1,$D8CA61,GFX_LargeSnowball_Pose3,GFX_LargeSnowball_Pose3End
	;dl $D8CA73,$D8CC93,GFX_LargeSnowball_Pose4,GFX_LargeSnowball_Pose4End
	;dl $D8CCA9,$D8CF09,GFX_LargeSnowball_Pose5,GFX_LargeSnowball_Pose5End
	;dl $D8CF13,$D8CF33,GFX_SmallSnowball_Pose1,GFX_SmallSnowball_Pose1End
	;dl $D8CF3D,$D8CF5D,GFX_SmallSnowball_Pose2,GFX_SmallSnowball_Pose2End
	;dl $D8CF69,$D8CFA9,GFX_SmallSnowball_Pose3,GFX_SmallSnowball_Pose3End
	;dl $D8CFB7,$D8D017,GFX_SmallSnowball_Pose4,GFX_SmallSnowball_Pose4End
	;dl $D8D021,$D8D0A1,GFX_SmallSnowball_Pose5,GFX_SmallSnowball_Pose5End
	;dl $D8D0AB,$D8D12B,GFX_SmallSnowball_Pose6,GFX_SmallSnowball_Pose6End
	;dl $D8D135,$D8D1B5,GFX_SmallSnowball_Pose7,GFX_SmallSnowball_Pose7End
	;dl $D8D1C1,$D8D261,GFX_SmallSnowball_Pose8,GFX_SmallSnowball_Pose8End
	;dl $D8D26F,$D8D32F,GFX_SmallSnowball_Pose9,GFX_SmallSnowball_Pose9End
	;dl $D8D341,$D8D441,GFX_SmallSnowball_Pose10,GFX_SmallSnowball_Pose10End
	;dl $D92A61,$D92D81,GFX_Kobble_Walk1,GFX_Kobble_Walk1End
	;dl $D92DA9,$D930C9,GFX_Kobble_Walk2,GFX_Kobble_Walk2End
	;dl $D930E9,$D933E9,GFX_Kobble_Walk3,GFX_Kobble_Walk3End
	;dl $D93409,$D93709,GFX_Kobble_Walk4,GFX_Kobble_Walk4End
	;dl $D93729,$D93A29,GFX_Kobble_Walk5,GFX_Kobble_Walk5End
	;dl $D93A49,$D93D49,GFX_Kobble_Walk6,GFX_Kobble_Walk6End
	;dl $D93D6B,$D9402B,GFX_Kobble_Walk7,GFX_Kobble_Walk7End
	;dl $D9404B,$D9434B,GFX_Kobble_Walk8,GFX_Kobble_Walk8End
	;dl $D94371,$D94671,GFX_Kobble_Turn1,GFX_Kobble_Turn1End
	;dl $D94693,$D94953,GFX_Kobble_Turn2,GFX_Kobble_Turn2End
	;dl $D94975,$D94C95,GFX_Skidda_Walk1,GFX_Skidda_Walk1End
	;dl $D94CB7,$D94FD7,GFX_Skidda_Walk2,GFX_Skidda_Walk2End
	;dl $D94FF3,$D95313,GFX_Skidda_Walk3,GFX_Skidda_Walk3End
	;dl $D9533F,$D9569F,GFX_Skidda_Walk4,GFX_Skidda_Walk4End
	;dl $D956C3,$D95A03,GFX_Skidda_Walk5,GFX_Skidda_Walk5End
	;dl $D95A2D,$D95D6D,GFX_Skidda_Walk6,GFX_Skidda_Walk6End
	;dl $D95D91,$D960D1,GFX_Skidda_Walk7,GFX_Skidda_Walk7End
	;dl $D960F5,$D96435,GFX_Skidda_Walk8,GFX_Skidda_Walk8End
	;dl $D96465,$D96865,GFX_Skidda_Dead1,GFX_Skidda_Dead1End
	;dl $D96891,$D96C51,GFX_Skidda_Dead2,GFX_Skidda_Dead2End
	;dl $D96C73,$D96FF3,GFX_Skidda_Dead3,GFX_Skidda_Dead3End
	;dl $D97013,$D97373,GFX_Skidda_Turn1,GFX_Skidda_Turn1End
	;dl $D97397,$D97737,GFX_Skidda_Turn2,GFX_Skidda_Turn2End
	;dl $D97755,$D97A95,GFX_Koin_Defend1,GFX_Koin_Defend1End
	;dl $D97AB1,$D97E31,GFX_Koin_Defend2,GFX_Koin_Defend2End
	;dl $D97E51,$D981B1,GFX_Koin_Defend3,GFX_Koin_Defend3End
	;dl $D981D1,$D98531,GFX_Koin_Defend4,GFX_Koin_Defend4End
	;dl $D98553,$D98873,GFX_Koin_Defend5,GFX_Koin_Defend5End
	;dl $D9889B,$D98C1B,GFX_Koin_Defend6,GFX_Koin_Defend6End
	;dl $D98C3B,$D98F9B,GFX_Koin_Defend7,GFX_Koin_Defend7End
	;dl $D98FBB,$D992BB,GFX_Koin_Defend8,GFX_Koin_Defend8End
	;dl $D992D9,$D995B9,GFX_Koin_Defend9,GFX_Koin_Defend9End
	;dl $D995CB,$D9972B,GFX_DKCoinOnShield_FaceRightDefend1,GFX_DKCoinOnShield_FaceRightDefend1End
	;dl $D9973D,$D9989D,GFX_DKCoinOnShield_FaceRightDefend2,GFX_DKCoinOnShield_FaceRightDefend2End
	;dl $D998AF,$D99A0F,GFX_DKCoinOnShield_FaceRightDefend3,GFX_DKCoinOnShield_FaceRightDefend3End
	;dl $D99A1F,$D99B5F,GFX_DKCoinOnShield_FaceRightDefend4,GFX_DKCoinOnShield_FaceRightDefend4End
	;dl $D99B6F,$D99CAF,GFX_DKCoinOnShield_FaceRightDefend5,GFX_DKCoinOnShield_FaceRightDefend5End
	;dl $D99CBB,$D99DBB,GFX_DKCoinOnShield_FaceRightDefend6,GFX_DKCoinOnShield_FaceRightDefend6End
	;dl $D99DC7,$D99EC7,GFX_DKCoinOnShield_FaceRightDefend7,GFX_DKCoinOnShield_FaceRightDefend7End
	;dl $D99ED7,$D99F57,GFX_DKCoinOnShield_FaceRightDefend8,GFX_DKCoinOnShield_FaceRightDefend8End
	;dl $D99F67,$D99FE7,GFX_DKCoinOnShield_FaceRightDefend9,GFX_DKCoinOnShield_FaceRightDefend9End
	;dl $D9A005,$D9A345,GFX_Koin_Idle1,GFX_Koin_Idle1End
	;dl $D9A363,$D9A6A3,GFX_Koin_Idle2,GFX_Koin_Idle2End
	;dl $D9A6B5,$D9A815,GFX_DKCoinOnShield_FaceLeftDefend1,GFX_DKCoinOnShield_FaceLeftDefend1End
	;dl $D9A827,$D9A987,GFX_DKCoinOnShield_FaceLeftDefend2,GFX_DKCoinOnShield_FaceLeftDefend2End
	;dl $D9A999,$D9AAF9,GFX_DKCoinOnShield_FaceLeftDefend3,GFX_DKCoinOnShield_FaceLeftDefend3End
	;dl $D9AB09,$D9AC49,GFX_DKCoinOnShield_FaceLeftDefend4,GFX_DKCoinOnShield_FaceLeftDefend4End
	;dl $D9AC59,$D9AD99,GFX_DKCoinOnShield_FaceLeftDefend5,GFX_DKCoinOnShield_FaceLeftDefend5End
	;dl $D9ADA5,$D9AEA5,GFX_DKCoinOnShield_FaceLeftDefend6,GFX_DKCoinOnShield_FaceLeftDefend6End
	;dl $D9AEB5,$D9AF95,GFX_DKCoinOnShield_FaceLeftDefend7,GFX_DKCoinOnShield_FaceLeftDefend7End
	;dl $D9AFA5,$D9B025,GFX_DKCoinOnShield_FaceLeftDefend8,GFX_DKCoinOnShield_FaceLeftDefend8End
	;dl $D9B033,$D9B0F3,GFX_DKCoinOnShield_FaceLeftDefend9,GFX_DKCoinOnShield_FaceLeftDefend9End
	;dl $D9B113,$D9B473,GFX_Koin_Dead1,GFX_Koin_Dead1End
	;dl $D9B491,$D9B7D1,GFX_Koin_Dead2,GFX_Koin_Dead2End
	;dl $D9B801,$D9BC01,GFX_Koin_Dead3,GFX_Koin_Dead3End
	;dl $D9BC15,$D9BD95,GFX_DKCoinOnShield_Freed1,GFX_DKCoinOnShield_Freed1End
	;dl $D9BDA5,$D9BFA5,GFX_DKCoinOnShield_Freed2,GFX_DKCoinOnShield_Freed2End
	;dl $D9BFB7,$D9C1D7,GFX_DKCoinOnShield_Freed3,GFX_DKCoinOnShield_Freed3End
	;dl $D9C1F3,$D9C4B3,GFX_DKCoinOnShield_Freed4,GFX_DKCoinOnShield_Freed4End
	;dl $D9C4D3,$D9C7D3,GFX_DKCoinOnShield_Freed5,GFX_DKCoinOnShield_Freed5End
	;dl $D9C7E7,$D9C967,GFX_DKCoinOnShield_Unknown1,GFX_DKCoinOnShield_Unknown1End
	;dl $D9C977,$D9CB77,GFX_DKCoinOnShield_Unknown2,GFX_DKCoinOnShield_Unknown2End
	;dl $D9CB89,$D9CDA9,GFX_DKCoinOnShield_Unknown3,GFX_DKCoinOnShield_Unknown3End
	;dl $D9CDC5,$D9D085,GFX_DKCoinOnShield_Unknown4,GFX_DKCoinOnShield_Unknown4End
	;dl $D9D0A5,$D9D3A5,GFX_DKCoinOnShield_Unknown5,GFX_DKCoinOnShield_Unknown5End
	;dl $D9D3C5,$D9D725,GFX_Koin_Knockback1,GFX_Koin_Knockback1End
	;dl $D9D745,$D9DB05,GFX_Koin_Knockback2,GFX_Koin_Knockback2End
	;dl $D9DB1B,$D9DD7B,GFX_TNTBarrel_Thrown1,GFX_TNTBarrel_Thrown1End
	;dl $D9DD91,$D9DFF1,GFX_TNTBarrel_Thrown2,GFX_TNTBarrel_Thrown2End
	;dl $D9E005,$D9E245,GFX_TNTBarrel_Thrown3,GFX_TNTBarrel_Thrown3End
	;dl $D9E259,$D9E499,GFX_TNTBarrel_Thrown4,GFX_TNTBarrel_Thrown4End
	;dl $D9E4AD,$D9E6ED,GFX_TNTBarrel_Thrown5,GFX_TNTBarrel_Thrown5End
	;dl $D9E703,$D9E963,GFX_TNTBarrel_Thrown6,GFX_TNTBarrel_Thrown6End
	;dl $D9E979,$D9EBD9,GFX_TNTBarrel_Thrown7,GFX_TNTBarrel_Thrown7End
	;dl $D9EBEF,$D9EE4F,GFX_TNTBarrel_Thrown8,GFX_TNTBarrel_Thrown8End
	;dl $D9EE65,$D9F0C5,GFX_InvincibilityBarrel_Idle,GFX_InvincibilityBarrel_IdleEnd
	;dl $D9F0D9,$D9F3D9,GFX_RocketBarrelCannon_Pose,GFX_RocketBarrelCannon_PoseEnd
	;dl $DA2B38,$DA2D78,GFX_Dixie_HangFromSquawks1,GFX_Dixie_HangFromSquawks1End
	;dl $DA2D92,$DA2FD2,GFX_Dixie_HangFromSquawks2,GFX_Dixie_HangFromSquawks2End
	;dl $DA2FEA,$DA320A,GFX_Dixie_HangFromSquawks3,GFX_Dixie_HangFromSquawks3End
	;dl $DA3220,$DA3420,GFX_Dixie_HangFromSquawks4,GFX_Dixie_HangFromSquawks4End
	;dl $DA3438,$DA3658,GFX_Dixie_HangFromSquawks5,GFX_Dixie_HangFromSquawks5End
	;dl $DA3670,$DA3890,GFX_Dixie_HangFromSquawks6,GFX_Dixie_HangFromSquawks6End
	;dl $DA38A8,$DA3AC8,GFX_Dixie_HangFromSquawks7,GFX_Dixie_HangFromSquawks7End
	;dl $DA3AE0,$DA3D00,GFX_Dixie_HangFromSquawks8,GFX_Dixie_HangFromSquawks8End
	;dl $DA3D20,$DA3FC0,GFX_Kiddy_HangFromSquawks1,GFX_Kiddy_HangFromSquawks1End
	;dl $DA3FE0,$DA4280,GFX_Kiddy_HangFromSquawks2,GFX_Kiddy_HangFromSquawks2End
	;dl $DA42A0,$DA4540,GFX_Kiddy_HangFromSquawks3,GFX_Kiddy_HangFromSquawks3End
	;dl $DA4562,$DA4822,GFX_Kiddy_HangFromSquawks4,GFX_Kiddy_HangFromSquawks4End
	;dl $DA483E,$DA4AFE,GFX_Kiddy_HangFromSquawks5,GFX_Kiddy_HangFromSquawks5End
	;dl $DA4B1A,$DA4DDA,GFX_Kiddy_HangFromSquawks6,GFX_Kiddy_HangFromSquawks6End
	;dl $DA4DFA,$DA51BA,GFX_BlankFrame_Pose,GFX_BlankFrame_PoseEnd
	;dl $DA51CC,$DA526C,GFX_TopOfKAOSKoreWaterFall_Pose1,GFX_TopOfKAOSKoreWaterFall_Pose1End
	;dl $DA527E,$DA531E,GFX_TopOfKAOSKoreWaterFall_Pose2,GFX_TopOfKAOSKoreWaterFall_Pose2End
	;dl $DA5330,$DA53D0,GFX_TopOfKAOSKoreWaterFall_Pose3,GFX_TopOfKAOSKoreWaterFall_Pose3End
	;dl $DA53E2,$DA5482,GFX_TopOfKAOSKoreWaterFall_Pose4,GFX_TopOfKAOSKoreWaterFall_Pose4End
	;dl $DA5490,$DA5610,GFX_BottomOfKAOSKoreWaterFall_Pose1,GFX_BottomOfKAOSKoreWaterFall_Pose1End
	;dl $DA561E,$DA579E,GFX_BottomOfKAOSKoreWaterFall_Pose2,GFX_BottomOfKAOSKoreWaterFall_Pose2End
	;dl $DA57AC,$DA592C,GFX_BottomOfKAOSKoreWaterFall_Pose3,GFX_BottomOfKAOSKoreWaterFall_Pose3End
	;dl $DA593A,$DA5ABA,GFX_BottomOfKAOSKoreWaterFall_Pose4,GFX_BottomOfKAOSKoreWaterFall_Pose4End
	;dl $DA5AC6,$DA5B06,GFX_TobogganSparks_Pose1,GFX_TobogganSparks_Pose1End
	;dl $DA5B12,$DA5BB2,GFX_TobogganSparks_Pose2,GFX_TobogganSparks_Pose2End
	;dl $DA5BC2,$DA5CA2,GFX_TobogganSparks_Pose3,GFX_TobogganSparks_Pose3End
	;dl $DA5CB8,$DA5DF8,GFX_TobogganSparks_Pose4,GFX_TobogganSparks_Pose4End
	;dl $DA5E0C,$DA5F8C,GFX_TobogganSparks_Pose5,GFX_TobogganSparks_Pose5End
	;dl $DA5F9E,$DA615E,GFX_TobogganSparks_Pose6,GFX_TobogganSparks_Pose6End
	;dl $DA6172,$DA6352,GFX_TobogganSparks_Pose7,GFX_TobogganSparks_Pose7End
	;dl $DA636A,$DA658A,GFX_TobogganSparks_Pose8,GFX_TobogganSparks_Pose8End
	;dl $DA65A2,$DA67C2,GFX_TobogganSparks_Pose9,GFX_TobogganSparks_Pose9End
	;dl $DA67DA,$DA69FA,GFX_TobogganSparks_Pose10,GFX_TobogganSparks_Pose10End
	;dl $DA6A10,$DA6C10,GFX_TobogganSparks_Pose11,GFX_TobogganSparks_Pose11End
	;dl $DA6C1E,$DA6C7E,GFX_TobogganSnowPuff_Pose1,GFX_TobogganSnowPuff_Pose1End
	;dl $DA6C88,$DA6D08,GFX_TobogganSnowPuff_Pose2,GFX_TobogganSnowPuff_Pose2End
	;dl $DA6D16,$DA6DD6,GFX_TobogganSnowPuff_Pose3,GFX_TobogganSnowPuff_Pose3End
	;dl $DA6DE6,$DA6EC6,GFX_TobogganSnowPuff_Pose4,GFX_TobogganSnowPuff_Pose4End
	;dl $DA6EDA,$DA6FFA,GFX_TobogganSnowPuff_Pose5,GFX_TobogganSnowPuff_Pose5End
	;dl $DA700E,$DA712E,GFX_TobogganSnowPuff_Pose6,GFX_TobogganSnowPuff_Pose6End
	;dl $DA7144,$DA7284,GFX_TobogganSnowPuff_Pose7,GFX_TobogganSnowPuff_Pose7End
	;dl $DA7298,$DA73B8,GFX_TobogganSnowPuff_Pose8,GFX_TobogganSnowPuff_Pose8End
	;dl $DA73CA,$DA74CA,GFX_TobogganSnowPuff_Pose9,GFX_TobogganSnowPuff_Pose9End
	;dl $DA74DA,$DA755A,GFX_TobogganSnowPuff_Pose10,GFX_TobogganSnowPuff_Pose10End
	;dl $DA756A,$DA75EA,GFX_TobogganSnowPuff_Pose11,GFX_TobogganSnowPuff_Pose11End
	;dl $DA75F6,$DA7636,GFX_TobogganSnowPuff_Pose12,GFX_TobogganSnowPuff_Pose12End
	;dl $DA7642,$DA76E2,GFX_MapKiddy_Bounce1,GFX_MapKiddy_Bounce1End
	;dl $DA76EC,$DA776C,GFX_MapKiddy_Bounce2,GFX_MapKiddy_Bounce2End
	;dl $DA7776,$DA77F6,GFX_MapKiddy_Bounce3,GFX_MapKiddy_Bounce3End
	;dl $DA7802,$DA78A2,GFX_MapKiddy_Bounce4,GFX_MapKiddy_Bounce4End
	;dl $DA78AC,$DA792C,GFX_MapKiddy_Bounce5,GFX_MapKiddy_Bounce5End
	;dl $DA7938,$DA79D8,GFX_MapKiddy_RideChairlift,GFX_MapKiddy_RideChairliftEnd
	;dl $DA79E2,$DA7A62,GFX_MapDixie_Bounce1,GFX_MapDixie_Bounce1End
	;dl $DA7A6C,$DA7AEC,GFX_MapDixie_Bounce2,GFX_MapDixie_Bounce2End
	;dl $DA7AF6,$DA7B76,GFX_MapDixie_Bounce3,GFX_MapDixie_Bounce3End
	;dl $DA7B80,$DA7C00,GFX_MapDixie_Bounce4,GFX_MapDixie_Bounce4End
	;dl $DA7C0A,$DA7C8A,GFX_MapDixie_Bounce5,GFX_MapDixie_Bounce5End
	;dl $DA7C94,$DA7D14,GFX_MapDixie_RideChairlift,GFX_MapDixie_RideChairliftEnd
	;dl $DA7D30,$DA8110,GFX_KAOSHead_LaserHead,GFX_KAOSHead_LaserHeadEnd
	;dl $DA8124,$DA8424,GFX_KAOSHead_SkullHeadLookFront,GFX_KAOSHead_SkullHeadLookFrontEnd
	;dl $DA843A,$DA869A,GFX_KAOSHead_CylinderHeadPose1,GFX_KAOSHead_CylinderHeadPose1End
	;dl $DA86B0,$DA8910,GFX_KAOSHead_CylinderHeadPose2,GFX_KAOSHead_CylinderHeadPose2End
	;dl $DA8926,$DA8B86,GFX_KAOSHead_CylinderHeadPose3,GFX_KAOSHead_CylinderHeadPose3End
	;dl $DA8B9C,$DA8DFC,GFX_KAOSHead_CylinderHeadPose4,GFX_KAOSHead_CylinderHeadPose4End
	;dl $DA8E12,$DA9072,GFX_KAOSHead_CylinderHeadPose5,GFX_KAOSHead_CylinderHeadPose5End
	;dl $DA908A,$DA92AA,GFX_KAOSHead_CylinderHeadPose6,GFX_KAOSHead_CylinderHeadPose6End
	;dl $DA92C2,$DA94E2,GFX_KAOSHead_CylinderHeadPose7,GFX_KAOSHead_CylinderHeadPose7End
	;dl $DA94FC,$DA973C,GFX_KAOSBoxingGlove_Pose1,GFX_KAOSBoxingGlove_Pose1End
	;dl $DA975C,$DA99FC,GFX_KAOSBoxingGlove_Pose2,GFX_KAOSBoxingGlove_Pose2End
	;dl $DA9A1C,$DA9CBC,GFX_KAOSBoxingGlove_Pose3,GFX_KAOSBoxingGlove_Pose3End
	;dl $DA9CDC,$DA9FDC,GFX_KAOSBoxingGlove_Pose4,GFX_KAOSBoxingGlove_Pose4End
	;dl $DA9FEC,$DAA06C,GFX_KAOSBlade_Pose1,GFX_KAOSBlade_Pose1End
	;dl $DAA07A,$DAA13A,GFX_KAOSBlade_Pose2,GFX_KAOSBlade_Pose2End
	;dl $DAA148,$DAA208,GFX_KAOSBlade_Pose3,GFX_KAOSBlade_Pose3End
	;dl $DAA216,$DAA2D6,GFX_KAOSBlade_Pose4,GFX_KAOSBlade_Pose4End
	;dl $DAA2E8,$DAA388,GFX_KAOSBlade_Pose5,GFX_KAOSBlade_Pose5End
	;dl $DAA39A,$DAA43A,GFX_KAOSBlade_Pose6,GFX_KAOSBlade_Pose6End
	;dl $DAA44C,$DAA4EC,GFX_KAOSBlade_Pose7,GFX_KAOSBlade_Pose7End
	;dl $DAA4FE,$DAA59E,GFX_KAOSBlade_Pose8,GFX_KAOSBlade_Pose8End
	;dl $DAA5AE,$DAA62E,GFX_KAOSBlade_Pose9,GFX_KAOSBlade_Pose9End
	;dl $DAA63C,$DAA69C,GFX_KAOSBlade_Pose10,GFX_KAOSBlade_Pose10End
	;dl $DAA6AA,$DAA70A,GFX_KAOSBlade_Pose11,GFX_KAOSBlade_Pose11End
	;dl $DAA722,$DAAA02,GFX_KAOSHead_SkullHeadLookLeft1,GFX_KAOSHead_SkullHeadLookLeft1End
	;dl $DAAA1A,$DAACFA,GFX_KAOSHead_SkullHeadLookRight1,GFX_KAOSHead_SkullHeadLookRight1End
	;dl $DAAD12,$DAAFF2,GFX_KAOSHead_SkullHeadLookLeft2,GFX_KAOSHead_SkullHeadLookLeft2End
	;dl $DAB00E,$DAB2CE,GFX_KAOSHead_SkullHeadLookRight2,GFX_KAOSHead_SkullHeadLookRight2End
	;dl $DAB2DC,$DAB39C,GFX_KAOSBomb_Pose1,GFX_KAOSBomb_Pose1End
	;dl $DAB3A8,$DAB4A8,GFX_KAOSBomb_Pose2,GFX_KAOSBomb_Pose2End
	;dl $DAB4B4,$DAB5B4,GFX_KAOSBomb_Pose3,GFX_KAOSBomb_Pose3End
	;dl $DAB5C2,$DAB622,GFX_FireballLandingParticles_Pose1,GFX_FireballLandingParticles_Pose1End
	;dl $DAB62E,$DAB6CE,GFX_FireballLandingParticles_Pose2,GFX_FireballLandingParticles_Pose2End
	;dl $DAB6DA,$DAB7DA,GFX_FireballLandingParticles_Pose3,GFX_FireballLandingParticles_Pose3End
	;dl $DAB7EA,$DAB92A,GFX_FireballLandingParticles_Pose4,GFX_FireballLandingParticles_Pose4End
	;dl $DAB944,$DABAC4,GFX_FireballLandingParticles_Pose5,GFX_FireballLandingParticles_Pose5End
	;dl $DABADC,$DABC3C,GFX_FireballLandingParticles_Pose6,GFX_FireballLandingParticles_Pose6End
	;dl $DABC5E,$DABDFE,GFX_FireballLandingParticles_Pose7,GFX_FireballLandingParticles_Pose7End
	;dl $DABE1A,$DABFBA,GFX_FireballLandingParticles_Pose8,GFX_FireballLandingParticles_Pose8End
	;dl $DABFDA,$DAC15A,GFX_FireballLandingParticles_Pose9,GFX_FireballLandingParticles_Pose9End
	;dl $DAC17A,$DAC2FA,GFX_FireballLandingParticles_Pose10,GFX_FireballLandingParticles_Pose10End
	;dl $DAC318,$DAC478,GFX_FireballLandingParticles_Pose11,GFX_FireballLandingParticles_Pose11End
	;dl $DAC492,$DAC5B2,GFX_FireballLandingParticles_Pose12,GFX_FireballLandingParticles_Pose12End
	;dl $DAC5C8,$DAC6A8,GFX_FireballLandingParticles_Pose13,GFX_FireballLandingParticles_Pose13End
	;dl $DAC6C2,$DAC8A2,GFX_KAOSFlame_Idle1,GFX_KAOSFlame_Idle1End
	;dl $DAC8BC,$DACA9C,GFX_KAOSFlame_Idle2,GFX_KAOSFlame_Idle2End
	;dl $DACAB6,$DACC96,GFX_KAOSFlame_Idle3,GFX_KAOSFlame_Idle3End
	;dl $DACCB0,$DACE90,GFX_KAOSFlame_Idle4,GFX_KAOSFlame_Idle4End
	;dl $DACEAA,$DAD08A,GFX_KAOSFlame_Idle5,GFX_KAOSFlame_Idle5End
	;dl $DAD0A4,$DAD284,GFX_KAOSFlame_Idle6,GFX_KAOSFlame_Idle6End
	;dl $DAD29E,$DAD47E,GFX_KAOSFlame_Idle7,GFX_KAOSFlame_Idle7End
	;dl $DAD498,$DAD678,GFX_KAOSFlame_Idle8,GFX_KAOSFlame_Idle8End
	;dl $DAD692,$DAD872,GFX_KAOSFlame_Idle9,GFX_KAOSFlame_Idle9End
	;dl $DAD88C,$DADA6C,GFX_KAOSFlame_Idle10,GFX_KAOSFlame_Idle10End
	;dl $DADA86,$DADC66,GFX_KAOSFlame_Idle11,GFX_KAOSFlame_Idle11End
	;dl $DADC80,$DADE60,GFX_KAOSFlame_Idle12,GFX_KAOSFlame_Idle12End
	;dl $DADE6C,$DADEAC,GFX_KAOSFlame_SpreadOnGround1,GFX_KAOSFlame_SpreadOnGround1End
	;dl $DADEBA,$DADF7A,GFX_KAOSFlame_SpreadOnGround2,GFX_KAOSFlame_SpreadOnGround2End
	;dl $DADF8A,$DAE0CA,GFX_KAOSFlame_SpreadOnGround3,GFX_KAOSFlame_SpreadOnGround3End
	;dl $DAE0DE,$DAE25E,GFX_KAOSFlame_SpreadOnGround4,GFX_KAOSFlame_SpreadOnGround4End
	;dl $DAE274,$DAE414,GFX_KAOSFlame_SpreadOnGround5,GFX_KAOSFlame_SpreadOnGround5End
	;dl $DAE426,$DAE5E6,GFX_KAOSFlame_SpreadOnGround6,GFX_KAOSFlame_SpreadOnGround6End
	;dl $DAE5FC,$DAE79C,GFX_KAOSFlame_SpreadOnGround7,GFX_KAOSFlame_SpreadOnGround7End
	;dl $DAE7B2,$DAE952,GFX_KAOSFlame_SpreadOnGround8,GFX_KAOSFlame_SpreadOnGround8End
	;dl $DAE966,$DAEAE6,GFX_KAOSFlame_SpreadOnGround9,GFX_KAOSFlame_SpreadOnGround9End
	;dl $DAEAFC,$DAEC9C,GFX_KAOSFlame_SpreadOnGround10,GFX_KAOSFlame_SpreadOnGround10End
	;dl $DAECB0,$DAEE30,GFX_KAOSFlame_SpreadOnGround11,GFX_KAOSFlame_SpreadOnGround11End
	;dl $DAEE50,$DAF090,GFX_KastleKAOSSpriteMask_Pose,GFX_KastleKAOSSpriteMask_PoseEnd
	;dl $DAF0A6,$DAF186,GFX_PostKAOSFightSpriteMask_Pose,GFX_PostKAOSFightSpriteMask_PoseEnd
	;dl $DAF1A0,$DAF440,GFX_SkyHighSecretRock_Pose,GFX_SkyHighSecretRock_PoseEnd
	;dl $DAF45E,$DAF85E,GFX_LargePipe_Pose,GFX_LargePipe_PoseEnd
	;dl $DB2CE2,$DB30C2,GFX_WaterfallBarrel_Pose1,GFX_WaterfallBarrel_Pose1End
	;dl $DB310E,$DB34EE,GFX_WaterfallBarrel_Pose2,GFX_WaterfallBarrel_Pose2End
	;dl $DB353A,$DB391A,GFX_WaterfallBarrel_Pose3,GFX_WaterfallBarrel_Pose3End
	;dl $DB3966,$DB3D46,GFX_WaterfallBarrel_Pose4,GFX_WaterfallBarrel_Pose4End
	;dl $DB3D90,$DB4150,GFX_WaterfallBarrel_Pose5,GFX_WaterfallBarrel_Pose5End
	;dl $DB419C,$DB457C,GFX_WaterfallBarrel_Pose6,GFX_WaterfallBarrel_Pose6End
	;dl $DB45C8,$DB49A8,GFX_WaterfallBarrel_Pose7,GFX_WaterfallBarrel_Pose7End
	;dl $DB49F6,$DB4DF6,GFX_WaterfallBarrel_Pose8,GFX_WaterfallBarrel_Pose8End
	;dl $DB4E18,$DB4E98,GFX_Rockpile_Explode1,GFX_Rockpile_Explode1End
	;dl $DB4EA6,$DB4F66,GFX_Rockpile_Explode2,GFX_Rockpile_Explode2End
	;dl $DB4F76,$DB5056,GFX_Rockpile_Explode3,GFX_Rockpile_Explode3End
	;dl $DB5066,$DB5146,GFX_Rockpile_Explode4,GFX_Rockpile_Explode4End
	;dl $DB515E,$DB525E,GFX_Rockpile_Explode5,GFX_Rockpile_Explode5End
	;dl $DB5278,$DB5398,GFX_Rockpile_Explode6,GFX_Rockpile_Explode6End
	;dl $DB53AE,$DB548E,GFX_Rockpile_Explode7,GFX_Rockpile_Explode7End
	;dl $DB54A4,$DB5584,GFX_Rockpile_Explode8,GFX_Rockpile_Explode8End
	;dl $DB559A,$DB567A,GFX_Rockpile_Explode9,GFX_Rockpile_Explode9End
	;dl $DB568C,$DB572C,GFX_Rockpile_Explode10,GFX_Rockpile_Explode10End
	;dl $DB573C,$DB57BC,GFX_Rockpile_Explode11,GFX_Rockpile_Explode11End
	;dl $DB57D0,$DB5950,GFX_Krosshair_Pose,GFX_Krosshair_PoseEnd
	;dl $DB5970,$DB5CD0,GFX_Ellie_SuckTowardsCamera1,GFX_Ellie_SuckTowardsCamera1End
	;dl $DB5CF6,$DB60B6,GFX_Ellie_SuckTowardsCamera2,GFX_Ellie_SuckTowardsCamera2End
	;dl $DB60DA,$DB647A,GFX_Ellie_SuckTowardsCamera3,GFX_Ellie_SuckTowardsCamera3End
	;dl $DB649E,$DB683E,GFX_Ellie_SuckTowardsCamera4,GFX_Ellie_SuckTowardsCamera4End
	;dl $DB6862,$DB6C02,GFX_Ellie_SuckTowardsCamera5,GFX_Ellie_SuckTowardsCamera5End
	;dl $DB6C26,$DB6FC6,GFX_Ellie_SuckTowardsCamera6,GFX_Ellie_SuckTowardsCamera6End
	;dl $DB6FEA,$DB738A,GFX_Ellie_SuckTowardsCamera7,GFX_Ellie_SuckTowardsCamera7End
	;dl $DB73AE,$DB774E,GFX_Ellie_SuckTowardsCamera8,GFX_Ellie_SuckTowardsCamera8End
	;dl $DB7772,$DB7B12,GFX_Ellie_SuckTowardsCamera9,GFX_Ellie_SuckTowardsCamera9End
	;dl $DB7B38,$DB7E98,GFX_Ellie_SuckTowardsBG1,GFX_Ellie_SuckTowardsBG1End
	;dl $DB7EBE,$DB827E,GFX_Ellie_SuckTowardsBG2,GFX_Ellie_SuckTowardsBG2End
	;dl $DB82A4,$DB8664,GFX_Ellie_SuckTowardsBG3,GFX_Ellie_SuckTowardsBG3End
	;dl $DB868A,$DB8A4A,GFX_Ellie_SuckTowardsBG4,GFX_Ellie_SuckTowardsBG4End
	;dl $DB8A6E,$DB8E0E,GFX_Ellie_SuckTowardsBG5,GFX_Ellie_SuckTowardsBG5End
	;dl $DB8E34,$DB91F4,GFX_Ellie_SuckTowardsBG6,GFX_Ellie_SuckTowardsBG6End
	;dl $DB921A,$DB95DA,GFX_Ellie_SuckTowardsBG7,GFX_Ellie_SuckTowardsBG7End
	;dl $DB95FE,$DB999E,GFX_Ellie_SuckTowardsBG8,GFX_Ellie_SuckTowardsBG8End
	;dl $DB99C2,$DB9D62,GFX_Ellie_SuckTowardsBG9,GFX_Ellie_SuckTowardsBG9End
	;dl $DB9D80,$DBA180,GFX_Knautilus_Pose,GFX_Knautilus_PoseEnd
	;dl $DBA18E,$DBA1EE,GFX_KnautilusDoor_Pose1,GFX_KnautilusDoor_Pose1End
	;dl $DBA1FA,$DBA23A,GFX_KnautilusDoor_Pose2,GFX_KnautilusDoor_Pose2End
	;dl $DBA246,$DBA286,GFX_KnautilusDoor_Pose3,GFX_KnautilusDoor_Pose3End
	;dl $DBA292,$DBA2D2,GFX_KnautilusDoor_Pose4,GFX_KnautilusDoor_Pose4End
	;dl $DBA2DE,$DBA31E,GFX_KnautilusDoor_Pose5,GFX_KnautilusDoor_Pose5End
	;dl $DBA32A,$DBA36A,GFX_KnautilusDoor_Pose6,GFX_KnautilusDoor_Pose6End
	;dl $DBA382,$DBA782,GFX_ElectricNode_Pose1,GFX_ElectricNode_Pose1End
	;dl $DBA79E,$DBAB7E,GFX_ElectricNode_Pose2,GFX_ElectricNode_Pose2End
	;dl $DBAB98,$DBAEF8,GFX_ElectricNode_Pose3,GFX_ElectricNode_Pose3End
	;dl $DBAF12,$DBB272,GFX_ElectricNode_Pose4,GFX_ElectricNode_Pose4End
	;dl $DBB290,$DBB690,GFX_ElectricNode_Pose5,GFX_ElectricNode_Pose5End
	;dl $DBB6A8,$DBBA48,GFX_ElectricNode_Pose6,GFX_ElectricNode_Pose6End
	;dl $DBBA5E,$DBBB9E,GFX_KastleKAOSLever_Idle,GFX_KastleKAOSLever_IdleEnd
	;dl $DBBBB4,$DBBCF4,GFX_KastleKAOSLever_Retract1,GFX_KastleKAOSLever_Retract1End
	;dl $DBBD0A,$DBBE4A,GFX_KastleKAOSLever_Retract2,GFX_KastleKAOSLever_Retract2End
	;dl $DBBE62,$DBBF62,GFX_KastleKAOSLever_Retract3,GFX_KastleKAOSLever_Retract3End
	;dl $DBBF70,$DBBFD0,GFX_KRoolPropeller_Deploy1,GFX_KRoolPropeller_Deploy1End
	;dl $DBBFDE,$DBC03E,GFX_KRoolPropeller_Deploy2,GFX_KRoolPropeller_Deploy2End
	;dl $DBC04E,$DBC0CE,GFX_KRoolPropeller_Deploy3,GFX_KRoolPropeller_Deploy3End
	;dl $DBC0E0,$DBC180,GFX_KRoolPropeller_Deploy4,GFX_KRoolPropeller_Deploy4End
	;dl $DBC18E,$DBC24E,GFX_KRoolPropeller_Spin1,GFX_KRoolPropeller_Spin1End
	;dl $DBC25A,$DBC2FA,GFX_KRoolPropeller_Spin2,GFX_KRoolPropeller_Spin2End
	;dl $DBC306,$DBC3A6,GFX_KRoolPropeller_Spin3,GFX_KRoolPropeller_Spin3End
	;dl $DBC3B4,$DBC414,GFX_KRoolPropeller_Spin4,GFX_KRoolPropeller_Spin4End
	;dl $DBC420,$DBC4C0,GFX_KRoolPropeller_Spin5,GFX_KRoolPropeller_Spin5End
	;dl $DBC4CC,$DBC56C,GFX_KRoolPropeller_Spin6,GFX_KRoolPropeller_Spin6End
	;dl $DBC578,$DBC5B8,GFX_LavaSmoke_Pose1,GFX_LavaSmoke_Pose1End
	;dl $DBC5C6,$DBC626,GFX_LavaSmoke_Pose2,GFX_LavaSmoke_Pose2End
	;dl $DBC634,$DBC6F4,GFX_LavaSmoke_Pose3,GFX_LavaSmoke_Pose3End
	;dl $DBC706,$DBC866,GFX_LavaSmoke_Pose4,GFX_LavaSmoke_Pose4End
	;dl $DBC878,$DBC9D8,GFX_LavaSmoke_Pose5,GFX_LavaSmoke_Pose5End
	;dl $DBC9EC,$DBCB6C,GFX_LavaSmoke_Pose6,GFX_LavaSmoke_Pose6End
	;dl $DBCB7E,$DBCCDE,GFX_LavaSmoke_Pose7,GFX_LavaSmoke_Pose7End
	;dl $DBCCEE,$DBCE2E,GFX_LavaSmoke_Pose8,GFX_LavaSmoke_Pose8End
	;dl $DBCE40,$DBCF40,GFX_LavaSmoke_Pose9,GFX_LavaSmoke_Pose9End
	;dl $DBCF50,$DBD030,GFX_LavaSmoke_Pose10,GFX_LavaSmoke_Pose10End
	;dl $DBD040,$DBD120,GFX_LavaSmoke_Pose11,GFX_LavaSmoke_Pose11End
	;dl $DBD12C,$DBD1CC,GFX_LavaSmoke_Pose12,GFX_LavaSmoke_Pose12End
	;dl $DBD1E0,$DBD360,GFX_CollectableCog_Pose1,GFX_CollectableCog_Pose1End
	;dl $DBD372,$DBD532,GFX_CollectableCog_Pose2,GFX_CollectableCog_Pose2End
	;dl $DBD546,$DBD6C6,GFX_CollectableCog_Pose3,GFX_CollectableCog_Pose3End
	;dl $DBD6DA,$DBD85A,GFX_CollectableCog_Pose4,GFX_CollectableCog_Pose4End
	;dl $DBD866,$DBD966,GFX_CollectableCog_Pose5,GFX_CollectableCog_Pose5End
	;dl $DBD976,$DBD9F6,GFX_CollectableCog_Pose6,GFX_CollectableCog_Pose6End
	;dl $DBDA06,$DBDAE6,GFX_CollectableCog_Pose7,GFX_CollectableCog_Pose7End
	;dl $DBDAF6,$DBDC36,GFX_CollectableCog_Pose8,GFX_CollectableCog_Pose8End
	;dl $DBDC46,$DBDD26,GFX_MapKRool_Pose1,GFX_MapKRool_Pose1End
	;dl $DBDD36,$DBDE16,GFX_MapKRool_Pose2,GFX_MapKRool_Pose2End
	;dl $DBDE24,$DBDEE4,GFX_MapKRool_Pose3,GFX_MapKRool_Pose3End
	;dl $DBDEF2,$DBDFB2,GFX_MapKRool_Pose4,GFX_MapKRool_Pose4End
	;dl $DBDFC0,$DBE080,GFX_MapKRool_Pose5,GFX_MapKRool_Pose5End
	;dl $DBE08E,$DBE14E,GFX_MapKRool_Pose6,GFX_MapKRool_Pose6End
	;dl $DBE15E,$DBE23E,GFX_MapKRool_Pose7,GFX_MapKRool_Pose7End
	;dl $DBE24E,$DBE32E,GFX_MapKRool_Pose8,GFX_MapKRool_Pose8End
	;dl $DBE33E,$DBE41E,GFX_MapKRool_Pose9,GFX_MapKRool_Pose9End
	;dl $DBE428,$DBE4A8,GFX_FunkyKongDrivingBoat_Pose,GFX_FunkyKongDrivingBoat_PoseEnd
	;dl $DBE4C0,$DBE620,GFX_CrankyKongJetSkiing_Normal1,GFX_CrankyKongJetSkiing_Normal1End
	;dl $DBE638,$DBE798,GFX_CrankyKongJetSkiing_Normal2,GFX_CrankyKongJetSkiing_Normal2End
	;dl $DBE7B0,$DBE910,GFX_CrankyKongJetSkiing_Normal3,GFX_CrankyKongJetSkiing_Normal3End
	;dl $DBE92A,$DBEAAA,GFX_CrankyKongJetSkiing_Waving1,GFX_CrankyKongJetSkiing_Waving1End
	;dl $DBEAC4,$DBEC44,GFX_CrankyKongJetSkiing_Waving2,GFX_CrankyKongJetSkiing_Waving2End
	;dl $DBEC5C,$DBEDBC,GFX_CrankyKongJetSkiing_Waving3,GFX_CrankyKongJetSkiing_Waving3End
	;dl $DBEDD6,$DBEF56,GFX_CrankyKongJetSkiing_Handstand1,GFX_CrankyKongJetSkiing_Handstand1End
	;dl $DBEF70,$DBF0F0,GFX_CrankyKongJetSkiing_Handstand2,GFX_CrankyKongJetSkiing_Handstand2End
	;dl $DBF10A,$DBF28A,GFX_CrankyKongJetSkiing_Handstand3,GFX_CrankyKongJetSkiing_Handstand3End
	;dl $DBF2A2,$DBF462,GFX_CrankyKongJetSkiing_Dragged1,GFX_CrankyKongJetSkiing_Dragged1End
	;dl $DBF47A,$DBF63A,GFX_CrankyKongJetSkiing_Dragged2,GFX_CrankyKongJetSkiing_Dragged2End
	;dl $DBF656,$DBF7F6,GFX_CrankyKongJetSkiing_Dragged3,GFX_CrankyKongJetSkiing_Dragged3End
	;dl $DBF80E,$DBFA8E,GFX_FuelTank_Pose,GFX_FuelTank_PoseEnd
	;dl $DBFAAE,$DBFE0E,GFX_BananaBirdQueenHead_Pose1,GFX_BananaBirdQueenHead_Pose1End
	;dl $DC4A91,$DC4DF1,GFX_BananaBirdQueenHead_Pose2,GFX_BananaBirdQueenHead_Pose2End
	;dl $DC4E0F,$DC514F,GFX_BananaBirdQueenHead_Pose3,GFX_BananaBirdQueenHead_Pose3End
	;dl $DC516F,$DC54CF,GFX_BananaBirdQueenHead_Pose4,GFX_BananaBirdQueenHead_Pose4End
	;dl $DC54EF,$DC584F,GFX_BananaBirdQueenHead_Pose5,GFX_BananaBirdQueenHead_Pose5End
	;dl $DC586F,$DC5BCF,GFX_BananaBirdQueenHead_Pose6,GFX_BananaBirdQueenHead_Pose6End
	;dl $DC5BE5,$DC5F65,GFX_LightsOnBananaBirdQueenBarrier_Pose,GFX_LightsOnBananaBirdQueenBarrier_PoseEnd
	;dl $DC5FD5,$DC71F5,GFX_GiantBananaBirdQueenEgg_Pose,GFX_GiantBananaBirdQueenEgg_PoseEnd
	;dl $DC7201,$DC7301,GFX_KRoolsEyes_Pose1,GFX_KRoolsEyes_Pose1End
	;dl $DC730D,$DC740D,GFX_KRoolsEyes_Pose2,GFX_KRoolsEyes_Pose2End
	;dl $DC7419,$DC7519,GFX_KRoolsEyes_Pose3,GFX_KRoolsEyes_Pose3End
	;dl $DC7525,$DC75C5,GFX_EggShellPiece1_Pose1,GFX_EggShellPiece1_Pose1End
	;dl $DC75D1,$DC7671,GFX_EggShellPiece1_Pose2,GFX_EggShellPiece1_Pose2End
	;dl $DC767D,$DC771D,GFX_EggShellPiece1_Pose3,GFX_EggShellPiece1_Pose3End
	;dl $DC772F,$DC77CF,GFX_EggShellPiece1_Pose4,GFX_EggShellPiece1_Pose4End
	;dl $DC77DB,$DC787B,GFX_EggShellPiece1_Pose5,GFX_EggShellPiece1_Pose5End
	;dl $DC7887,$DC7927,GFX_EggShellPiece1_Pose6,GFX_EggShellPiece1_Pose6End
	;dl $DC7933,$DC79D3,GFX_EggShellPiece1_Pose7,GFX_EggShellPiece1_Pose7End
	;dl $DC79DF,$DC7A7F,GFX_EggShellPiece1_Pose8,GFX_EggShellPiece1_Pose8End
	;dl $DC7A89,$DC7B09,GFX_EggShellPiece2_Pose1,GFX_EggShellPiece2_Pose1End
	;dl $DC7B15,$DC7BB5,GFX_EggShellPiece2_Pose2,GFX_EggShellPiece2_Pose2End
	;dl $DC7BBF,$DC7C3F,GFX_EggShellPiece2_Pose3,GFX_EggShellPiece2_Pose3End
	;dl $DC7C4B,$DC7CEB,GFX_EggShellPiece2_Pose4,GFX_EggShellPiece2_Pose4End
	;dl $DC7CF5,$DC7D75,GFX_EggShellPiece2_Pose5,GFX_EggShellPiece2_Pose5End
	;dl $DC7D7F,$DC7DFF,GFX_EggShellPiece2_Pose6,GFX_EggShellPiece2_Pose6End
	;dl $DC7E0B,$DC7EAB,GFX_EggShellPiece2_Pose7,GFX_EggShellPiece2_Pose7End
	;dl $DC7EB7,$DC7F57,GFX_EggShellPiece2_Pose8,GFX_EggShellPiece2_Pose8End
	;dl $DC7F6F,$DC812F,GFX_Dixie_SitOnEgg1,GFX_Dixie_SitOnEgg1End
	;dl $DC8143,$DC82C3,GFX_Dixie_SitOnEgg2,GFX_Dixie_SitOnEgg2End
	;dl $DC82D7,$DC8457,GFX_Dixie_SitOnEgg3,GFX_Dixie_SitOnEgg3End
	;dl $DC846B,$DC85EB,GFX_Dixie_SitOnEgg4,GFX_Dixie_SitOnEgg4End
	;dl $DC85FF,$DC877F,GFX_Dixie_SitOnEgg5,GFX_Dixie_SitOnEgg5End
	;dl $DC8793,$DC8913,GFX_Dixie_SitOnEgg6,GFX_Dixie_SitOnEgg6End
	;dl $DC8927,$DC8AA7,GFX_Dixie_SitOnEgg7,GFX_Dixie_SitOnEgg7End
	;dl $DC8ACD,$DC8E2D,GFX_Kiddy_SitOnEgg1,GFX_Kiddy_SitOnEgg1End
	;dl $DC8E53,$DC91B3,GFX_Kiddy_SitOnEgg2,GFX_Kiddy_SitOnEgg2End
	;dl $DC91D9,$DC9539,GFX_Kiddy_SitOnEgg3,GFX_Kiddy_SitOnEgg3End
	;dl $DC955F,$DC98BF,GFX_Kiddy_SitOnEgg4,GFX_Kiddy_SitOnEgg4End
	;dl $DC98E5,$DC9C45,GFX_Kiddy_SitOnEgg5,GFX_Kiddy_SitOnEgg5End
	;dl $DC9C6B,$DC9FCB,GFX_Kiddy_SitOnEgg6,GFX_Kiddy_SitOnEgg6End
	;dl $DC9FF1,$DCA351,GFX_Kiddy_SitOnEgg7,GFX_Kiddy_SitOnEgg7End
	;dl $DCA377,$DCA6D7,GFX_Kiddy_SitOnEgg8,GFX_Kiddy_SitOnEgg8End
	;dl $DCA6F3,$DCAAD3,GFX_RocketPlatform_Pose,GFX_RocketPlatform_PoseEnd
	;dl $DCAAE7,$DCAC07,GFX_KRoolHead_LookUp1,GFX_KRoolHead_LookUp1End
	;dl $DCAC15,$DCAD35,GFX_KRoolHead_LookUp2,GFX_KRoolHead_LookUp2End
	;dl $DCAD43,$DCAE63,GFX_KRoolHead_LookUp3,GFX_KRoolHead_LookUp3End
	;dl $DCAE77,$DCAF97,GFX_KRoolHead_LookUp4,GFX_KRoolHead_LookUp4End
	;dl $DCAFAB,$DCB0CB,GFX_KRoolHead_LookUp5,GFX_KRoolHead_LookUp5End
	;dl $DCB0D9,$DCB1F9,GFX_KRoolHead_Shock1,GFX_KRoolHead_Shock1End
	;dl $DCB209,$DCB349,GFX_KRoolHead_Shock2,GFX_KRoolHead_Shock2End
	;dl $DCB359,$DCB499,GFX_KRoolHead_Shock3,GFX_KRoolHead_Shock3End
	;dl $DCB4AD,$DCB62D,GFX_MapBananaBirdQueen_FlyUp1,GFX_MapBananaBirdQueen_FlyUp1End
	;dl $DCB641,$DCB7C1,GFX_MapBananaBirdQueen_FlyUp2,GFX_MapBananaBirdQueen_FlyUp2End
	;dl $DCB7DB,$DCB9BB,GFX_MapBananaBirdQueen_FlyUp3,GFX_MapBananaBirdQueen_FlyUp3End
	;dl $DCB9CF,$DCBB4F,GFX_MapBananaBirdQueen_FlyUp4,GFX_MapBananaBirdQueen_FlyUp4End
	;dl $DCBB65,$DCBD05,GFX_MapBananaBirdQueen_FlyUp5,GFX_MapBananaBirdQueen_FlyUp5End
	;dl $DCBD1D,$DCBE7D,GFX_MapBananaBirdQueen_FlyUp6,GFX_MapBananaBirdQueen_FlyUp6End
	;dl $DCBE91,$DCC071,GFX_MapBananaBirdQueen_FlyDiagonallyUp1,GFX_MapBananaBirdQueen_FlyDiagonallyUp1End
	;dl $DCC087,$DCC227,GFX_MapBananaBirdQueen_FlyDiagonallyUp2,GFX_MapBananaBirdQueen_FlyDiagonallyUp2End
	;dl $DCC23D,$DCC43D,GFX_MapBananaBirdQueen_FlyDiagonallyUp3,GFX_MapBananaBirdQueen_FlyDiagonallyUp3End
	;dl $DCC455,$DCC615,GFX_MapBananaBirdQueen_FlyDiagonallyUp4,GFX_MapBananaBirdQueen_FlyDiagonallyUp4End
	;dl $DCC631,$DCC831,GFX_MapBananaBirdQueen_FlyDiagonallyUp5,GFX_MapBananaBirdQueen_FlyDiagonallyUp5End
	;dl $DCC84B,$DCCA2B,GFX_MapBananaBirdQueen_FlyDiagonallyUp6,GFX_MapBananaBirdQueen_FlyDiagonallyUp6End
	;dl $DCCA45,$DCCC25,GFX_MapBananaBirdQueen_FlySide1,GFX_MapBananaBirdQueen_FlySide1End
	;dl $DCCC41,$DCCE41,GFX_MapBananaBirdQueen_FlySide2,GFX_MapBananaBirdQueen_FlySide2End
	;dl $DCCE5D,$DCD05D,GFX_MapBananaBirdQueen_FlySide3,GFX_MapBananaBirdQueen_FlySide3End
	;dl $DCD073,$DCD273,GFX_MapBananaBirdQueen_FlySide4,GFX_MapBananaBirdQueen_FlySide4End
	;dl $DCD289,$DCD489,GFX_MapBananaBirdQueen_FlySide5,GFX_MapBananaBirdQueen_FlySide5End
	;dl $DCD4A5,$DCD6A5,GFX_MapBananaBirdQueen_FlySide6,GFX_MapBananaBirdQueen_FlySide6End
	;dl $DCD6BD,$DCD87D,GFX_MapBananaBirdQueen_FlyDiagonallyDown1,GFX_MapBananaBirdQueen_FlyDiagonallyDown1End
	;dl $DCD895,$DCDAB5,GFX_MapBananaBirdQueen_FlyDiagonallyDown2,GFX_MapBananaBirdQueen_FlyDiagonallyDown2End
	;dl $DCDACB,$DCDCCB,GFX_MapBananaBirdQueen_FlyDiagonallyDown3,GFX_MapBananaBirdQueen_FlyDiagonallyDown3End
	;dl $DCDCDD,$DCDE9D,GFX_MapBananaBirdQueen_FlyDiagonallyDown4,GFX_MapBananaBirdQueen_FlyDiagonallyDown4End
	;dl $DCDEB3,$DCE0B3,GFX_MapBananaBirdQueen_FlyDiagonallyDown5,GFX_MapBananaBirdQueen_FlyDiagonallyDown5End
	;dl $DCE0CB,$DCE2EB,GFX_MapBananaBirdQueen_FlyDiagonallyDown6,GFX_MapBananaBirdQueen_FlyDiagonallyDown6End
	;dl $DCE303,$DCE523,GFX_MapBananaBirdQueen_FlyDown1,GFX_MapBananaBirdQueen_FlyDown1End
	;dl $DCE539,$DCE739,GFX_MapBananaBirdQueen_FlyDown2,GFX_MapBananaBirdQueen_FlyDown2End
	;dl $DCE74F,$DCE94F,GFX_MapBananaBirdQueen_FlyDown3,GFX_MapBananaBirdQueen_FlyDown3End
	;dl $DCE965,$DCEB05,GFX_MapBananaBirdQueen_FlyDown4,GFX_MapBananaBirdQueen_FlyDown4End
	;dl $DCEB1B,$DCED1B,GFX_MapBananaBirdQueen_FlyDown5,GFX_MapBananaBirdQueen_FlyDown5End
	;dl $DCED37,$DCEF97,GFX_MapBananaBirdQueen_FlyDown6,GFX_MapBananaBirdQueen_FlyDown6End
	;dl $DCEFB1,$DCF311,GFX_SwankyKongsBarrelInEnding_Pose,GFX_SwankyKongsBarrelInEnding_PoseEnd
	;dl $DCF31B,$DCF33B,GFX_CheckpointStars_Pose1,GFX_CheckpointStars_Pose1End
	;dl $DCF345,$DCF365,GFX_CheckpointStars_Pose2,GFX_CheckpointStars_Pose2End
	;dl $DCF373,$DCF3D3,GFX_CheckpointStars_Pose3,GFX_CheckpointStars_Pose3End
	;dl $DCF3E1,$DCF441,GFX_CheckpointStars_Pose4,GFX_CheckpointStars_Pose4End
	;dl $DCF459,$DCF559,GFX_CheckpointStars_Pose5,GFX_CheckpointStars_Pose5End
	;dl $DCF569,$DCF649,GFX_CheckpointStars_Pose6,GFX_CheckpointStars_Pose6End
	;dl $DCF65D,$DCF71D,GFX_CheckpointStars_Pose7,GFX_CheckpointStars_Pose7End
	;dl $DCF731,$DCF7F1,GFX_CheckpointStars_Pose8,GFX_CheckpointStars_Pose8End
	;dl $DCF809,$DCF909,GFX_CheckpointStars_Pose9,GFX_CheckpointStars_Pose9End
	;dl $DCF921,$DCFA21,GFX_CheckpointStars_Pose10,GFX_CheckpointStars_Pose10End
	;dl $DCFA39,$DCFB39,GFX_CheckpointStars_Pose11,GFX_CheckpointStars_Pose11End
	;dl $DCFB51,$DCFC51,GFX_CheckpointStars_Pose12,GFX_CheckpointStars_Pose12End
	;dl $DCFC6B,$DCFD8B,GFX_CheckpointStars_Pose13,GFX_CheckpointStars_Pose13End
	;dl $DCFD9F,$DCFE5F,GFX_CheckpointStars_Pose14,GFX_CheckpointStars_Pose14End
	;dl $DCFE6D,$DCFECD,GFX_CheckpointStars_Pose15,GFX_CheckpointStars_Pose15End
	;dl $DD035D,$DD091D,GFX_LevelEndFlagpole_Pose,GFX_LevelEndFlagpole_PoseEnd
	;dl $DD092B,$DD09EB,GFX_LevelEndFlag_Rest,GFX_LevelEndFlag_RestEnd
	;dl $DD09FF,$DD0B1F,GFX_LevelEndFlag_BeginRaise,GFX_LevelEndFlag_BeginRaiseEnd
	;dl $DD0B31,$DD0C31,GFX_LimpLevelEndFlag_Rest,GFX_LimpLevelEndFlag_RestEnd
	;dl $DD0C45,$DD0D65,GFX_LimpLevelEndFlag_BeginRaise,GFX_LimpLevelEndFlag_BeginRaiseEnd
	;dl $DD0D7D,$DD0F3D,GFX_LevelEndFlag_Flap1,GFX_LevelEndFlag_Flap1End
	;dl $DD0F53,$DD10F3,GFX_LevelEndFlag_Flap2,GFX_LevelEndFlag_Flap2End
	;dl $DD1109,$DD12A9,GFX_LevelEndFlag_Flap3,GFX_LevelEndFlag_Flap3End
	;dl $DD12BF,$DD145F,GFX_LevelEndFlag_Flap4,GFX_LevelEndFlag_Flap4End
	;dl $DD1473,$DD15F3,GFX_LevelEndFlag_Flap5,GFX_LevelEndFlag_Flap5End
	;dl $DD1609,$DD17A9,GFX_LevelEndFlag_Flap6,GFX_LevelEndFlag_Flap6End
	;dl $DD17BF,$DD195F,GFX_LevelEndFlag_Flap7,GFX_LevelEndFlag_Flap7End
	;dl $DD1975,$DD1B15,GFX_LevelEndFlag_Flap8,GFX_LevelEndFlag_Flap8End
	;dl $DD1B2B,$DD1C6B,GFX_LimpLevelEndFlag_Flap1,GFX_LimpLevelEndFlag_Flap1End
	;dl $DD1C81,$DD1DC1,GFX_LimpLevelEndFlag_Flap2,GFX_LimpLevelEndFlag_Flap2End
	;dl $DD1DD9,$DD1F39,GFX_LimpLevelEndFlag_Flap3,GFX_LimpLevelEndFlag_Flap3End
	;dl $DD1F53,$DD20D3,GFX_LimpLevelEndFlag_Flap4,GFX_LimpLevelEndFlag_Flap4End
	;dl $DD20ED,$DD226D,GFX_LimpLevelEndFlag_Flap5,GFX_LimpLevelEndFlag_Flap5End
	;dl $DD2287,$DD2407,GFX_LimpLevelEndFlag_Flap6,GFX_LimpLevelEndFlag_Flap6End
	;dl $DD241F,$DD257F,GFX_LimpLevelEndFlag_Flap7,GFX_LimpLevelEndFlag_Flap7End
	;dl $DD2597,$DD26F7,GFX_LimpLevelEndFlag_Flap8,GFX_LimpLevelEndFlag_Flap8End
	;dl $DD2703,$DD2803,GFX_UnknownCircles_Pose1,GFX_UnknownCircles_Pose1End
	;dl $DD2813,$DD2953,GFX_UnknownCircles_Pose2,GFX_UnknownCircles_Pose2End
	;dl $DD2963,$DD2AA3,GFX_UnknownCircles_Pose3,GFX_UnknownCircles_Pose3End
	;dl $DD2AB3,$DD2BF3,GFX_UnknownCircles_Pose4,GFX_UnknownCircles_Pose4End
	;dl $DD2C03,$DD2D43,GFX_UnknownCircles_Pose5,GFX_UnknownCircles_Pose5End
	;dl $DD2D53,$DD2E93,GFX_UnknownCircles_Pose6,GFX_UnknownCircles_Pose6End
	;dl $DD2EA3,$DD2FE3,GFX_UnknownCircles_Pose7,GFX_UnknownCircles_Pose7End
	;dl $DD2FFF,$DD32BF,GFX_BGKRool_Idle1,GFX_BGKRool_Idle1End
	;dl $DD32DD,$DD35BD,GFX_BGKRool_Idle2,GFX_BGKRool_Idle2End
	;dl $DD35DB,$DD38BB,GFX_BGKRool_Idle3,GFX_BGKRool_Idle3End
	;dl $DD38D9,$DD3BB9,GFX_BGKRool_Idle4,GFX_BGKRool_Idle4End
	;dl $DD3BD7,$DD3EB7,GFX_BGKRool_Idle5,GFX_BGKRool_Idle5End
	;dl $DD3ED5,$DD41B5,GFX_BGKRool_Idle6,GFX_BGKRool_Idle6End
	;dl $DD41D3,$DD4453,GFX_BGKRool_Turn1,GFX_BGKRool_Turn1End
	;dl $DD446F,$DD46CF,GFX_BGKRool_Turn2,GFX_BGKRool_Turn2End
	;dl $DD46EB,$DD49AB,GFX_BGKRool_PressRemote1,GFX_BGKRool_PressRemote1End
	;dl $DD49C5,$DD4C65,GFX_BGKRool_PressRemote2,GFX_BGKRool_PressRemote2End
	;dl $DD4C7F,$DD4F1F,GFX_BGKRool_PressRemote3,GFX_BGKRool_PressRemote3End
	;dl $DD4F39,$DD51D9,GFX_BGKRool_PressRemote4,GFX_BGKRool_PressRemote4End
	;dl $DD51F7,$DD54D7,GFX_BGKRool_PressRemote5,GFX_BGKRool_PressRemote5End
	;dl $DD54F3,$DD57B3,GFX_BGKRool_PressRemote6,GFX_BGKRool_PressRemote6End
	;dl $DD57CD,$DD5A6D,GFX_BGKRool_PressRemote7,GFX_BGKRool_PressRemote7End
	;dl $DD5A89,$DD5DA9,GFX_BGKRool_Hurt1,GFX_BGKRool_Hurt1End
	;dl $DD5DC3,$DD6123,GFX_BGKRool_Hurt2,GFX_BGKRool_Hurt2End
	;dl $DD613F,$DD64BF,GFX_BGKRool_Hurt3,GFX_BGKRool_Hurt3End
	;dl $DD64D9,$DD6899,GFX_BGKRool_Hurt4,GFX_BGKRool_Hurt4End
	;dl $DD68B7,$DD6B37,GFX_BGKRool_Dead1,GFX_BGKRool_Dead1End
	;dl $DD6B53,$DD6DB3,GFX_BGKRool_Dead2,GFX_BGKRool_Dead2End
	;dl $DD6DD3,$DD7073,GFX_BGKRool_Dead3,GFX_BGKRool_Dead3End
	;dl $DD708F,$DD72EF,GFX_BGKRool_Dead4,GFX_BGKRool_Dead4End
	;dl $DD730D,$DD758D,GFX_BGKRool_Dead5,GFX_BGKRool_Dead5End
	;dl $DD759B,$DD75FB,GFX_BGKRoolPropeller_Spin1,GFX_BGKRoolPropeller_Spin1End
	;dl $DD7609,$DD7669,GFX_BGKRoolPropeller_Spin2,GFX_BGKRoolPropeller_Spin2End
	;dl $DD7675,$DD76B5,GFX_BGKRoolPropeller_Spin3,GFX_BGKRoolPropeller_Spin3End
	;dl $DD76C1,$DD7701,GFX_BGKRoolPropeller_Spin4,GFX_BGKRoolPropeller_Spin4End
	;dl $DD770D,$DD774D,GFX_BGKRoolPropeller_Spin5,GFX_BGKRoolPropeller_Spin5End
	;dl $DD775B,$DD77BB,GFX_BGKRoolPropeller_Spin6,GFX_BGKRoolPropeller_Spin6End
	;dl $DD77F7,$DD8077,GFX_JapaneseSubtitleSign_Pose,GFX_JapaneseSubtitleSign_PoseEnd
	;dl $DD80B5,$DD8895,GFX_KRool_Flailing1,GFX_KRool_Flailing1End
	;dl $DD88CF,$DD906F,GFX_KRool_Flailing2,GFX_KRool_Flailing2End
	;dl $DD90AD,$DD98ED,GFX_KRool_Flailing3,GFX_KRool_Flailing3End
	;dl $DD9927,$DDA127,GFX_KRool_Flailing4,GFX_KRool_Flailing4End
	;dl $DDA165,$DDA945,GFX_KRool_Flailing5,GFX_KRool_Flailing5End
	;dl $DDA97B,$DDB0DB,GFX_KRool_Talking1,GFX_KRool_Talking1End
	;dl $DDB115,$DDB8B5,GFX_KRool_Talking2,GFX_KRool_Talking2End
	;dl $DDB8F3,$DDC0D3,GFX_KRool_Talking3,GFX_KRool_Talking3End
	;dl $DDC111,$DDC8F1,GFX_KRool_Talking4,GFX_KRool_Talking4End
	;dl $DDC92F,$DDD10F,GFX_KRool_Talking5,GFX_KRool_Talking5End
	;dl $DDD14F,$DDD94F,GFX_KRool_Talking6,GFX_KRool_Talking6End
	;dl $DDD983,$DDE123,GFX_KRool_Jump1,GFX_KRool_Jump1End
	;dl $DDE15B,$DDE8DB,GFX_KRool_Jump2,GFX_KRool_Jump2End
	;dl $DDE917,$DDF077,GFX_KRool_Exposed1,GFX_KRool_Exposed1End
	;dl $DDF0B3,$DDF873,GFX_KRool_Exposed2,GFX_KRool_Exposed2End
	;dl $DE1BFE,$DE23BE,GFX_KRool_Exposed3,GFX_KRool_Exposed3End
	;dl $DE23FA,$DE2BBA,GFX_KRool_Exposed4,GFX_KRool_Exposed4End
	;dl $DE2BE2,$DE2DE2,GFX_CraneThatCarriesKAOS_Pose,GFX_CraneThatCarriesKAOS_PoseEnd
	;dl $DE2E0E,$DE34CE,GFX_KRoolCurtain_Pose,GFX_KRoolCurtain_PoseEnd
	;dl $DE34DA,$DE357A,GFX_SteelKeg_InBG,GFX_SteelKeg_InBGEnd
	;dl $DE3588,$DE3648,GFX_KnautilusFireballShooter_Pose1,GFX_KnautilusFireballShooter_Pose1End
	;dl $DE3656,$DE3716,GFX_KnautilusFireballShooter_Pose2,GFX_KnautilusFireballShooter_Pose2End
	;dl $DE3724,$DE37E4,GFX_KnautilusFireballShooter_Pose3,GFX_KnautilusFireballShooter_Pose3End
	;dl $DE37F2,$DE38B2,GFX_KnautilusFireballShooter_Pose4,GFX_KnautilusFireballShooter_Pose4End
	;dl $DE38CA,$DE3BAA,GFX_CeilingVacuumEffect_Pose1,GFX_CeilingVacuumEffect_Pose1End
	;dl $DE3BC6,$DE3EE6,GFX_CeilingVacuumEffect_Pose2,GFX_CeilingVacuumEffect_Pose2End
	;dl $DE3F00,$DE4140,GFX_CeilingVacuumEffect_Pose3,GFX_CeilingVacuumEffect_Pose3End
	;dl $DE4156,$DE4476,GFX_CeilingVacuumEffect_Pose4,GFX_CeilingVacuumEffect_Pose4End
	;dl $DE448C,$DE46EC,GFX_CeilingVacuumEffect_Pose5,GFX_CeilingVacuumEffect_Pose5End
	;dl $DE4702,$DE4962,GFX_CeilingVacuumEffect_Pose6,GFX_CeilingVacuumEffect_Pose6End
	;dl $DE4976,$DE4B56,GFX_CeilingVacuumEffect_Pose7,GFX_CeilingVacuumEffect_Pose7End
	;dl $DE4B6A,$DE4D4A,GFX_CeilingVacuumEffect_Pose8,GFX_CeilingVacuumEffect_Pose8End
	;dl $DE4D68,$DE5048,GFX_SteelKeg_Electrified1,GFX_SteelKeg_Electrified1End
	;dl $DE5064,$DE5384,GFX_SteelKeg_Electrified2,GFX_SteelKeg_Electrified2End
	;dl $DE53A0,$DE56C0,GFX_SteelKeg_Electrified3,GFX_SteelKeg_Electrified3End
	;dl $DE56DC,$DE59FC,GFX_SteelKeg_Electrified4,GFX_SteelKeg_Electrified4End
	;dl $DE5A1C,$DE5D1C,GFX_SteelKeg_Electrified5,GFX_SteelKeg_Electrified5End
	;dl $DE5D3A,$DE607A,GFX_SteelKeg_Electrified6,GFX_SteelKeg_Electrified6End
	;dl $DE6094,$DE6394,GFX_SteelKeg_Electrified7,GFX_SteelKeg_Electrified7End
	;dl $DE63B0,$DE66D0,GFX_SteelKeg_Electrified8,GFX_SteelKeg_Electrified8End
	;dl $DE66EA,$DE698A,GFX_DonkeyKong_Talking1,GFX_DonkeyKong_Talking1End
	;dl $DE69A6,$DE6C66,GFX_DonkeyKong_Talking2,GFX_DonkeyKong_Talking2End
	;dl $DE6C88,$DE6F48,GFX_DonkeyKong_Talking3,GFX_DonkeyKong_Talking3End
	;dl $DE6F68,$DE7268,GFX_DonkeyKong_Talking4,GFX_DonkeyKong_Talking4End
	;dl $DE7282,$DE7522,GFX_DonkeyKong_Talking5,GFX_DonkeyKong_Talking5End
	;dl $DE753C,$DE77DC,GFX_DonkeyKong_Talking6,GFX_DonkeyKong_Talking6End
	;dl $DE77F6,$DE7A96,GFX_DonkeyKong_Talking7,GFX_DonkeyKong_Talking7End
	;dl $DE7AB0,$DE7D50,GFX_DonkeyKong_Jump1,GFX_DonkeyKong_Jump1End
	;dl $DE7D66,$DE7FC6,GFX_DonkeyKong_Jump2,GFX_DonkeyKong_Jump2End
	;dl $DE7FE2,$DE82A2,GFX_DonkeyKong_Jump3,GFX_DonkeyKong_Jump3End
	;dl $DE82BC,$DE855C,GFX_DonkeyKong_Jump4,GFX_DonkeyKong_Jump4End
	;dl $DE857A,$DE885A,GFX_DonkeyKong_Jump5,GFX_DonkeyKong_Jump5End
	;dl $DE8870,$DE8B30,GFX_DonkeyKong_Jump6,GFX_DonkeyKong_Jump6End
	;dl $DE8B4C,$DE8E6C,GFX_DonkeyKong_Jump7,GFX_DonkeyKong_Jump7End
	;dl $DE8E80,$DE9060,GFX_DiddyKong_Jump1,GFX_DiddyKong_Jump1End
	;dl $DE9074,$DE9254,GFX_DiddyKong_Jump2,GFX_DiddyKong_Jump2End
	;dl $DE926E,$DE944E,GFX_DiddyKong_Jump3,GFX_DiddyKong_Jump3End
	;dl $DE946C,$DE968C,GFX_DiddyKong_Jump4,GFX_DiddyKong_Jump4End
	;dl $DE96A6,$DE98E6,GFX_DiddyKong_Jump5,GFX_DiddyKong_Jump5End
	;dl $DE9908,$DE9B68,GFX_DiddyKong_Jump6,GFX_DiddyKong_Jump6End
	;dl $DE9B88,$DE9DC8,GFX_DiddyKong_Jump7,GFX_DiddyKong_Jump7End
	;dl $DE9DE4,$DEA044,GFX_DiddyKong_Jump8,GFX_DiddyKong_Jump8End
	;dl $DEA060,$DEA260,GFX_DiddyKong_Talking1,GFX_DiddyKong_Talking1End
	;dl $DEA27C,$DEA47C,GFX_DiddyKong_Talking2,GFX_DiddyKong_Talking2End
	;dl $DEA498,$DEA698,GFX_DiddyKong_Talking3,GFX_DiddyKong_Talking3End
	;dl $DEA6B6,$DEA8D6,GFX_DiddyKong_Talking4,GFX_DiddyKong_Talking4End
	;dl $DEA8F0,$DEAAD0,GFX_DiddyKong_Talking5,GFX_DiddyKong_Talking5End
	;dl $DEAAEC,$DEACEC,GFX_DiddyKong_Talking6,GFX_DiddyKong_Talking6End
	;dl $DEAD0A,$DEB04A,GFX_CrankyKong_Walking1,GFX_CrankyKong_Walking1End
	;dl $DEB068,$DEB3A8,GFX_CrankyKong_Walking2,GFX_CrankyKong_Walking2End
	;dl $DEB3C8,$DEB728,GFX_CrankyKong_Walking3,GFX_CrankyKong_Walking3End
	;dl $DEB74E,$DEBAAE,GFX_CrankyKong_Walking4,GFX_CrankyKong_Walking4End
	;dl $DEBAD4,$DEBE34,GFX_CrankyKong_Walking5,GFX_CrankyKong_Walking5End
	;dl $DEBE5A,$DEC1BA,GFX_CrankyKong_Walking6,GFX_CrankyKong_Walking6End
	;dl $DEC1DE,$DEC51E,GFX_CrankyKong_Walking7,GFX_CrankyKong_Walking7End
	;dl $DEC540,$DEC8C0,GFX_CrankyKong_Walking8,GFX_CrankyKong_Walking8End
	;dl $DEC8DC,$DECBFC,GFX_CrankyKong_TurnToFaceAwayFromCamera,GFX_CrankyKong_TurnToFaceAwayFromCameraEnd
	;dl $DECC1A,$DECF5A,GFX_CrankyKong_TurnTowardsCameraAndSmile1,GFX_CrankyKong_TurnTowardsCameraAndSmile1End
	;dl $DECF7A,$DED2DA,GFX_CrankyKong_TurnTowardsCameraAndSmile2,GFX_CrankyKong_TurnTowardsCameraAndSmile2End
	;dl $DED2FA,$DED65A,GFX_CrankyKong_TurnTowardsCameraAndSmile3,GFX_CrankyKong_TurnTowardsCameraAndSmile3End
	;dl $DED67C,$DED9FC,GFX_CrankyKong_TurnTowardsCameraAndSmile4,GFX_CrankyKong_TurnTowardsCameraAndSmile4End
	;dl $DEDA20,$DEDDC0,GFX_CrankyKong_TurnTowardsCameraAndSmile5,GFX_CrankyKong_TurnTowardsCameraAndSmile5End
	;dl $DEDDDE,$DEE11E,GFX_CrankyKong_TurnTowardsCameraAndSmile6,GFX_CrankyKong_TurnTowardsCameraAndSmile6End
	;dl $DEE138,$DEE438,GFX_CrankyKong_TurnTowardsCameraAndSmile7,GFX_CrankyKong_TurnTowardsCameraAndSmile7End
	;dl $DEE452,$DEE752,GFX_CrankyKong_TurnTowardsCameraAndSmile8,GFX_CrankyKong_TurnTowardsCameraAndSmile8End
	;dl $DEE76C,$DEEA6C,GFX_CrankyKong_TurnTowardsCameraAndSmile9,GFX_CrankyKong_TurnTowardsCameraAndSmile9End
	;dl $DEEA88,$DEEDA8,GFX_CrankyKong_Throw1,GFX_CrankyKong_Throw1End
	;dl $DEEDBE,$DEF07E,GFX_CrankyKong_Throw2,GFX_CrankyKong_Throw2End
	;dl $DEF094,$DEF354,GFX_CrankyKong_Throw3,GFX_CrankyKong_Throw3End
	;dl $DEF36A,$DEF62A,GFX_CrankyKong_Throw4,GFX_CrankyKong_Throw4End
	;dl $DEF640,$DEF900,GFX_CrankyKong_Throw5,GFX_CrankyKong_Throw5End
	;dl $DEF916,$DEFBD6,GFX_CrankyKong_Throw6,GFX_CrankyKong_Throw6End
	;dl $DEFBF4,$DEFED4,GFX_CrankyKong_Throw7,GFX_CrankyKong_Throw7End
	;dl $DF0DBC,$DF0FDC,GFX_CrankyKong_Throw8,GFX_CrankyKong_Throw8End
	;dl $DF0FF2,$DF11F2,GFX_CrankyKong_Throw9,GFX_CrankyKong_Throw9End
	;dl $DF120C,$DF14AC,GFX_CrankyKong_Throw10,GFX_CrankyKong_Throw10End
	;dl $DF14CE,$DF17EE,GFX_CrankyKong_Throw11,GFX_CrankyKong_Throw11End
	;dl $DF180A,$DF1B2A,GFX_CrankyKong_Idle1,GFX_CrankyKong_Idle1End
	;dl $DF1B46,$DF1E66,GFX_CrankyKong_Idle2,GFX_CrankyKong_Idle2End
	;dl $DF1E86,$DF2186,GFX_CrankyKong_Idle3,GFX_CrankyKong_Idle3End
	;dl $DF21A4,$DF2484,GFX_CrankyKong_Idle4,GFX_CrankyKong_Idle4End
	;dl $DF24A0,$DF2760,GFX_CrankyKong_PutOnAndShowGlasses1,GFX_CrankyKong_PutOnAndShowGlasses1End
	;dl $DF277E,$DF2A5E,GFX_CrankyKong_PutOnAndShowGlasses2,GFX_CrankyKong_PutOnAndShowGlasses2End
	;dl $DF2A7C,$DF2D5C,GFX_CrankyKong_PutOnAndShowGlasses3,GFX_CrankyKong_PutOnAndShowGlasses3End
	;dl $DF2D78,$DF3098,GFX_CrankyKong_PutOnAndShowGlasses4,GFX_CrankyKong_PutOnAndShowGlasses4End
	;dl $DF30B8,$DF33B8,GFX_CrankyKong_PutOnAndShowGlasses5,GFX_CrankyKong_PutOnAndShowGlasses5End
	;dl $DF33D8,$DF36D8,GFX_CrankyKong_PutOnAndShowGlasses6,GFX_CrankyKong_PutOnAndShowGlasses6End
	;dl $DF36FA,$DF3A1A,GFX_CrankyKong_PutOnAndShowGlasses7,GFX_CrankyKong_PutOnAndShowGlasses7End
	;dl $DF3A38,$DF3D78,GFX_CrankyKong_PutOnAndShowGlasses8,GFX_CrankyKong_PutOnAndShowGlasses8End
	;dl $DF3D9A,$DF411A,GFX_CrankyKong_PutOnAndShowGlasses9,GFX_CrankyKong_PutOnAndShowGlasses9End
	;dl $DF413C,$DF44BC,GFX_CrankyKong_PutOnAndShowGlasses10,GFX_CrankyKong_PutOnAndShowGlasses10End
	;dl $DF44DA,$DF481A,GFX_CrankyKong_HoldingTheEndSign1,GFX_CrankyKong_HoldingTheEndSign1End
	;dl $DF4836,$DF4B56,GFX_CrankyKong_HoldingTheEndSign2,GFX_CrankyKong_HoldingTheEndSign2End
	;dl $DF4B74,$DF4EB4,GFX_CrankyKong_HoldingTheEndSign3,GFX_CrankyKong_HoldingTheEndSign3End
	;dl $DF4ED0,$DF51F0,GFX_CrankyKong_HoldingTheEndSign4,GFX_CrankyKong_HoldingTheEndSign4End
	;dl $DF5214,$DF5554,GFX_CrankyKong_HoldingTheEndSign5,GFX_CrankyKong_HoldingTheEndSign5End
	;dl $DF5578,$DF58B8,GFX_CrankyKong_HoldingTheEndSign6,GFX_CrankyKong_HoldingTheEndSign6End
	;dl $DF58DE,$DF5C3E,GFX_CrankyKong_HoldingTheEndSign7,GFX_CrankyKong_HoldingTheEndSign7End
	;dl $DF5C64,$DF5FC4,GFX_CrankyKong_HoldingTheEndSign8,GFX_CrankyKong_HoldingTheEndSign8End
	;dl $DF5FEE,$DF668E,GFX_TheEndSign_Pose,GFX_TheEndSign_PoseEnd
	;dl $DF669E,$DF67DE,GFX_UnknownObject_Pose,GFX_UnknownObject_PoseEnd
	;dl $DF67EE,$DF692E,GFX_SquirtsEyeLids_Pose1,GFX_SquirtsEyeLids_Pose1End
	;dl $DF6940,$DF6A40,GFX_SquirtsEyeLids_Pose2,GFX_SquirtsEyeLids_Pose2End
	;dl $DF6A52,$DF6B52,GFX_SquirtsEyeLids_Pose3,GFX_SquirtsEyeLids_Pose3End
	;dl $DF6B64,$DF6C64,GFX_SquirtsEyeLids_Pose4,GFX_SquirtsEyeLids_Pose4End
	;dl $DF6C72,$DF6D32,GFX_SquirtsEyeLids_Pose5,GFX_SquirtsEyeLids_Pose5End
	;dl $DF6D3E,$DF6DDE,GFX_SquirtsEyeLids_Pose6,GFX_SquirtsEyeLids_Pose6End
	;dl $DF6DEA,$DF6E8A,GFX_SquirtsEyeLids_Pose7,GFX_SquirtsEyeLids_Pose7End
	;dl $DF6E96,$DF6ED6,GFX_SquirtsEyeLids_Pose8,GFX_SquirtsEyeLids_Pose8End
	;dl $DF6EE6,$DF7026,GFX_SquirtsMouth_Pose1,GFX_SquirtsMouth_Pose1End
	;dl $DF7032,$DF70D2,GFX_SquirtsMouth_Pose2,GFX_SquirtsMouth_Pose2End
	;dl $DF70DE,$DF717E,GFX_SquirtsMouth_Pose3,GFX_SquirtsMouth_Pose3End
	;dl $DF718E,$DF72CE,GFX_SquirtsMouth_Pose4,GFX_SquirtsMouth_Pose4End
	;dl $DF72DA,$DF73DA,GFX_SquirtsMouth_Pose5,GFX_SquirtsMouth_Pose5End
	;dl $DF73E8,$DF74A8,GFX_SquirtsMouth_Pose6,GFX_SquirtsMouth_Pose6End
	;dl $DF74B2,$DF7532,GFX_SquirtsEyeball_Pose,GFX_SquirtsEyeball_PoseEnd
	;dl $DF753C,$DF755C,GFX_SquirtsPupil_Pose,GFX_SquirtsPupil_PoseEnd
	;dl $DF7578,$DF7838,GFX_KarateCrankyTrophy_Rotate1,GFX_KarateCrankyTrophy_Rotate1End
	;dl $DF785C,$DF7B3C,GFX_KarateCrankyTrophy_Rotate2,GFX_KarateCrankyTrophy_Rotate2End
	;dl $DF7B60,$DF7E40,GFX_KarateCrankyTrophy_Rotate3,GFX_KarateCrankyTrophy_Rotate3End
	;dl $DF7E64,$DF8144,GFX_KarateCrankyTrophy_Rotate4,GFX_KarateCrankyTrophy_Rotate4End
	;dl $DF8168,$DF8448,GFX_KarateCrankyTrophy_Rotate5,GFX_KarateCrankyTrophy_Rotate5End
	;dl $DF8468,$DF8768,GFX_KarateCrankyTrophy_Rotate6,GFX_KarateCrankyTrophy_Rotate6End
	;dl $DF8782,$DF8A22,GFX_KarateCrankyTrophy_Rotate7,GFX_KarateCrankyTrophy_Rotate7End
	;dl $DF8A3A,$DF8CBA,GFX_KarateCrankyTrophy_Rotate8,GFX_KarateCrankyTrophy_Rotate8End
	;dl $DF8CD4,$DF8F74,GFX_KarateCrankyTrophy_Rotate9,GFX_KarateCrankyTrophy_Rotate9End
	;dl $DF8F92,$DF9272,GFX_KarateCrankyTrophy_Rotate10,GFX_KarateCrankyTrophy_Rotate10End
	;dl $DF9292,$DF9592,GFX_KarateCrankyTrophy_Rotate11,GFX_KarateCrankyTrophy_Rotate11End
	;dl $DF95B6,$DF9896,GFX_KarateCrankyTrophy_Rotate12,GFX_KarateCrankyTrophy_Rotate12End
	;dl $DF98BA,$DF9B9A,GFX_KarateCrankyTrophy_Rotate13,GFX_KarateCrankyTrophy_Rotate13End
	;dl $DF9BBA,$DF9EBA,GFX_KarateCrankyTrophy_Rotate14,GFX_KarateCrankyTrophy_Rotate14End
	;dl $DF9ED4,$DFA174,GFX_KarateCrankyTrophy_Rotate15,GFX_KarateCrankyTrophy_Rotate15End
	;dl $DFA18C,$DFA40C,GFX_KarateCrankyTrophy_Rotate16,GFX_KarateCrankyTrophy_Rotate16End
	;dl $DFA424,$DFA644,GFX_TrophyPedastal_Pose1,GFX_TrophyPedastal_Pose1End
	;dl $DFA65C,$DFA87C,GFX_TrophyPedastal_Pose2,GFX_TrophyPedastal_Pose2End
	;dl $DFA894,$DFAAB4,GFX_TrophyPedastal_Pose3,GFX_TrophyPedastal_Pose3End
	;dl $DFAACC,$DFACEC,GFX_TrophyPedastal_Pose4,GFX_TrophyPedastal_Pose4End
	;dl $DFAD06,$DFB006,GFX_KarateCrankyTrophy_Punch1,GFX_KarateCrankyTrophy_Punch1End
	;dl $DFB01C,$DFB2DC,GFX_KarateCrankyTrophy_Punch2,GFX_KarateCrankyTrophy_Punch2End
	;dl $DFB2F2,$DFB5B2,GFX_KarateCrankyTrophy_Punch3,GFX_KarateCrankyTrophy_Punch3End
	;dl $DFB5CE,$DFB8EE,GFX_KarateCrankyTrophy_Punch4,GFX_KarateCrankyTrophy_Punch4End
	;dl $DFB90E,$DFBC6E,GFX_KarateCrankyTrophy_Punch5,GFX_KarateCrankyTrophy_Punch5End
	;dl $DFBC90,$DFC010,GFX_KarateCrankyTrophy_Punch6,GFX_KarateCrankyTrophy_Punch6End
	;dl $DFC02E,$DFC36E,GFX_KarateCrankyTrophy_Punch7,GFX_KarateCrankyTrophy_Punch7End
	;dl $DFC38E,$DFC6EE,GFX_KarateCrankyTrophy_Punch8,GFX_KarateCrankyTrophy_Punch8End
	;dl $DFC70A,$DFCA2A,GFX_KarateCrankyTrophy_Punch9,GFX_KarateCrankyTrophy_Punch9End
	;dl $DFCA4A,$DFCDAA,GFX_KarateCrankyTrophy_Punch10,GFX_KarateCrankyTrophy_Punch10End
	;dl $DFCDCA,$DFD12A,GFX_KarateCrankyTrophy_Kick1,GFX_KarateCrankyTrophy_Kick1End
	;dl $DFD14C,$DFD4CC,GFX_KarateCrankyTrophy_Kick2,GFX_KarateCrankyTrophy_Kick2End
	;dl $DFD4EC,$DFD8AC,GFX_KarateCrankyTrophy_Kick3,GFX_KarateCrankyTrophy_Kick3End
	;dl $DFD8CC,$DFDC8C,GFX_KarateCrankyTrophy_Kick4,GFX_KarateCrankyTrophy_Kick4End
	;dl $DFDCA4,$DFDFE4,GFX_KarateCrankyTrophy_Kick5,GFX_KarateCrankyTrophy_Kick5End
	;dl $DFE008,$DFE2E8,GFX_KarateCrankyTrophy_Kick6,GFX_KarateCrankyTrophy_Kick6End
	;dl $DFE30A,$DFE5CA,GFX_KarateCrankyTrophy_Kick7,GFX_KarateCrankyTrophy_Kick7End
	;dl $DFE5E0,$DFE720,GFX_ElectricSparkBall_Pose1,GFX_ElectricSparkBall_Pose1End
	;dl $DFE734,$DFE8B4,GFX_ElectricSparkBall_Pose2,GFX_ElectricSparkBall_Pose2End
	;dl $DFE8C6,$DFEA26,GFX_ElectricSparkBall_Pose3,GFX_ElectricSparkBall_Pose3End
	;dl $DFEA38,$DFEB98,GFX_ElectricSparkBall_Pose4,GFX_ElectricSparkBall_Pose4End
	;dl $DFEBAA,$DFED0A,GFX_ElectricSparkBall_Pose5,GFX_ElectricSparkBall_Pose5End
	;dl $DFED1C,$DFEE7C,GFX_ElectricSparkBall_Pose6,GFX_ElectricSparkBall_Pose6End
	;dl $DFEE8E,$DFEFEE,GFX_ElectricSparkBall_Pose7,GFX_ElectricSparkBall_Pose7End
	;dl $DFF000,$DFF160,GFX_ElectricSparkBall_Pose8,GFX_ElectricSparkBall_Pose8End
	;dl $DFF16C,$DFF26C,GFX_KRoolsFeetBehindCurtain_Pose,GFX_KRoolsFeetBehindCurtain_PoseEnd
	;dl $DFF2AA,$DFFC6A,GFX_KRool_Zapped,GFX_KRool_ZappedEnd
	;dl $DFFC80,$DFFE80,GFX_Lemguin_Slide1,GFX_Lemguin_Slide1End
	;dl $E0014E,$E0034E,GFX_Lemguin_Slide2,GFX_Lemguin_Slide2End
	;dl $E00368,$E00548,GFX_Lemguin_Slide3,GFX_Lemguin_Slide3End
	;dl $E00562,$E00742,GFX_Lemguin_Slide4,GFX_Lemguin_Slide4End
	;dl $E0075E,$E0095E,GFX_Lemguin_Slide5,GFX_Lemguin_Slide5End
	;dl $E00978,$E00B58,GFX_Lemguin_Slide6,GFX_Lemguin_Slide6End
	;dl $E00B76,$E00D96,GFX_Lemguin_Slide7,GFX_Lemguin_Slide7End
	;dl $E00DB4,$E00FD4,GFX_Lemguin_Slide8,GFX_Lemguin_Slide8End
	;dl $E00FF2,$E01212,GFX_Lemguin_Slide9,GFX_Lemguin_Slide9End
	;dl $E0122A,$E0144A,GFX_Lemguin_Slide10,GFX_Lemguin_Slide10End
	;dl $E0146A,$E016AA,GFX_Lemguin_Slide11,GFX_Lemguin_Slide11End
	;dl $E016C4,$E01904,GFX_Lemguin_Slide12,GFX_Lemguin_Slide12End
	;dl $E0191C,$E01B3C,GFX_Lemguin_Dead1,GFX_Lemguin_Dead1End
	;dl $E01B5C,$E01D9C,GFX_Lemguin_Dead2,GFX_Lemguin_Dead2End
	;dl $E01DB4,$E02034,GFX_Lemguin_Dead3,GFX_Lemguin_Dead3End
	;dl $E02050,$E02250,GFX_Lemguin_Emerge1,GFX_Lemguin_Emerge1End
	;dl $E0226C,$E0246C,GFX_Lemguin_Emerge2,GFX_Lemguin_Emerge2End
	;dl $E0247C,$E0267C,GFX_LemguinHoleSpriteMask_Pose,GFX_LemguinHoleSpriteMask_PoseEnd
	;dl $E026BC,$E0271C,GFX_PadlockOnFloorDoor_Pose,GFX_PadlockOnFloorDoor_PoseEnd
	;dl $E02738,$E02B18,GFX_Sprite_BelchasPlatform_Pose,GFX_Sprite_BelchasPlatform_PoseEnd
	;dl $E02B2A,$E02C8A,GFX_Karbine_Fly1,GFX_Karbine_Fly1End
	;dl $E02C9A,$E02DDA,GFX_Karbine_Fly2,GFX_Karbine_Fly2End
	;dl $E02DEA,$E02F2A,GFX_Karbine_Fly3,GFX_Karbine_Fly3End
	;dl $E02F3A,$E0307A,GFX_Karbine_Fly4,GFX_Karbine_Fly4End
	;dl $E0308A,$E031CA,GFX_Karbine_Fly5,GFX_Karbine_Fly5End
	;dl $E031DA,$E0331A,GFX_Karbine_Fly6,GFX_Karbine_Fly6End
	;dl $E0332A,$E0346A,GFX_Karbine_Fly7,GFX_Karbine_Fly7End
	;dl $E0347A,$E035BA,GFX_Karbine_Fly8,GFX_Karbine_Fly8End
	;dl $E035CA,$E0370A,GFX_Karbine_Fly9,GFX_Karbine_Fly9End
	;dl $E0371A,$E0385A,GFX_Karbine_Shoot1,GFX_Karbine_Shoot1End
	;dl $E0386A,$E0394A,GFX_Karbine_Shoot2,GFX_Karbine_Shoot2End
	;dl $E0395C,$E03A5C,GFX_Karbine_Shoot3,GFX_Karbine_Shoot3End
	;dl $E03A6C,$E03BAC,GFX_Karbine_Shoot4,GFX_Karbine_Shoot4End
	;dl $E03BBE,$E03CBE,GFX_BoomerExplosiveSmokeCloud_Pose1,GFX_BoomerExplosiveSmokeCloud_Pose1End
	;dl $E03CD0,$E03E30,GFX_BoomerExplosiveSmokeCloud_Pose2,GFX_BoomerExplosiveSmokeCloud_Pose2End
	;dl $E03E44,$E04024,GFX_BoomerExplosiveSmokeCloud_Pose3,GFX_BoomerExplosiveSmokeCloud_Pose3End
	;dl $E04034,$E04234,GFX_BoomerExplosiveSmokeCloud_Pose4,GFX_BoomerExplosiveSmokeCloud_Pose4End
	;dl $E04248,$E04488,GFX_BoomerExplosiveSmokeCloud_Pose5,GFX_BoomerExplosiveSmokeCloud_Pose5End
	;dl $E0449E,$E046FE,GFX_BoomerExplosiveSmokeCloud_Pose6,GFX_BoomerExplosiveSmokeCloud_Pose6End
	;dl $E04718,$E049B8,GFX_BoomerExplosiveSmokeCloud_Pose7,GFX_BoomerExplosiveSmokeCloud_Pose7End
	;dl $E049D2,$E04C72,GFX_BoomerExplosiveSmokeCloud_Pose8,GFX_BoomerExplosiveSmokeCloud_Pose8End
	;dl $E04C8E,$E04F4E,GFX_BoomerExplosiveSmokeCloud_Pose9,GFX_BoomerExplosiveSmokeCloud_Pose9End
	;dl $E04F6C,$E0518C,GFX_BoomerExplosiveSmokeCloud_Pose10,GFX_BoomerExplosiveSmokeCloud_Pose10End
	;dl $E051A8,$E053A8,GFX_BoomerExplosiveSmokeCloud_Pose11,GFX_BoomerExplosiveSmokeCloud_Pose11End
	;dl $E053BC,$E0553C,GFX_BoomerExplosiveSmokeCloud_Pose12,GFX_BoomerExplosiveSmokeCloud_Pose12End
	;dl $E05552,$E05632,GFX_BoomerExplosiveSmokeCloud_Pose13,GFX_BoomerExplosiveSmokeCloud_Pose13End
	;dl $E0564A,$E0580A,GFX_DiddyKong_LookToSide1,GFX_DiddyKong_LookToSide1End
	;dl $E05822,$E059E2,GFX_DiddyKong_LookToSide2,GFX_DiddyKong_LookToSide2End
	;dl $E059FA,$E05BBA,GFX_DiddyKong_LookToSide3,GFX_DiddyKong_LookToSide3End
DynamicSpriteGFXPointersEnd:

;--------------------------------------------------------------------

CompressedGFXPointersStart:
	;dl $C1FC3C,$C246A7,GFX_Layer1_KAOSKore,GFX_Layer1_KAOSKoreEnd
	;dl $C4F05F,$C533B5,GFX_Layer1_CottonTopCove,GFX_Layer1_CottonTopCoveEnd
	;dl $C6FEFE,$C74462,GFX_Layer1_K3,GFX_Layer1_K3End
	;dl $C7FD8A,$C84543,GFX_Layer1_WrinklysSaveCave,GFX_Layer1_WrinklysSaveCaveEnd
	;dl $C8FE75,$C927E5,GFX_Layer2_SwankysSideshowInTent,GFX_Layer2_SwankysSideshowInTentEnd
	;dl $CA0000,$CA0121,GFX_Layer1_SwankysSideshowInTent,GFX_Layer1_SwankysSideshowInTentEnd
	;dl $CAFDB5,$CB4C1F,GFX_Layer1_KremwoodForest,GFX_Layer1_KremwoodForestEnd
	;dl $CBFE6D,$CC39EF,GFX_Layer1_GameOverScreen,GFX_Layer1_GameOverScreenEnd
	;dl $CCFE3D,$CD3DD2,GFX_Layer1_TitleScreen,GFX_Layer1_TitleScreenEnd
	;dl $CDFED2,$CE3AE5,GFX_Layer1_FunkysRentals,GFX_Layer1_FunkysRentalsEnd
	;dl $CEFD21,$CF40F6,GFX_Layer1_SwankysSideshowOutside,GFX_Layer1_SwankysSideshowOutsideEnd
	;dl $CFFF7E,$D04F61,GFX_Layer1_LakeOrangatanga,GFX_Layer1_LakeOrangatangaEnd
	;dl $D0FE01,$D10101,GFX_Layer3_LakeOrangatanga,GFX_Layer3_LakeOrangatangaEnd
	;dl $D1FF7D,$D20312,GFX_Layer3_KremwoodForest,GFX_Layer3_KremwoodForestEnd
	;dl $D2FF14,$D31B48,GFX_Layer1_TVScreen,GFX_Layer1_TVScreenEnd
	;dl $D3FE2A,$D41E8B,GFX_Layer2_FileSelectScreen,GFX_Layer2_FileSelectScreenEnd
	;dl $D4FFD7,$D5509D,GFX_Layer1_Mekanos,GFX_Layer1_MekanosEnd
	;dl $DBFE0E,$DC4A71,GFX_Layer1_Kremtoa,GFX_Layer1_KremtoaEnd
	;dl $DCFF76,$DD033F,GFX_Layer3_PierLevels,GFX_Layer3_PierLevelsEnd
	;dl $DDFE8F,$DE1BC2,GFX_Layer2_MillLevels,GFX_Layer2_MillLevelsEnd
	;dl $E08E80,$E0F02C,GFX_Layer1_CaveLevels,GFX_Layer1_CaveLevelsEnd
	;dl $E15058,$E19CCF,GFX_Layer2_CoralReefLevels,GFX_Layer2_CoralReefLevelsEnd
	;dl $E21914,$E275C0,GFX_Layer1_MountainLevels,GFX_Layer1_MountainLevelsEnd
	;dl $E2D9E8,$E33DCA,GFX_Layer1_JungleLevels,GFX_Layer1_JungleLevelsEnd
	;dl $E38D56,$E3E3B0,GFX_Layer1_FactoryLevels,GFX_Layer1_FactoryLevelsEnd
	;dl $E43549,$E48902,GFX_Layer1_MillLevels,GFX_Layer1_MillLevelsEnd
	;dl $E4D25F,$E5260F,GFX_Layer1_RiverbankLevels,GFX_Layer1_RiverbankLevelsEnd
	;dl $E54C41,$E591C9,GFX_Layer2_PierLevels,GFX_Layer2_PierLevelsEnd
	;dl $E5968A,$E5B2A5,GFX_Layer1_PierLevels,GFX_Layer1_PierLevelsEnd
	;dl $E5F598,$E64B01,GFX_Layer1_SnowLevels,GFX_Layer1_SnowLevelsEnd
	;dl $E69DCF,$E6FCEA,GFX_Layer1_ForestLevels,GFX_Layer1_ForestLevelsEnd
	;dl $E703F1,$E712B8,GFX_Layer3_ForestLevels,GFX_Layer3_ForestLevelsEnd
	;dl $E717A6,$E736F8,GFX_Layer2_ForestLevels,GFX_Layer2_ForestLevelsEnd
	;dl $E7588E,$E7B4EF,GFX_Layer1_DrainPipeLevels,GFX_Layer1_DrainPipeLevelsEnd
	;dl $E7F2F2,$E84EE8,GFX_Layer1_WaterfallLevels,GFX_Layer1_WaterfallLevelsEnd
	;dl $E8861B,$E8A412,GFX_Layer2_RiverbankLevels,GFX_Layer2_RiverbankLevelsEnd
	;dl $E8A874,$E8B2BC,GFX_Layer3_RiverbankLevels,GFX_Layer3_RiverbankLevelsEnd
	;dl $E8BDEC,$E9230A,GFX_Layer2_KastleKAOS,GFX_Layer2_KastleKAOSEnd
	;dl $E93013,$E9305A,GFX_Layer2_GameOverScreen,GFX_Layer2_GameOverScreenEnd
	;dl $E9342E,$E945BC,GFX_Layer2_TitleScreenDixieKongLogo,GFX_Layer2_TitleScreenDixieKongLogoEnd
	;dl $E9481D,$E97FB0,GFX_Layer1_BleaksHouse,GFX_Layer1_BleaksHouseEnd
	;dl $E99BFB,$E9B0BD,GFX_Layer2_BelchasBarn,GFX_Layer2_BelchasBarnEnd
	;dl $E9B6C0,$E9BEAE,GFX_Layer3_FactoryLevels,GFX_Layer3_FactoryLevelsEnd
	;dl $E9BFBC,$E9D786,GFX_Layer1_BarbossBarrier,GFX_Layer1_BarbossBarrierEnd
	;dl $EA077B,$EA0A88,GFX_Layer1_FileSelectScreen,GFX_Layer1_FileSelectScreenEnd
	;dl $EA0B39,$EA0C0C,GFX_Layer3_SaveFileStatusScreen,GFX_Layer3_SaveFileStatusScreenEnd
	;dl $EA21AB,$EA3387,GFX_Layer2_WaterFallLevel,GFX_Layer2_WaterFallLevelEnd
	;dl $EA3387,$EA426A,GFX_Layer3_MountainLevels,GFX_Layer3_MountainLevelsEnd
	;dl $EA426A,$EA5B53,GFX_Layer2_MountainLevels,GFX_Layer2_MountainLevelsEnd
	;dl $EA6712,$EA68CB,GFX_Layer3_DrainPipeLevels,GFX_Layer3_DrainPipeLevelsEnd
	;dl $EA68F2,$EA7D8A,GFX_Layer2_DrainPipeLevels,GFX_Layer2_DrainPipeLevelsEnd
	;dl $EA8675,$EA93BD,GFX_Layer1_BashTheBaddiesScreen,GFX_Layer1_BashTheBaddiesScreenEnd
	;dl $EA9DCC,$EAA818,GFX_Layer1_CollectXXStarsScreen,GFX_Layer1_CollectXXStarsScreenEnd
	;dl $EAA8DC,$EAB3E9,GFX_Layer1_GrabXXBananasScreen,GFX_Layer1_GrabXXBananasScreenEnd
	;dl $EAB4DE,$EAC190,GFX_Layer1_FindTheCoinScreen,GFX_Layer1_FindTheCoinScreenEnd
	;dl $EAC294,$EAFEAB,GFX_Layer2_BonusRoomIntroScreen,GFX_Layer2_BonusRoomIntroScreenEnd
	;dl $EB04B0,$EB05EE,GFX_Layer1_BananaBirdCave,GFX_Layer1_BananaBirdCaveEnd
	;dl $EB0B39,$EB12E2,GFX_Layer2_MapWater,GFX_Layer2_MapWaterEnd
	;dl $EB14E2,$EB19BB,GFX_Layer1_FloodlitFish,GFX_Layer1_FloodlitFishEnd
	;dl $EB1BC4,$EB81FF,GFX_Layer2_BossPhotos,GFX_Layer2_BossPhotosEnd
	;dl $EB8538,$EBAABA,GFX_Layer2_BananaBirdQueenScreen,GFX_Layer2_BananaBirdQueenScreenEnd
	;dl $EBAB57,$EBB852,GFX_Layer2_KRoolInHovercraft,GFX_Layer2_KRoolInHovercraftEnd
	;dl $EBD1D2,$EBDC2A,GFX_Layer3_Knautilus,GFX_Layer3_KnautilusEnd
	;dl $EBDC2A,$EC3825,GFX_Layer1_Knautilus,GFX_Layer1_KnautilusEnd
	;dl $EC7E00,$EC88B8,GFX_Layer1_Player1TeamWinsScreen,GFX_Layer1_Player1TeamWinsScreenEnd
	;dl $EC9C32,$ECA5A9,GFX_Layer1_Player2TeamWinsScreen,GFX_Layer1_Player2TeamWinsScreenEnd
	;dl $F21DA4,$F2275C,GFX_Layer3_MainMap,GFX_Layer3_MainMapEnd
	;dl $F2275C,$F24170,GFX_Layer2_JungleLevels,GFX_Layer2_JungleLevelsEnd
	;dl $F2470A,$F25437,GFX_Layer3_JungleLevels,GFX_Layer3_JungleLevelsEnd
	;dl $F2587C,$F275D5,GFX_Layer2_CaveLevels,GFX_Layer2_CaveLevelsEnd
	;dl $F31DED,$F3480A,GFX_Layer1_BananaBirdQueenScreen,GFX_Layer1_BananaBirdQueenScreenEnd
	;dl $F34FAD,$F35E23,GFX_Layer2_PhotoAlbumSection,GFX_Layer2_PhotoAlbumSectionEnd
	;dl $F50000,$F5702E,GFX_Layer1_MainMap,GFX_Layer1_MainMapEnd
	;dl $F6688A,$F66EE1,GFX_Layer3_CottonTopCove,GFX_Layer3_CottonTopCoveEnd
	;dl $F67029,$F672D8,GFX_Layer3_Mekanos,GFX_Layer3_MekanosEnd
	;dl $F673D5,$F676E3,GFX_Layer3_RazorRidge,GFX_Layer3_RazorRidgeEnd
	;dl $F67816,$F67A94,GFX_Layer3_KAOSKore,GFX_Layer3_KAOSKoreEnd
	;dl $F67B9A,$F67D5B,GFX_Layer3_Kremtoa,GFX_Layer3_KremtoaEnd
	;dl $F70000,$F72353,GFX_Layer2_SnowLevels,GFX_Layer2_SnowLevelsEnd
	;dl $F7266A,$F779E9,GFX_Layer1_RazorRidge,GFX_Layer1_RazorRidgeEnd
	;dl $F80000,$F82E96,GFX_Layer2_BrothersBearPhotos,GFX_Layer2_BrothersBearPhotosEnd
	;dl $F82E96,$F87D95,GFX_Layer2_BananaBirdCave,GFX_Layer2_BananaBirdCaveEnd
	;dl $FB0000,$FB6897,GFX_Layer1_BrothersBearHouse,GFX_Layer1_BrothersBearHouseEnd
	;dl $FB6897,$FB7967,GFX_Layer2_BrothersBearHouse,GFX_Layer2_BrothersBearHouseEnd
CompressedGFXPointersEnd:

;--------------------------------------------------------------------

CompressedDynamicSpriteGFXPointersStart:
	;dl $C2CA91,$C31832,GFX_TargetShootKiddy,GFX_TargetShootKiddyEnd
	;dl $C3E412,$C41B61,GFX_TargetShootDixie,GFX_TargetShootDixieEnd
	;dl $C5E4A9,$C613B0,GFX_RareLogo,GFX_RareLogoEnd
	;dl $D5F349,$D64B5D,GFX_FunkyKong,GFX_FunkyKongEnd
	;dl $D6DC47,$D73323,GFX_KRool1,GFX_KRool1End
	;dl $D7E01B,$D82E6F,GFX_KRool2,GFX_KRool2End
	;dl $D8D441,$D8E040,GFX_TargetShootHUD,GFX_TargetShootHUDEnd
	;dl $D8E040,$D8F057,GFX_GameOverBlocks,GFX_GameOverBlocksEnd
	;dl $D8F057,$D92A39,GFX_BrothersBearAccessories1,GFX_BrothersBearAccessories1End
	;dl $D9F3D9,$DA2B1E,GFX_BrothersBearAccessories2,GFX_BrothersBearAccessories2End
	;dl $DAF85E,$DB1D85,GFX_BrothersBearAccessories3,GFX_BrothersBearAccessories3End
	;dl $DB1D85,$DB2CAE,GFX_BrothersBearBase,GFX_BrothersBearBaseEnd
	;dl $E0267C,$E026AE,GFX_BlankFile,GFX_BlankFileEnd
CompressedDynamicSpriteGFXPointersEnd:

;--------------------------------------------------------------------

UncompressedTilemapsPointersStart:
	;dl $DEFED4,$DF04D4,TM_Layer3_MurkyMill,TM_Layer3_MurkyMillEnd
	;dl $E8A634,$E8A874,TM_Layer3_RiverbankWaterSurface,TM_Layer3_RiverbankWaterSurfaceEnd
	;dl $E8B2BC,$E8B2EC,TM_Layer2_KastleKAOSBarredWindow,TM_Layer2_KastleKAOSBarredWindowEnd
	;dl $E8B2EC,$E8B364,TM_Layer2_KastleKAOSCurtainCover,TM_Layer2_KastleKAOSCurtainCoverEnd
	;dl $E8B364,$E8B440,TM_Layer2_KastleKAOSRemoveCurtain,TM_Layer2_KastleKAOSRemoveCurtainEnd
	;dl $E8B440,$E8B488,TM_Layer2_KastleKAOSBrokenFloor1LeftHalf,TM_Layer2_KastleKAOSBrokenFloor1LeftHalfEnd
	;dl $E8B488,$E8B4E2,TM_Layer2_KastleKAOSBrokenFloor1RightHalf,TM_Layer2_KastleKAOSBrokenFloor1RightHalfEnd
	;dl $E8B4E2,$E8B51E,TM_Layer2_KastleKAOSUnknownDoorTilemap,TM_Layer2_KastleKAOSUnknownDoorTilemapEnd
	;dl $E8B51E,$E8B55E,TM_Layer2_KastleKAOSBrokenFloor2LeftHalf,TM_Layer2_KastleKAOSBrokenFloor2LeftHalfEnd
	;dl $E8B55E,$E8B5AE,TM_Layer2_KastleKAOSBrokenFloor2RightHalf,TM_Layer2_KastleKAOSBrokenFloor2RightHalfEnd
	;dl $E92913,$E93013,TM_Layer2_GameOverScreen,TM_Layer2_GameOverScreenEnd
	;dl $E97FB0,$E98030,TM_Layer1_CopyrightScreen,TM_Layer1_CopyrightScreenEnd
	;dl $E98550,$E98D12,TM_Layer1_Arich,TM_Layer1_ArichEnd
	;dl $E9DD86,$E9E146,TM_Layer1_KAOS,TM_Layer1_KAOSEnd
	;dl $EA0694,$EA0730,TM_Layer2_FileSelectCopyAndEraseButtons,TM_Layer2_FileSelectCopyAndEraseButtonsEnd
	;dl $EA7D8A,$EA858A,TM_Layer2_DrainPipeLevels,TM_Layer2_DrainPipeLevelsEnd
	;dl $EA98D9,$EA9AD9,TM_Layer2_CottonTopCoveWaterfalls,TM_Layer2_CottonTopCoveWaterfallsEnd
	;dl $EBCA52,$EBCD52,TM_Layer3_KnautilusBGRightHalf,TM_Layer3_KnautilusBGRightHalfEnd
	;dl $EBCD52,$EBD052,TM_Layer3_KnautilusBGLeftHalf,TM_Layer3_KnautilusBGLeftHalfEnd
	;dl $EBD052,$EBD1D2,TM_Layer3_KnautilusConveyorBelt,TM_Layer3_KnautilusConveyorBeltEnd
	;dl $EC4F6C,$EC576C,TM_Layer2_FactoryLevels,TM_Layer2_FactoryLevelsEnd
	;dl $EC7CCC,$EC7D0C,TM_Layer2_KnautilusCeilingBar,TM_Layer2_KnautilusCeilingBarEnd
	;dl $EC88B8,$EC8978,TM_Layer2_KAOSKoreWaterfall,TM_Layer2_KAOSKoreWaterfallEnd
	;dl $F35E23,$F36023,TM_Layer2_K3Waterfall,TM_Layer2_K3WaterfallEnd
	;dl $B387B6,$B38EF6,TM_Layer2_WaterfallLevelWaterfalls,TM_Layer2_WaterfallLevelWaterfallsEnd
	;dl $F45CC0,$F45F40,TM_Layer2_ElectricCurrents,TM_Layer2_ElectricCurrentsEnd
	dl $F60000,$F6008E,TM_Mode7_RareLogo,TM_Mode7_RareLogoEnd
	;dl $F6254B,$F62C4B,TM_Layer1_SnowLevels,TM_Layer1_SnowLevelsEnd
	;dl $F6644B,$F6664B,TM_Layer3_HeavySnowfall,TM_Layer3_HeavySnowfallEnd
UncompressedTilemapsPointersEnd:

;--------------------------------------------------------------------

CompressedTilemapsPointersStart:
	;dl $DCFECD,$DCFF76,TM_Layer3_PierLevels,TM_Layer3_PierLevelsEnd
	;dl $DDF873,$DDFE8F,TM_Layer2_MillLevels,TM_Layer2_MillLevelsEnd
	;dl $DFFE80,$E00132,TM_Layer1_GameOverScreen,TM_Layer1_GameOverScreenEnd
	;dl $E591C9,$E594A2,TM_Layer1_PierLevelWaterllineAndMountains,TM_Layer1_PierLevelWaterllineAndMountainsEnd
	;dl $E594A2,$E59533,TM_Layer1_PierLevelSeaFloor,TM_Layer1_PierLevelSeaFloorEnd
	;dl $E59533,$E5968A,TM_Layer3_PierLevelsSky,TM_Layer3_PierLevelsSkyEnd
	;dl $E6FCEA,$E703F1,TM_Layer3_ForestLevels,TM_Layer3_ForestLevelsEnd
	;dl $E712B8,$E717A6,TM_Layer2_ForestLevels,TM_Layer2_ForestLevelsEnd
	;dl $E8640C,$E866E0,TM_Layer2_SwankysSideshowInTent,TM_Layer2_SwankysSideshowInTentEnd
	;dl $E866E0,$E867D8,TM_Layer1_SwankysSideshowInTent,TM_Layer1_SwankysSideshowInTentEnd
	;dl $E867D8,$E86B7F,TM_Layer1_K3,TM_Layer1_K3End
	;dl $E86B7F,$E86F2B,TM_Layer1_KremwoodForest,TM_Layer1_KremwoodForestEnd
	;dl $E86F2B,$E871D7,TM_Layer1_LakeOrangatanga,TM_Layer1_LakeOrangatangaEnd
	;dl $E871D7,$E8734F,TM_Layer3_LakeOrangatanga,TM_Layer3_LakeOrangatangaEnd
	;dl $E8734F,$E87581,TM_Layer3_KremwoodForest,TM_Layer3_KremwoodForestEnd
	;dl $E87581,$E877CC,TM_Layer1_TitleScreen,TM_Layer1_TitleScreenEnd
	;dl $E877CC,$E87AA3,TM_Layer1_WrinklysSaveCave,TM_Layer1_WrinklysSaveCaveEnd
	;dl $E87AA3,$E87D26,TM_Layer1_FunkysRentals,TM_Layer1_FunkysRentalsEnd
	;dl $E87D26,$E88052,TM_Layer1_SwankysSideshowOutside,TM_Layer1_SwankysSideshowOutsideEnd
	;dl $E88052,$E88388,TM_Layer1_TVScreen,TM_Layer1_TVScreenEnd
	;dl $E88388,$E8861B,TM_Layer2_RiverbankLevels,TM_Layer2_RiverbankLevelsEnd
	;dl $E8A412,$E8A634,TM_Layer3_RiverbankLightning,TM_Layer3_RiverbankLightningEnd
	;dl $E8B5AE,$E8B989,TM_Layer2_KastleKAOSLeftHalf,TM_Layer2_KastleKAOSLeftHalfEnd
	;dl $E8B989,$E8BDEC,TM_Layer2_KastleKAOSRightHalf,TM_Layer2_KastleKAOSRightHalfEnd
	;dl $E9305A,$E9339E,TM_Layer1_BrothersBearHouse,TM_Layer1_BrothersBearHouseEnd
	;dl $E9339E,$E9342E,TM_Layer2_TitleScreenDixieKongLogo,TM_Layer2_TitleScreenDixieKongLogoEnd
	;dl $E945BC,$E94782,TM_Layer1_BleaksHouse,TM_Layer1_BleaksHouseEnd
	;dl $E94782,$E9481D,TM_Layer2_BleaksHouse,TM_Layer2_BleaksHouseEnd
	;dl $E99AB2,$E99BFB,TM_Layer2_BelchasBarn,TM_Layer2_BelchasBarnEnd
	;dl $E9B0BD,$E9B6C0,TM_Layer3_FactoryLevels,TM_Layer3_FactoryLevelsEnd
	;dl $E9BEAE,$E9BFBC,TM_Layer1_BarbossBarrier,TM_Layer1_BarbossBarrierEnd
	;dl $E9F346,$E9F818,TM_Layer3_CoralReefLevels,TM_Layer3_CoralReefLevelsEnd
	;dl $EA0488,$EA0694,TM_Layer2_FileSelectScreen,TM_Layer2_FileSelectScreenEnd
	;dl $EA0730,$EA077B,TM_Layer1_FileSelectScreen,TM_Layer1_FileSelectScreenEnd
	;dl $EA0A88,$EA0B39,TM_Layer3_SaveFileStatusScreen,TM_Layer3_SaveFileStatusScreenEnd
	;dl $EA0C0C,$EA1349,TM_Layer3_WaterfallLevel,TM_Layer3_WaterfallLevelEnd
	;dl $EA1349,$EA160B,TM_Layer3_SquirtsHead,TM_Layer3_SquirtsHeadEnd
	;dl $EA5B53,$EA5F1C,TM_Layer3_MountainLevels,TM_Layer3_MountainLevelsEnd
	;dl $EA5F1C,$EA6712,TM_Layer2_MountainLevels,TM_Layer2_MountainLevelsEnd
	;dl $EA68CB,$EA68F2,TM_Layer3_DrainPipeLevels,TM_Layer3_DrainPipeLevelsEnd
	;dl $EA858A,$EA8675,TM_Layer1_BashTheBaddiesScreen,TM_Layer1_BashTheBaddiesScreenEnd
	;dl $EA93BD,$EA9638,TM_Layer1_Mekanos,TM_Layer1_MekanosEnd
	;dl $EA9638,$EA98D9,TM_Layer1_Kremtoa,TM_Layer1_KremtoaEnd
	;dl $EA9AD9,$EA9CD8,TM_Layer2_BananaBirdCave,TM_Layer2_BananaBirdCaveEnd
	;dl $EA9CD8,$EA9DCC,TM_Layer1_CollectXXStarsScreen,TM_Layer1_CollectXXStarsScreenEnd
	;dl $EAA818,$EAA8DC,TM_Layer1_GrabXXBananasScreen,TM_Layer1_GrabXXBananasScreenEnd
	;dl $EAB3E9,$EAB4DE,TM_Layer1_FindTheCoinScreen,TM_Layer1_FindTheCoinScreenEnd
	;dl $EAC190,$EAC294,TM_Layer2_BonusRoomIntroScreen,TM_Layer2_BonusRoomIntroScreenEnd
	;dl $EAFEAB,$EB017D,TM_Layer1_CottonTopCove,TM_Layer1_CottonTopCoveEnd
	;dl $EB017D,$EB0486,TM_Layer1_KAOSKore,TM_Layer1_KAOSKoreEnd
	;dl $EB0486,$EB04B0,TM_Layer1_BananaBirdCave,TM_Layer1_BananaBirdCaveEnd
	;dl $EB081C,$EB0B39,TM_Layer2_MapWater,TM_Layer2_MapWaterEnd
	;dl $EB12E2,$EB13B3,TM_Layer2_BrothersBearPhotos,TM_Layer2_BrothersBearPhotosEnd
	;dl $EB13B3,$EB14E2,TM_Layer1_FloodlitFish,TM_Layer1_FloodlitFishEnd
	;dl $EB19BB,$EB1BC4,TM_Layer2_BossPhotos,TM_Layer2_BossPhotosEnd
	;dl $EB81FF,$EB8538,TM_Layer2_BananaBirdQueenScreen,TM_Layer2_BananaBirdQueenScreenEnd
	;dl $EBAABA,$EBAB57,TM_Layer2_KRoolAndHovercraft,TM_Layer2_KRoolAndHovercraftEnd
	;dl $EC3825,$EC3EB2,TM_Layer1_KnautilusRightHalf,TM_Layer1_KnautilusRightHalfEnd
	;dl $EC3EB2,$EC451C,TM_Layer1_KnautilusLeftHalf,TM_Layer1_KnautilusLeftHalfEnd
	;dl $EC451C,$EC475C,TM_Layer3_KastleKAOS,TM_Layer3_KastleKAOSEnd
	;dl $EC7D4C,$EC7E00,TM_Layer1_Player1TeamWinsScreen,TM_Layer1_Player1TeamWinsScreenEnd
	;dl $EC9B78,$EC9C32,TM_Layer1_Player2TeamWinsScreen,TM_Layer1_Player2TeamWinsScreenEnd
	;dl $ECA5A9,$ECA690,TM_Layer3_IrregularityScreenText,TM_Layer3_IrregularityScreenTextEnd
	;dl $ECA690,$ECA7A7,TM_Layer3_CopyDetectionScreenText,TM_Layer3_CopyDetectionScreenTextEnd
	;dl $ECA7A7,$ECA89B,TM_Layer3_RegionLockoutScreenText,TM_Layer3_RegionLockoutScreenTextEnd
	;dl $F20000,$F215A9,TM_Layer1_MainMap,TM_Layer1_MainMapEnd
	;dl $F215A9,$F21DA4,TM_Layer3_MainMap,TM_Layer3_MainMapEnd
	;dl $F24170,$F2470A,TM_Layer2_JungleLevels,TM_Layer2_JungleLevelsEnd
	;dl $F25437,$F2587C,TM_Layer3_JungleLevels,TM_Layer3_JungleLevelsEnd
	;dl $F275D5,$F27C7E,TM_Layer2_CaveLevels,TM_Layer2_CaveLevelsEnd
	;dl $F30000,$F30200,TM_Layer1_NintendoPresentsScreen,TM_Layer1_NintendoPresentsScreenEnd
	;dl $F315C6,$F316F0,TM_Layer3_NintendoPresentsScreen,TM_Layer3_NintendoPresentsScreenEnd
	;dl $F31B38,$F31DED,TM_Layer1_BananaBirdQueenScreen,TM_Layer1_BananaBirdQueenScreenEnd
	;dl $F3480A,$F34C21,TM_Layer2_PhotoAlbumCover,TM_Layer2_PhotoAlbumCoverEnd
	;dl $F34C21,$F34FAD,TM_Layer2_PhotoAlbumSection,TM_Layer2_PhotoAlbumSectionEnd
	;dl $F621E6,$F6254B,TM_Layer2_NintendoPresentsScreen,TM_Layer2_NintendoPresentsScreenEnd
	;dl $F666BB,$F6688A,TM_Layer3_CottonTopCove,TM_Layer3_CottonTopCoveEnd
	;dl $F66EE1,$F67029,TM_Layer3_Mekanos,TM_Layer3_MekanosEnd
	;dl $F672D8,$F673D5,TM_Layer3_RazorRidge,TM_Layer3_RazorRidgeEnd
	;dl $F676E3,$F67816,TM_Layer3_KAOSKore,TM_Layer3_KAOSKoreEnd
	;dl $F67A94,$F67B9A,TM_Layer3_Kremtoa,TM_Layer3_KremtoaEnd
	;dl $F72353,$F7266A,TM_Layer1_RazorRidge,TM_Layer1_RazorRidgeEnd
CompressedTilemapsPointersEnd:

;--------------------------------------------------------------------

Map32PointersStart:
	;dl $E077C6,$E08CE0,M32_Layer1_Level_Cave,M32_Layer1_Level_CaveEnd
	;dl $E12377,$E14D38,M32_Layer1_Level_CoralReef,M32_Layer1_Level_CoralReefEnd
	;dl $E1EB1B,$E213F8,M32_Layer1_Level_Mountain,M32_Layer1_Level_MountainEnd
	;dl $E2AEED,$E2D804,M32_Layer1_Level_Jungle,M32_Layer1_Level_JungleEnd
	;dl $E37402,$E38A96,M32_Layer1_Level_Factory,M32_Layer1_Level_FactoryEnd
	;dl $E41148,$E43175,M32_Layer1_Level_Mill,M32_Layer1_Level_MillEnd
	;dl $E4AEF3,$E4D0AF,M32_Layer1_Level_Riverbank,M32_Layer1_Level_RiverbankEnd
	;dl $E53A78,$E54A01,M32_Layer2_Level_Pier,M32_Layer2_Level_PierEnd
	;dl $E5D145,$E5F3F4,M32_Layer2_Level_Snow,M32_Layer2_Level_SnowEnd
	;dl $E67BF9,$E699BF,M32_Layer2_Level_Forest,M32_Layer2_Level_ForestEnd
	;dl $E74312,$E756EA,M32_Layer2_Level_DrainPipe,M32_Layer2_Level_DrainPipeEnd
	;dl $E7D66A,$E7F146,M32_Layer2_Level_Waterfall,M32_Layer2_Level_WaterfallEnd
Map32PointersEnd:

;--------------------------------------------------------------------

LevelDataPointersStart:
	;dl $E05BC3,$E077C6,CaveLevels1,CaveLevels1End
	;dl $E0F035,$E10E3F,CaveLevels2,CaveLevels2End
	;dl $E10E48,$E12377,CoralReefLevels1,CoralReefLevels1End
	;dl $E19CD8,$E1BEAD,CoralReefLevels2,CoralReefLevels2End
	;dl $E1BEB6,$E1EB1B,MountainLevels1,MountainLevels1End
	;dl $E275C9,$E28492,MountainLevels2,MountainLevels2End
	;dl $E2849B,$E2AEED,JungleLevels,JungleLevelsEnd
	;dl $E33DD3,$E37402,FactoryLevels,FactoryLevelsEnd
	;dl $E3E3B9,$E41148,MillLevels,MillLevelsEnd
	;dl $E4890B,$E4AEF3,RiverbankLevels,RiverbankLevelsEnd
	;dl $E52618,$E53A78,PierLevels,PierLevelsEnd
	;dl $E5B2AE,$E5D145,SnowLevels,SnowLevelsEnd
	;dl $E64B0A,$E67BF9,ForestLevels,ForestLevelsEnd
	;dl $E73701,$E74312,DrainPipeLevels1,DrainPipeLevels1End
	;dl $E7B4F8,$E7C29B,DrainPipeLevels2,DrainPipeLevels2End
	;dl $E7C2A4,$E7CB9B,DrainPipeLevels3,DrainPipeLevels3End
	;dl $E7CBA4,$E7D66A,WaterfallLevels1,WaterfallLevels1End
	;dl $E84EF1,$E8640C,WaterfallLevels2,WaterfallLevels2End
LevelDataPointersEnd:

;--------------------------------------------------------------------

LevelSpritePointersStart:
	;dl $FE0400,$FE040A,SPR_EmptyDoorStopDashSublevel,SPR_EmptyDoorStopDashSublevelEnd
	;dl $FE040A,$FE040C,SPR_NullLevel1,SPR_NullLevel1End
	;dl $FE040C,$FE040E,SPR_NullLevel2,SPR_NullLevel2End
	;dl $FE040E,$FE0410,SPR_NullLevel3,SPR_NullLevel3End
	;dl $FE0410,$FE0412,SPR_NullLevel4,SPR_NullLevel4End
	;dl $FE0412,$FE0414,SPR_NullLevel5,SPR_NullLevel5End
	;dl $FE0414,$FE0416,SPR_NullLevel6,SPR_NullLevel6End
	;dl $FE0416,$FE0418,SPR_NullLevel7,SPR_NullLevel7End
	;dl $FE0418,$FE041A,SPR_BazzasBlockade_PhotoAlbum,SPR_BazzasBlockade_PhotoAlbumEnd
	;dl $FE041A,$FE041C,SPR_DoorstopDash_PhotoAlbum,SPR_DoorstopDash_PhotoAlbumEnd
	;dl $FE041C,$FE041E,SPR_LemguinLunge_PhotoAlbum,SPR_LemguinLunge_PhotoAlbumEnd
	;dl $FE041E,$FE0420,SPR_RopeyRumpus_PhotoAlbum,SPR_RopeyRumpus_PhotoAlbumEnd
	;dl $FE0420,$FE0422,SPR_SkiddasRow_PhotoAlbum,SPR_SkiddasRow_PhotoAlbumEnd
	;dl $FE0422,$FE0424,SPR_SquealsOnWheels_PhotoAlbum,SPR_SquealsOnWheels_PhotoAlbumEnd
	;dl $FE0424,$FE0426,SPR_FloodlitFish_PhotoAlbum,SPR_FloodlitFish_PhotoAlbumEnd
	;dl $FE0426,$FE0428,SPR_BrothersBearPhotos,SPR_BrothersBearPhotosEnd
	;dl $FE0428,$FE042A,SPR_SwankysSideshow_PhotoAlbum,SPR_SwankysSideshow_PhotoAlbumEnd
	;dl $FE042A,$FE042C,SPR_BossPhotos,SPR_BossPhotosEnd
	;dl $FE042C,$FE042E,SPR_CloseupOfKRoolDrivingHovercraft,SPR_CloseupOfKRoolDrivingHovercraftEnd
	;dl $FE042E,$FE0430,SPR_KastleKAOS_PhotoAlbum,SPR_KastleKAOS_PhotoAlbumEnd
	;dl $FE0430,$FE0482,SPR_EarlyBobbingBarrelBrawl,SPR_EarlyBobbingBarrelBrawlEnd
	;dl $FE0482,$FE0484,SPR_KiddysPhotoAlbumArea,SPR_KiddysPhotoAlbumAreaEnd
	;dl $FE0484,$FE04DE,SPR_DixiesPhotoAlbumArea,SPR_DixiesPhotoAlbumAreaEnd
	;dl $FE04DE,$FE04E0,SPR_NullLevel8,SPR_NullLevel8End
	;dl $FE04E0,$FE04E2,SPR_NullLevel9,SPR_NullLevel9End
	;dl $FE04E2,$FE04E4,SPR_NullLevel10,SPR_NullLevel10End
	;dl $FE04E4,$FE04FE,SPR_BazzasBlockade_ExitSublevel,SPR_BazzasBlockade_ExitSublevelEnd
	;dl $FE04FE,$FE0520,SPR_FishfoodFrenzy_ExitSublevel,SPR_FishfoodFrenzy_ExitSublevelEnd
	;dl $FE0520,$FE0542,SPR_FloodlitFish_ExitSublevel,SPR_FloodlitFish_ExitSublevelEnd
	;dl $FE0542,$FE0554,SPR_BelchasBarn,SPR_BelchasBarnEnd
	;dl $FE0554,$FE0566,SPR_ArichsAmbush,SPR_ArichsAmbushEnd
	;dl $FE0566,$FE0578,SPR_SquirtsShowdown,SPR_SquirtsShowdownEnd
	;dl $FE0578,$FE058A,SPR_KAOSKarnage,SPR_KAOSKarnageEnd
	;dl $FE058A,$FE0594,SPR_BleaksHouse,SPR_BleaksHouseEnd
	;dl $FE0594,$FE05AE,SPR_BarbossBarrier,SPR_BarbossBarrierEnd
	;dl $FE05AE,$FE05B0,SPR_KastleKAOS,SPR_KastleKAOSEnd
	;dl $FE05B0,$FE05B2,SPR_Knautilus,SPR_KnautilusEnd
	;dl $FE05B2,$FE072C,SPR_LakesideLimbo_Main,SPR_LakesideLimbo_MainEnd
	;dl $FE072C,$FE0926,SPR_KreepingKlasps_Main,SPR_KreepingKlasps_MainEnd
	;dl $FE0926,$FE0B10,SPR_TidalTrouble_Main,SPR_TidalTrouble_MainEnd
	;dl $FE0B10,$FE0EC2,SPR_DoorstopDash_Main,SPR_DoorstopDash_MainEnd
	;dl $FE0EC2,$FE1334,SPR_SquealsOnWheels_Main,SPR_SquealsOnWheels_MainEnd
	;dl $FE1334,$FE15B6,SPR_MurkyMill_Main,SPR_MurkyMill_MainEnd
	;dl $FE15B6,$FE1728,SPR_SkiddasRow_Main,SPR_SkiddasRow_MainEnd
	;dl $FE1728,$FE1912,SPR_LemguinLunge_Main,SPR_LemguinLunge_MainEnd
	;dl $FE1912,$FE1B6C,SPR_TearawayToboggan_Main,SPR_TearawayToboggan_MainEnd
	;dl $FE1B6C,$FE1CDE,SPR_RipsawRage_Main,SPR_RipsawRage_MainEnd
	;dl $FE1CDE,$FE20D0,SPR_SpringinSpiders_Main,SPR_SpringinSpiders_MainEnd
	;dl $FE20D0,$FE246A,SPR_BarrelShieldBustUp_Main,SPR_BarrelShieldBustUp_MainEnd
	;dl $FE246A,$FE2754,SPR_SwoopySalvo_Main,SPR_SwoopySalvo_MainEnd
	;dl $FE2754,$FE296E,SPR_RiversideRace_Main,SPR_RiversideRace_MainEnd
	;dl $FE296E,$FE2C30,SPR_LightningLookOut_Main,SPR_LightningLookOut_MainEnd
	;dl $FE2C30,$FE2F6A,SPR_BobbingBarrelBrawl_Main,SPR_BobbingBarrelBrawl_MainEnd
	;dl $FE2F6A,$FE326C,SPR_BazzasBlockade_Main,SPR_BazzasBlockade_MainEnd
	;dl $FE326C,$FE34B6,SPR_FishFoodFrenzy_Main,SPR_FishFoodFrenzy_MainEnd
	;dl $FE34B6,$FE3818,SPR_FloodlitFish_Main,SPR_FloodlitFish_MainEnd
	;dl $FE3818,$FE3B4A,SPR_RocketBarrelRide_Main,SPR_RocketBarrelRide_MainEnd
	;dl $FE3B4A,$FE3DC4,SPR_TrackerBarrelTrek_Main,SPR_TrackerBarrelTrek_MainEnd
	;dl $FE3DC4,$FE3F46,SPR_BarrelDropBounce_Main,SPR_BarrelDropBounce_MainEnd
	;dl $FE3F46,$FE4280,SPR_FireballFrenzy_Main,SPR_FireballFrenzy_MainEnd
	;dl $FE4280,$FE461A,SPR_BlazingBazukas_Main,SPR_BlazingBazukas_MainEnd
	;dl $FE461A,$FE48F4,SPR_KrackshotKroc_Main,SPR_KrackshotKroc_MainEnd
	;dl $FE48F4,$FE4CEE,SPR_LowGLabyrinth_Main,SPR_LowGLabyrinth_MainEnd
	;dl $FE4CEE,$FE5058,SPR_PoisonousPipeline_Main,SPR_PoisonousPipeline_MainEnd
	;dl $FE5058,$FE534A,SPR_DemolitionDrainPipe_Main,SPR_DemolitionDrainPipe_MainEnd
	;dl $FE534A,$FE55CC,SPR_KreviceKreepers_Main,SPR_KreviceKreepers_MainEnd
	;dl $FE55CC,$FE5866,SPR_KongFusedCliffs_Main,SPR_KongFusedCliffs_MainEnd
	;dl $FE5866,$FE5C38,SPR_RopeyRumpus_Main,SPR_RopeyRumpus_MainEnd
	;dl $FE5C38,$FE6032,SPR_BuzzerBarrage_Main,SPR_BuzzerBarrage_MainEnd
	;dl $FE6032,$FE62C4,SPR_PotHolePanic_Main,SPR_PotHolePanic_MainEnd
	;dl $FE62C4,$FE666E,SPR_CreepyCaverns_Main,SPR_CreepyCaverns_MainEnd
	;dl $FE666E,$FE6878,SPR_KoindozerKlamber_Main,SPR_KoindozerKlamber_MainEnd
	;dl $FE6878,$FE6B0A,SPR_KonveyorRopeKlash_Main,SPR_KonveyorRopeKlash_MainEnd
	;dl $FE6B0A,$FE6CF4,SPR_StampedeSprint_Main,SPR_StampedeSprint_MainEnd
	;dl $FE6CF4,$FE6F7E,SPR_CrissKrossCliffs_Main,SPR_CrissKrossCliffs_MainEnd
	;dl $FE6F7E,$FE7298,SPR_TyrantTwinTussle_Main,SPR_TyrantTwinTussle_MainEnd
	;dl $FE7298,$FE7442,SPR_RocketRush_Main,SPR_RocketRush_MainEnd
	;dl $FE7442,$FE744C,SPR_SwankysSideshow_InTent,SPR_SwankysSideshow_InTentEnd
	;dl $FE744C,$FE7456,SPR_NullLevel11,SPR_NullLevel11End
	;dl $FE7456,$FE7458,SPR_NullLevel12,SPR_NullLevel12End
	;dl $FE7458,$FE746A,SPR_LakesideLimbo_Bonus1,SPR_LakesideLimbo_Bonus1End
	;dl $FE746A,$FE7484,SPR_LakesideLimbo_Bonus2,SPR_LakesideLimbo_Bonus2End
	;dl $FE7484,$FE74B6,SPR_DoorstopDash_Bonus1,SPR_DoorstopDash_Bonus1End
	;dl $FE74B6,$FE7508,SPR_DoorstopDash_Bonus2,SPR_DoorstopDash_Bonus2End
	;dl $FE7508,$FE7522,SPR_TidalTrouble_Bonus1,SPR_TidalTrouble_Bonus1End
	;dl $FE7522,$FE755C,SPR_TidalTrouble_Bonus2,SPR_TidalTrouble_Bonus2End
	;dl $FE755C,$FE7596,SPR_SkiddasRow_Bonus1,SPR_SkiddasRow_Bonus1End
	;dl $FE7596,$FE75D8,SPR_SkiddasRow_Bonus2,SPR_SkiddasRow_Bonus2End
	;dl $FE75D8,$FE75FA,SPR_SquealsOnWheels_Bonus1,SPR_SquealsOnWheels_Bonus1End
	;dl $FE75FA,$FE7624,SPR_SquealsOnWheels_Bonus2,SPR_SquealsOnWheels_Bonus2End
	;dl $FE7624,$FE7666,SPR_BarrelShieldBustUp_Bonus1,SPR_BarrelShieldBustUp_Bonus1End
	;dl $FE7666,$FE7698,SPR_BarrelShieldBustUp_Bonus2,SPR_BarrelShieldBustUp_Bonus2End
	;dl $FE7698,$FE76BA,SPR_RiverbankRace_Bonus1,SPR_RiverbankRace_Bonus1End
	;dl $FE76BA,$FE76EC,SPR_RiverbankRace_Bonus2,SPR_RiverbankRace_Bonus2End
	;dl $FE76EC,$FE772E,SPR_MurkyMill_Bonus1,SPR_MurkyMill_Bonus1End
	;dl $FE772E,$FE7760,SPR_MurkyMill_Bonus2,SPR_MurkyMill_Bonus2End
	;dl $FE7760,$FE7792,SPR_SpringinSpiders_Bonus1,SPR_SpringinSpiders_Bonus1End
	;dl $FE7792,$FE77AC,SPR_SpringinSpiders_Bonus2,SPR_SpringinSpiders_Bonus2End
	;dl $FE77AC,$FE77F6,SPR_LightningLookOut_Bonus1,SPR_LightningLookOut_Bonus1End
	;dl $FE77F6,$FE7810,SPR_LightningLookOut_Bonus2,SPR_LightningLookOut_Bonus2End
	;dl $FE7810,$FE785A,SPR_BazzasBlockade_Bonus1,SPR_BazzasBlockade_Bonus1End
	;dl $FE785A,$FE78C4,SPR_BazzasBlockade_Bonus2,SPR_BazzasBlockade_Bonus2End
	;dl $FE78C4,$FE78EE,SPR_RocketBarrelRide_Bonus1,SPR_RocketBarrelRide_Bonus1End
	;dl $FE78EE,$FE7920,SPR_RocketBarrelRide_Bonus2,SPR_RocketBarrelRide_Bonus2End
	;dl $FE7920,$FE7942,SPR_KreepingKlasps_Bonus1,SPR_KreepingKlasps_Bonus1End
	;dl $FE7942,$FE7984,SPR_KreepingKlasps_Bonus2,SPR_KreepingKlasps_Bonus2End
	;dl $FE7984,$FE79A6,SPR_TrackerBarrelTrek_Bonus1,SPR_TrackerBarrelTrek_Bonus1End
	;dl $FE79A6,$FE7A00,SPR_TrackerBarrelTrek_Bonus2,SPR_TrackerBarrelTrek_Bonus2End
	;dl $FE7A00,$FE7A1A,SPR_FishFoodFrenzy_Bonus1,SPR_FishFoodFrenzy_Bonus1End
	;dl $FE7A1A,$FE7A84,SPR_FishFoodFrenzy_Bonus2,SPR_FishFoodFrenzy_Bonus2End
	;dl $FE7A84,$FE7AEE,SPR_FireballFrenzy_Bonus1,SPR_FireballFrenzy_Bonus1End
	;dl $FE7AEE,$FE7B18,SPR_FireballFrenzy_Bonus2,SPR_FireballFrenzy_Bonus2End
	;dl $FE7B18,$FE7B62,SPR_DemolitionDrainPipe_Bonus1,SPR_DemolitionDrainPipe_Bonus1End
	;dl $FE7B62,$FE7B94,SPR_DemolitionDrainPipe_Bonus2,SPR_DemolitionDrainPipe_Bonus2End
	;dl $FE7B94,$FE7BA6,SPR_RipsawRage_Bonus1,SPR_RipsawRage_Bonus1End
	;dl $FE7BA6,$FE7BC8,SPR_RipsawRage_Bonus2,SPR_RipsawRage_Bonus2End
	;dl $FE7BC8,$FE7C02,SPR_BlazingBazukas_Bonus1,SPR_BlazingBazukas_Bonus1End
	;dl $FE7C02,$FE7C2C,SPR_BlazingBazukas_Bonus2,SPR_BlazingBazukas_Bonus2End
	;dl $FE7C2C,$FE7C3E,SPR_LowGLabyrinth_Bonus1,SPR_LowGLabyrinth_Bonus1End
	;dl $FE7C3E,$FE7CA8,SPR_LowGLabyrinth_Bonus2,SPR_LowGLabyrinth_Bonus2End
	;dl $FE7CA8,$FE7CCA,SPR_KreviceKreepers_Bonus1,SPR_KreviceKreepers_Bonus1End
	;dl $FE7CCA,$FE7CEC,SPR_KreviceKreepers_Bonus2,SPR_KreviceKreepers_Bonus2End
	;dl $FE7CEC,$FE7D1E,SPR_TearawayToboggan_Bonus1,SPR_TearawayToboggan_Bonus1End
	;dl $FE7D1E,$FE7D38,SPR_TearawayToboggan_Bonus2,SPR_TearawayToboggan_Bonus2End
	;dl $FE7D38,$FE7D52,SPR_BarrelDropBounce_Bonus1,SPR_BarrelDropBounce_Bonus1End
	;dl $FE7D52,$FE7D64,SPR_BarrelDropBounce_Bonus2,SPR_BarrelDropBounce_Bonus2End
	;dl $FE7D64,$FE7D7E,SPR_KrackshotKroc_Bonus1,SPR_KrackshotKroc_Bonus1End
	;dl $FE7D7E,$FE7DE8,SPR_KrackshotKroc_Bonus2,SPR_KrackshotKroc_Bonus2End
	;dl $FE7DE8,$FE7E1A,SPR_LemguinLunge_Bonus1,SPR_LemguinLunge_Bonus1End
	;dl $FE7E1A,$FE7E4C,SPR_LemguinLunge_Bonus2,SPR_LemguinLunge_Bonus2End
	;dl $FE7E4C,$FE7EAE,SPR_BuzzerBarrage_Bonus1,SPR_BuzzerBarrage_Bonus1End
	;dl $FE7EAE,$FE7EC8,SPR_BuzzerBarrage_Bonus2,SPR_BuzzerBarrage_Bonus2End
	;dl $FE7EC8,$FE7F2A,SPR_KongFusedCliffs_Bonus1,SPR_KongFusedCliffs_Bonus1End
	;dl $FE7F2A,$FE7F74,SPR_KongFusedCliffs_Bonus2,SPR_KongFusedCliffs_Bonus2End
	;dl $FE7F74,$FE7F86,SPR_FloodlitFish_Bonus1,SPR_FloodlitFish_Bonus1End
	;dl $FE7F86,$FE7F98,SPR_FloodlitFish_Bonus2,SPR_FloodlitFish_Bonus2End
	;dl $FE7F98,$FE7FB2,SPR_PotHolePanic_Bonus1,SPR_PotHolePanic_Bonus1End
	;dl $FE7FB2,$FE7FD4,SPR_PotHolePanic_Bonus2,SPR_PotHolePanic_Bonus2End
	;dl $FE7FD4,$FE8016,SPR_RopeyRumpus_Bonus1,SPR_RopeyRumpus_Bonus1End
	;dl $FE8016,$FE8040,SPR_RopeyRumpus_Bonus2,SPR_RopeyRumpus_Bonus2End
	;dl $FE8040,$FE806A,SPR_KoindozerKlamber_Bonus1,SPR_KoindozerKlamber_Bonus1End
	;dl $FE806A,$FE8094,SPR_KoindozerKlamber_Bonus2,SPR_KoindozerKlamber_Bonus2End
	;dl $FE8094,$FE80AE,SPR_CreepyCaverns_Bonus1,SPR_CreepyCaverns_Bonus1End
	;dl $FE80AE,$FE80F8,SPR_CreepyCaverns_Bonus2,SPR_CreepyCaverns_Bonus2End
	;dl $FE80F8,$FE811A,SPR_BobbingBarrelBrawl_Bonus1,SPR_BobbingBarrelBrawl_Bonus1End
	;dl $FE811A,$FE814C,SPR_BobbingBarrelBrawl_Bonus2,SPR_BobbingBarrelBrawl_Bonus2End
	;dl $FE814C,$FE815E,SPR_KonveyorRopeKlash_Bonus1,SPR_KonveyorRopeKlash_Bonus1End
	;dl $FE815E,$FE8178,SPR_KonveyorRopeKlash_Bonus2,SPR_KonveyorRopeKlash_Bonus2End
	;dl $FE8178,$FE818A,SPR_PoisonousPipeline_Bonus1,SPR_PoisonousPipeline_Bonus1End
	;dl $FE818A,$FE81EC,SPR_PoisonousPipeline_Bonus2,SPR_PoisonousPipeline_Bonus2End
	;dl $FE81EC,$FE8206,SPR_SwoopySalvo_Bonus3,SPR_SwoopySalvo_Bonus3End
	;dl $FE8206,$FE8240,SPR_SwoopySalvo_Bonus1,SPR_SwoopySalvo_Bonus1End
	;dl $FE8240,$FE8272,SPR_SwoopySalvo_Bonus2,SPR_SwoopySalvo_Bonus2End
	;dl $FE8272,$FE8294,SPR_CrissKrossCliffs_Bonus1,SPR_CrissKrossCliffs_Bonus1End
	;dl $FE8294,$FE82D6,SPR_CrissKrossCliffs_Bonus2,SPR_CrissKrossCliffs_Bonus2End
	;dl $FE82D6,$FE8300,TyrantTwinTussle_Bonus1,TyrantTwinTussle_Bonus1End
	;dl $FE8300,$FE832A,TyrantTwinTussle_Bonus3,TyrantTwinTussle_Bonus3End
	;dl $FE832A,$FE837C,TyrantTwinTussle_Bonus2,TyrantTwinTussle_Bonus2End
	;dl $FE837C,$FE83AE,SPR_StampedeSprint_Bonus2,SPR_StampedeSprint_Bonus2End
	;dl $FE83AE,$FE83D8,SPR_StampedeSprint_Bonus3,SPR_StampedeSprint_Bonus3End
	;dl $FE83D8,$FE8406,SPR_StampedeSprint_Bonus1,SPR_StampedeSprint_Bonus1End
LevelSpritePointersEnd:

;--------------------------------------------------------------------

BananaDataPointersStart:
	;dl $ECD1A2,$ECD1F2,BFD_LakesideLimbo_Main,BFD_LakesideLimbo_MainEnd
	;dl $ECD1F2,$ECD24E,BFD_KreepingKlasps_Main,BFD_KreepingKlasps_MainEnd
	;dl $ECD24E,$ECD2E6,BFD_TidalTrouble_Main,BFD_TidalTrouble_MainEnd
	;dl $ECD2E6,$ECD39A,BFD_DoorstopDash_Main,BFD_DoorstopDash_MainEnd
	;dl $ECD39A,$ECD47E,BFD_SquealsOnWheels_Main,BFD_SquealsOnWheels_MainEnd
	;dl $ECD47E,$ECD532,BFD_MurkyMill_Main,BFD_MurkyMill_MainEnd
	;dl $ECD532,$ECD5B6,BFD_SkiddasRow_Main,BFD_SkiddasRow_MainEnd
	;dl $ECD5B6,$ECD5E2,BFD_LemguinLunge_Main,BFD_LemguinLunge_MainEnd
	;dl $ECD5E2,$ECD67E,BFD_TearawayToboggan_Main,BFD_TearawayToboggan_MainEnd
	;dl $ECD67E,$ECD776,BFD_RipsawRage_Main,BFD_RipsawRage_MainEnd
	;dl $ECD776,$ECD846,BFD_SpringinSpiders_Main,BFD_SpringinSpiders_MainEnd
	;dl $ECD846,$ECD8C6,BFD_BarrelShieldBustUp_Main,BFD_BarrelShieldBustUp_MainEnd
	;dl $ECD8C6,$ECD98A,BFD_SwoopySalvo_Main,BFD_SwoopySalvo_MainEnd
	;dl $ECD98A,$ECDA06,BFD_RiversideRace_Main,BFD_RiversideRace_MainEnd
	;dl $ECDA06,$ECDA26,BFD_LightningLookOut_Main,BFD_LightningLookOut_MainEnd
	;dl $ECDA26,$ECDA9A,BFD_BobbingBarrelBrawl_Main,BFD_BobbingBarrelBrawl_MainEnd
	;dl $ECDA9A,$ECDB2E,BFD_BazzasBlockade_Main,BFD_BazzasBlockade_MainEnd
	;dl $ECDB2E,$ECDC32,BFD_FishFoodFrenzy_Main,BFD_FishFoodFrenzy_MainEnd
	;dl $ECDC32,$ECDD36,BFD_FloodlitFish_Main,BFD_FloodlitFish_MainEnd
	;dl $ECDD36,$ECDE06,BFD_RocketBarrelRide_Main,BFD_RocketBarrelRide_MainEnd
	;dl $ECDE06,$ECDEA2,BFD_TrackerBarrelTrek_Main,BFD_TrackerBarrelTrek_MainEnd
	;dl $ECDEA2,$ECDF66,BFD_BarrelDropBounce_Main,BFD_BarrelDropBounce_MainEnd
	;dl $ECDF66,$ECE016,BFD_FireballFrenzy_Main,BFD_FireballFrenzy_MainEnd
	;dl $ECE016,$ECE0D2,BFD_BlazingBazukas_Main,BFD_BlazingBazukas_MainEnd
	;dl $ECE0D2,$ECE1AA,BFD_KrackshotKroc_Main,BFD_KrackshotKroc_MainEnd
	;dl $ECE1AA,$ECE2E6,BFD_LowGLabyrinth_Main,BFD_LowGLabyrinth_MainEnd
	;dl $ECE2E6,$ECE3AE,BFD_PoisonousPipeline_Main,BFD_PoisonousPipeline_MainEnd
	;dl $ECE3AE,$ECE476,BFD_DemolitionDrainPipe_Main,BFD_DemolitionDrainPipe_MainEnd
	;dl $ECE476,$ECE552,BFD_KreviceKreepers_Main,BFD_KreviceKreepers_MainEnd
	;dl $ECE552,$ECE5DA,BFD_KongFusedCliffs_Main,BFD_KongFusedCliffs_MainEnd
	;dl $ECE5DA,$ECE6E2,BFD_RopeyRumpus_Main,BFD_RopeyRumpus_MainEnd
	;dl $ECE6E2,$ECE826,BFD_BuzzerBarrage_Main,BFD_BuzzerBarrage_MainEnd
	;dl $ECE826,$ECE8A2,BFD_PotHolePanic_Main,BFD_PotHolePanic_MainEnd
	;dl $ECE8A2,$ECE982,BFD_CreepyCaverns_Main,BFD_CreepyCaverns_MainEnd
	;dl $ECE982,$ECE9EE,BFD_KoindozerKlamber_Main,BFD_KoindozerKlamber_MainEnd
	;dl $ECE9EE,$ECEA56,BFD_KonveyorRopeKlash_Main,BFD_KonveyorRopeKlash_MainEnd
	;dl $ECEA56,$ECEAB6,BFD_StampedeSprint_Main,BFD_StampedeSprint_MainEnd
	;dl $ECEAB6,$ECEB0A,BFD_CrissKrossCliffs_Main,BFD_CrissKrossCliffs_MainEnd
	;dl $ECEB0A,$ECEB8A,BFD_TyrantTwinTussle_Main,BFD_TyrantTwinTussle_MainEnd
	;dl $ECEB8A,$ECECCA,BFD_RocketRush_Main,BFD_RocketRush_MainEnd
	;dl $ECECCA,$ECECFE,BFD_LakesideLimbo_Bonus1,BFD_LakesideLimbo_Bonus1End
	;dl $ECECFE,$ECED3A,BFD_DoorstopDash_Bonus1,BFD_DoorstopDash_Bonus1End
	;dl $ECED3A,$ECED5E,BFD_TidalTrouble_Bonus1,BFD_TidalTrouble_Bonus1End
	;dl $ECED5E,$ECED72,BFD_TidalTrouble_Bonus2,BFD_TidalTrouble_Bonus2End
	;dl $ECED72,$ECED82,BFD_SquealsOnWheels_Bonus1,BFD_SquealsOnWheels_Bonus1End
	;dl $ECED82,$ECED86,BFD_BarrelShieldBustUp_Bonus1,BFD_BarrelShieldBustUp_Bonus1End
	;dl $ECED86,$ECEDAA,BFD_SpringinSpiders_Bonus2,BFD_SpringinSpiders_Bonus2End
	;dl $ECEDAA,$ECEDBE,BFD_RocketBarrelRide_Bonus1,BFD_RocketBarrelRide_Bonus1End
	;dl $ECEDBE,$ECEE0A,BFD_RocketBarrelRide_Bonus2,BFD_RocketBarrelRide_Bonus2End
	;dl $ECEE0A,$ECEE72,BFD_TrackerBarrelTrek_Bonus1,BFD_TrackerBarrelTrek_Bonus1End
	;dl $ECEE72,$ECEE92,BFD_DemolitionDrainPipe_Bonus2,BFD_DemolitionDrainPipe_Bonus2End
	;dl $ECEE92,$ECEEB6,BFD_RipsawRage_Bonus1,BFD_RipsawRage_Bonus1End
	;dl $ECEEB6,$ECEECA,BFD_BlazingBazukas_Bonus2,BFD_BlazingBazukas_Bonus2End
	;dl $ECEECA,$ECEF02,BFD_LowGLabyrinth_Bonus1,BFD_LowGLabyrinth_Bonus1End
	;dl $ECEF02,$ECEF22,BFD_KreviceKreepers_Bonus1,BFD_KreviceKreepers_Bonus1End
	;dl $ECEF22,$ECEF3A,BFD_KreviceKreepers_Bonus2,BFD_KreviceKreepers_Bonus2End
	;dl $ECEF3A,$ECEFAA,BFD_TearawayToboggan_Bonus2,BFD_TearawayToboggan_Bonus2End
	;dl $ECEFAA,$ECEFDE,BFD_LemguinLunge_Bonus2,BFD_LemguinLunge_Bonus2End
	;dl $ECEFDE,$ECF02E,BFD_BuzzerBarrage_Bonus2,BFD_BuzzerBarrage_Bonus2End
	;dl $ECF02E,$ECF046,BFD_FloodlitFish_Bonus1,BFD_FloodlitFish_Bonus1End
	;dl $ECF046,$ECF0CA,BFD_FloodlitFish_Bonus2,BFD_FloodlitFish_Bonus2End
	;dl $ECF0CA,$ECF0CE,BFD_PotHolePanic_Bonus1,BFD_PotHolePanic_Bonus1End
	;dl $ECF0CE,$ECF0DA,BFD_RopeyRumpus_Bonus1,BFD_RopeyRumpus_Bonus1End
	;dl $ECF0DA,$ECF106,BFD_KoindozerKlamber_Bonus1,BFD_KoindozerKlamber_Bonus1End
	;dl $ECF106,$ECF146,BFD_CreepyCaverns_Bonus1,BFD_CreepyCaverns_Bonus1End
	;dl $ECF146,$ECF16E,BFD_BobbingBarrelBrawl_Bonus2,BFD_BobbingBarrelBrawl_Bonus2End
	;dl $ECF16E,$ECF1B2,BFD_KonveyorRopeKlash_Bonus1,BFD_KonveyorRopeKlash_Bonus1End
	;dl $ECF1B2,$ECF1FA,BFD_PoisonousPipeline_Bonus1,BFD_PoisonousPipeline_Bonus1End
	;dl $ECF1FA,$ECF1FE,BFD_SwoopySalvo_Bonus3,BFD_SwoopySalvo_Bonus3End
	;dl $ECF1FE,$ECF22A,BFD_TyrantTwinTussle_Bonus1,BFD_TyrantTwinTussle_Bonus1End
	;dl $ECF22A,$ECF236,BFD_TyrantTwinTussle_Bonus2,BFD_TyrantTwinTussle_Bonus2End
BananaDataPointersEnd:

;--------------------------------------------------------------------

PalettesPointersStart:
	;dl $F38F59,$F39359,PAL_Layer1_FloodlitFishLight,PAL_Layer1_FloodlitFishLightEnd
	;dl $F39555,$F39631,PAL_Layer3_LightningLookOutLightning,PAL_Layer3_LightningLookOutLightningEnd
	;dl $F399C5,$F39BA5,PAL_Layer1_SnowLevelSky,PAL_Layer1_SnowLevelSkyEnd
	;dl $FD341B,$FD3439,PAL_Sprite_Dixie_Active,PAL_Sprite_Dixie_ActiveEnd
	;dl $FD3439,$FD3457,PAL_Sprite_Dixie_InActive,PAL_Sprite_Dixie_InActiveEnd
	;dl $FD3457,$FD3475,PAL_Sprite_Dixie_P2Active,PAL_Sprite_Dixie_P2ActiveEnd
	;dl $FD3475,$FD3493,PAL_Sprite_Dixie_P2InActive,PAL_Sprite_Dixie_P2InActiveEnd
	;dl $FD3493,$FD34B1,PAL_Sprite_Dixie_Invincible,PAL_Sprite_Dixie_InvincibleEnd
	;dl $FD34B1,$FD34CF,PAL_Sprite_Dixie_Zapped,PAL_Sprite_Dixie_ZappedEnd
	;dl $FD34CF,$FD34ED,PAL_Sprite_Kiddy_Active,PAL_Sprite_Kiddy_ActiveEnd
	;dl $FD34ED,$FD350B,PAL_Sprite_Kiddy_InActive,PAL_Sprite_Kiddy_InActiveEnd
	;dl $FD350B,$FD3529,PAL_Sprite_Kiddy_P2Active,PAL_Sprite_Kiddy_P2ActiveEnd
	;dl $FD3529,$FD3547,PAL_Sprite_Kiddy_P2InActive,PAL_Sprite_Kiddy_P2InActiveEnd
	;dl $FD3547,$FD3565,PAL_Sprite_Kiddy_Invincible,PAL_Sprite_Kiddy_InvincibleEnd
	;dl $FD3565,$FD3583,PAL_Sprite_Kiddy_Zapped,PAL_Sprite_Kiddy_ZappedEnd
	;dl $FD3583,$FD35A1,PAL_Sprite_DonkeyKong,PAL_Sprite_DonkeyKongEnd
	;dl $FD35A1,$FD35BF,PAL_Sprite_DiddyKong,PAL_Sprite_DiddyKongEnd
	;dl $FD35BF,$FD35DD,PAL_Sprite_Ellie,PAL_Sprite_EllieEnd
	;dl $FD35DD,$FD35FB,PAL_Sprite_Enguarde,PAL_Sprite_EnguardeEnd
	;dl $FD35FB,$FD3619,PAL_Sprite_Squitter,PAL_Sprite_SquitterEnd
	;dl $FD3619,$FD3637,PAL_Sprite_GreenSquawks,PAL_Sprite_GreenSquawksEnd
	;dl $FD3637,$FD3655,PAL_Sprite_PurpleSquawks,PAL_Sprite_PurpleSquawksEnd
	;dl $FD3655,$FD3673,PAL_Sprite_Parry,PAL_Sprite_ParryEnd
	;dl $FD3673,$FD3691,PAL_Sprite_RedBuzz,PAL_Sprite_RedBuzzEnd
	;dl $FD3691,$FD36AF,PAL_Sprite_GreenBuzz,PAL_Sprite_GreenBuzzEnd
	;dl $FD36AF,$FD36CD,PAL_Sprite_ReKoil,PAL_Sprite_ReKoilEnd
	;dl $FD36CD,$FD36EB,PAL_Sprite_Koin,PAL_Sprite_KoinEnd
	;dl $FD36EB,$FD3709,PAL_Sprite_Sneek,PAL_Sprite_SneekEnd
	;dl $FD3709,$FD3727,PAL_Sprite_RedKoco,PAL_Sprite_RedKocoEnd
	;dl $FD3727,$FD3745,PAL_Sprite_GreenKoco,PAL_Sprite_GreenKocoEnd
	;dl $FD3745,$FD3763,PAL_Sprite_GleaminBream,PAL_Sprite_GleaminBreamEnd
	;dl $FD3763,$FD3781,PAL_Sprite_BountyBass,PAL_Sprite_BountyBassEnd
	;dl $FD3781,$FD379F,PAL_Sprite_GreenLurchin,PAL_Sprite_GreenLurchinEnd
	;dl $FD379F,$FD37BD,PAL_Sprite_PurpleLurchin,PAL_Sprite_PurpleLurchinEnd
	;dl $FD37BD,$FD37DB,PAL_Sprite_RedKnikKnak,PAL_Sprite_RedKnikKnakEnd
	;dl $FD37DB,$FD37F9,PAL_Sprite_YellowKnikKnak,PAL_Sprite_YellowKnikKnakEnd
	;dl $FD37F9,$FD3817,PAL_Sprite_BootyBird,PAL_Sprite_BootyBirdEnd
	;dl $FD3817,$FD3835,PAL_Sprite_Bazuka,PAL_Sprite_BazukaEnd
	;dl $FD3835,$FD3853,PAL_Sprite_PurpleNid,PAL_Sprite_PurpleNidEnd
	;dl $FD3853,$FD3871,PAL_Sprite_Kopter,PAL_Sprite_KopterEnd
	;dl $FD3871,$FD388F,PAL_Sprite_NoAnimalBuddySign,PAL_Sprite_NoAnimalBuddySignEnd
	;dl $FD388F,$FD38AD,PAL_Sprite_WarningSign,PAL_Sprite_WarningSignEnd
	;dl $FD38AD,$FD38CB,PAL_Sprite_NoKrosshairSign,PAL_Sprite_NoKrosshairSignEnd
	;dl $FD38CB,$FD38E9,PAL_Sprite_HUDNumbers,PAL_Sprite_HUDNumbersEnd
	;dl $FD38E9,$FD3907,PAL_Sprite_GreenBananas,PAL_Sprite_GreenBananasEnd
	;dl $FD3907,$FD3925,PAL_Sprite_ChristmasPresents,PAL_Sprite_ChristmasPresentsEnd
	;dl $FD3925,$FD3943,PAL_Sprite_ChristmasOrnaments,PAL_Sprite_ChristmasOrnamentsEnd
	;dl $FD3943,$FD3961,PAL_Sprite_MillPlatform,PAL_Sprite_MillPlatformEnd
	;dl $FD3961,$FD397F,PAL_Sprite_FactoryPlatform,PAL_Sprite_FactoryPlatformEnd
	;dl $FD397F,$FD399D,PAL_Sprite_RedExtraLifeBalloon,PAL_Sprite_RedExtraLifeBalloonEnd
	;dl $FD399D,$FD39BB,PAL_Sprite_GreenExtraLifeBalloon,PAL_Sprite_GreenExtraLifeBalloonEnd
	;dl $FD39BB,$FD39D9,PAL_Sprite_BlueExtraLifeBalloon,PAL_Sprite_BlueExtraLifeBalloonEnd
	;dl $FD39D9,$FD39F7,PAL_Sprite_PinkFlag,PAL_Sprite_PinkFlagEnd
	;dl $FD39F7,$FD3A15,PAL_Sprite_PurpleFlag,PAL_Sprite_PurpleFlagEnd
	;dl $FD3A15,$FD3A33,PAL_Sprite_BlueFlag,PAL_Sprite_BlueFlagEnd
	;dl $FD3A33,$FD3A51,PAL_Sprite_GreenFlag,PAL_Sprite_GreenFlagEnd
	;dl $FD3A51,$FD3A6F,PAL_Sprite_LevelEndFlagpole,PAL_Sprite_LevelEndFlagpoleEnd
	;dl $FD3A6F,$FD3A8D,PAL_Sprite_WhiteFlag,PAL_Sprite_WhiteFlagEnd
	;dl $FD3A8D,$FD3AAB,PAL_Sprite_WaterfallBarrel,PAL_Sprite_WaterfallBarrelEnd
	;dl $FD3AAB,$FD3AC9,PAL_Sprite_Barrel,PAL_Sprite_BarrelEnd
	;dl $FD3AC9,$FD3AE7,PAL_Sprite_SteelKeg,PAL_Sprite_SteelKegEnd
	;dl $FD3AE7,$FD3B05,PAL_Sprite_Rocket,PAL_Sprite_RocketEnd
	;dl $FD3B05,$FD3B23,PAL_Sprite_RocketFire,PAL_Sprite_RocketFireEnd
	;dl $FD3B23,$FD3B41,PAL_Sprite_RoastedBuzz,PAL_Sprite_RoastedBuzzEnd
	;dl $FD3B41,$FD3B5F,PAL_Sprite_FuelTank,PAL_Sprite_FuelTankEnd
	;dl $FD3B5F,$FD3B7D,PAL_Sprite_FireAndExplosions,PAL_Sprite_FireAndExplosionsEnd
	;dl $FD3B7D,$FD3B9B,PAL_Sprite_GoldCoins,PAL_Sprite_GoldCoinsEnd
	;dl $FD3B9B,$FD3BB9,PAL_Sprite_BearCoin,PAL_Sprite_BearCoinEnd
	;dl $FD3BB9,$FD3BD7,PAL_Sprite_SaveScreenBonusBCoin,PAL_Sprite_SaveScreenBonusBCoinEnd
	;dl $FD3BD7,$FD3BF5,PAL_Sprite_WaterSplash,PAL_Sprite_WaterSplashEnd
	;dl $FD3BF5,$FD3C13,PAL_Sprite_Klasp,PAL_Sprite_KlaspEnd
	;dl $FD3C13,$FD3C31,PAL_Sprite_KuffNKlout,PAL_Sprite_KuffNKloutEnd
	;dl $FD3C31,$FD3C4F,PAL_Sprite_Bleak,PAL_Sprite_BleakEnd
	;dl $FD3C4F,$FD3C6D,PAL_Sprite_Lemguin,PAL_Sprite_LemguinEnd
	;dl $FD3C6D,$FD3C8B,PAL_Sprite_Kobble,PAL_Sprite_KobbleEnd
	;dl $FD3C8B,$FD3CA9,PAL_Sprite_RedNibbla,PAL_Sprite_RedNibblaEnd
	;dl $FD3CA9,$FD3CC7,PAL_Sprite_Minkey,PAL_Sprite_MinkeyEnd
	;dl $FD3CC7,$FD3CE5,PAL_Sprite_Skidda,PAL_Sprite_SkiddaEnd
	;dl $FD3CE5,$FD3D03,PAL_Sprite_BananaBirds,PAL_Sprite_BananaBirdsEnd
	;dl $FD3D03,$FD3D21,PAL_Sprite_Knocka,PAL_Sprite_KnockaEnd
	;dl $FD3D21,$FD3D3F,PAL_Sprite_Kracka,PAL_Sprite_KrackaEnd
	;dl $FD3D3F,$FD3D5D,PAL_Sprite_GreenBarrel,PAL_Sprite_GreenBarrelEnd
	;dl $FD3D5D,$FD3D7B,PAL_Sprite_RedTNTBarrel,PAL_Sprite_RedTNTBarrelEnd
	;dl $FD3D7B,$FD3D99,PAL_Sprite_Krimp,PAL_Sprite_KrimpEnd
	;dl $FD3D99,$FD3DB7,PAL_Sprite_BarbosEyesAndMouth,PAL_Sprite_BarbosEyesAndMouthEnd
	;dl $FD3DB7,$FD3DD5,PAL_Sprite_Bristles,PAL_Sprite_BristlesEnd
	;dl $FD3DD5,$FD3DF3,PAL_Sprite_BarbosSpikeProjectiles,PAL_Sprite_BarbosSpikeProjectilesEnd
	;dl $FD3DF3,$FD3E11,PAL_Sprite_Krumple,PAL_Sprite_KrumpleEnd
	;dl $FD3E11,$FD3E2F,PAL_Sprite_PurpleSeashellMissle,PAL_Sprite_PurpleSeashellMissleEnd
	;dl $FD3E2F,$FD3E4D,PAL_Sprite_Swoopy,PAL_Sprite_SwoopyEnd
	;dl $FD3E4D,$FD3E6B,PAL_Sprite_Kuchuka,PAL_Sprite_KuchukaEnd
	;dl $FD3E6B,$FD3E89,PAL_Sprite_Bazza,PAL_Sprite_BazzaEnd
	;dl $FD3E89,$FD3EA7,PAL_Sprite_PurpleBarrel,PAL_Sprite_PurpleBarrelEnd
	;dl $FD3EA7,$FD3EC5,PAL_Sprite_KarbinesFireball,PAL_Sprite_KarbinesFireballEnd
	;dl $FD3EC5,$FD3EE3,PAL_Sprite_YellowNid,PAL_Sprite_YellowNidEnd
	;dl $FD3EE3,$FD3F01,PAL_Sprite_Karbine,PAL_Sprite_KarbineEnd
	;dl $FD3F01,$FD3F1F,PAL_Sprite_Koindozer,PAL_Sprite_KoindozerEnd
	;dl $FD3F1F,$FD3F3D,PAL_Sprite_KRool,PAL_Sprite_KRoolEnd
	;dl $FD3F3D,$FD3F5B,PAL_Sprite_ElectricNode,PAL_Sprite_ElectricNodeEnd
	;dl $FD3F5B,$FD3F79,PAL_Sprite_CraneThatCarriesKAOS,PAL_Sprite_CraneThatCarriesKAOSEnd
	;dl $FD3F79,$FD3F97,PAL_Sprite_KnautilusFireballShooter,PAL_Sprite_KnautilusFireballShooterEnd
	;dl $FD3F97,$FD3FB5,PAL_Sprite_KastleKaosBGElements,PAL_Sprite_KastleKaosBGElementsEnd
	;dl $FD3FB5,$FD3FD3,PAL_Sprite_KRoolCurtain,PAL_Sprite_KRoolCurtainEnd
	;dl $FD3FD3,$FD3FF1,PAL_Sprite_ElectricSparkBall,PAL_Sprite_ElectricSparkBallEnd
	;dl $FD3FF1,$FD400F,PAL_Sprite_SquirtsEyelids,PAL_Sprite_SquirtsEyelidsEnd
	;dl $FD400F,$FD402D,PAL_Sprite_SquirtsMouth,PAL_Sprite_SquirtsMouthEnd
	;dl $FD402D,$FD404B,PAL_Sprite_SquirtsEyeballs,PAL_Sprite_SquirtsEyeballsEnd
	;dl $FD404B,$FD4069,PAL_Sprite_YellowSeashellMissle,PAL_Sprite_YellowSeashellMissleEnd
	;dl $FD4069,$FD4087,PAL_Sprite_BlueNibbla,PAL_Sprite_BlueNibblaEnd
	;dl $FD4087,$FD40A5,PAL_Sprite_BluishPurpleNibbla,PAL_Sprite_BluishPurpleNibblaEnd
	;dl $FD40A5,$FD40C3,PAL_Sprite_ReddishPurpleNibbla,PAL_Sprite_ReddishPurpleNibblaEnd
	;dl $FD40C3,$FD40E1,PAL_Sprite_BrightRedNibbla,PAL_Sprite_BrightRedNibblaEnd
	;dl $FD40E1,$FD40FF,PAL_Sprite_FunkyKong,PAL_Sprite_FunkyKongEnd
	;dl $FD40FF,$FD411D,PAL_Sprite_SwankyKong,PAL_Sprite_SwankyKongEnd
	;dl $FD411D,$FD413B,PAL_Sprite_FunkysKongsBandanaAndBelt,PAL_Sprite_FunkysKongsBandanaAndBeltEnd
	;dl $FD413B,$FD4159,PAL_Sprite_WrinklyKong,PAL_Sprite_WrinklyKongEnd
	;dl $FD4159,$FD4177,PAL_Sprite_SittingWrinklyKong,PAL_Sprite_SittingWrinklyKongEnd
	;dl $FD4177,$FD4195,PAL_Sprite_CrankyKong,PAL_Sprite_CrankyKongEnd
	;dl $FD4195,$FD41B3,PAL_Sprite_SwankyKongsBarrelInEnding,PAL_Sprite_SwankyKongsBarrelInEndingEnd
	;dl $FD41B3,$FD41B7,PAL_Sprite_KAOSPurpleText,PAL_Sprite_KAOSPurpleTextEnd
	;dl $FD41B7,$FD41BB,PAL_Sprite_DixieYellowText,PAL_Sprite_DixieYellowTextEnd
	;dl $FD41BB,$FD41BF,PAL_Sprite_DonkeyKongLightOrangeText,PAL_Sprite_DonkeyKongLightOrangeTextEnd
	;dl $FD41BF,$FD41C3,PAL_Sprite_DiddyKongOrangeText,PAL_Sprite_DiddyKongOrangeTextEnd
	;dl $FD41C3,$FD41C7,PAL_Sprite_CrankyKongWhiteText,PAL_Sprite_CrankyKongWhiteTextEnd
	;dl $FD4297,$FD42B5,PAL_Sprite_Unknown1,PAL_Sprite_Unknown1End
	;dl $FD42B5,$FD42D3,PAL_Sprite_Unknown2,PAL_Sprite_Unknown2End
	;dl $FD42D3,$FD42F1,PAL_Sprite_Unknown3,PAL_Sprite_Unknown3End
	;dl $FD42F1,$FD430F,PAL_Sprite_GhostBarrel,PAL_Sprite_GhostBarrelEnd
	;dl $FD430F,$FD432D,PAL_Sprite_Kiddy_TargetShoot,PAL_Sprite_Kiddy_TargetShootEnd
	;dl $FD432D,$FD434B,PAL_Sprite_Kiddy_P2TargetShoot,PAL_Sprite_Kiddy_P2TargetShootEnd
	;dl $FD434B,$FD4369,PAL_Sprite_Dixie_TargetShoot,PAL_Sprite_Dixie_TargetShootEnd
	;dl $FD4369,$FD4387,PAL_Sprite_Dixie_P2TargetShoot,PAL_Sprite_Dixie_P2TargetShootEnd
	;dl $FD4387,$FD43A5,PAL_Sprite_MapDixieAndKiddy_P1,PAL_Sprite_MapDixieAndKiddy_P1End
	;dl $FD43A5,$FD43C3,PAL_Sprite_MapDixieAndKiddy_P2,PAL_Sprite_MapDixieAndKiddy_P2End
	;dl $FD43C3,$FD43E1,PAL_Sprite_PinkAndBlueMapFlags,PAL_Sprite_PinkAndBlueMapFlagsEnd
	;dl $FD43E1,$FD43FF,PAL_Sprite_PurpleAndGreenMapFlags,PAL_Sprite_PurpleAndGreenMapFlagsEnd
	;dl $FD43FF,$FD441D,PAL_Sprite_Toboggan,PAL_Sprite_TobogganEnd
	;dl $FD441D,$FD443B,PAL_Sprite_LargePipe,PAL_Sprite_LargePipeEnd
	;dl $FD443B,$FD4459,PAL_Sprite_HeadToHeadDots,PAL_Sprite_HeadToHeadDotsEnd
	;dl $FD4459,$FD4477,PAL_Sprite_Unknown4,PAL_Sprite_Unknown4End
	;dl $FD4477,$FD4495,PAL_Sprite_TargetShootTargets,PAL_Sprite_TargetShootTargetsEnd
	;dl $FD4495,$FD44B3,PAL_Sprite_Unknown5,PAL_Sprite_Unknown5End
	;dl $FD44B3,$FD44D1,PAL_Sprite_PinkTimerNumbers,PAL_Sprite_PinkTimerNumbersEnd
	;dl $FD44D1,$FD44EF,PAL_Sprite_Unknown6,PAL_Sprite_Unknown6End
	;dl $FD44EF,$FD450D,PAL_Sprite_RedText,PAL_Sprite_RedTextEnd
	;dl $FD450D,$FD452B,PAL_Sprite_BlueText,PAL_Sprite_BlueTextEnd
	;dl $FD452B,$FD4549,PAL_Sprite_SneekWheel,PAL_Sprite_SneekWheelEnd
	;dl $FD4549,$FD4567,PAL_Sprite_RightWallMetalDoor,PAL_Sprite_RightWallMetalDoorEnd
	;dl $FD4567,$FD4585,PAL_Sprite_LeftWallMetalDoor,PAL_Sprite_LeftWallMetalDoorEnd
	;dl $FD4585,$FD45A3,PAL_Sprite_ArichLegs,PAL_Sprite_ArichLegsEnd
	;dl $FD45A3,$FD45C1,PAL_Sprite_ArichFace,PAL_Sprite_ArichFaceEnd
	;dl $FD45C1,$FD45DF,PAL_Sprite_ArichBouncingSpit,PAL_Sprite_ArichBouncingSpitEnd
	;dl $FD45DF,$FD45FD,PAL_Sprite_Unknown7,PAL_Sprite_Unknown7End
	;dl $FD45FD,$FD461B,PAL_Sprite_BelchasTeeth,PAL_Sprite_BelchasTeethEnd
	;dl $FD461B,$FD4639,PAL_Sprite_SideOfBelchasMouth,PAL_Sprite_SideOfBelchasMouthEnd
	;dl $FD4639,$FD4657,PAL_Sprite_BelchasEye,PAL_Sprite_BelchasEyeEnd
	;dl $FD4657,$FD4675,PAL_Sprite_SquirtsWaterStream,PAL_Sprite_SquirtsWaterStreamEnd
	;dl $FD4675,$FD46B1,PAL_Sprite_BuzzSwarm,PAL_Sprite_BuzzSwarmEnd
	;dl $FD46B1,$FD46CF,PAL_Sprite_KAOSLaserHead,PAL_Sprite_KAOSLaserHeadEnd
	;dl $FD46CF,$FD46ED,PAL_Sprite_KAOSSkullHead,PAL_Sprite_KAOSSkullHeadEnd
	;dl $FD46ED,$FD470B,PAL_Sprite_KAOSCylinderHead,PAL_Sprite_KAOSCylinderHeadEnd
	;dl $FD470B,$FD4729,PAL_Sprite_KAOSBoxingGlove,PAL_Sprite_KAOSBoxingGloveEnd
	;dl $FD4729,$FD4747,PAL_Sprite_HeadToHeadCharacterHeads,PAL_Sprite_HeadToHeadCharacterHeadsEnd
	;dl $FD4747,$FD4765,PAL_Sprite_BarrelShield,PAL_Sprite_BarrelShieldEnd
	;dl $FD4765,$FD4783,PAL_Sprite_RotatingCylinderPegs,PAL_Sprite_RotatingCylinderPegsEnd
	;dl $FD4783,$FD47A1,PAL_Sprite_RotatingCylinderBlueKeys,PAL_Sprite_RotatingCylinderBlueKeysEnd
	;dl $FD47A1,$FD47BF,PAL_Sprite_RotatingCylinderGreenKeys,PAL_Sprite_RotatingCylinderGreenKeysEnd
	;dl $FD47BF,$FD47DD,PAL_Sprite_RotatingCylinderRedKeys,PAL_Sprite_RotatingCylinderRedKeysEnd
	;dl $FD47DD,$FD47FB,PAL_Sprite_RotatingCylinderYellowKeys,PAL_Sprite_RotatingCylinderYellowKeysEnd
	;dl $FD47FB,$FD4819,PAL_Sprite_RotatingCylinderCrank,PAL_Sprite_RotatingCylinderCrankEnd
	;dl $FD4819,$FD4837,PAL_Sprite_RareLogo,PAL_Sprite_RareLogoEnd
	;dl $FD4837,$FD4857,PAL_Sprite_DKC2MapDiddyDixieTextAndLevelIcons,PAL_Sprite_DKC2MapDiddyDixieTextAndLevelIconsEnd
	;dl $FD4857,$FD4877,PAL_Sprite_Unknown8,PAL_Sprite_Unknown8End
	;dl $FD4877,$FD4895,PAL_Sprite_FunkysRentalsPool,PAL_Sprite_FunkysRentalsPoolEnd
	;dl $FD4895,$FD48B3,PAL_Sprite_MotorBoat,PAL_Sprite_MotorBoatEnd
	;dl $FD48B3,$FD48D1,PAL_Sprite_Hovercraft,PAL_Sprite_HovercraftEnd
	;dl $FD48D1,$FD48EF,PAL_Sprite_BleaksHouseFace,PAL_Sprite_BleaksHouseFaceEnd
	;dl $FD48EF,$FD490D,PAL_Sprite_CottonTopCoveWaterfalls,PAL_Sprite_CottonTopCoveWaterfallsEnd
	;dl $FD490D,$FD492B,PAL_Sprite_GlacialGrottoCover,PAL_Sprite_GlacialGrottoCoverEnd
	;dl $FD492B,$FD4949,PAL_Sprite_SmugglersCoveCover,PAL_Sprite_SmugglersCoveCoverEnd
	;dl $FD4949,$FD4967,PAL_Sprite_KMapFlags,PAL_Sprite_KMapFlagsEnd
	;dl $FD4967,$FD4985,PAL_Sprite_WrinklysSaveCave,PAL_Sprite_WrinklysSaveCaveEnd
	;dl $FD4985,$FD49A3,PAL_Sprite_ArichAmbushFace,PAL_Sprite_ArichAmbushFaceEnd
	;dl $FD49A3,$FD49C1,PAL_Sprite_BrashsCabinSmoke,PAL_Sprite_BrashsCabinSmokeEnd
	;dl $FD49C1,$FD49FD,PAL_Sprite_ArichsHoardCover,PAL_Sprite_ArichsHoardCoverEnd
	;dl $FD49FD,$FD4A1B,PAL_Sprite_DoubleTroubleSign,PAL_Sprite_DoubleTroubleSignEnd
	;dl $FD4A1B,$FD4A39,PAL_Sprite_Bazaar,PAL_Sprite_BazaarEnd
	;dl $FD4A39,$FD4A57,PAL_Sprite_BazaarsAccessories,PAL_Sprite_BazaarsAccessoriesEnd
	;dl $FD4A57,$FD4A75,PAL_Sprite_Bramble,PAL_Sprite_BrambleEnd
	;dl $FD4A75,$FD4A93,PAL_Sprite_BramblesAccessories,PAL_Sprite_BramblesAccessoriesEnd
	;dl $FD4A93,$FD4AB1,PAL_Sprite_Brash,PAL_Sprite_BrashEnd
	;dl $FD4AB1,$FD4ACF,PAL_Sprite_Blunder,PAL_Sprite_BlunderEnd
	;dl $FD4ACF,$FD4AED,PAL_Sprite_BlizzardsAccessories,PAL_Sprite_BlizzardsAccessoriesEnd
	;dl $FD4AED,$FD4B0B,PAL_Sprite_BrashsAccessories,PAL_Sprite_BrashsAccessoriesEnd
	;dl $FD4B0B,$FD4B29,PAL_Sprite_BlundersAccessories,PAL_Sprite_BlundersAccessoriesEnd
	;dl $FD4B29,$FD4B47,PAL_Sprite_Bazooka,PAL_Sprite_BazookaEnd
	;dl $FD4B47,$FD4B65,PAL_Sprite_Boomer,PAL_Sprite_BoomerEnd
	;dl $FD4B65,$FD4B83,PAL_Sprite_Baffle,PAL_Sprite_BaffleEnd
	;dl $FD4B83,$FD4BA1,PAL_Sprite_Barnacle,PAL_Sprite_BarnacleEnd
	;dl $FD4BA1,$FD4BBF,PAL_Sprite_Barter,PAL_Sprite_BarterEnd
	;dl $FD4BBF,$FD4BDD,PAL_Sprite_Benny,PAL_Sprite_BennyEnd
	;dl $FD4BDD,$FD4BFB,PAL_Sprite_Bjorn,PAL_Sprite_BjornEnd
	;dl $FD4BFB,$FD4C19,PAL_Sprite_Blue,PAL_Sprite_BlueEnd
	;dl $FD4C19,$FD4C37,PAL_Sprite_Blizzard,PAL_Sprite_BlizzardEnd
	;dl $FD4C37,$FD4C55,PAL_Sprite_BazookasAccessories,PAL_Sprite_BazookasAccessoriesEnd
	;dl $FD4C55,$FD4C73,PAL_Sprite_BoomersAccessories,PAL_Sprite_BoomersAccessoriesEnd
	;dl $FD4C73,$FD4C91,PAL_Sprite_BafflesAccessories,PAL_Sprite_BafflesAccessoriesEnd
	;dl $FD4C91,$FD4CAF,PAL_Sprite_BarnaclesAccessories,PAL_Sprite_BarnaclesAccessoriesEnd
	;dl $FD4CAF,$FD4CCD,PAL_Sprite_BartersAccessories,PAL_Sprite_BartersAccessoriesEnd
	;dl $FD4CCD,$FD4CEB,PAL_Sprite_BennysAccessories,PAL_Sprite_BennysAccessoriesEnd
	;dl $FD4CEB,$FD4D09,PAL_Sprite_BjornsAccessories,PAL_Sprite_BjornsAccessoriesEnd
	;dl $FD4D09,$FD4D27,PAL_Sprite_BoomersFan,PAL_Sprite_BoomersFanEnd
	;dl $FD4D27,$FD4D63,PAL_Sprite_Unknown9,PAL_Sprite_Unknown9End
	;dl $FD4D63,$FD4D81,PAL_Sprite_FileSelectOptionsText,PAL_Sprite_FileSelectOptionsTextEnd
	;dl $FD4D81,$FD4D9F,PAL_Sprite_FileSelectDigitalDisplayText,PAL_Sprite_FileSelectDigitalDisplayTextEnd
	;dl $FD4D9F,$FD4DBD,PAL_Sprite_BrashesCabinDigitalDisplay,PAL_Sprite_BrashesCabinDigitalDisplayEnd
	;dl $FD4DBD,$FD4DDB,PAL_Sprite_MainMapWaterFallByCottonTopCove,PAL_Sprite_MainMapWaterFallByCottonTopCoveEnd
	;dl $FD4DDB,$FD4DF9,PAL_Sprite_MainMapWideWaterfalls,PAL_Sprite_MainMapWideWaterfallsEnd
	;dl $FD4DF9,$FD4E17,PAL_Sprite_Nintendo64,PAL_Sprite_Nintendo64End
	;dl $FD4E17,$FD4E35,PAL_Sprite_GameOverBlocks_G,PAL_Sprite_GameOverBlocks_GEnd
	;dl $FD4E35,$FD4E53,PAL_Sprite_GameOverBlocks_AM,PAL_Sprite_GameOverBlocks_AMEnd
	;dl $FD4E53,$FD4E71,PAL_Sprite_GameOverBlocks_E,PAL_Sprite_GameOverBlocks_EEnd
	;dl $FD4E71,$FD4E8F,PAL_Sprite_GameOverBlocks_O,PAL_Sprite_GameOverBlocks_OEnd
	;dl $FD4E8F,$FD4EAD,PAL_Sprite_GameOverBlocks_V,PAL_Sprite_GameOverBlocks_VEnd
	;dl $FD4EAD,$FD4ECB,PAL_Sprite_GameOverBlocks_ER,PAL_Sprite_GameOverBlocks_EREnd
	;dl $FD4ECB,$FD4EE9,PAL_Sprite_Unknown10,PAL_Sprite_Unknown10End
	;dl $FD4EE9,$FD4F07,PAL_Sprite_Unknown11,PAL_Sprite_Unknown11End
	;dl $FD4F07,$FD4F25,PAL_Sprite_BramblesVase,PAL_Sprite_BramblesVaseEnd
	;dl $FD4F25,$FD4F43,PAL_Sprite_AreaNameFont,PAL_Sprite_AreaNameFontEnd
	;dl $FD4F43,$FD4F61,PAL_Sprite_UsedInventoryItems1,PAL_Sprite_UsedInventoryItems1End
	;dl $FD4F61,$FD4F7F,PAL_Sprite_UsedInventoryItems2,PAL_Sprite_UsedInventoryItems2End
	;dl $FD4F7F,$FD4F9D,PAL_Sprite_MainMapRocksAndWaterTrails,PAL_Sprite_MainMapRocksAndWaterTrailsEnd
	;dl $FD4F9D,$FD4FBB,PAL_Sprite_Gyrocopter,PAL_Sprite_GyrocopterEnd
	;dl $FD4FBB,$FD4FD9,PAL_Sprite_TurboSki,PAL_Sprite_TurboSkiEnd
	;dl $FD4FD9,$FD4FF7,PAL_Sprite_P2AreaNameFont,PAL_Sprite_P2AreaNameFontEnd
	;dl $FD4FF7,$FD5015,PAL_Sprite_BlueCrystal,PAL_Sprite_BlueCrystalEnd
	;dl $FD5015,$FD5033,PAL_Sprite_GreenCrystal,PAL_Sprite_GreenCrystalEnd
	;dl $FD5033,$FD5051,PAL_Sprite_RedCrystal,PAL_Sprite_RedCrystalEnd
	;dl $FD5051,$FD506F,PAL_Sprite_YellowCrystal,PAL_Sprite_YellowCrystalEnd
	;dl $FD506F,$FD508D,PAL_Sprite_GlowingBlueCrystal,PAL_Sprite_GlowingBlueCrystalEnd
	;dl $FD508D,$FD50AB,PAL_Sprite_GlowingGreenCrystal,PAL_Sprite_GlowingGreenCrystalEnd
	;dl $FD50AB,$FD50C9,PAL_Sprite_GlowingRedCrystal,PAL_Sprite_GlowingRedCrystalEnd
	;dl $FD50C9,$FD50E7,PAL_Sprite_GlowingYellowCrystal,PAL_Sprite_GlowingYellowCrystalEnd
	;dl $FD50E7,$FD5105,PAL_Sprite_MusicTestNotes,PAL_Sprite_MusicTestNotesEnd
	;dl $FD5105,$FD5123,PAL_Sprite_Unknown12,PAL_Sprite_Unknown12End
	;dl $FD5123,$FD5141,PAL_Sprite_MusicTestSign,PAL_Sprite_MusicTestSignEnd
	;dl $FD5141,$FD515F,PAL_Sprite_BountyBayCover,PAL_Sprite_BountyBayCoverEnd
	;dl $FD515F,$FD517D,PAL_Sprite_CrystalShards,PAL_Sprite_CrystalShardsEnd
	;dl $FD517D,$FD51B9,PAL_Sprite_KremwoodForestLog,PAL_Sprite_KremwoodForestLogEnd
	;dl $FD51B9,$FD51D7,PAL_Sprite_MapCannon,PAL_Sprite_MapCannonEnd
	;dl $FD51D7,$FD51F5,PAL_Sprite_Chairlifts,PAL_Sprite_ChairliftsEnd
	;dl $FD51F5,$FD5213,PAL_Sprite_BoomersFuse,PAL_Sprite_BoomersFuseEnd
	;dl $FD5213,$FD5231,PAL_Sprite_SewerStockpileCover,PAL_Sprite_SewerStockpileCoverEnd
	;dl $FD5231,$FD524F,PAL_Sprite_SkyHighSecretRock,PAL_Sprite_SkyHighSecretRockEnd
	;dl $FD524F,$FD526D,PAL_Sprite_Rockpile,PAL_Sprite_RockpileEnd
	;dl $FD526D,$FD528B,PAL_Sprite_ClifftopCacheCover,PAL_Sprite_ClifftopCacheCoverEnd
	;dl $FD528B,$FD52A9,PAL_Sprite_RazorRidgePipeAndWhirlpool,PAL_Sprite_RazorRidgePipeAndWhirlpoolEnd
	;dl $FD52A9,$FD52C7,PAL_Sprite_Krosshair,PAL_Sprite_KrosshairEnd
	;dl $FD52C7,$FD52E5,PAL_Sprite_Knautilus,PAL_Sprite_KnautilusEnd
	;dl $FD52E5,$FD5303,PAL_Sprite_KremtoaBridge,PAL_Sprite_KremtoaBridgeEnd
	;dl $FD5303,$FD5321,PAL_Sprite_BananaBirdQueenHead,PAL_Sprite_BananaBirdQueenHeadEnd
	;dl $FD5321,$FD533F,PAL_Sprite_MapKRool,PAL_Sprite_MapKRoolEnd
	;dl $FD533F,$FD535D,PAL_Sprite_KRoolsEyes,PAL_Sprite_KRoolsEyesEnd
	;dl $FD535D,$FD537B,PAL_Sprite_GiantBananaBirdQueenEgg,PAL_Sprite_GiantBananaBirdQueenEggEnd
	;dl $FD537B,$FD5399,PAL_Sprite_RedGemInBananaBirdQueenBarrier,PAL_Sprite_RedGemInBananaBirdQueenBarrierEnd
	;dl $FD5399,$FD53B7,PAL_Sprite_LightsOnBananaBirdQueenBarrier,PAL_Sprite_LightsOnBananaBirdQueenBarrierEnd
	;dl $FD53B7,$FD53D5,PAL_Sprite_KRoolHead,PAL_Sprite_KRoolHeadEnd
	;dl $FD53D5,$FD53F3,PAL_Sprite_MapBananaBirdQueen,PAL_Sprite_MapBananaBirdQueenEnd
	;dl $FD53F3,$FD5411,PAL_Sprite_FunkyKongDrivingBoat,PAL_Sprite_FunkyKongDrivingBoatEnd
	;dl $FD5411,$FD542F,PAL_Sprite_KarateCrankyTrophy,PAL_Sprite_KarateCrankyTrophyEnd
	;dl $FD542F,$FD544D,PAL_Sprite_PhotoEdges,PAL_Sprite_PhotoEdgesEnd
	;dl $FD544D,$FD546B,PAL_Sprite_PhotoAlbumSectionNames,PAL_Sprite_PhotoAlbumSectionNamesEnd
	;dl $FD546B,$FD5489,PAL_Sprite_Unknown13,PAL_Sprite_Unknown13End
	;dl $FD5489,$FD54A7,PAL_Sprite_KongFusedCliffsFire,PAL_Sprite_KongFusedCliffsFireEnd
	;dl $FD54A7,$FD54C5,PAL_Sprite_LavaSmoke,PAL_Sprite_LavaSmokeEnd
	;dl $FD54C5,$FD54E3,PAL_Sprite_Unknown14,PAL_Sprite_Unknown14End
	;dl $FD55F9,$FD5601,PAL_Layer3_ErrorScreenText,PAL_Layer3_ErrorScreenTextEnd
	;dl $FD5601,$FD5701,PAL_FGBG_LakesideLimbo,PAL_FGBG_LakesideLimboEnd
	;dl $FD5701,$FD5801,PAL_FGBG_RocketBarrelRide,PAL_FGBG_RocketBarrelRideEnd
	;dl $FD5801,$FD5901,PAL_FGBG_BarrelDropBounce,PAL_FGBG_BarrelDropBounceEnd
	;dl $FD5901,$FD5A01,PAL_FGBG_TrackerBarrelTrek,PAL_FGBG_TrackerBarrelTrekEnd
	;dl $FD5A01,$FD5B01,PAL_FGBG_SquirtsShowdown,PAL_FGBG_SquirtsShowdownEnd
	;dl $FD5B01,$FD5C01,PAL_FGBG_SwankysSideshowInTent,PAL_FGBG_SwankysSideshowInTentEnd
	;dl $FD5C01,$FD5D01,PAL_FGBG_Unknown1,PAL_FGBG_Unknown1End
	;dl $FD5D01,$FD5DE1,PAL_FGBG_BarrelShieldBustUp,PAL_FGBG_BarrelShieldBustUpEnd
	;dl $FD5DE1,$FD5EC1,PAL_FGBG_SwoopySalvo_Volcanic,PAL_FGBG_SwoopySalvo_VolcanicEnd
	;dl $FD5EC1,$FD5FA1,PAL_FGBG_ArichsAmbush,PAL_FGBG_ArichsAmbushEnd
	;dl $FD5FA1,$FD5FC1,PAL_Layer1_ArichBody,PAL_Layer1_ArichBodyEnd
	;dl $FD5FC1,$FD60C1,PAL_FGBG_SkiddasRow,PAL_FGBG_SkiddasRowEnd
	;dl $FD60C1,$FD61C1,PAL_FGBG_SquealsOnWheels,PAL_FGBG_SquealsOnWheelsEnd
	;dl $FD61C1,$FD62C1,PAL_FGBG_DoorstopDash,PAL_FGBG_DoorstopDashEnd
	;dl $FD62C1,$FD6301,PAL_Layer2_Belcha,PAL_Layer2_BelchaEnd
	;dl $FD6301,$FD6401,PAL_FGBG_BelchasBarn,PAL_FGBG_BelchasBarnEnd
	;dl $FD6401,$FD6501,PAL_FGBG_WrinklysSaveCave1,PAL_FGBG_WrinklysSaveCave1End
	;dl $FD6501,$FD6601,PAL_FGBG_WrinklysSaveCave2,PAL_FGBG_WrinklysSaveCave2End
	;dl $FD6601,$FD6701,PAL_FGBG_WrinklysSaveCave3,PAL_FGBG_WrinklysSaveCave3End
	;dl $FD6701,$FD6801,PAL_FGBG_WrinklysSaveCave4,PAL_FGBG_WrinklysSaveCave4End
	;dl $FD6801,$FD6901,PAL_FGBG_KremwoodForest,PAL_FGBG_KremwoodForestEnd
	;dl $FD6901,$FD6A01,PAL_FGBG_MurkyMill,PAL_FGBG_MurkyMillEnd
	;dl $FD6A01,$FD6B01,PAL_FGBG_BazaarsGeneralStore,PAL_FGBG_BazaarsGeneralStoreEnd
	;dl $FD6B01,$FD6C01,PAL_FGBG_K3,PAL_FGBG_K3End
	;dl $FD6C01,$FD6D01,PAL_FGBG_BlizzardsBaseCamp,PAL_FGBG_BlizzardsBaseCampEnd
	;dl $FD6D01,$FD6E01,PAL_FGBG_BlundersBooth,PAL_FGBG_BlundersBoothEnd
	;dl $FD6E01,$FD6F01,PAL_FGBG_BramblesBungalow,PAL_FGBG_BramblesBungalowEnd
	;dl $FD6F01,$FD7001,PAL_FGBG_BarnaclesIsland,PAL_FGBG_BarnaclesIslandEnd
	;dl $FD7001,$FD7101,PAL_FGBG_BrashsCabin,PAL_FGBG_BrashsCabinEnd
	;dl $FD7101,$FD7201,PAL_FGBG_BluesBeachHut,PAL_FGBG_BluesBeachHutEnd
	;dl $FD7201,$FD7301,PAL_FGBG_BennysChairlifts,PAL_FGBG_BennysChairliftsEnd
	;dl $FD7301,$FD7401,PAL_FGBG_BoomersBombShelter_Volcanic,PAL_FGBG_BoomersBombShelter_VolcanicEnd
	;dl $FD7401,$FD7421,PAL_FGBG_MainMapLargeClouds,PAL_FGBG_MainMapLargeCloudsEnd
	;dl $FD7421,$FD7521,PAL_FGBG_MainMap,PAL_FGBG_MainMapEnd
	;dl $FD7521,$FD7621,PAL_FGBG_GameOverScreen,PAL_FGBG_GameOverScreenEnd
	;dl $FD7621,$FD7661,PAL_FGBG_RareLogo,PAL_FGBG_RareLogoEnd
	;dl $FD7661,$FD7681,PAL_Layer3_Credits,PAL_Layer3_CreditsEnd
	;dl $FD7681,$FD76E1,PAL_FGBG_NintendoPresentsScreen,PAL_FGBG_NintendoPresentsScreenEnd
	;dl $FD76E1,$FD7701,PAL_FGBG_JapaneseTitleScreenLogo,PAL_FGBG_JapaneseTitleScreenLogoEnd
	;dl $FD7701,$FD7801,PAL_FGBG_TitleScreen,PAL_FGBG_TitleScreenEnd
	;dl $FD7801,$FD7901,PAL_FGBG_BleaksHouse,PAL_FGBG_BleaksHouseEnd
	;dl $FD7901,$FD7921,PAL_FGBG_CopyrightScreen,PAL_FGBG_CopyrightScreenEnd
	;dl $FD7921,$FD7A21,PAL_FGBG_RiversideRace,PAL_FGBG_RiversideRaceEnd
	;dl $FD7A21,$FD7B21,PAL_FGBG_LightningLookOut_Normal,PAL_FGBG_LightningLookOut_NormalEnd
	;dl $FD7B21,$FD7C21,PAL_FGBG_BobbingBarrelBrawl,PAL_FGBG_BobbingBarrelBrawlEnd
	;dl $FD7C21,$FD7D21,PAL_FGBG_LightningLookOut_LightningFlash,PAL_FGBG_LightningLookOut_LightningFlashEnd
	;dl $FD7D21,$FD7D41,PAL_FGBG_Unknown2,PAL_FGBG_Unknown2End
	;dl $FD7D41,$FD7E41,PAL_FGBG_LakeOrangatanga,PAL_FGBG_LakeOrangatangaEnd
	;dl $FD7E41,$FD7E61,PAL_Layer3_BelchasBarn,PAL_Layer3_BelchasBarnEnd
	;dl $FD7E61,$FD7F61,PAL_FGBG_DemolitionDrainPipe,PAL_FGBG_DemolitionDrainPipeEnd
	;dl $FD7F61,$FD8061,PAL_FGBG_LowGLabyrinth,PAL_FGBG_LowGLabyrinthEnd
	;dl $FD8061,$FD8161,PAL_FGBG_PoisonousPipeline,PAL_FGBG_PoisonousPipelineEnd
	;dl $FD8161,$FD8261,PAL_FGBG_BazzasBlockade,PAL_FGBG_BazzasBlockadeEnd
	;dl $FD8261,$FD8361,PAL_FGBG_FloodlitFish,PAL_FGBG_FloodlitFishEnd
	;dl $FD8361,$FD8461,PAL_FGBG_TVScreen,PAL_FGBG_TVScreenEnd
	;dl $FD8461,$FD8561,PAL_FGBG_SwankysSideshowOutside,PAL_FGBG_SwankysSideshowOutsideEnd
	;dl $FD8561,$FD8641,PAL_FGBG_FunkysRentals,PAL_FGBG_FunkysRentalsEnd
	;dl $FD8641,$FD8741,PAL_FGBG_FileSelectScreen,PAL_FGBG_FileSelectScreenEnd
	;dl $FD8741,$FD8841,PAL_FGBG_BananaBirdCave,PAL_FGBG_BananaBirdCaveEnd
	;dl $FD8841,$FD8861,PAL_Layer2_BonusRoomIntroScreen,PAL_Layer2_BonusRoomIntroScreenEnd
	;dl $FD8861,$FD8941,PAL_Layer1_Player1CollectXXStarsScreen,PAL_Layer1_Player1CollectXXStarsScreenEnd
	;dl $FD8941,$FD8A21,PAL_Layer1_Player1BashTheBaddiesScreen,PAL_Layer1_Player1BashTheBaddiesScreenEnd
	;dl $FD8A21,$FD8B01,PAL_Layer1_Player1GrabXXBananasScreen,PAL_Layer1_Player1GrabXXBananasScreenEnd
	;dl $FD8B01,$FD8BE1,PAL_Layer1_Player1FindTheCoinScreen,PAL_Layer1_Player1FindTheCoinScreenEnd
	;dl $FD8BE1,$FD8CE1,PAL_FGBG_CottonTopCove,PAL_FGBG_CottonTopCoveEnd
	;dl $FD8CE1,$FD8DE1,PAL_FGBG_Mekanos,PAL_FGBG_MekanosEnd
	;dl $FD8DE1,$FD8EE1,PAL_FGBG_RazorRidge,PAL_FGBG_RazorRidgeEnd
	;dl $FD8EE1,$FD8FD9,PAL_FGBG_KAOSKore,PAL_FGBG_KAOSKoreEnd
	;dl $FD8FD9,$FD8FF9,PAL_FGBG_AnimatedKAOSKoreColors,PAL_FGBG_AnimatedKAOSKoreColorsEnd
	;dl $FD8FF9,$FD90F9,PAL_FGBG_Kremtoa_Normal,PAL_FGBG_Kremtoa_NormalEnd
	;dl $FD90F9,$FD91F9,PAL_FGBG_Kremtoa_Volcanic,PAL_FGBG_Kremtoa_VolcanicEnd
	;dl $FD91F9,$FD92F9,PAL_FGBG_KongFusedCliffs,PAL_FGBG_KongFusedCliffsEnd
	;dl $FD92F9,$FD93F9,PAL_FGBG_CrissKrossCliffs_Volcanic,PAL_FGBG_CrissKrossCliffs_VolcanicEnd
	;dl $FD93F9,$FD94F9,PAL_FGBG_RopeyRumpus,PAL_FGBG_RopeyRumpusEnd
	;dl $FD94F9,$FD95F9,PAL_FGBG_KreviceKreepers,PAL_FGBG_KreviceKreepersEnd
	;dl $FD95F9,$FD96F9,PAL_FGBG_CrissKrossCliffs_Normal,PAL_FGBG_CrissKrossCliffs_NormalEnd
	;dl $FD96F9,$FD97F9,PAL_FGBG_RocketRush_Normal,PAL_FGBG_RocketRush_NormalEnd
	;dl $FD97F9,$FD98F9,PAL_FGBG_KastleKAOS,PAL_FGBG_KastleKAOSEnd
	;dl $FD98F9,$FD9939,PAL_Layer1_KAOS,PAL_Layer1_KAOSEnd
	;dl $FD9939,$FD9A39,PAL_FGBG_Knautilus,PAL_FGBG_KnautilusEnd
	;dl $FD9A39,$FD9B39,PAL_FGBG_StampedeSprint_Normal,PAL_FGBG_StampedeSprint_NormalEnd
	;dl $FD9B39,$FD9C39,PAL_FGBG_KoindozerKlamber,PAL_FGBG_KoindozerKlamberEnd
	;dl $FD9C39,$FD9D39,PAL_FGBG_KonveyorRopeKlash,PAL_FGBG_KonveyorRopeKlashEnd
	;dl $FD9D39,$FD9E39,PAL_FGBG_StampedeSprint_Volcanic,PAL_FGBG_StampedeSprint_VolcanicEnd
	;dl $FD9E39,$FD9F39,PAL_FGBG_FireballFrenzy,PAL_FGBG_FireballFrenzyEnd
	;dl $FD9F39,$FDA039,PAL_FGBG_KrackshotKroc,PAL_FGBG_KrackshotKrocEnd
	;dl $FDA039,$FDA139,PAL_FGBG_BlazingBazukas,PAL_FGBG_BlazingBazukasEnd
	;dl $FDA139,$FDA239,PAL_FGBG_KAOSKarnage,PAL_FGBG_KAOSKarnageEnd
	;dl $FDA239,$FDA339,PAL_FGBG_BananaBirdQueenScreen,PAL_FGBG_BananaBirdQueenScreenEnd
	;dl $FDA339,$FDA439,PAL_FGBG_TyrantTwinTussle_Normal,PAL_FGBG_TyrantTwinTussle_NormalEnd
	;dl $FDA439,$FDA539,PAL_FGBG_BuzzerBarrage,PAL_FGBG_BuzzerBarrageEnd
	;dl $FDA539,$FDA639,PAL_FGBG_PotHolePanic,PAL_FGBG_PotHolePanicEnd
	;dl $FDA639,$FDA739,PAL_FGBG_CreepyCaverns,PAL_FGBG_CreepyCavernsEnd
	;dl $FDA739,$FDA839,PAL_FGBG_TyrantTwinTussle_Volcanic,PAL_FGBG_TyrantTwinTussle_VolcanicEnd
	;dl $FDA839,$FDA879,PAL_FGBG_PhotoAlbumCover,PAL_FGBG_PhotoAlbumCoverEnd
	;dl $FDA879,$FDA899,PAL_FGBG_PhotoAlbumSection,PAL_FGBG_PhotoAlbumSectionEnd
	;dl $FDA899,$FDA999,PAL_Layer2_BaffleAndBoomerPhotos,PAL_Layer2_BaffleAndBoomerPhotosEnd
	;dl $FDA999,$FDAA99,PAL_Layer2_BazaarAndBarnaclePhotos,PAL_Layer2_BazaarAndBarnaclePhotosEnd
	;dl $FDAA99,$FDAB99,PAL_Layer2_BlizzardAndBramblePhotos,PAL_Layer2_BlizzardAndBramblePhotosEnd
	;dl $FDAB99,$FDAC99,PAL_Layer2_BlueAndBazookaPhotos,PAL_Layer2_BlueAndBazookaPhotosEnd
	;dl $FDAC99,$FDAD99,PAL_Layer2_BrashAndBlunderPhotos,PAL_Layer2_BrashAndBlunderPhotosEnd
	;dl $FDAD99,$FDAE99,PAL_Layer2_BennyBjornAndBarterPhotos,PAL_Layer2_BennyBjornAndBarterPhotosEnd
	;dl $FDAE99,$FDAF79,PAL_Layer1_Player2BashTheBaddiesScreen,PAL_Layer1_Player2BashTheBaddiesScreenEnd
	;dl $FDAF79,$FDB059,PAL_Layer1_Player2CollectXXStarsScreen,PAL_Layer1_Player2CollectXXStarsScreenEnd
	;dl $FDB059,$FDB139,PAL_Layer1_Player2GrabXXBananasScreen,PAL_Layer1_Player2GrabXXBananasScreenEnd
	;dl $FDB139,$FDB239,PAL_Layer2_BelchaPhoto,PAL_Layer2_BelchaPhotoEnd
	;dl $FDB239,$FDB339,PAL_Layer2_ArichPhoto,PAL_Layer2_ArichPhotoEnd
	;dl $FDB339,$FDB439,PAL_Layer2_SquirtPhoto,PAL_Layer2_SquirtPhotoEnd
	;dl $FDB439,$FDB539,PAL_Layer2_KAOSPhoto,PAL_Layer2_KAOSPhotoEnd
	;dl $FDB539,$FDB639,PAL_Layer2_BleakPhoto,PAL_Layer2_BleakPhotoEnd
	;dl $FDB639,$FDB739,PAL_Layer2_BarbosPhoto,PAL_Layer2_BarbosPhotoEnd
	;dl $FDB739,$FDB799,PAL_Layer2_KRoolInHovercraft,PAL_Layer2_KRoolInHovercraftEnd
	;dl $FDB799,$FDB899,PAL_FGBG_BarbossBarrier,PAL_FGBG_BarbossBarrierEnd
	;dl $FDB899,$FDB999,PAL_FGBG_FishFoodFrenzy,PAL_FGBG_FishFoodFrenzyEnd
	;dl $FDB999,$FDBA99,PAL_FGBG_KreepingKlasps,PAL_FGBG_KreepingKlaspsEnd
	;dl $FDBA99,$FDBB99,PAL_FGBG_TidalTrouble,PAL_FGBG_TidalTroubleEnd
	;dl $FDBB99,$FDBC99,PAL_FGBG_LemguinLunge,PAL_FGBG_LemguinLungeEnd
	;dl $FDBC99,$FDBD99,PAL_FGBG_TearawayToboggan,PAL_FGBG_TearawayTobogganEnd
	;dl $FDBD99,$FDBE79,PAL_FGBG_SpringinSpiders,PAL_FGBG_SpringinSpidersEnd
	;dl $FDBE79,$FDBF79,PAL_FGBG_RipsawRage,PAL_FGBG_RipsawRageEnd
	;dl $FDBF79,$FDC059,PAL_FGBG_SwoopySalvo_Normal,PAL_FGBG_SwoopySalvo_NormalEnd
	;dl $FDC059,$FDC159,PAL_FGBG_P1WinsScreen,PAL_FGBG_P1WinsScreenEnd
	;dl $FDC159,$FDC259,PAL_FGBG_P2WinsScreen,PAL_FGBG_P2WinsScreenEnd
PalettesPointersEnd:

;--------------------------------------------------------------------

TextBank1PointersStart:
	;dl $FA0000,$FA0856,TB1_SwankyKong,TB1_SwankyKongEnd
	;dl $FA0856,$FA100A,TB1_WrinklyKong,TB1_WrinklyKongEnd
	;dl $FA100A,$FA175E,TB1_FunkyKong,TB1_FunkyKongEnd
	;dl $FA175E,$FA1CF0,TB1_CrankyKong,TB1_CrankyKongEnd
	;dl $FA1CF0,$FA1ECA,TB1_MiscText,TB1_MiscTextEnd
	;dl $FA1ECA,$FA23B8,TB1_AreaNames,TB1_AreaNamesEnd
	;dl $FA23B8,$FA2A3A,TB1_Bazaar,TB1_BazaarEnd
	;dl $FA2A3A,$FA2D60,TB1_Blunder,TB1_BlunderEnd
	;dl $FA2D60,$FA300C,TB1_Bramble,TB1_BrambleEnd
	;dl $FA300C,$FA33F0,TB1_Barter,TB1_BarterEnd
	;dl $FA33F0,$FA3622,TB1_Barnacle,TB1_BarnacleEnd
	;dl $FA3622,$FA397E,TB1_Brash,TB1_BrashEnd
	;dl $FA397E,$FA3B7A,TB1_Blue,TB1_BlueEnd
	;dl $FA3B7A,$FA3E36,TB1_Bazooka,TB1_BazookaEnd
	;dl $FA3E36,$FA4036,TB1_Blizzard,TB1_BlizzardEnd
	;dl $FA4036,$FA43F4,TB1_BennyAndBjorn,TB1_BennyAndBjornEnd
	;dl $FA43F4,$FA4768,TB1_Baffle,TB1_BaffleEnd
	;dl $FA4768,$FA4C44,TB1_Boomer,TB1_BoomerEnd
	;dl $FA4C44,$FA5028,TB1_KAOSAndKRool,TB1_KAOSAndKRoolEnd
	;dl $FA5028,$FA5390,TB1_BananaBirdQueen,TB1_BananaBirdQueenEnd
TextBank1PointersEnd:

;--------------------------------------------------------------------

TextBank2PointersStart:
	;dl $FA5393,$FA5B89,TB1_SwankyKong,TB1_SwankyKongEnd
	;dl $FA5B89,$FA6269,TB1_WrinklyKong,TB1_WrinklyKongEnd
	;dl $FA6269,$FA694F,TB1_FunkyKong,TB1_FunkyKongEnd
	;dl $FA694F,$FA6E41,TB1_CrankyKong,TB1_CrankyKongEnd
	;dl $FA6E41,$FA702F,TB1_MiscText,TB1_MiscTextEnd
	;dl $FA702F,$FA7507,TB1_AreaNames,TB1_AreaNamesEnd
	;dl $FA7507,$FA7AD5,TB1_Bazaar,TB1_BazaarEnd
	;dl $FA7AD5,$FA7D5D,TB1_Blunder,TB1_BlunderEnd
	;dl $FA7D5D,$FA7FF5,TB1_Bramble,TB1_BrambleEnd
	;dl $FA7FF5,$FA83A5,TB1_Barter,TB1_BarterEnd
	;dl $FA83A5,$FA85CD,TB1_Barnacle,TB1_BarnacleEnd
	;dl $FA85CD,$FA8929,TB1_Brash,TB1_BrashEnd
	;dl $FA8929,$FA8AE3,TB1_Blue,TB1_BlueEnd
	;dl $FA8AE3,$FA8D73,TB1_Bazooka,TB1_BazookaEnd
	;dl $FA8D73,$FA8F6F,TB1_Blizzard,TB1_BlizzardEnd
	;dl $FA8F6F,$FA9315,TB1_BennyAndBjorn,TB1_BennyAndBjornEnd
	;dl $FA9315,$FA9641,TB1_Baffle,TB1_BaffleEnd
	;dl $FA9641,$FA9A71,TB1_Boomer,TB1_BoomerEnd
	;dl $FA9A71,$FA9E63,TB1_KAOSAndKRool,TB1_KAOSAndKRoolEnd
	;dl $FA9E63,$FAA1B3,TB1_BananaBirdQueen,TB1_BananaBirdQueenEnd
TextBank2PointersEnd:

;--------------------------------------------------------------------

TextBank3PointersStart:
TextBank3PointersEnd:

;--------------------------------------------------------------------

OverworldCollisionPointersStart:
	;dl $E9230A,$E926FB,OC_MainMap1,OC_MainMap1End
	;dl $E926FB,$E92796,OC_LakeOrangatanga,OC_LakeOrangatangaEnd
	;dl $E92796,$E92817,OC_CottonTopCove,OC_CottonTopCoveEnd
	;dl $E92817,$E92893,OC_RazorRidge,OC_RazorRidgeEnd
	;dl $E92893,$E92913,OC_KAOSKore,OC_KAOSKoreEnd
	;dl $EB05EE,$EB069C,OC_MainMap2,OC_MainMap2End
OverworldCollisionPointersEnd:

;--------------------------------------------------------------------

GarbageDataPointersStart:
	;dl $C0CB99,$C0FFB0,DATA_80CB99,DATA_80CB99End
	;dl $C9FFA7,$CA0000,DKC2_DATA_C9FFA7,DKC2_DATA_C9FFA7End
	;dl $ECA89B,$ECADB4,DATA_ECA89B,DATA_ECA89BEnd
	;dl $ECADB4,$ECB000,DKC2_DATA_ECADB4,DKC2_DATA_ECADB4End
	;dl $ECB29D,$ECD000,DKC2_DATA_ECB29D,DKC2_DATA_ECB29DEnd
	;dl $ECF77F,$ED0000,DKC2_DATA_ECF77F,DKC2_DATA_ECF77FEnd
	;dl $EE09D9,$EE0A80,DKC2_DATA_EE09D9,DKC2_DATA_EE09D9End
	;dl $EE0A80,$EE0A8A,DATA_EE0A80,DATA_EE0A80End
	;dl $F1EC35,$F20000,DKC2_DATA_F1EC35,DKC2_DATA_F1EC35End
	;dl $F27C7E,$F28000,DATA_F27C7E,DATA_F27C7EEnd
	;dl $F2FEAA,$F30000,DATA_B2FEAA,DATA_B2FEAAEnd
	;dl $F37633,$F37EE8,DKC2_DATA_F37633,DKC2_DATA_F37633End
	;dl $F37EE8,$F38000,DKC1_DATA_F37EE8,DKC1_DATA_F37EE8End
	;dl $F3F957,$F40000,DATA_F3F957,DATA_F3F957End
	;dl $F4FEA2,$F50000,DATA_F4FEA2,DATA_F4FEA2End
	;dl $F57E4C,$F57F53,DKC2_DATA_F57E4C,DKC2_DATA_F57E4CEnd
	;dl $F57F53,$F58000,DKC1_DATA_F57F53,DKC1_DATA_F57F53End
	;dl $F67D5B,$F67FCF,DKC2_DATA_F67D5B,DKC2_DATA_F67D5BEnd
	;dl $F6FF93,$F70000,DATA_B6FF93,DATA_B6FF93End
	;dl $F7FDCE,$F7FF0A,DKC1_DATA_B7FDCE,DKC1_DATA_B7FDCEEnd
	;dl $F7FF0A,$F80000,DATA_B7FF0A,DATA_B7FF0AEnd
	;dl $F87D95,$F87E05,DKC2_DATA_F87D95,DKC2_DATA_F87D95End
	;dl $F87E05,$F88000,DATA_F87E05,DATA_F87E05End
	;dl $F8FA52,$F90000,DATA_B8FA52,DATA_B8FA52End
	;dl $F97E02,$F98000,DKC2_DATA_F97E02,DKC2_DATA_F97E02End
	;dl $F98000,$F98FB3,DKC2_DATA_F98000,DKC2_DATA_F98000End
	;dl $F99400,$F9A000,DKC2_DATA_F99400,DKC2_DATA_F99400End
	;dl $F9C087,$F9CD0C,DKC2_DATA_F9C087,DKC2_DATA_F9C087End
	;dl $F9CD0C,$F9D000,DKC1_DATA_F9CD0C,DKC1_DATA_F9CD0CEnd
	;dl $F9F907,$FA0000,DATA_B9F907,DATA_B9F907End
	;dl $FAA1B6,$FAD100,DATA_FAA1B6,DATA_FAA1B6End
	;dl $FB7967,$FB7FC0,DKC2_DATA_FB7967,DKC2_DATA_FB7967End
	;dl $FBDF6F,$FBE800,DKC1_DATA_BBDF6F,DKC1_DATA_BBDF6FEnd
	;dl $FBE800,$FBF83E,DKC2_DATA_BBE800,DKC2_DATA_BBE800End
	;dl $FC6240,$FC7DDC,DKC2_DATA_FC6240,DKC2_DATA_FC6240End
	;dl $FCE93E,$FCF800,DATA_BCE93E,DATA_BCE93EEnd
	;dl $FCFA44,$FD0000,DATA_BCFA44,DATA_BCFA44End
	;dl $FDE815,$BDF1E8,DATA_FDE815,DATA_FDE815End
	;dl $FDF501,$FE0000,DATA_FDF501,DATA_FDF501End
	;dl $FE9406,$FEA514,DATA_FE9406,DATA_FE9406End
	;dl $FEFB8B,$FF0000,DATA_BEFB8B,DATA_BEFB8BEnd
	;dl $FFBE22,$FFDB80,DATA_FFBE22,DATA_FFBE22End
	;dl $BFF2FC,$C00000,DATA_FFF2FC,DATA_FFF2FCEnd
GarbageDataPointersEnd:

;--------------------------------------------------------------------

MusicPointersStart:
	;dl $ED0F64,$ED0FCE,Music_None,Music_NoneEnd
	;dl $ED0FD0,$ED1AFD,Music_BonusTime,Music_BonusTimeEnd
	;dl $ED1B35,$ED1F4D,Music_CrazyCalypso,Music_CrazyCalypsoEnd
	;dl $ED1FA1,$ED23D3,Music_BrothersBear,Music_BrothersBearEnd
	;dl $ED23F5,$ED2AEF,Music_WrinklyKongSongs,Music_WrinklyKongSongsEnd
	;dl $ED2B39,$ED376D,Music_WaterWorld,Music_WaterWorldEnd
	;dl $ED37A9,$ED4263,Music_HotPursuit,Music_HotPursuitEnd
	;dl $ED42A5,$ED4C61,Music_NutsAndBolts,Music_NutsAndBoltsEnd
	;dl $ED4C97,$ED5884,Music_SwankysSideshow,Music_SwankysSideshowEnd
	;dl $ED58B4,$ED6378,Music_CascadeCapers,Music_CascadeCapersEnd
	;dl $ED63DA,$ED6B41,Music_TreetopTumble,Music_TreetopTumbleEnd
	;dl $ED6B7D,$ED7509,Music_BossBoogie,Music_BossBoogieEnd
	;dl $ED7535,$ED7DA6,Music_JangleBells,Music_JangleBellsEnd
	;dl $ED7DD2,$ED8961,Music_MillFever,Music_MillFeverEnd
	;dl $ED8997,$ED9404,Music_StiltVillage,Music_StiltVillageEnd
	;dl $ED943C,$EDA137,Music_EnchantedRiverbank,Music_EnchantedRiverbankEnd
	;dl $EDA175,$EDA69E,Music_SubmapShuffle,Music_SubmapShuffleEnd
	;dl $EDA6BC,$EDAA22,Music_KremtoaKoncerto,Music_KremtoaKoncertoEnd
	;dl $EDAA3E,$EDAEEE,Music_NorthernKremisphere,Music_NorthernKremisphereEnd
	;dl $EDAF18,$EDAFF6,Music_GameOver,Music_GameOverEnd
	;dl $EDB000,$EDB3E4,Music_HanginAtFunkys,Music_HanginAtFunkysEnd
	;dl $EDB40A,$EDB981,Music_Fanfare,Music_FanfareEnd
	;dl $EDB99F,$EDC0BD,Music_FrostyFrolics,Music_FrostyFrolicsEnd
	;dl $EDC0EF,$EDC8EF,Music_DixieBeat,Music_DixieBeatEnd
	;dl $EDC913,$EDD371,Music_PokeyPipes,Music_PokeyPipesEnd
	;dl $EDD3AF,$EDDB03,Music_BigBossBlues,Music_BigBossBluesEnd
	;dl $EDDB31,$EDE1C8,Music_CrystalChasm,Music_CrystalChasmEnd
	;dl $EDE1E6,$EDEE18,Music_RocketRun,Music_RocketRunEnd
	;dl $EDEE42,$EDF999,Music_JungleJitter,Music_JungleJitterEnd
	;dl $EDF9CD,$EE0330,Music_CavernCaprise,Music_CavernCapriseEnd
	;dl $EE05AC,$EE077E,Music_DefeatedBoss,Music_DefeatedBossEnd
	;dl $F19E0A,$F1A165,Music_BaddiesOnParade,Music_BaddiesOnParadeEnd
	;dl $F1A179,$F1A95C,Music_RockfaceRumble,Music_RockfaceRumbleEnd
	;dl $F1A994,$F1AE3B,Music_MamaBird,Music_MamaBirdEnd
	;dl $F1AE5F,$F1B633,Music_BananaBirdQueenChase,Music_BananaBirdQueenChaseEnd
MusicPointersEnd:

;--------------------------------------------------------------------

SoundEffectPointersStart:
	;dl $F1B663,$F1C05F,GlobalSoundEffects,GlobalSoundEffectsEnd
	;dl $F1C05F,$F1C068,DATA_F1C05F,DATA_F1C05FEnd
	;dl $F1C068,$F1C2D0,DATA_F1C068,DATA_F1C068End
	;dl $F1C2D0,$F1C51A,DATA_F1C2D0,DATA_F1C2D0End
	;dl $F1C51A,$F1C6AE,DATA_F1C51A,DATA_F1C51AEnd
	;dl $F1C6AE,$F1C7D7,DATA_F1C6AE,DATA_F1C6AEEnd
	;dl $F1C7D7,$F1C9B1,DATA_F1C7D7,DATA_F1C7D7End
	;dl $F1C9B1,$F1CA7B,DATA_F1C9B1,DATA_F1C9B1End
	;dl $F1CA7B,$F1CB85,DATA_F1CA7B,DATA_F1CA7BEnd
	;dl $F1CB85,$F1CD07,DATA_F1CB85,DATA_F1CB85End
	;dl $F1CD07,$F1CDCE,DATA_F1CD07,DATA_F1CD07End
	;dl $F1CDCE,$F1CFB1,DATA_F1CDCE,DATA_F1CDCEEnd
	;dl $F1CFB1,$F1D109,DATA_F1CFB1,DATA_F1CFB1End
	;dl $F1D109,$F1D2F8,DATA_F1D109,DATA_F1D109End
	;dl $F1D2F8,$F1D4D7,DATA_F1D2F8,DATA_F1D2F8End
	;dl $F1D4D7,$F1D5FF,DATA_F1D4D7,DATA_F1D4D7End
	;dl $F1D5FF,$F1D69E,DATA_F1D5FF,DATA_F1D5FFEnd
	;dl $F1D69E,$F1D89E,DATA_F1D69E,DATA_F1D69EEnd
	;dl $F1D89E,$F1D967,DATA_F1D89E,DATA_F1D89EEnd
	;dl $F1D967,$F1D9E0,DATA_F1D967,DATA_F1D967End
	;dl $F1D9E0,$F1DAFE,DATA_F1D9E0,DATA_F1D9E0End
	;dl $F1DAFE,$F1DCCA,DATA_F1DAFE,DATA_F1DAFEEnd
	;dl $F1DCCA,$F1DF30,DATA_F1DCCA,DATA_F1DCCAEnd
	;dl $F1DF30,$F1E180,DATA_F1DF30,DATA_F1DF30End
	;dl $F1E180,$F1E35C,DATA_F1E180,DATA_F1E180End
	;dl $F1E35C,$F1E481,DATA_F1E35C,DATA_F1E35CEnd
	;dl $F1E481,$F1E652,DATA_F1E481,DATA_F1E481End
	;dl $F1E652,$F1E8BC,DATA_F1E652,DATA_F1E652End
	;dl $F1E8BC,$F1EA41,DATA_F1E8BC,DATA_F1E8BCEnd
	;dl $F1EA41,$F1EC35,DATA_F1EA41,DATA_F1EA41End
SoundEffectPointersEnd:

;--------------------------------------------------------------------

BRRPointersStart:
	;dl $EE0A8E,$EE119F,BRRFile00,BRRFile00End
	;dl $EE11A3,$EE143D,BRRFile01,BRRFile01End
	;dl $EE1441,$EE19E1,BRRFile02,BRRFile02End
	;dl $EE19E5,$EE2618,BRRFile03,BRRFile03End
	;dl $EE261C,$EE2D0A,BRRFile04,BRRFile04End
	;dl $EE2D0E,$EE31C4,BRRFile05,BRRFile05End
	;dl $EE31C8,$EE3C4B,BRRFile06,BRRFile06End
	;dl $EE3C4F,$EE48CA,BRRFile07,BRRFile07End
	;dl $EE48CE,$EE4D8D,BRRFile08,BRRFile08End
	;dl $EE4D91,$EE5568,BRRFile09,BRRFile09End
	;dl $EE556C,$EE5914,BRRFile0A,BRRFile0AEnd
	;dl $EE5918,$EE632F,BRRFile0B,BRRFile0BEnd
	;dl $EE6333,$EE6AD4,BRRFile0C,BRRFile0CEnd
	;dl $EE6AD8,$EE78CD,BRRFile0D,BRRFile0DEnd
	;dl $EE78D1,$EE8474,BRRFile0E,BRRFile0EEnd
	;dl $EE8478,$EE8605,BRRFile0F,BRRFile0FEnd
	;dl $EE8609,$EE87A7,BRRFile10,BRRFile10End
	;dl $EE87AB,$EE88EF,BRRFile11,BRRFile11End
	;dl $EE88F3,$EE8C02,BRRFile12,BRRFile12End
	;dl $EE8C06,$EE93E6,BRRFile13,BRRFile13End
	;dl $EE93EA,$EE9810,BRRFile14,BRRFile14End
	;dl $EE9814,$EE9E71,BRRFile15,BRRFile15End
	;dl $EE9E75,$EEA26E,BRRFile16,BRRFile16End
	;dl $EEA272,$EEAE42,BRRFile17,BRRFile17End
	;dl $EEAE46,$EEB0FB,BRRFile18,BRRFile18End
	;dl $EEB0FF,$EEB2EE,BRRFile19,BRRFile19End
	;dl $EEB2F2,$EEB5E6,BRRFile1A,BRRFile1AEnd
	;dl $EEB5EA,$EEB896,BRRFile1B,BRRFile1BEnd
	;dl $EEB89A,$EEC09E,BRRFile1C,BRRFile1CEnd
	;dl $EEC0A2,$EEC1CB,BRRFile1D,BRRFile1DEnd
	;dl $EEC1CF,$EEC982,BRRFile1E,BRRFile1EEnd
	;dl $EEC986,$EED235,BRRFile1F,BRRFile1FEnd
	;dl $EED239,$EEDCD7,BRRFile20,BRRFile20End
	;dl $EEDCDB,$EEDE67,BRRFile21,BRRFile21End
	;dl $EEDE6B,$EEE73E,BRRFile22,BRRFile22End
	;dl $EEE742,$EEEAB4,BRRFile23,BRRFile23End
	;dl $EEEAB8,$EEEB00,BRRFile24,BRRFile24End
	;dl $EEEB04,$EEECA2,BRRFile25,BRRFile25End
	;dl $EEECA6,$EEEE71,BRRFile26,BRRFile26End
	;dl $EEEE75,$EEF73F,BRRFile27,BRRFile27End
	;dl $EEF743,$EEF983,BRRFile28,BRRFile28End
	;dl $EEF987,$EF04F4,BRRFile29,BRRFile29End
	;dl $EF04F8,$EF08F1,BRRFile2A,BRRFile2AEnd
	;dl $EF08F5,$EF0DE1,BRRFile2B,BRRFile2BEnd
	;dl $EF0DE5,$EF11DE,BRRFile2C,BRRFile2CEnd
	;dl $EF11E2,$EF1377,BRRFile2D,BRRFile2DEnd
	;dl $EF137B,$EF1804,BRRFile2E,BRRFile2EEnd
	;dl $EF1808,$EF1EBF,BRRFile2F,BRRFile2FEnd
	;dl $EF1EC3,$EF2355,BRRFile30,BRRFile30End
	;dl $EF2359,$EF2D04,BRRFile31,BRRFile31End
	;dl $EF2D08,$EF2D36,BRRFile32,BRRFile32End
	;dl $EF2D3A,$EF2D68,BRRFile33,BRRFile33End
	;dl $EF2D6C,$EF2D9A,BRRFile34,BRRFile34End
	;dl $EF2D9E,$EF2DCC,BRRFile35,BRRFile35End
	;dl $EF2DD0,$EF2DFE,BRRFile36,BRRFile36End
	;dl $EF2E02,$EF2E30,BRRFile37,BRRFile37End
	;dl $EF2E34,$EF2E62,BRRFile38,BRRFile38End
	;dl $EF2E66,$EF2E94,BRRFile39,BRRFile39End
	;dl $EF2E98,$EF2EC6,BRRFile3A,BRRFile3AEnd
	;dl $EF2ECA,$EF2EF8,BRRFile3B,BRRFile3BEnd
	;dl $EF2EFC,$EF2F2A,BRRFile3C,BRRFile3CEnd
	;dl $EF2F2E,$EF2F5C,BRRFile3D,BRRFile3DEnd
	;dl $EF2F60,$EF2F8E,BRRFile3E,BRRFile3EEnd
	;dl $EF2F92,$EF2FC0,BRRFile3F,BRRFile3FEnd
	;dl $EF2FC4,$EF2FF2,BRRFile40,BRRFile40End
	;dl $EF2FF6,$EF3024,BRRFile41,BRRFile41End
	;dl $EF3028,$EF3056,BRRFile42,BRRFile42End
	;dl $EF305A,$EF3088,BRRFile43,BRRFile43End
	;dl $EF308C,$EF30BA,BRRFile44,BRRFile44End
	;dl $EF30BE,$EF30EC,BRRFile45,BRRFile45End
	;dl $EF30F0,$EF311E,BRRFile46,BRRFile46End
	;dl $EF3122,$EF3150,BRRFile47,BRRFile47End
	;dl $EF3154,$EF3182,BRRFile48,BRRFile48End
	;dl $EF3186,$EF31B4,BRRFile49,BRRFile49End
	;dl $EF31B8,$EF31E6,BRRFile4A,BRRFile4AEnd
	;dl $EF31EA,$EF3CD9,BRRFile4B,BRRFile4BEnd
	;dl $EF3CDD,$EF414B,BRRFile4C,BRRFile4CEnd
	;dl $EF414F,$EF46B9,BRRFile4D,BRRFile4DEnd
	;dl $EF46BD,$EF53C8,BRRFile4E,BRRFile4EEnd
	;dl $EF53CC,$EF597E,BRRFile4F,BRRFile4FEnd
	;dl $EF5982,$EF6537,BRRFile50,BRRFile50End
	;dl $EF653B,$EF69E8,BRRFile51,BRRFile51End
	;dl $EF69EC,$EF6CE9,BRRFile52,BRRFile52End
	;dl $EF6CED,$EF6F51,BRRFile53,BRRFile53End
	;dl $EF6F55,$EF7510,BRRFile54,BRRFile54End
	;dl $EF7514,$EF7B56,BRRFile55,BRRFile55End
	;dl $EF7B5A,$EF82D7,BRRFile56,BRRFile56End
	;dl $EF82DB,$EF8617,BRRFile57,BRRFile57End
	;dl $EF861B,$EF97E5,BRRFile58,BRRFile58End
	;dl $EF97E9,$EFA27E,BRRFile59,BRRFile59End
	;dl $EFA282,$EFA324,BRRFile5A,BRRFile5AEnd
	;dl $EFA328,$EFA6FD,BRRFile5B,BRRFile5BEnd
	;dl $EFA701,$EFAC62,BRRFile5C,BRRFile5CEnd
	;dl $EFAC66,$EFADFB,BRRFile5D,BRRFile5DEnd
	;dl $EFADFF,$EFB1B0,BRRFile5E,BRRFile5EEnd
	;dl $EFB1B4,$EFB67C,BRRFile5F,BRRFile5FEnd
	;dl $EFB680,$EFBA3A,BRRFile60,BRRFile60End
	;dl $EFBA3E,$EFBE01,BRRFile61,BRRFile61End
	;dl $EFBE05,$EFC354,BRRFile62,BRRFile62End
	;dl $EFC358,$EFCA21,BRRFile63,BRRFile63End
	;dl $EFCA25,$EFD3D9,BRRFile64,BRRFile64End
	;dl $EFD3DD,$EFD986,BRRFile65,BRRFile65End
	;dl $EFD98A,$EFE158,BRRFile66,BRRFile66End
	;dl $EFE15C,$EFE86D,BRRFile67,BRRFile67End
	;dl $EFE871,$EFEB53,BRRFile68,BRRFile68End
	;dl $EFEB57,$EFECEC,BRRFile69,BRRFile69End
	;dl $EFECF0,$EFF1CA,BRRFile6A,BRRFile6AEnd
	;dl $EFF1CE,$EFF27A,BRRFile6B,BRRFile6BEnd
	;dl $EFF27E,$EFF557,BRRFile6C,BRRFile6CEnd
	;dl $EFF55B,$F0002F,BRRFile6D,BRRFile6DEnd
	;dl $F00033,$F00153,BRRFile6E,BRRFile6EEnd
	;dl $F00157,$F0038F,BRRFile6F,BRRFile6FEnd
	;dl $F00393,$F006CF,BRRFile70,BRRFile70End
	;dl $F006D3,$F00871,BRRFile71,BRRFile71End
	;dl $F00875,$F00E6F,BRRFile72,BRRFile72End
	;dl $F00E73,$F010C5,BRRFile73,BRRFile73End
	;dl $F010C9,$F01861,BRRFile74,BRRFile74End
	;dl $F01865,$F01D51,BRRFile75,BRRFile75End
	;dl $F01D55,$F01FA7,BRRFile76,BRRFile76End
	;dl $F01FAB,$F02101,BRRFile77,BRRFile77End
	;dl $F02105,$F02627,BRRFile78,BRRFile78End
	;dl $F0262B,$F02673,BRRFile79,BRRFile79End
	;dl $F02677,$F02EC3,BRRFile7A,BRRFile7AEnd
	;dl $F02EC7,$F03548,BRRFile7B,BRRFile7BEnd
	;dl $F0354C,$F03E31,BRRFile7C,BRRFile7CEnd
	;dl $F03E35,$F03FAF,BRRFile7D,BRRFile7DEnd
	;dl $F03FB3,$F04325,BRRFile7E,BRRFile7EEnd
	;dl $F04329,$F04854,BRRFile7F,BRRFile7FEnd
	;dl $F04858,$F04915,BRRFile80,BRRFile80End
	;dl $F04919,$F04D90,BRRFile81,BRRFile81End
	;dl $F04D94,$F04FF8,BRRFile82,BRRFile82End
	;dl $F04FFC,$F05890,BRRFile83,BRRFile83End
	;dl $F05894,$F06815,BRRFile84,BRRFile84End
	;dl $F06819,$F06D44,BRRFile85,BRRFile85End
	;dl $F06D48,$F0767E,BRRFile86,BRRFile86End
	;dl $F07682,$F07B4A,BRRFile87,BRRFile87End
	;dl $F07B4E,$F07E6F,BRRFile88,BRRFile88End
	;dl $F07E73,$F0826C,BRRFile89,BRRFile89End
	;dl $F08270,$F08A86,BRRFile8A,BRRFile8AEnd
	;dl $F08A8A,$F08B98,BRRFile8B,BRRFile8BEnd
	;dl $F08B9C,$F08C98,BRRFile8C,BRRFile8CEnd
	;dl $F08C9C,$F08D1A,BRRFile8D,BRRFile8DEnd
	;dl $F08D1E,$F0926D,BRRFile8E,BRRFile8EEnd
	;dl $F09271,$F0964F,BRRFile8F,BRRFile8FEnd
	;dl $F09653,$F0A2B3,BRRFile90,BRRFile90End
	;dl $F0A2B7,$F0AD16,BRRFile91,BRRFile91End
	;dl $F0AD1A,$F0B005,BRRFile92,BRRFile92End
	;dl $F0B009,$F0B21C,BRRFile93,BRRFile93End
	;dl $F0B220,$F0B32E,BRRFile94,BRRFile94End
	;dl $F0B332,$F0B77C,BRRFile95,BRRFile95End
	;dl $F0B780,$F0BB43,BRRFile96,BRRFile96End
	;dl $F0BB47,$F0C4FB,BRRFile97,BRRFile97End
	;dl $F0C4FF,$F0CA8D,BRRFile98,BRRFile98End
	;dl $F0CA91,$F0D016,BRRFile99,BRRFile99End
	;dl $F0D01A,$F0D170,BRRFile9A,BRRFile9AEnd
	;dl $F0D174,$F0D300,BRRFile9B,BRRFile9BEnd
	;dl $F0D304,$F0D9F1,BRRFile9C,BRRFile9CEnd
	;dl $F0D9F5,$F0E895,BRRFile9D,BRRFile9DEnd
	;dl $F0E899,$F0ED85,BRRFile9E,BRRFile9EEnd
	;dl $F0ED89,$F0F46D,BRRFile9F,BRRFile9FEnd
	;dl $F0F471,$F0FB9E,BRRFileA0,BRRFileA0End
	;dl $F0FBA2,$F0FD38,BRRFileA1,BRRFileA1End
	;dl $F0FD3C,$F0FF08,BRRFileA2,BRRFileA2End
	;dl $F0FF0C,$F101B8,BRRFileA3,BRRFileA3End
	;dl $F101BC,$F10376,BRRFileA4,BRRFileA4End
	;dl $F1037A,$F105BA,BRRFileA5,BRRFileA5End
	;dl $F105BE,$F1099C,BRRFileA6,BRRFileA6End
	;dl $F109A0,$F110BB,BRRFileA7,BRRFileA7End
	;dl $F110BF,$F11564,BRRFileA8,BRRFileA8End
	;dl $F11568,$F11773,BRRFileA9,BRRFileA9End
	;dl $F11777,$F11C76,BRRFileAA,BRRFileAAEnd
	;dl $F11C7A,$F11E8D,BRRFileAB,BRRFileABEnd
	;dl $F11E91,$F11EC8,BRRFileAC,BRRFileACEnd
	;dl $F11ECC,$F1246C,BRRFileAD,BRRFileADEnd
	;dl $F12470,$F12845,BRRFileAE,BRRFileAEEnd
	;dl $F12849,$F12865,BRRFileAF,BRRFileAFEnd
	;dl $F12869,$F12885,BRRFileB0,BRRFileB0End
	;dl $F12889,$F1366D,BRRFileB1,BRRFileB1End
	;dl $F13671,$F145FC,BRRFileB2,BRRFileB2End
	;dl $F14600,$F14AA4,BRRFileB3,BRRFileB3End
	;dl $F14AA8,$F14D93,BRRFileB4,BRRFileB4End
	;dl $F14D97,$F154E7,BRRFileB5,BRRFileB5End
	;dl $F154EB,$F1578F,BRRFileB6,BRRFileB6End
	;dl $F15793,$F15B96,BRRFileB7,BRRFileB7End
	;dl $F15B9A,$F16276,BRRFileB8,BRRFileB8End
	;dl $F1627A,$F162B1,BRRFileB9,BRRFileB9End
	;dl $F162B5,$F164A5,BRRFileBA,BRRFileBAEnd
	;dl $F164A9,$F16F63,BRRFileBB,BRRFileBBEnd
	;dl $F16F67,$F17EAA,BRRFileBC,BRRFileBCEnd
	;dl $F17EAE,$F1859C,BRRFileBD,BRRFileBDEnd
	;dl $F185A0,$F18C61,BRRFileBE,BRRFileBEEnd
	;dl $F18C65,$F1932E,BRRFileBF,BRRFileBFEnd
	;dl $F19332,$F19477,BRRFileC0,BRRFileC0End
	;dl $F1947B,$F19AA2,BRRFileC1,BRRFileC1End
	;dl $F19AA6,$F19CB0,BRRFileC2,BRRFileC2End
	;dl $F19CB4,$F19E0A,BRRFileC3,BRRFileC3End
BRRPointersEnd:

;--------------------------------------------------------------------

GFX_Sprite_TinySmokePuff:
	db "GFX_Sprite_TinySmokePuff.bin"
GFX_Sprite_TinySmokePuffEnd:
GFX_Sprite_AirBubbles:
	db "GFX_Sprite_AirBubbles.bin"
GFX_Sprite_AirBubblesEnd:
GFX_Sprite_HeadToHeadHUDCircles:
	db "GFX_Sprite_HeadToHeadHUDCircles.bin"
GFX_Sprite_HeadToHeadHUDCirclesEnd:
GFX_Sprite_ThownSoftball:
	db "GFX_Sprite_ThownSoftball.bin"
GFX_Sprite_ThownSoftballEnd:
GFX_Sprite_BarrelPieces:
	db "GFX_Sprite_BarrelPieces.bin"
GFX_Sprite_BarrelPiecesEnd:
GFX_Sprite_BarrelShield:
	db "GFX_Sprite_BarrelShield.bin"
GFX_Sprite_BarrelShieldEnd:
GFX_Sprite_MapWaterSplash:
	db "GFX_Sprite_MapWaterSplash.bin"
GFX_Sprite_MapWaterSplashEnd:
GFX_Sprite_Minkey:
	db "GFX_Sprite_Minkey.bin"
GFX_Sprite_MinkeyEnd:
GFX_Sprite_MinkeyAcorn:
	db "GFX_Sprite_MinkeyAcorn.bin"
GFX_Sprite_MinkeyAcornEnd:
GFX_Sprite_RotatingCylinderPegs:
	db "GFX_Sprite_RotatingCylinderPegs.bin"
GFX_Sprite_RotatingCylinderPegsEnd:
GFX_Sprite_RotatingCylinderKeys:
	db "GFX_Sprite_RotatingCylinderKeys.bin"
GFX_Sprite_RotatingCylinderKeysEnd:
GFX_Sprite_ArichBouncingSpit:
	db "GFX_Sprite_ArichBouncingSpit.bin"
GFX_Sprite_ArichBouncingSpitEnd:
GFX_Sprite_BananaBird:
	db "GFX_Sprite_BananaBird.bin"
GFX_Sprite_BananaBirdEnd:
GFX_Sprite_BelchaEyeAndTeeth:
	db "GFX_Sprite_BelchaEyeAndTeeth.bin"
GFX_Sprite_BelchaEyeAndTeethEnd:
GFX_Sprite_SaveScreenBearCoin:
	db "GFX_Sprite_SaveScreenBearCoin.bin"
GFX_Sprite_SaveScreenBearCoinEnd:
GFX_Sprite_SaveScreenBonusBCoin:
	db "GFX_Sprite_SaveScreenBonusBCoin.bin"
GFX_Sprite_SaveScreenBonusBCoinEnd:
GFX_Sprite_FileSelectDigitalDisplayText:
	db "GFX_Sprite_FileSelectDigitalDisplayText.bin"
GFX_Sprite_FileSelectDigitalDisplayTextEnd:
GFX_Sprite_SaveScreenDKCoin:
	db "GFX_Sprite_SaveScreenDKCoin.bin"
GFX_Sprite_SaveScreenDKCoinEnd:
GFX_Sprite_SideRocketFlameJets:
	db "GFX_Sprite_SideRocketFlameJets.bin"
GFX_Sprite_SideRocketFlameJetsEnd:
GFX_Sprite_EllieHorizontalWaterShots:
	db "GFX_Sprite_EllieHorizontalWaterShots.bin"
GFX_Sprite_EllieHorizontalWaterShotsEnd:
GFX_Sprite_BarbosSpikeProjectiles:
	db "GFX_Sprite_BarbosSpikeProjectiles.bin"
GFX_Sprite_BarbosSpikeProjectilesEnd:
GFX_Sprite_BarbosEyes:
	db "GFX_Sprite_BarbosEyes.bin"
GFX_Sprite_BarbosEyesEnd:
GFX_Sprite_SquirtsWaterStream:
	db "GFX_Sprite_SquirtsWaterStream.bin"
GFX_Sprite_SquirtsWaterStreamEnd:
GFX_Sprite_MusicTestNotes:
	db "GFX_Sprite_MusicTestNotes.bin"
GFX_Sprite_MusicTestNotesEnd:
GFX_Sprite_CottonTopCoveWaterFall1StartAndEnd:
	db "GFX_Sprite_CottonTopCoveWaterFall1StartAndEnd.bin"
GFX_Sprite_CottonTopCoveWaterFall1StartAndEndEnd:
GFX_Sprite_CottonTopCoveWaterFall2StartAndEnd:
	db "GFX_Sprite_CottonTopCoveWaterFall2StartAndEnd.bin"
GFX_Sprite_CottonTopCoveWaterFall2StartAndEndEnd:
GFX_Sprite_CottonTopCoveWaterFall3StartAndEnd:
	db "GFX_Sprite_CottonTopCoveWaterFall3StartAndEnd.bin"
GFX_Sprite_CottonTopCoveWaterFall3StartAndEndEnd:
GFX_Sprite_CottonTopCoveBananaBirdCaveCoverAndSpriteMasks:
	db "GFX_Sprite_CottonTopCoveBananaBirdCaveCoverAndSpriteMasks.bin"
GFX_Sprite_CottonTopCoveBananaBirdCaveCoverAndSpriteMasksEnd:
GFX_Sprite_BananaBirdCaveCoversAndSpriteMasks:
	db "GFX_Sprite_BananaBirdCaveCoversAndSpriteMasks.bin"
GFX_Sprite_BananaBirdCaveCoversAndSpriteMasksEnd:
GFX_Sprite_UnknownBrokenPieces:
	db "GFX_Sprite_UnknownBrokenPieces.bin"
GFX_Sprite_UnknownBrokenPiecesEnd:
GFX_Sprite_KongFusedCliffsRope:
	db "GFX_Sprite_KongFusedCliffsRope.bin"
GFX_Sprite_KongFusedCliffsRopeEnd:
GFX_Sprite_BoomersFuse:
	db "GFX_Sprite_BoomersFuse.bin"
GFX_Sprite_BoomersFuseEnd:
GFX_Layer3_MurkyMillLights:
	db "GFX_Layer3_MurkyMillLights.bin"
GFX_Layer3_MurkyMillLightsEnd:
GFX_Layer1_CopyrightScreen:
	db "GFX_Layer1_CopyrightScreen.bin"
GFX_Layer1_CopyrightScreenEnd:
GFX_Layer1_Arich:
	db "GFX_Layer1_Arich.bin"
GFX_Layer1_ArichEnd:
GFX_Layer1_AnimatedKAOSTapeDriveTiles:
	db "GFX_Layer1_AnimatedKAOSTapeDriveTiles.bin"
GFX_Layer1_AnimatedKAOSTapeDriveTilesEnd:
GFX_Layer1_KAOS:
	db "GFX_Layer1_KAOS.bin"
GFX_Layer1_KAOSEnd:
GFX_Layer3_CoralReefLevels:
	db "GFX_Layer3_CoralReefLevels.bin"
GFX_Layer3_CoralReefLevelsEnd:
GFX_Layer3_WaterFallLevel:
	db "GFX_Layer3_WaterFallLevel.bin"
GFX_Layer3_WaterFallLevelEnd:
GFX_Sprite_RocksSurroundingKremtoa:
	db "GFX_Sprite_RocksSurroundingKremtoa.bin"
GFX_Sprite_RocksSurroundingKremtoaEnd:
GFX_Sprite_BananaBirdQueenBarrierSymbols:
	db "GFX_Sprite_BananaBirdQueenBarrierSymbols.bin"
GFX_Sprite_BananaBirdQueenBarrierSymbolsEnd:
GFX_Layer1_AnimatedConveyorRopeTiles:
	db "GFX_Layer1_AnimatedConveyorRopeTiles.bin"
GFX_Layer1_AnimatedConveyorRopeTilesEnd:
GFX_Layer3_KastleKaos:
	db "GFX_Layer3_KastleKaos.bin"
GFX_Layer3_KastleKaosEnd:
GFX_Layer2_FactoryLevels:
	db "GFX_Layer2_FactoryLevels.bin"
GFX_Layer2_FactoryLevelsEnd:
GFX_Layer1_AnimatedShipWheelTiles:
	db "GFX_Layer1_AnimatedShipWheelTiles.bin"
GFX_Layer1_AnimatedShipWheelTilesEnd:
GFX_Layer2_KnautilusMovingCeilingBar:
	db "GFX_Layer2_KnautilusMovingCeilingBar.bin"
GFX_Layer2_KnautilusMovingCeilingBarEnd:
GFX_Layer1_AnimatedKaosKoreWaterfallTiles:
	db "GFX_Layer1_AnimatedKaosKoreWaterfallTiles.bin"
GFX_Layer1_AnimatedKaosKoreWaterfallTilesEnd:
GFX_Layer1_NintendoPresentsScreen:
	db "GFX_Layer1_NintendoPresentsScreen.bin"
GFX_Layer1_NintendoPresentsScreenEnd:
GFX_Layer3_NintendoPresentsScreen:
	db "GFX_Layer3_NintendoPresentsScreen.bin"
GFX_Layer3_NintendoPresentsScreenEnd:
GFX_Layer1_AnimatedK3WaterfallTiles:
	db "GFX_Layer1_AnimatedK3WaterfallTiles.bin"
GFX_Layer1_AnimatedK3WaterfallTilesEnd:
GFX_Layer1_AnimatedCottonTopCoveWaterfall1Tiles:
	db "GFX_Layer1_AnimatedCottonTopCoveWaterfall1Tiles.bin"
GFX_Layer1_AnimatedCottonTopCoveWaterfall1TilesEnd:
GFX_Layer1_AnimatedCottonTopCoveWaterfall2Tiles:
	db "GFX_Layer1_AnimatedCottonTopCoveWaterfall2Tiles.bin"
GFX_Layer1_AnimatedCottonTopCoveWaterfall2TilesEnd:
GFX_Layer1_Animatedlava1Tiles:
	db "GFX_Layer1_Animatedlava1Tiles.bin"
GFX_Layer1_Animatedlava1TilesEnd:
GFX_Layer1_Animatedlava2Tiles:
	db "GFX_Layer1_Animatedlava2Tiles.bin"
GFX_Layer1_Animatedlava2TilesEnd:
GFX_Layer1_Animatedlava3Tiles:
	db "GFX_Layer1_Animatedlava3Tiles.bin"
GFX_Layer1_Animatedlava3TilesEnd:
GFX_Layer1_AnimatedFactoryMachineTiles:
	db "GFX_Layer1_AnimatedFactoryMachineTiles.bin"
GFX_Layer1_AnimatedFactoryMachineTilesEnd:
GFX_Layer2_AnimatedElectricFlowTiles:
	db "GFX_Layer2_AnimatedElectricFlowTiles.bin"
GFX_Layer2_AnimatedElectricFlowTilesEnd:
GFX_Layer3_BananaBirdQueenScreen:
	db "GFX_Layer3_BananaBirdQueenScreen.bin"
GFX_Layer3_BananaBirdQueenScreenEnd:
GFX_Mode7_RareLogo:
	db "GFX_Mode7_RareLogo.bin"
GFX_Mode7_RareLogoEnd:
GFX_Layer2_NintendoPresentsScreen:
	db "GFX_Layer2_NintendoPresentsScreen.bin"
GFX_Layer2_NintendoPresentsScreenEnd:
GFX_Layer3_AnimatedlightSnowfallTiles:
	db "GFX_Layer3_AnimatedlightSnowfallTiles.bin"
GFX_Layer3_AnimatedlightSnowfallTilesEnd:
GFX_Layer3_AnimatedMediumSnowfallTiles:
	db "GFX_Layer3_AnimatedMediumSnowfallTiles.bin"
GFX_Layer3_AnimatedMediumSnowfallTilesEnd:
GFX_Layer3_AnimatedHeavySnowfallTiles:
	db "GFX_Layer3_AnimatedHeavySnowfallTiles.bin"
GFX_Layer3_AnimatedHeavySnowfallTilesEnd:
GFX_Sprite_AreaNameFont:
	db "GFX_Sprite_AreaNameFont.bin"
GFX_Sprite_AreaNameFontEnd:
GFX_Layer2_EdgeOfBoatSelectionMenu:
	db "GFX_Layer2_EdgeOfBoatSelectionMenu.bin"
GFX_Layer2_EdgeOfBoatSelectionMenuEnd:
GFX_Sprite_CannonAndKremwoodForestLog:
	db "GFX_Sprite_CannonAndKremwoodForestLog.bin"
GFX_Sprite_CannonAndKremwoodForestLogEnd:
GFX_Layer3_DialogueFont:
	db "GFX_Layer3_DialogueFont.bin"
GFX_Layer3_DialogueFontEnd:
GFX_Sprite_BrashCabinSpeedrunTimerFont:
	db "GFX_Sprite_BrashCabinSpeedrunTimerFont.bin"
GFX_Sprite_BrashCabinSpeedrunTimerFontEnd:
GFX_Layer1_AnimatedFunkysFurnaceTiles:
	db "GFX_Layer1_AnimatedFunkysFurnaceTiles.bin"
GFX_Layer1_AnimatedFunkysFurnaceTilesEnd:
GFX_Sprite_OverworldDKCoinFlag:
	db "GFX_Sprite_OverworldDKCoinFlag.bin"
GFX_Sprite_OverworldDKCoinFlagEnd:
GFX_Sprite_OverworldClearedlevelFlag:
	db "GFX_Sprite_OverworldClearedlevelFlag.bin"
GFX_Sprite_OverworldClearedlevelFlagEnd:
GFX_Sprite_OverworldUnclearedlevelFlag:
	db "GFX_Sprite_OverworldUnclearedlevelFlag.bin"
GFX_Sprite_OverworldUnclearedlevelFlagEnd:
GFX_Sprite_SwankysSideshowSpriteMask:
	db "GFX_Sprite_SwankysSideshowSpriteMask.bin"
GFX_Sprite_SwankysSideshowSpriteMaskEnd:
GFX_Sprite_CollectedKONGLetters:
	db "GFX_Sprite_CollectedKONGLetters.bin"
GFX_Sprite_CollectedKONGLettersEnd:
GFX_Sprite_PhotoEdges:
	db "GFX_Sprite_PhotoEdges.bin"
GFX_Sprite_PhotoEdgesEnd:
GFX_Sprite_InventoryItems:
	db "GFX_Sprite_InventoryItems.bin"
GFX_Sprite_InventoryItemsEnd:
GFX_Sprite_SpeedrunTimerFont:
	db "GFX_Sprite_SpeedrunTimerFont.bin"
GFX_Sprite_SpeedrunTimerFontEnd:
GFX_Sprite_SquawksEgg:
	db "GFX_Sprite_SquawksEgg.bin"
GFX_Sprite_SquawksEggEnd:
GFX_Sprite_KremtoaBridgeRocksAndCogs:
	db "GFX_Sprite_KremtoaBridgeRocksAndCogs.bin"
GFX_Sprite_KremtoaBridgeRocksAndCogsEnd:
GFX_Sprite_ChairliftChairs:
	db "GFX_Sprite_ChairliftChairs.bin"
GFX_Sprite_ChairliftChairsEnd:
GFX_Sprite_KaosKoreGrate:
	db "GFX_Sprite_KaosKoreGrate.bin"
GFX_Sprite_KaosKoreGrateEnd:
GFX_Sprite_RazorRidgeSpriteMask1:
	db "GFX_Sprite_RazorRidgeSpriteMask1.bin"
GFX_Sprite_RazorRidgeSpriteMask1End:
GFX_Sprite_RazorRidgeSpriteMask2:
	db "GFX_Sprite_RazorRidgeSpriteMask2.bin"
GFX_Sprite_RazorRidgeSpriteMask2End:
GFX_Sprite_RazorRidgePipeAndWhirlpool:
	db "GFX_Sprite_RazorRidgePipeAndWhirlpool.bin"
GFX_Sprite_RazorRidgePipeAndWhirlpoolEnd:
GFX_Sprite_EllieDiagonalWaterShots:
	db "GFX_Sprite_EllieDiagonalWaterShots.bin"
GFX_Sprite_EllieDiagonalWaterShotsEnd:
GFX_Sprite_KuchukaBombs:
	db "GFX_Sprite_KuchukaBombs.bin"
GFX_Sprite_KuchukaBombsEnd:
GFX_Sprite_MapBananaBirdFlock:
	db "GFX_Sprite_MapBananaBirdFlock.bin"
GFX_Sprite_MapBananaBirdFlockEnd:
GFX_Sprite_CrystalShardsAndRedGemInBananaBirdQueenBarrier:
	db "GFX_Sprite_CrystalShardsAndRedGemInBananaBirdQueenBarrier.bin"
GFX_Sprite_CrystalShardsAndRedGemInBananaBirdQueenBarrierEnd:
GFX_Sprite_CrissKrossCliffsBazukaTNTBarrel:
	db "GFX_Sprite_CrissKrossCliffsBazukaTNTBarrel.bin"
GFX_Sprite_CrissKrossCliffsBazukaTNTBarrelEnd:
GFX_Sprite_KastleKaosPlatform:
	db "GFX_Sprite_KastleKaosPlatform.bin"
GFX_Sprite_KastleKaosPlatformEnd:
GFX_Sprite_KastleKaosBGElements:
	db "GFX_Sprite_KastleKaosBGElements.bin"
GFX_Sprite_KastleKaosBGElementsEnd:
GFX_UnknownTiles1:
	db "GFX_UnknownTiles1.bin"
GFX_UnknownTiles1End:
GFX_Layer3_FunkyHighlightMenuMask:
	db "GFX_Layer3_FunkyHighlightMenuMask.bin"
GFX_Layer3_FunkyHighlightMenuMaskEnd:
GFX_Layer1_FunkyHighlightMenuMask:
	db "GFX_Layer1_FunkyHighlightMenuMask.bin"
GFX_Layer1_FunkyHighlightMenuMaskEnd:
GFX_Layer1_SwankyHighlightMenuMask:
	db "GFX_Layer1_SwankyHighlightMenuMask.bin"
GFX_Layer1_SwankyHighlightMenuMaskEnd:
GFX_Layer3_SwankyHighlightMenuMask:
	db "GFX_Layer3_SwankyHighlightMenuMask.bin"
GFX_Layer3_SwankyHighlightMenuMaskEnd:
GFX_Layer2_SwankyKongTextBG:
	db "GFX_Layer2_SwankyKongTextBG.bin"
GFX_Layer2_SwankyKongTextBGEnd:
GFX_Sprite_NameEntryBackground:
	db "GFX_Sprite_NameEntryBackground.bin"
GFX_Sprite_NameEntryBackgroundEnd:
GFX_Sprite_FileSelectNumbers:
	db "GFX_Sprite_FileSelectNumbers.bin"
GFX_Sprite_FileSelectNumbersEnd:
GFX_Sprite_DialogueSelectionArrow:
	db "GFX_Sprite_DialogueSelectionArrow.bin"
GFX_Sprite_DialogueSelectionArrowEnd:
GFX_UnknownTiles2:
	db "GFX_UnknownTiles2.bin"
GFX_UnknownTiles2End:
GFX_Layer2_WrinklyKongTextBG:
	db "GFX_Layer2_WrinklyKongTextBG.bin"
GFX_Layer2_WrinklyKongTextBGEnd:
GFX_Sprite_GyrocopterShadow:
	db "GFX_Sprite_GyrocopterShadow.bin"
GFX_Sprite_GyrocopterShadowEnd:
GFX_Sprite_CollectableOverworldFlower:
	db "GFX_Sprite_CollectableOverworldFlower.bin"
GFX_Sprite_CollectableOverworldFlowerEnd:
GFX_Sprite_CottenTopCoveRockBarrier:
	db "GFX_Sprite_CottenTopCoveRockBarrier.bin"
GFX_Sprite_CottenTopCoveRockBarrierEnd:
GFX_Layer2_SkyHighSecretRope:
	db "GFX_Layer2_SkyHighSecretRope.bin"
GFX_Layer2_SkyHighSecretRopeEnd:
GFX_Sprite_CollectableOrnament:
	db "GFX_Sprite_CollectableOrnament.bin"
GFX_Sprite_CollectableOrnamentEnd:
GFX_Sprite_CollectablePresent:
	db "GFX_Sprite_CollectablePresent.bin"
GFX_Sprite_CollectablePresentEnd:
GFX_Sprite_CollectableStar:
	db "GFX_Sprite_CollectableStar.bin"
GFX_Sprite_CollectableStarEnd:
GFX_Sprite_HUDNumbers:
	db "GFX_Sprite_HUDNumbers.bin"
GFX_Sprite_HUDNumbersEnd:
GFX_Sprite_Bananas:
	db "GFX_Sprite_Bananas.bin"
GFX_Sprite_BananasEnd:
GFX_Sprite_ShadedFont:
	db "GFX_Sprite_ShadedFont.bin"
GFX_Sprite_ShadedFontEnd:
GFX_Sprite_EllieWaterHUD:
	db "GFX_Sprite_EllieWaterHUD.bin"
GFX_Sprite_EllieWaterHUDEnd:
GFX_Sprite_FuelHUD:
	db "GFX_Sprite_FuelHUD.bin"
GFX_Sprite_FuelHUDEnd:

;--------------------------------------------------------------------

GFX_Dixie_Walk1:
	db "GFX_Dixie_Walk1.bin"
GFX_Dixie_Walk1End:
GFX_Dixie_Walk2:
	db "GFX_Dixie_Walk2.bin"
GFX_Dixie_Walk2End:
GFX_Dixie_Walk3:
	db "GFX_Dixie_Walk3.bin"
GFX_Dixie_Walk3End:
GFX_Dixie_Walk4:
	db "GFX_Dixie_Walk4.bin"
GFX_Dixie_Walk4End:
GFX_Dixie_Walk5:
	db "GFX_Dixie_Walk5.bin"
GFX_Dixie_Walk5End:
GFX_Dixie_Walk6:
	db "GFX_Dixie_Walk6.bin"
GFX_Dixie_Walk6End:
GFX_Dixie_Walk7:
	db "GFX_Dixie_Walk7.bin"
GFX_Dixie_Walk7End:
GFX_Dixie_Walk8:
	db "GFX_Dixie_Walk8.bin"
GFX_Dixie_Walk8End:
GFX_Dixie_Walk9:
	db "GFX_Dixie_Walk9.bin"
GFX_Dixie_Walk9End:
GFX_Dixie_Walk10:
	db "GFX_Dixie_Walk10.bin"
GFX_Dixie_Walk10End:
GFX_Dixie_Walk11:
	db "GFX_Dixie_Walk11.bin"
GFX_Dixie_Walk11End:
GFX_Dixie_Walk12:
	db "GFX_Dixie_Walk12.bin"
GFX_Dixie_Walk12End:
GFX_Dixie_Walk13:
	db "GFX_Dixie_Walk13.bin"
GFX_Dixie_Walk13End:
GFX_Dixie_Walk14:
	db "GFX_Dixie_Walk14.bin"
GFX_Dixie_Walk14End:
GFX_Dixie_Walk15:
	db "GFX_Dixie_Walk15.bin"
GFX_Dixie_Walk15End:
GFX_Dixie_Walk16:
	db "GFX_Dixie_Walk16.bin"
GFX_Dixie_Walk16End:
GFX_Dixie_Turn1:
	db "GFX_Dixie_Turn1.bin"
GFX_Dixie_Turn1End:
GFX_Dixie_Turn2:
	db "GFX_Dixie_Turn2.bin"
GFX_Dixie_Turn2End:
GFX_Dixie_Run1:
	db "GFX_Dixie_Run1.bin"
GFX_Dixie_Run1End:
GFX_Dixie_Run2:
	db "GFX_Dixie_Run2.bin"
GFX_Dixie_Run2End:
GFX_Dixie_Run3:
	db "GFX_Dixie_Run3.bin"
GFX_Dixie_Run3End:
GFX_Dixie_Run4:
	db "GFX_Dixie_Run4.bin"
GFX_Dixie_Run4End:
GFX_Dixie_Run5:
	db "GFX_Dixie_Run5.bin"
GFX_Dixie_Run5End:
GFX_Dixie_Run6:
	db "GFX_Dixie_Run6.bin"
GFX_Dixie_Run6End:
GFX_Dixie_Run7:
	db "GFX_Dixie_Run7.bin"
GFX_Dixie_Run7End:
GFX_Dixie_Run8:
	db "GFX_Dixie_Run8.bin"
GFX_Dixie_Run8End:
GFX_Dixie_Run9:
	db "GFX_Dixie_Run9.bin"
GFX_Dixie_Run9End:
GFX_Dixie_Run10:
	db "GFX_Dixie_Run10.bin"
GFX_Dixie_Run10End:
GFX_Dixie_Run11:
	db "GFX_Dixie_Run11.bin"
GFX_Dixie_Run11End:
GFX_Dixie_Run12:
	db "GFX_Dixie_Run12.bin"
GFX_Dixie_Run12End:
GFX_Dixie_Run13:
	db "GFX_Dixie_Run13.bin"
GFX_Dixie_Run13End:
GFX_Dixie_Run14:
	db "GFX_Dixie_Run14.bin"
GFX_Dixie_Run14End:
GFX_Dixie_Run15:
	db "GFX_Dixie_Run15.bin"
GFX_Dixie_Run15End:
GFX_Dixie_Run16:
	db "GFX_Dixie_Run16.bin"
GFX_Dixie_Run16End:
GFX_Dixie_Idle1:
	db "GFX_Dixie_Idle1.bin"
GFX_Dixie_Idle1End:
GFX_Dixie_Idle2:
	db "GFX_Dixie_Idle2.bin"
GFX_Dixie_Idle2End:
GFX_Dixie_Idle3:
	db "GFX_Dixie_Idle3.bin"
GFX_Dixie_Idle3End:
GFX_Dixie_Idle4:
	db "GFX_Dixie_Idle4.bin"
GFX_Dixie_Idle4End:
GFX_Dixie_Idle5:
	db "GFX_Dixie_Idle5.bin"
GFX_Dixie_Idle5End:
GFX_Dixie_Idle6:
	db "GFX_Dixie_Idle6.bin"
GFX_Dixie_Idle6End:
GFX_Dixie_Idle7:
	db "GFX_Dixie_Idle7.bin"
GFX_Dixie_Idle7End:
GFX_Dixie_Idle8:
	db "GFX_Dixie_Idle8.bin"
GFX_Dixie_Idle8End:
GFX_Dixie_Idle9:
	db "GFX_Dixie_Idle9.bin"
GFX_Dixie_Idle9End:
GFX_Dixie_Idle10:
	db "GFX_Dixie_Idle10.bin"
GFX_Dixie_Idle10End:
GFX_Dixie_Idle11:
	db "GFX_Dixie_Idle11.bin"
GFX_Dixie_Idle11End:
GFX_Dixie_Idle12:
	db "GFX_Dixie_Idle12.bin"
GFX_Dixie_Idle12End:
GFX_Dixie_Idle13:
	db "GFX_Dixie_Idle13.bin"
GFX_Dixie_Idle13End:
GFX_Dixie_Idle14:
	db "GFX_Dixie_Idle14.bin"
GFX_Dixie_Idle14End:
GFX_Dixie_Idle15:
	db "GFX_Dixie_Idle15.bin"
GFX_Dixie_Idle15End:
GFX_Dixie_Swim1:
	db "GFX_Dixie_Swim1.bin"
GFX_Dixie_Swim1End:
GFX_Dixie_Swim2:
	db "GFX_Dixie_Swim2.bin"
GFX_Dixie_Swim2End:
GFX_Dixie_Swim3:
	db "GFX_Dixie_Swim3.bin"
GFX_Dixie_Swim3End:
GFX_Dixie_Swim4:
	db "GFX_Dixie_Swim4.bin"
GFX_Dixie_Swim4End:
GFX_Dixie_Swim5:
	db "GFX_Dixie_Swim5.bin"
GFX_Dixie_Swim5End:
GFX_Dixie_Swim6:
	db "GFX_Dixie_Swim6.bin"
GFX_Dixie_Swim6End:
GFX_Dixie_Swim7:
	db "GFX_Dixie_Swim7.bin"
GFX_Dixie_Swim7End:
GFX_Dixie_Swim8:
	db "GFX_Dixie_Swim8.bin"
GFX_Dixie_Swim8End:
GFX_Dixie_Swim9:
	db "GFX_Dixie_Swim9.bin"
GFX_Dixie_Swim9End:
GFX_Dixie_Swim10:
	db "GFX_Dixie_Swim10.bin"
GFX_Dixie_Swim10End:
GFX_Dixie_Swim11:
	db "GFX_Dixie_Swim11.bin"
GFX_Dixie_Swim11End:
GFX_Dixie_Swim12:
	db "GFX_Dixie_Swim12.bin"
GFX_Dixie_Swim12End:
GFX_Dixie_Swim13:
	db "GFX_Dixie_Swim13.bin"
GFX_Dixie_Swim13End:
GFX_Dixie_Swim14:
	db "GFX_Dixie_Swim14.bin"
GFX_Dixie_Swim14End:
GFX_Dixie_Swim15:
	db "GFX_Dixie_Swim15.bin"
GFX_Dixie_Swim15End:
GFX_Dixie_Swim16:
	db "GFX_Dixie_Swim16.bin"
GFX_Dixie_Swim16End:
GFX_Dixie_TurnWhileSwimming1:
	db "GFX_Dixie_TurnWhileSwimming1.bin"
GFX_Dixie_TurnWhileSwimming1End:
GFX_Dixie_TurnWhileSwimming2:
	db "GFX_Dixie_TurnWhileSwimming2.bin"
GFX_Dixie_TurnWhileSwimming2End:
GFX_Dixie_Stand:
	db "GFX_Dixie_Stand.bin"
GFX_Dixie_StandEnd:
GFX_Dixie_Jump1:
	db "GFX_Dixie_Jump1.bin"
GFX_Dixie_Jump1End:
GFX_Dixie_Jump2:
	db "GFX_Dixie_Jump2.bin"
GFX_Dixie_Jump2End:
GFX_Dixie_Jump3:
	db "GFX_Dixie_Jump3.bin"
GFX_Dixie_Jump3End:
GFX_Dixie_Jump4:
	db "GFX_Dixie_Jump4.bin"
GFX_Dixie_Jump4End:
GFX_Dixie_Jump5:
	db "GFX_Dixie_Jump5.bin"
GFX_Dixie_Jump5End:
GFX_Dixie_Jump6:
	db "GFX_Dixie_Jump6.bin"
GFX_Dixie_Jump6End:
GFX_Dixie_Jump7:
	db "GFX_Dixie_Jump7.bin"
GFX_Dixie_Jump7End:
GFX_Dixie_Jump8:
	db "GFX_Dixie_Jump8.bin"
GFX_Dixie_Jump8End:
GFX_Dixie_Jump9:
	db "GFX_Dixie_Jump9.bin"
GFX_Dixie_Jump9End:
GFX_Dixie_Jump10:
	db "GFX_Dixie_Jump10.bin"
GFX_Dixie_Jump10End:
GFX_Dixie_Jump11:
	db "GFX_Dixie_Jump11.bin"
GFX_Dixie_Jump11End:
GFX_Dixie_Jump12:
	db "GFX_Dixie_Jump12.bin"
GFX_Dixie_Jump12End:
GFX_Dixie_Jump13:
	db "GFX_Dixie_Jump13.bin"
GFX_Dixie_Jump13End:
GFX_Dixie_Jump14:
	db "GFX_Dixie_Jump14.bin"
GFX_Dixie_Jump14End:
GFX_Dixie_Jump15:
	db "GFX_Dixie_Jump15.bin"
GFX_Dixie_Jump15End:
GFX_Dixie_Jump16:
	db "GFX_Dixie_Jump16.bin"
GFX_Dixie_Jump16End:
GFX_Dixie_Jump17:
	db "GFX_Dixie_Jump17.bin"
GFX_Dixie_Jump17End:
GFX_Dixie_Jump18:
	db "GFX_Dixie_Jump18.bin"
GFX_Dixie_Jump18End:
GFX_Dixie_Jump19:
	db "GFX_Dixie_Jump19.bin"
GFX_Dixie_Jump19End:
GFX_Dixie_Jump20:
	db "GFX_Dixie_Jump20.bin"
GFX_Dixie_Jump20End:
GFX_Dixie_Land1:
	db "GFX_Dixie_Land1.bin"
GFX_Dixie_Land1End:
GFX_Dixie_Land2:
	db "GFX_Dixie_Land2.bin"
GFX_Dixie_Land2End:
GFX_Dixie_Land3:
	db "GFX_Dixie_Land3.bin"
GFX_Dixie_Land3End:
GFX_Dixie_Land4:
	db "GFX_Dixie_Land4.bin"
GFX_Dixie_Land4End:
GFX_Dixie_Land5:
	db "GFX_Dixie_Land5.bin"
GFX_Dixie_Land5End:
GFX_Dixie_Land6:
	db "GFX_Dixie_Land6.bin"
GFX_Dixie_Land6End:
GFX_Dixie_Land7:
	db "GFX_Dixie_Land7.bin"
GFX_Dixie_Land7End:
GFX_Dixie_HangFromHorizontalRope1:
	db "GFX_Dixie_HangFromHorizontalRope1.bin"
GFX_Dixie_HangFromHorizontalRope1End:
GFX_Dixie_HangFromHorizontalRope2:
	db "GFX_Dixie_HangFromHorizontalRope2.bin"
GFX_Dixie_HangFromHorizontalRope2End:
GFX_Dixie_HangFromHorizontalRope3:
	db "GFX_Dixie_HangFromHorizontalRope3.bin"
GFX_Dixie_HangFromHorizontalRope3End:
GFX_Dixie_HangFromHorizontalRope4:
	db "GFX_Dixie_HangFromHorizontalRope4.bin"
GFX_Dixie_HangFromHorizontalRope4End:
GFX_Dixie_HangFromHorizontalRope5:
	db "GFX_Dixie_HangFromHorizontalRope5.bin"
GFX_Dixie_HangFromHorizontalRope5End:
GFX_Dixie_ClimbHorizontalRope1:
	db "GFX_Dixie_ClimbHorizontalRope1.bin"
GFX_Dixie_ClimbHorizontalRope1End:
GFX_Dixie_ClimbHorizontalRope2:
	db "GFX_Dixie_ClimbHorizontalRope2.bin"
GFX_Dixie_ClimbHorizontalRope2End:
GFX_Dixie_ClimbHorizontalRope3:
	db "GFX_Dixie_ClimbHorizontalRope3.bin"
GFX_Dixie_ClimbHorizontalRope3End:
GFX_Dixie_ClimbHorizontalRope4:
	db "GFX_Dixie_ClimbHorizontalRope4.bin"
GFX_Dixie_ClimbHorizontalRope4End:
GFX_Dixie_ClimbHorizontalRope5:
	db "GFX_Dixie_ClimbHorizontalRope5.bin"
GFX_Dixie_ClimbHorizontalRope5End:
GFX_Dixie_ClimbHorizontalRope6:
	db "GFX_Dixie_ClimbHorizontalRope6.bin"
GFX_Dixie_ClimbHorizontalRope6End:
GFX_Dixie_ClimbHorizontalRope7:
	db "GFX_Dixie_ClimbHorizontalRope7.bin"
GFX_Dixie_ClimbHorizontalRope7End:
GFX_Dixie_ClimbHorizontalRope8:
	db "GFX_Dixie_ClimbHorizontalRope8.bin"
GFX_Dixie_ClimbHorizontalRope8End:
GFX_Dixie_ClimbHorizontalRope9:
	db "GFX_Dixie_ClimbHorizontalRope9.bin"
GFX_Dixie_ClimbHorizontalRope9End:
GFX_Dixie_ClimbHorizontalRope10:
	db "GFX_Dixie_ClimbHorizontalRope10.bin"
GFX_Dixie_ClimbHorizontalRope10End:
GFX_Dixie_ClimbHorizontalRope11:
	db "GFX_Dixie_ClimbHorizontalRope11.bin"
GFX_Dixie_ClimbHorizontalRope11End:
GFX_Dixie_ClimbHorizontalRope12:
	db "GFX_Dixie_ClimbHorizontalRope12.bin"
GFX_Dixie_ClimbHorizontalRope12End:
GFX_Dixie_ClimbHorizontalRope13:
	db "GFX_Dixie_ClimbHorizontalRope13.bin"
GFX_Dixie_ClimbHorizontalRope13End:
GFX_Dixie_ClimbHorizontalRope14:
	db "GFX_Dixie_ClimbHorizontalRope14.bin"
GFX_Dixie_ClimbHorizontalRope14End:
GFX_Dixie_ClimbHorizontalRope15:
	db "GFX_Dixie_ClimbHorizontalRope15.bin"
GFX_Dixie_ClimbHorizontalRope15End:
GFX_Dixie_ClimbHorizontalRope16:
	db "GFX_Dixie_ClimbHorizontalRope16.bin"
GFX_Dixie_ClimbHorizontalRope16End:
GFX_Dixie_Roll1:
	db "GFX_Dixie_Roll1.bin"
GFX_Dixie_Roll1End:
GFX_Dixie_Roll2:
	db "GFX_Dixie_Roll2.bin"
GFX_Dixie_Roll2End:
GFX_Dixie_Roll3:
	db "GFX_Dixie_Roll3.bin"
GFX_Dixie_Roll3End:
GFX_Dixie_Roll4:
	db "GFX_Dixie_Roll4.bin"
GFX_Dixie_Roll4End:
GFX_Dixie_Roll5:
	db "GFX_Dixie_Roll5.bin"
GFX_Dixie_Roll5End:
GFX_Dixie_Roll6:
	db "GFX_Dixie_Roll6.bin"
GFX_Dixie_Roll6End:
GFX_Dixie_Roll7:
	db "GFX_Dixie_Roll7.bin"
GFX_Dixie_Roll7End:
GFX_Dixie_Roll8:
	db "GFX_Dixie_Roll8.bin"
GFX_Dixie_Roll8End:
GFX_Dixie_Roll9:
	db "GFX_Dixie_Roll9.bin"
GFX_Dixie_Roll9End:
GFX_Dixie_Roll10:
	db "GFX_Dixie_Roll10.bin"
GFX_Dixie_Roll10End:
GFX_Dixie_Roll11:
	db "GFX_Dixie_Roll11.bin"
GFX_Dixie_Roll11End:
GFX_Dixie_Roll12:
	db "GFX_Dixie_Roll12.bin"
GFX_Dixie_Roll12End:
GFX_Dixie_Roll13:
	db "GFX_Dixie_Roll13.bin"
GFX_Dixie_Roll13End:
GFX_Dixie_Roll14:
	db "GFX_Dixie_Roll14.bin"
GFX_Dixie_Roll14End:
GFX_Dixie_Roll15:
	db "GFX_Dixie_Roll15.bin"
GFX_Dixie_Roll15End:
GFX_Dixie_Roll16:
	db "GFX_Dixie_Roll16.bin"
GFX_Dixie_Roll16End:
GFX_Dixie_Roll17:
	db "GFX_Dixie_Roll17.bin"
GFX_Dixie_Roll17End:
GFX_Dixie_Roll18:
	db "GFX_Dixie_Roll18.bin"
GFX_Dixie_Roll18End:
GFX_Dixie_Roll19:
	db "GFX_Dixie_Roll19.bin"
GFX_Dixie_Roll19End:
GFX_Dixie_Roll20:
	db "GFX_Dixie_Roll20.bin"
GFX_Dixie_Roll20End:
GFX_Dixie_Hover1:
	db "GFX_Dixie_Hover1.bin"
GFX_Dixie_Hover1End:
GFX_Dixie_Hover2:
	db "GFX_Dixie_Hover2.bin"
GFX_Dixie_Hover2End:
GFX_Dixie_Hover3:
	db "GFX_Dixie_Hover3.bin"
GFX_Dixie_Hover3End:
GFX_Dixie_Hover4:
	db "GFX_Dixie_Hover4.bin"
GFX_Dixie_Hover4End:
GFX_Dixie_Hover5:
	db "GFX_Dixie_Hover5.bin"
GFX_Dixie_Hover5End:
GFX_Dixie_Hover6:
	db "GFX_Dixie_Hover6.bin"
GFX_Dixie_Hover6End:
GFX_Dixie_Hover7:
	db "GFX_Dixie_Hover7.bin"
GFX_Dixie_Hover7End:
GFX_Dixie_Hover8:
	db "GFX_Dixie_Hover8.bin"
GFX_Dixie_Hover8End:
GFX_Dixie_Hover9:
	db "GFX_Dixie_Hover9.bin"
GFX_Dixie_Hover9End:
GFX_Dixie_Hover10:
	db "GFX_Dixie_Hover10.bin"
GFX_Dixie_Hover10End:
GFX_Dixie_Hover11:
	db "GFX_Dixie_Hover11.bin"
GFX_Dixie_Hover11End:
GFX_Dixie_Hover12:
	db "GFX_Dixie_Hover12.bin"
GFX_Dixie_Hover12End:
GFX_Dixie_Fall1:
	db "GFX_Dixie_Fall1.bin"
GFX_Dixie_Fall1End:
GFX_Dixie_Fall2:
	db "GFX_Dixie_Fall2.bin"
GFX_Dixie_Fall2End:
GFX_Dixie_Fall3:
	db "GFX_Dixie_Fall3.bin"
GFX_Dixie_Fall3End:
GFX_Dixie_Fall4:
	db "GFX_Dixie_Fall4.bin"
GFX_Dixie_Fall4End:
GFX_Dixie_Fall5:
	db "GFX_Dixie_Fall5.bin"
GFX_Dixie_Fall5End:
GFX_Dixie_Fall6:
	db "GFX_Dixie_Fall6.bin"
GFX_Dixie_Fall6End:
GFX_Dixie_Fall7:
	db "GFX_Dixie_Fall7.bin"
GFX_Dixie_Fall7End:
GFX_Dixie_ClimbUpSingleVerticalRope1:
	db "GFX_Dixie_ClimbUpSingleVerticalRope1.bin"
GFX_Dixie_ClimbUpSingleVerticalRope1End:
GFX_Dixie_ClimbUpSingleVerticalRope2:
	db "GFX_Dixie_ClimbUpSingleVerticalRope2.bin"
GFX_Dixie_ClimbUpSingleVerticalRope2End:
GFX_Dixie_ClimbUpSingleVerticalRope3:
	db "GFX_Dixie_ClimbUpSingleVerticalRope3.bin"
GFX_Dixie_ClimbUpSingleVerticalRope3End:
GFX_Dixie_ClimbUpSingleVerticalRope4:
	db "GFX_Dixie_ClimbUpSingleVerticalRope4.bin"
GFX_Dixie_ClimbUpSingleVerticalRope4End:
GFX_Dixie_ClimbUpSingleVerticalRope5:
	db "GFX_Dixie_ClimbUpSingleVerticalRope5.bin"
GFX_Dixie_ClimbUpSingleVerticalRope5End:
GFX_Dixie_ClimbUpSingleVerticalRope6:
	db "GFX_Dixie_ClimbUpSingleVerticalRope6.bin"
GFX_Dixie_ClimbUpSingleVerticalRope6End:
GFX_Dixie_ClimbUpSingleVerticalRope7:
	db "GFX_Dixie_ClimbUpSingleVerticalRope7.bin"
GFX_Dixie_ClimbUpSingleVerticalRope7End:
GFX_Dixie_ClimbUpSingleVerticalRope8:
	db "GFX_Dixie_ClimbUpSingleVerticalRope8.bin"
GFX_Dixie_ClimbUpSingleVerticalRope8End:
GFX_Dixie_ClimbUpSingleVerticalRope9:
	db "GFX_Dixie_ClimbUpSingleVerticalRope9.bin"
GFX_Dixie_ClimbUpSingleVerticalRope9End:
GFX_Dixie_ClimbUpSingleVerticalRope10:
	db "GFX_Dixie_ClimbUpSingleVerticalRope10.bin"
GFX_Dixie_ClimbUpSingleVerticalRope10End:
GFX_Dixie_ClimbUpSingleVerticalRope11:
	db "GFX_Dixie_ClimbUpSingleVerticalRope11.bin"
GFX_Dixie_ClimbUpSingleVerticalRope11End:
GFX_Dixie_ClimbUpSingleVerticalRope12:
	db "GFX_Dixie_ClimbUpSingleVerticalRope12.bin"
GFX_Dixie_ClimbUpSingleVerticalRope12End:
GFX_Dixie_HangOnVerticalRope:
	db "GFX_Dixie_HangOnVerticalRope.bin"
GFX_Dixie_HangOnVerticalRopeEnd:
GFX_Dixie_TurnOnVerticalRope1:
	db "GFX_Dixie_TurnOnVerticalRope1.bin"
GFX_Dixie_TurnOnVerticalRope1End:
GFX_Dixie_TurnOnVerticalRope2:
	db "GFX_Dixie_TurnOnVerticalRope2.bin"
GFX_Dixie_TurnOnVerticalRope2End:
GFX_Dixie_TurnOnVerticalRope3:
	db "GFX_Dixie_TurnOnVerticalRope3.bin"
GFX_Dixie_TurnOnVerticalRope3End:
GFX_Dixie_IdleOnVerticalRope1:
	db "GFX_Dixie_IdleOnVerticalRope1.bin"
GFX_Dixie_IdleOnVerticalRope1End:
GFX_Dixie_IdleOnVerticalRope2:
	db "GFX_Dixie_IdleOnVerticalRope2.bin"
GFX_Dixie_IdleOnVerticalRope2End:
GFX_Dixie_IdleOnVerticalRope3:
	db "GFX_Dixie_IdleOnVerticalRope3.bin"
GFX_Dixie_IdleOnVerticalRope3End:
GFX_Dixie_IdleOnVerticalRope4:
	db "GFX_Dixie_IdleOnVerticalRope4.bin"
GFX_Dixie_IdleOnVerticalRope4End:
GFX_Dixie_IdleOnVerticalRope5:
	db "GFX_Dixie_IdleOnVerticalRope5.bin"
GFX_Dixie_IdleOnVerticalRope5End:
GFX_Dixie_IdleOnVerticalRope6:
	db "GFX_Dixie_IdleOnVerticalRope6.bin"
GFX_Dixie_IdleOnVerticalRope6End:
GFX_Dixie_Hurt1:
	db "GFX_Dixie_Hurt1.bin"
GFX_Dixie_Hurt1End:
GFX_Dixie_Hurt2:
	db "GFX_Dixie_Hurt2.bin"
GFX_Dixie_Hurt2End:
GFX_Dixie_Hurt3:
	db "GFX_Dixie_Hurt3.bin"
GFX_Dixie_Hurt3End:
GFX_Dixie_Hurt4:
	db "GFX_Dixie_Hurt4.bin"
GFX_Dixie_Hurt4End:
GFX_Dixie_Hurt5:
	db "GFX_Dixie_Hurt5.bin"
GFX_Dixie_Hurt5End:
GFX_Dixie_Hurt6:
	db "GFX_Dixie_Hurt6.bin"
GFX_Dixie_Hurt6End:
GFX_Dixie_Hurt7:
	db "GFX_Dixie_Hurt7.bin"
GFX_Dixie_Hurt7End:
GFX_Dixie_Hurt8:
	db "GFX_Dixie_Hurt8.bin"
GFX_Dixie_Hurt8End:
GFX_Dixie_Hurt9:
	db "GFX_Dixie_Hurt9.bin"
GFX_Dixie_Hurt9End:
GFX_Dixie_Hurt10:
	db "GFX_Dixie_Hurt10.bin"
GFX_Dixie_Hurt10End:
GFX_Dixie_Hurt11:
	db "GFX_Dixie_Hurt11.bin"
GFX_Dixie_Hurt11End:
GFX_Dixie_Hurt12:
	db "GFX_Dixie_Hurt12.bin"
GFX_Dixie_Hurt12End:
GFX_Dixie_Hurt13:
	db "GFX_Dixie_Hurt13.bin"
GFX_Dixie_Hurt13End:
GFX_Dixie_Hurt14:
	db "GFX_Dixie_Hurt14.bin"
GFX_Dixie_Hurt14End:
GFX_Dixie_Hurt15:
	db "GFX_Dixie_Hurt15.bin"
GFX_Dixie_Hurt15End:
GFX_Dixie_Hurt16:
	db "GFX_Dixie_Hurt16.bin"
GFX_Dixie_Hurt16End:
GFX_Dixie_Hurt17:
	db "GFX_Dixie_Hurt17.bin"
GFX_Dixie_Hurt17End:
GFX_Dixie_Hurt18:
	db "GFX_Dixie_Hurt18.bin"
GFX_Dixie_Hurt18End:
GFX_Dixie_Hurt19:
	db "GFX_Dixie_Hurt19.bin"
GFX_Dixie_Hurt19End:
GFX_Dixie_Hurt20:
	db "GFX_Dixie_Hurt20.bin"
GFX_Dixie_Hurt20End:
GFX_Dixie_Hurt21:
	db "GFX_Dixie_Hurt21.bin"
GFX_Dixie_Hurt21End:
GFX_Dixie_Hurt22:
	db "GFX_Dixie_Hurt22.bin"
GFX_Dixie_Hurt22End:
GFX_Dixie_Hurt23:
	db "GFX_Dixie_Hurt23.bin"
GFX_Dixie_Hurt23End:
GFX_DixieTears_Pose1:
	db "GFX_DixieTears_Pose1.bin"
GFX_DixieTears_Pose1End:
GFX_DixieTears_Pose2:
	db "GFX_DixieTears_Pose2.bin"
GFX_DixieTears_Pose2End:
GFX_DixieTears_Pose3:
	db "GFX_DixieTears_Pose3.bin"
GFX_DixieTears_Pose3End:
GFX_DixieTears_Pose4:
	db "GFX_DixieTears_Pose4.bin"
GFX_DixieTears_Pose4End:
GFX_DixieTears_Pose5:
	db "GFX_DixieTears_Pose5.bin"
GFX_DixieTears_Pose5End:
GFX_DixieTears_Pose6:
	db "GFX_DixieTears_Pose6.bin"
GFX_DixieTears_Pose6End:
GFX_Dixie_Bounce1:
	db "GFX_Dixie_Bounce1.bin"
GFX_Dixie_Bounce1End:
GFX_Dixie_Bounce2:
	db "GFX_Dixie_Bounce2.bin"
GFX_Dixie_Bounce2End:
GFX_Dixie_Bounce3:
	db "GFX_Dixie_Bounce3.bin"
GFX_Dixie_Bounce3End:
GFX_Dixie_Bounce4:
	db "GFX_Dixie_Bounce4.bin"
GFX_Dixie_Bounce4End:
GFX_Dixie_Bounce5:
	db "GFX_Dixie_Bounce5.bin"
GFX_Dixie_Bounce5End:
GFX_Dixie_Bounce6:
	db "GFX_Dixie_Bounce6.bin"
GFX_Dixie_Bounce6End:
GFX_Dixie_Bounce7:
	db "GFX_Dixie_Bounce7.bin"
GFX_Dixie_Bounce7End:
GFX_Dixie_Bounce8:
	db "GFX_Dixie_Bounce8.bin"
GFX_Dixie_Bounce8End:
GFX_Dixie_Bounce9:
	db "GFX_Dixie_Bounce9.bin"
GFX_Dixie_Bounce9End:
GFX_Dixie_Bounce10:
	db "GFX_Dixie_Bounce10.bin"
GFX_Dixie_Bounce10End:
GFX_Dixie_Bounce11:
	db "GFX_Dixie_Bounce11.bin"
GFX_Dixie_Bounce11End:
GFX_Dixie_Bounce12:
	db "GFX_Dixie_Bounce12.bin"
GFX_Dixie_Bounce12End:
GFX_Dixie_Bounce13:
	db "GFX_Dixie_Bounce13.bin"
GFX_Dixie_Bounce13End:
GFX_Dixie_Bounce14:
	db "GFX_Dixie_Bounce14.bin"
GFX_Dixie_Bounce14End:
GFX_Dixie_Bounce15:
	db "GFX_Dixie_Bounce15.bin"
GFX_Dixie_Bounce15End:
GFX_Dixie_Bounce16:
	db "GFX_Dixie_Bounce16.bin"
GFX_Dixie_Bounce16End:
GFX_Dixie_Pickup1:
	db "GFX_Dixie_Pickup1.bin"
GFX_Dixie_Pickup1End:
GFX_Dixie_Pickup2:
	db "GFX_Dixie_Pickup2.bin"
GFX_Dixie_Pickup2End:
GFX_Dixie_Pickup3:
	db "GFX_Dixie_Pickup3.bin"
GFX_Dixie_Pickup3End:
GFX_Dixie_Pickup4:
	db "GFX_Dixie_Pickup4.bin"
GFX_Dixie_Pickup4End:
GFX_Dixie_Pickup5:
	db "GFX_Dixie_Pickup5.bin"
GFX_Dixie_Pickup5End:
GFX_Dixie_Pickup6:
	db "GFX_Dixie_Pickup6.bin"
GFX_Dixie_Pickup6End:
GFX_Dixie_Pickup7:
	db "GFX_Dixie_Pickup7.bin"
GFX_Dixie_Pickup7End:
GFX_Dixie_Pickup8:
	db "GFX_Dixie_Pickup8.bin"
GFX_Dixie_Pickup8End:
GFX_Dixie_Pickup9:
	db "GFX_Dixie_Pickup9.bin"
GFX_Dixie_Pickup9End:
GFX_Dixie_Pickup10:
	db "GFX_Dixie_Pickup10.bin"
GFX_Dixie_Pickup10End:
GFX_Dixie_Pickup11:
	db "GFX_Dixie_Pickup11.bin"
GFX_Dixie_Pickup11End:
GFX_Dixie_Pickup12:
	db "GFX_Dixie_Pickup12.bin"
GFX_Dixie_Pickup12End:
GFX_Dixie_Pickup13:
	db "GFX_Dixie_Pickup13.bin"
GFX_Dixie_Pickup13End:
GFX_Dixie_HoldIdle1:
	db "GFX_Dixie_HoldIdle1.bin"
GFX_Dixie_HoldIdle1End:
GFX_Dixie_HoldIdle2:
	db "GFX_Dixie_HoldIdle2.bin"
GFX_Dixie_HoldIdle2End:
GFX_Dixie_HoldWalk1:
	db "GFX_Dixie_HoldWalk1.bin"
GFX_Dixie_HoldWalk1End:
GFX_Dixie_HoldWalk2:
	db "GFX_Dixie_HoldWalk2.bin"
GFX_Dixie_HoldWalk2End:
GFX_Dixie_HoldWalk3:
	db "GFX_Dixie_HoldWalk3.bin"
GFX_Dixie_HoldWalk3End:
GFX_Dixie_HoldWalk4:
	db "GFX_Dixie_HoldWalk4.bin"
GFX_Dixie_HoldWalk4End:
GFX_Dixie_HoldWalk5:
	db "GFX_Dixie_HoldWalk5.bin"
GFX_Dixie_HoldWalk5End:
GFX_Dixie_HoldWalk6:
	db "GFX_Dixie_HoldWalk6.bin"
GFX_Dixie_HoldWalk6End:
GFX_Dixie_HoldWalk7:
	db "GFX_Dixie_HoldWalk7.bin"
GFX_Dixie_HoldWalk7End:
GFX_Dixie_HoldWalk8:
	db "GFX_Dixie_HoldWalk8.bin"
GFX_Dixie_HoldWalk8End:
GFX_Dixie_HoldWalk9:
	db "GFX_Dixie_HoldWalk9.bin"
GFX_Dixie_HoldWalk9End:
GFX_Dixie_HoldWalk10:
	db "GFX_Dixie_HoldWalk10.bin"
GFX_Dixie_HoldWalk10End:
GFX_Dixie_HoldWalk11:
	db "GFX_Dixie_HoldWalk11.bin"
GFX_Dixie_HoldWalk11End:
GFX_Dixie_HoldWalk12:
	db "GFX_Dixie_HoldWalk12.bin"
GFX_Dixie_HoldWalk12End:
GFX_Dixie_HoldWalk13:
	db "GFX_Dixie_HoldWalk13.bin"
GFX_Dixie_HoldWalk13End:
GFX_Dixie_HoldWalk14:
	db "GFX_Dixie_HoldWalk14.bin"
GFX_Dixie_HoldWalk14End:
GFX_Dixie_HoldWalk15:
	db "GFX_Dixie_HoldWalk15.bin"
GFX_Dixie_HoldWalk15End:
GFX_Dixie_HoldWalk16:
	db "GFX_Dixie_HoldWalk16.bin"
GFX_Dixie_HoldWalk16End:
GFX_Dixie_Throw1:
	db "GFX_Dixie_Throw1.bin"
GFX_Dixie_Throw1End:
GFX_Dixie_Throw2:
	db "GFX_Dixie_Throw2.bin"
GFX_Dixie_Throw2End:
GFX_Dixie_Throw3:
	db "GFX_Dixie_Throw3.bin"
GFX_Dixie_Throw3End:
GFX_Dixie_Throw4:
	db "GFX_Dixie_Throw4.bin"
GFX_Dixie_Throw4End:
GFX_Dixie_Throw5:
	db "GFX_Dixie_Throw5.bin"
GFX_Dixie_Throw5End:
GFX_Dixie_Throw6:
	db "GFX_Dixie_Throw6.bin"
GFX_Dixie_Throw6End:
GFX_Dixie_Throw7:
	db "GFX_Dixie_Throw7.bin"
GFX_Dixie_Throw7End:
GFX_Dixie_Throw8:
	db "GFX_Dixie_Throw8.bin"
GFX_Dixie_Throw8End:
GFX_Dixie_Throw9:
	db "GFX_Dixie_Throw9.bin"
GFX_Dixie_Throw9End:
GFX_Dixie_Throw10:
	db "GFX_Dixie_Throw10.bin"
GFX_Dixie_Throw10End:
GFX_Dixie_Throw11:
	db "GFX_Dixie_Throw11.bin"
GFX_Dixie_Throw11End:
GFX_Dixie_Throw12:
	db "GFX_Dixie_Throw12.bin"
GFX_Dixie_Throw12End:
GFX_Dixie_Throw13:
	db "GFX_Dixie_Throw13.bin"
GFX_Dixie_Throw13End:
GFX_Dixie_Throw14:
	db "GFX_Dixie_Throw14.bin"
GFX_Dixie_Throw14End:
GFX_Dixie_Throw15:
	db "GFX_Dixie_Throw15.bin"
GFX_Dixie_Throw15End:
GFX_Dixie_Throw16:
	db "GFX_Dixie_Throw16.bin"
GFX_Dixie_Throw16End:
GFX_Dixie_Throw17:
	db "GFX_Dixie_Throw17.bin"
GFX_Dixie_Throw17End:
GFX_Dixie_Throw18:
	db "GFX_Dixie_Throw18.bin"
GFX_Dixie_Throw18End:
GFX_Dixie_Throw19:
	db "GFX_Dixie_Throw19.bin"
GFX_Dixie_Throw19End:
GFX_Dixie_Throw20:
	db "GFX_Dixie_Throw20.bin"
GFX_Dixie_Throw20End:
GFX_Dixie_Throw21:
	db "GFX_Dixie_Throw21.bin"
GFX_Dixie_Throw21End:
GFX_Dixie_SitOnAnimalBuddy1:
	db "GFX_Dixie_SitOnAnimalBuddy1.bin"
GFX_Dixie_SitOnAnimalBuddy1End:
GFX_Dixie_SitOnAnimalBuddy2:
	db "GFX_Dixie_SitOnAnimalBuddy2.bin"
GFX_Dixie_SitOnAnimalBuddy2End:
GFX_Dixie_SitOnAnimalBuddy3:
	db "GFX_Dixie_SitOnAnimalBuddy3.bin"
GFX_Dixie_SitOnAnimalBuddy3End:
GFX_Dixie_SitOnAnimalBuddy4:
	db "GFX_Dixie_SitOnAnimalBuddy4.bin"
GFX_Dixie_SitOnAnimalBuddy4End:
GFX_Dixie_SitOnAnimalBuddy5:
	db "GFX_Dixie_SitOnAnimalBuddy5.bin"
GFX_Dixie_SitOnAnimalBuddy5End:
GFX_Dixie_SitOnAnimalBuddy6:
	db "GFX_Dixie_SitOnAnimalBuddy6.bin"
GFX_Dixie_SitOnAnimalBuddy6End:
GFX_Dixie_SitOnAnimalBuddy7:
	db "GFX_Dixie_SitOnAnimalBuddy7.bin"
GFX_Dixie_SitOnAnimalBuddy7End:
GFX_Dixie_SitOnAnimalBuddy8:
	db "GFX_Dixie_SitOnAnimalBuddy8.bin"
GFX_Dixie_SitOnAnimalBuddy8End:
GFX_Dixie_SitOnAnimalBuddy9:
	db "GFX_Dixie_SitOnAnimalBuddy9.bin"
GFX_Dixie_SitOnAnimalBuddy9End:
GFX_Dixie_SitOnAnimalBuddy10:
	db "GFX_Dixie_SitOnAnimalBuddy10.bin"
GFX_Dixie_SitOnAnimalBuddy10End:
GFX_Dixie_SitOnAnimalBuddy11:
	db "GFX_Dixie_SitOnAnimalBuddy11.bin"
GFX_Dixie_SitOnAnimalBuddy11End:
GFX_Dixie_SitOnAnimalBuddy12:
	db "GFX_Dixie_SitOnAnimalBuddy12.bin"
GFX_Dixie_SitOnAnimalBuddy12End:
GFX_Dixie_IdleOnAnimalBuddy1:
	db "GFX_Dixie_IdleOnAnimalBuddy1.bin"
GFX_Dixie_IdleOnAnimalBuddy1End:
GFX_Dixie_IdleOnAnimalBuddy2:
	db "GFX_Dixie_IdleOnAnimalBuddy2.bin"
GFX_Dixie_IdleOnAnimalBuddy2End:
GFX_Dixie_IdleOnAnimalBuddy3:
	db "GFX_Dixie_IdleOnAnimalBuddy3.bin"
GFX_Dixie_IdleOnAnimalBuddy3End:
GFX_Dixie_IdleOnAnimalBuddy4:
	db "GFX_Dixie_IdleOnAnimalBuddy4.bin"
GFX_Dixie_IdleOnAnimalBuddy4End:
GFX_Dixie_IdleOnAnimalBuddy5:
	db "GFX_Dixie_IdleOnAnimalBuddy5.bin"
GFX_Dixie_IdleOnAnimalBuddy5End:
GFX_Dixie_IdleOnAnimalBuddy6:
	db "GFX_Dixie_IdleOnAnimalBuddy6.bin"
GFX_Dixie_IdleOnAnimalBuddy6End:
GFX_Dixie_IdleOnAnimalBuddy7:
	db "GFX_Dixie_IdleOnAnimalBuddy7.bin"
GFX_Dixie_IdleOnAnimalBuddy7End:
GFX_Dixie_Duck1:
	db "GFX_Dixie_Duck1.bin"
GFX_Dixie_Duck1End:
GFX_Dixie_Duck2:
	db "GFX_Dixie_Duck2.bin"
GFX_Dixie_Duck2End:
GFX_Dixie_Duck3:
	db "GFX_Dixie_Duck3.bin"
GFX_Dixie_Duck3End:
GFX_Dixie_Duck4:
	db "GFX_Dixie_Duck4.bin"
GFX_Dixie_Duck4End:
GFX_Dixie_Duck5:
	db "GFX_Dixie_Duck5.bin"
GFX_Dixie_Duck5End:
GFX_Dixie_Duck6:
	db "GFX_Dixie_Duck6.bin"
GFX_Dixie_Duck6End:
GFX_Dixie_Duck7:
	db "GFX_Dixie_Duck7.bin"
GFX_Dixie_Duck7End:
GFX_Dixie_Duck8:
	db "GFX_Dixie_Duck8.bin"
GFX_Dixie_Duck8End:
GFX_Dixie_RideSteelKeg1:
	db "GFX_Dixie_RideSteelKeg1.bin"
GFX_Dixie_RideSteelKeg1End:
GFX_Dixie_RideSteelKeg2:
	db "GFX_Dixie_RideSteelKeg2.bin"
GFX_Dixie_RideSteelKeg2End:
GFX_Dixie_RideSteelKeg3:
	db "GFX_Dixie_RideSteelKeg3.bin"
GFX_Dixie_RideSteelKeg3End:
GFX_Dixie_RideSteelKeg4:
	db "GFX_Dixie_RideSteelKeg4.bin"
GFX_Dixie_RideSteelKeg4End:
GFX_Dixie_RideSteelKeg5:
	db "GFX_Dixie_RideSteelKeg5.bin"
GFX_Dixie_RideSteelKeg5End:
GFX_Dixie_RideSteelKeg6:
	db "GFX_Dixie_RideSteelKeg6.bin"
GFX_Dixie_RideSteelKeg6End:
GFX_Dixie_RideSteelKeg7:
	db "GFX_Dixie_RideSteelKeg7.bin"
GFX_Dixie_RideSteelKeg7End:
GFX_Dixie_RideSteelKeg8:
	db "GFX_Dixie_RideSteelKeg8.bin"
GFX_Dixie_RideSteelKeg8End:
GFX_Dixie_TeamUpWalk1:
	db "GFX_Dixie_TeamUpWalk1.bin"
GFX_Dixie_TeamUpWalk1End:
GFX_Dixie_TeamUpWalk2:
	db "GFX_Dixie_TeamUpWalk2.bin"
GFX_Dixie_TeamUpWalk2End:
GFX_Dixie_TeamUpWalk3:
	db "GFX_Dixie_TeamUpWalk3.bin"
GFX_Dixie_TeamUpWalk3End:
GFX_Dixie_TeamUpWalk4:
	db "GFX_Dixie_TeamUpWalk4.bin"
GFX_Dixie_TeamUpWalk4End:
GFX_Dixie_TeamUpWalk5:
	db "GFX_Dixie_TeamUpWalk5.bin"
GFX_Dixie_TeamUpWalk5End:
GFX_Dixie_TeamUpWalk6:
	db "GFX_Dixie_TeamUpWalk6.bin"
GFX_Dixie_TeamUpWalk6End:
GFX_Dixie_TeamUpWalk7:
	db "GFX_Dixie_TeamUpWalk7.bin"
GFX_Dixie_TeamUpWalk7End:
GFX_Dixie_TeamUpWalk8:
	db "GFX_Dixie_TeamUpWalk8.bin"
GFX_Dixie_TeamUpWalk8End:
GFX_Dixie_TeamUpWalk9:
	db "GFX_Dixie_TeamUpWalk9.bin"
GFX_Dixie_TeamUpWalk9End:
GFX_Dixie_TeamUpWalk10:
	db "GFX_Dixie_TeamUpWalk10.bin"
GFX_Dixie_TeamUpWalk10End:
GFX_Dixie_TeamUpWalk11:
	db "GFX_Dixie_TeamUpWalk11.bin"
GFX_Dixie_TeamUpWalk11End:
GFX_Dixie_TeamUpWalk12:
	db "GFX_Dixie_TeamUpWalk12.bin"
GFX_Dixie_TeamUpWalk12End:
GFX_Dixie_TeamUpWalk13:
	db "GFX_Dixie_TeamUpWalk13.bin"
GFX_Dixie_TeamUpWalk13End:
GFX_Dixie_TeamUpWalk14:
	db "GFX_Dixie_TeamUpWalk14.bin"
GFX_Dixie_TeamUpWalk14End:
GFX_Dixie_TeamUpWalk15:
	db "GFX_Dixie_TeamUpWalk15.bin"
GFX_Dixie_TeamUpWalk15End:
GFX_Dixie_TeamUpWalk16:
	db "GFX_Dixie_TeamUpWalk16.bin"
GFX_Dixie_TeamUpWalk16End:
GFX_Dixie_TeamUpIdle1:
	db "GFX_Dixie_TeamUpIdle1.bin"
GFX_Dixie_TeamUpIdle1End:
GFX_Dixie_TeamUpIdle2:
	db "GFX_Dixie_TeamUpIdle2.bin"
GFX_Dixie_TeamUpIdle2End:
GFX_Dixie_TeamUpIdle3:
	db "GFX_Dixie_TeamUpIdle3.bin"
GFX_Dixie_TeamUpIdle3End:
GFX_Dixie_TeamUpIdle4:
	db "GFX_Dixie_TeamUpIdle4.bin"
GFX_Dixie_TeamUpIdle4End:
GFX_Dixie_Carried1:
	db "GFX_Dixie_Carried1.bin"
GFX_Dixie_Carried1End:
GFX_Dixie_Carried2:
	db "GFX_Dixie_Carried2.bin"
GFX_Dixie_Carried2End:
GFX_Dixie_Carried3:
	db "GFX_Dixie_Carried3.bin"
GFX_Dixie_Carried3End:
GFX_Dixie_Carried4:
	db "GFX_Dixie_Carried4.bin"
GFX_Dixie_Carried4End:
GFX_Dixie_Carried5:
	db "GFX_Dixie_Carried5.bin"
GFX_Dixie_Carried5End:
GFX_Dixie_Carried6:
	db "GFX_Dixie_Carried6.bin"
GFX_Dixie_Carried6End:
GFX_Dixie_Carried7:
	db "GFX_Dixie_Carried7.bin"
GFX_Dixie_Carried7End:
GFX_Dixie_Carried8:
	db "GFX_Dixie_Carried8.bin"
GFX_Dixie_Carried8End:
GFX_Dixie_CarriedIdle1:
	db "GFX_Dixie_CarriedIdle1.bin"
GFX_Dixie_CarriedIdle1End:
GFX_Dixie_CarriedIdle2:
	db "GFX_Dixie_CarriedIdle2.bin"
GFX_Dixie_CarriedIdle2End:
GFX_Dixie_CarriedIdle3:
	db "GFX_Dixie_CarriedIdle3.bin"
GFX_Dixie_CarriedIdle3End:
GFX_Dixie_CarriedIdle4:
	db "GFX_Dixie_CarriedIdle4.bin"
GFX_Dixie_CarriedIdle4End:
GFX_Dixie_CarriedIdle5:
	db "GFX_Dixie_CarriedIdle5.bin"
GFX_Dixie_CarriedIdle5End:
GFX_Dixie_CarriedIdle6:
	db "GFX_Dixie_CarriedIdle6.bin"
GFX_Dixie_CarriedIdle6End:
GFX_Dixie_CarriedIdle7:
	db "GFX_Dixie_CarriedIdle7.bin"
GFX_Dixie_CarriedIdle7End:
GFX_Dixie_TeamUpThrow1:
	db "GFX_Dixie_TeamUpThrow1.bin"
GFX_Dixie_TeamUpThrow1End:
GFX_Dixie_TeamUpThrow2:
	db "GFX_Dixie_TeamUpThrow2.bin"
GFX_Dixie_TeamUpThrow2End:
GFX_Dixie_TeamUpThrow3:
	db "GFX_Dixie_TeamUpThrow3.bin"
GFX_Dixie_TeamUpThrow3End:
GFX_Dixie_TeamUpThrow4:
	db "GFX_Dixie_TeamUpThrow4.bin"
GFX_Dixie_TeamUpThrow4End:
GFX_Dixie_TeamUpThrow5:
	db "GFX_Dixie_TeamUpThrow5.bin"
GFX_Dixie_TeamUpThrow5End:
GFX_Dixie_TeamUpThrow6:
	db "GFX_Dixie_TeamUpThrow6.bin"
GFX_Dixie_TeamUpThrow6End:
GFX_Dixie_TeamUpThrow7:
	db "GFX_Dixie_TeamUpThrow7.bin"
GFX_Dixie_TeamUpThrow7End:
GFX_Kiddy_Carried1:
	db "GFX_Kiddy_Carried1.bin"
GFX_Kiddy_Carried1End:
GFX_Kiddy_Carried2:
	db "GFX_Kiddy_Carried2.bin"
GFX_Kiddy_Carried2End:
GFX_Kiddy_Carried3:
	db "GFX_Kiddy_Carried3.bin"
GFX_Kiddy_Carried3End:
GFX_Kiddy_Carried4:
	db "GFX_Kiddy_Carried4.bin"
GFX_Kiddy_Carried4End:
GFX_Kiddy_CarriedIdle1:
	db "GFX_Kiddy_CarriedIdle1.bin"
GFX_Kiddy_CarriedIdle1End:
GFX_Kiddy_CarriedIdle2:
	db "GFX_Kiddy_CarriedIdle2.bin"
GFX_Kiddy_CarriedIdle2End:
GFX_Kiddy_CarriedIdle3:
	db "GFX_Kiddy_CarriedIdle3.bin"
GFX_Kiddy_CarriedIdle3End:
GFX_Kiddy_CarriedIdle4:
	db "GFX_Kiddy_CarriedIdle4.bin"
GFX_Kiddy_CarriedIdle4End:
GFX_Kiddy_CarriedIdle5:
	db "GFX_Kiddy_CarriedIdle5.bin"
GFX_Kiddy_CarriedIdle5End:
GFX_Kiddy_CarriedIdle6:
	db "GFX_Kiddy_CarriedIdle6.bin"
GFX_Kiddy_CarriedIdle6End:
GFX_Kiddy_CarriedIdle7:
	db "GFX_Kiddy_CarriedIdle7.bin"
GFX_Kiddy_CarriedIdle7End:
GFX_Kiddy_CarriedIdle8:
	db "GFX_Kiddy_CarriedIdle8.bin"
GFX_Kiddy_CarriedIdle8End:
GFX_Kiddy_CarriedIdle9:
	db "GFX_Kiddy_CarriedIdle9.bin"
GFX_Kiddy_CarriedIdle9End:
GFX_Kiddy_CarriedIdle10:
	db "GFX_Kiddy_CarriedIdle10.bin"
GFX_Kiddy_CarriedIdle10End:
GFX_Kiddy_CarriedIdle11:
	db "GFX_Kiddy_CarriedIdle11.bin"
GFX_Kiddy_CarriedIdle11End:
GFX_Kiddy_TeamUpWalk1:
	db "GFX_Kiddy_TeamUpWalk1.bin"
GFX_Kiddy_TeamUpWalk1End:
GFX_Kiddy_TeamUpWalk2:
	db "GFX_Kiddy_TeamUpWalk2.bin"
GFX_Kiddy_TeamUpWalk2End:
GFX_Kiddy_TeamUpWalk3:
	db "GFX_Kiddy_TeamUpWalk3.bin"
GFX_Kiddy_TeamUpWalk3End:
GFX_Kiddy_TeamUpWalk4:
	db "GFX_Kiddy_TeamUpWalk4.bin"
GFX_Kiddy_TeamUpWalk4End:
GFX_Kiddy_TeamUpWalk5:
	db "GFX_Kiddy_TeamUpWalk5.bin"
GFX_Kiddy_TeamUpWalk5End:
GFX_Kiddy_TeamUpWalk6:
	db "GFX_Kiddy_TeamUpWalk6.bin"
GFX_Kiddy_TeamUpWalk6End:
GFX_Kiddy_TeamUpWalk7:
	db "GFX_Kiddy_TeamUpWalk7.bin"
GFX_Kiddy_TeamUpWalk7End:
GFX_Kiddy_TeamUpWalk8:
	db "GFX_Kiddy_TeamUpWalk8.bin"
GFX_Kiddy_TeamUpWalk8End:
GFX_Kiddy_TeamUpWalk9:
	db "GFX_Kiddy_TeamUpWalk9.bin"
GFX_Kiddy_TeamUpWalk9End:
GFX_Kiddy_TeamUpWalk10:
	db "GFX_Kiddy_TeamUpWalk10.bin"
GFX_Kiddy_TeamUpWalk10End:
GFX_Kiddy_TeamUpWalk11:
	db "GFX_Kiddy_TeamUpWalk11.bin"
GFX_Kiddy_TeamUpWalk11End:
GFX_Kiddy_TeamUpWalk12:
	db "GFX_Kiddy_TeamUpWalk12.bin"
GFX_Kiddy_TeamUpWalk12End:
GFX_Kiddy_TeamUpWalk13:
	db "GFX_Kiddy_TeamUpWalk13.bin"
GFX_Kiddy_TeamUpWalk13End:
GFX_Kiddy_TeamUpWalk14:
	db "GFX_Kiddy_TeamUpWalk14.bin"
GFX_Kiddy_TeamUpWalk14End:
GFX_Kiddy_TeamUpWalk15:
	db "GFX_Kiddy_TeamUpWalk15.bin"
GFX_Kiddy_TeamUpWalk15End:
GFX_Kiddy_TeamUpWalk16:
	db "GFX_Kiddy_TeamUpWalk16.bin"
GFX_Kiddy_TeamUpWalk16End:
GFX_Kiddy_TeamUpIdle1:
	db "GFX_Kiddy_TeamUpIdle1.bin"
GFX_Kiddy_TeamUpIdle1End:
GFX_Kiddy_TeamUpIdle2:
	db "GFX_Kiddy_TeamUpIdle2.bin"
GFX_Kiddy_TeamUpIdle2End:
GFX_Kiddy_TeamUpIdle3:
	db "GFX_Kiddy_TeamUpIdle3.bin"
GFX_Kiddy_TeamUpIdle3End:
GFX_Kiddy_TeamUpIdle4:
	db "GFX_Kiddy_TeamUpIdle4.bin"
GFX_Kiddy_TeamUpIdle4End:
GFX_Kiddy_Walk1:
	db "GFX_Kiddy_Walk1.bin"
GFX_Kiddy_Walk1End:
GFX_Kiddy_Walk2:
	db "GFX_Kiddy_Walk2.bin"
GFX_Kiddy_Walk2End:
GFX_Kiddy_Walk3:
	db "GFX_Kiddy_Walk3.bin"
GFX_Kiddy_Walk3End:
GFX_Kiddy_Walk4:
	db "GFX_Kiddy_Walk4.bin"
GFX_Kiddy_Walk4End:
GFX_Kiddy_Walk5:
	db "GFX_Kiddy_Walk5.bin"
GFX_Kiddy_Walk5End:
GFX_Kiddy_Walk6:
	db "GFX_Kiddy_Walk6.bin"
GFX_Kiddy_Walk6End:
GFX_Kiddy_Walk7:
	db "GFX_Kiddy_Walk7.bin"
GFX_Kiddy_Walk7End:
GFX_Kiddy_Walk8:
	db "GFX_Kiddy_Walk8.bin"
GFX_Kiddy_Walk8End:
GFX_Kiddy_Walk9:
	db "GFX_Kiddy_Walk9.bin"
GFX_Kiddy_Walk9End:
GFX_Kiddy_Walk10:
	db "GFX_Kiddy_Walk10.bin"
GFX_Kiddy_Walk10End:
GFX_Kiddy_Walk11:
	db "GFX_Kiddy_Walk11.bin"
GFX_Kiddy_Walk11End:
GFX_Kiddy_Walk12:
	db "GFX_Kiddy_Walk12.bin"
GFX_Kiddy_Walk12End:
GFX_Kiddy_Walk13:
	db "GFX_Kiddy_Walk13.bin"
GFX_Kiddy_Walk13End:
GFX_Kiddy_Walk14:
	db "GFX_Kiddy_Walk14.bin"
GFX_Kiddy_Walk14End:
GFX_Kiddy_Walk15:
	db "GFX_Kiddy_Walk15.bin"
GFX_Kiddy_Walk15End:
GFX_Kiddy_Walk16:
	db "GFX_Kiddy_Walk16.bin"
GFX_Kiddy_Walk16End:
GFX_Kiddy_Victory1:
	db "GFX_Kiddy_Victory1.bin"
GFX_Kiddy_Victory1End:
GFX_Kiddy_Victory2:
	db "GFX_Kiddy_Victory2.bin"
GFX_Kiddy_Victory2End:
GFX_Kiddy_Victory3:
	db "GFX_Kiddy_Victory3.bin"
GFX_Kiddy_Victory3End:
GFX_Kiddy_Victory4:
	db "GFX_Kiddy_Victory4.bin"
GFX_Kiddy_Victory4End:
GFX_Kiddy_Victory5:
	db "GFX_Kiddy_Victory5.bin"
GFX_Kiddy_Victory5End:
GFX_Kiddy_Victory6:
	db "GFX_Kiddy_Victory6.bin"
GFX_Kiddy_Victory6End:
GFX_Kiddy_Victory7:
	db "GFX_Kiddy_Victory7.bin"
GFX_Kiddy_Victory7End:
GFX_Kiddy_SitDown1:
	db "GFX_Kiddy_SitDown1.bin"
GFX_Kiddy_SitDown1End:
GFX_Kiddy_SitDown2:
	db "GFX_Kiddy_SitDown2.bin"
GFX_Kiddy_SitDown2End:
GFX_Kiddy_SitDown3:
	db "GFX_Kiddy_SitDown3.bin"
GFX_Kiddy_SitDown3End:
GFX_Kiddy_SitDown4:
	db "GFX_Kiddy_SitDown4.bin"
GFX_Kiddy_SitDown4End:
GFX_Kiddy_SitDown5:
	db "GFX_Kiddy_SitDown5.bin"
GFX_Kiddy_SitDown5End:
GFX_Kiddy_SitDown6:
	db "GFX_Kiddy_SitDown6.bin"
GFX_Kiddy_SitDown6End:
GFX_Kiddy_Run1:
	db "GFX_Kiddy_Run1.bin"
GFX_Kiddy_Run1End:
GFX_Kiddy_Run2:
	db "GFX_Kiddy_Run2.bin"
GFX_Kiddy_Run2End:
GFX_Kiddy_Run3:
	db "GFX_Kiddy_Run3.bin"
GFX_Kiddy_Run3End:
GFX_Kiddy_Run4:
	db "GFX_Kiddy_Run4.bin"
GFX_Kiddy_Run4End:
GFX_Kiddy_Run5:
	db "GFX_Kiddy_Run5.bin"
GFX_Kiddy_Run5End:
GFX_Kiddy_Run6:
	db "GFX_Kiddy_Run6.bin"
GFX_Kiddy_Run6End:
GFX_Kiddy_Run7:
	db "GFX_Kiddy_Run7.bin"
GFX_Kiddy_Run7End:
GFX_Kiddy_Run8:
	db "GFX_Kiddy_Run8.bin"
GFX_Kiddy_Run8End:
GFX_Kiddy_Run9:
	db "GFX_Kiddy_Run9.bin"
GFX_Kiddy_Run9End:
GFX_Kiddy_Run10:
	db "GFX_Kiddy_Run10.bin"
GFX_Kiddy_Run10End:
GFX_Kiddy_Run11:
	db "GFX_Kiddy_Run11.bin"
GFX_Kiddy_Run11End:
GFX_Kiddy_Run12:
	db "GFX_Kiddy_Run12.bin"
GFX_Kiddy_Run12End:
GFX_Kiddy_Jump1:
	db "GFX_Kiddy_Jump1.bin"
GFX_Kiddy_Jump1End:
GFX_Kiddy_Jump2:
	db "GFX_Kiddy_Jump2.bin"
GFX_Kiddy_Jump2End:
GFX_Kiddy_Jump3:
	db "GFX_Kiddy_Jump3.bin"
GFX_Kiddy_Jump3End:
GFX_Kiddy_Jump4:
	db "GFX_Kiddy_Jump4.bin"
GFX_Kiddy_Jump4End:
GFX_Kiddy_Jump5:
	db "GFX_Kiddy_Jump5.bin"
GFX_Kiddy_Jump5End:
GFX_Kiddy_Jump6:
	db "GFX_Kiddy_Jump6.bin"
GFX_Kiddy_Jump6End:
GFX_Kiddy_Jump7:
	db "GFX_Kiddy_Jump7.bin"
GFX_Kiddy_Jump7End:
GFX_Kiddy_Jump8:
	db "GFX_Kiddy_Jump8.bin"
GFX_Kiddy_Jump8End:
GFX_Kiddy_Land1:
	db "GFX_Kiddy_Land1.bin"
GFX_Kiddy_Land1End:
GFX_Kiddy_Land2:
	db "GFX_Kiddy_Land2.bin"
GFX_Kiddy_Land2End:
GFX_Kiddy_Land3:
	db "GFX_Kiddy_Land3.bin"
GFX_Kiddy_Land3End:
GFX_Kiddy_Roll1:
	db "GFX_Kiddy_Roll1.bin"
GFX_Kiddy_Roll1End:
GFX_Kiddy_Roll2:
	db "GFX_Kiddy_Roll2.bin"
GFX_Kiddy_Roll2End:
GFX_Kiddy_Roll3:
	db "GFX_Kiddy_Roll3.bin"
GFX_Kiddy_Roll3End:
GFX_Kiddy_Roll4:
	db "GFX_Kiddy_Roll4.bin"
GFX_Kiddy_Roll4End:
GFX_Kiddy_Roll5:
	db "GFX_Kiddy_Roll5.bin"
GFX_Kiddy_Roll5End:
GFX_Kiddy_Roll6:
	db "GFX_Kiddy_Roll6.bin"
GFX_Kiddy_Roll6End:
GFX_Kiddy_Roll7:
	db "GFX_Kiddy_Roll7.bin"
GFX_Kiddy_Roll7End:
GFX_Kiddy_Roll8:
	db "GFX_Kiddy_Roll8.bin"
GFX_Kiddy_Roll8End:
GFX_Kiddy_Roll9:
	db "GFX_Kiddy_Roll9.bin"
GFX_Kiddy_Roll9End:
GFX_Kiddy_Roll10:
	db "GFX_Kiddy_Roll10.bin"
GFX_Kiddy_Roll10End:
GFX_Kiddy_Roll11:
	db "GFX_Kiddy_Roll11.bin"
GFX_Kiddy_Roll11End:
GFX_Kiddy_Roll12:
	db "GFX_Kiddy_Roll12.bin"
GFX_Kiddy_Roll12End:
GFX_Kiddy_Roll13:
	db "GFX_Kiddy_Roll13.bin"
GFX_Kiddy_Roll13End:
GFX_Kiddy_Roll14:
	db "GFX_Kiddy_Roll14.bin"
GFX_Kiddy_Roll14End:
GFX_Kiddy_Roll15:
	db "GFX_Kiddy_Roll15.bin"
GFX_Kiddy_Roll15End:
GFX_Kiddy_Roll16:
	db "GFX_Kiddy_Roll16.bin"
GFX_Kiddy_Roll16End:
GFX_Kiddy_Roll17:
	db "GFX_Kiddy_Roll17.bin"
GFX_Kiddy_Roll17End:
GFX_Kiddy_Roll18:
	db "GFX_Kiddy_Roll18.bin"
GFX_Kiddy_Roll18End:
GFX_Kiddy_Roll19:
	db "GFX_Kiddy_Roll19.bin"
GFX_Kiddy_Roll19End:
GFX_Kiddy_Pickup1:
	db "GFX_Kiddy_Pickup1.bin"
GFX_Kiddy_Pickup1End:
GFX_Kiddy_Pickup2:
	db "GFX_Kiddy_Pickup2.bin"
GFX_Kiddy_Pickup2End:
GFX_Kiddy_Pickup3:
	db "GFX_Kiddy_Pickup3.bin"
GFX_Kiddy_Pickup3End:
GFX_Kiddy_Pickup4:
	db "GFX_Kiddy_Pickup4.bin"
GFX_Kiddy_Pickup4End:
GFX_Kiddy_Pickup5:
	db "GFX_Kiddy_Pickup5.bin"
GFX_Kiddy_Pickup5End:
GFX_Kiddy_Pickup6:
	db "GFX_Kiddy_Pickup6.bin"
GFX_Kiddy_Pickup6End:
GFX_Kiddy_HoldWalk1:
	db "GFX_Kiddy_HoldWalk1.bin"
GFX_Kiddy_HoldWalk1End:
GFX_Kiddy_HoldWalk2:
	db "GFX_Kiddy_HoldWalk2.bin"
GFX_Kiddy_HoldWalk2End:
GFX_Kiddy_HoldWalk3:
	db "GFX_Kiddy_HoldWalk3.bin"
GFX_Kiddy_HoldWalk3End:
GFX_Kiddy_HoldWalk4:
	db "GFX_Kiddy_HoldWalk4.bin"
GFX_Kiddy_HoldWalk4End:
GFX_Kiddy_HoldWalk5:
	db "GFX_Kiddy_HoldWalk5.bin"
GFX_Kiddy_HoldWalk5End:
GFX_Kiddy_HoldWalk6:
	db "GFX_Kiddy_HoldWalk6.bin"
GFX_Kiddy_HoldWalk6End:
GFX_Kiddy_HoldWalk7:
	db "GFX_Kiddy_HoldWalk7.bin"
GFX_Kiddy_HoldWalk7End:
GFX_Kiddy_HoldWalk8:
	db "GFX_Kiddy_HoldWalk8.bin"
GFX_Kiddy_HoldWalk8End:
GFX_Kiddy_HoldWalk9:
	db "GFX_Kiddy_HoldWalk9.bin"
GFX_Kiddy_HoldWalk9End:
GFX_Kiddy_HoldWalk10:
	db "GFX_Kiddy_HoldWalk10.bin"
GFX_Kiddy_HoldWalk10End:
GFX_Kiddy_HoldWalk11:
	db "GFX_Kiddy_HoldWalk11.bin"
GFX_Kiddy_HoldWalk11End:
GFX_Kiddy_PullPajamas1:
	db "GFX_Kiddy_PullPajamas1.bin"
GFX_Kiddy_PullPajamas1End:
GFX_Kiddy_PullPajamas2:
	db "GFX_Kiddy_PullPajamas2.bin"
GFX_Kiddy_PullPajamas2End:
GFX_Kiddy_PullPajamas3:
	db "GFX_Kiddy_PullPajamas3.bin"
GFX_Kiddy_PullPajamas3End:
GFX_Kiddy_PullPajamas4:
	db "GFX_Kiddy_PullPajamas4.bin"
GFX_Kiddy_PullPajamas4End:
GFX_Kiddy_PullPajamas5:
	db "GFX_Kiddy_PullPajamas5.bin"
GFX_Kiddy_PullPajamas5End:
GFX_Kiddy_PullPajamas6:
	db "GFX_Kiddy_PullPajamas6.bin"
GFX_Kiddy_PullPajamas6End:
GFX_Kiddy_PullPajamas7:
	db "GFX_Kiddy_PullPajamas7.bin"
GFX_Kiddy_PullPajamas7End:
GFX_Kiddy_PullPajamas8:
	db "GFX_Kiddy_PullPajamas8.bin"
GFX_Kiddy_PullPajamas8End:
GFX_Kiddy_PullPajamas9:
	db "GFX_Kiddy_PullPajamas9.bin"
GFX_Kiddy_PullPajamas9End:
GFX_Kiddy_PullPajamas10:
	db "GFX_Kiddy_PullPajamas10.bin"
GFX_Kiddy_PullPajamas10End:
GFX_Kiddy_PullPajamas11:
	db "GFX_Kiddy_PullPajamas11.bin"
GFX_Kiddy_PullPajamas11End:
GFX_Kiddy_PullPajamas12:
	db "GFX_Kiddy_PullPajamas12.bin"
GFX_Kiddy_PullPajamas12End:
GFX_Kiddy_PullPajamas13:
	db "GFX_Kiddy_PullPajamas13.bin"
GFX_Kiddy_PullPajamas13End:
GFX_Kiddy_PullPajamas14:
	db "GFX_Kiddy_PullPajamas14.bin"
GFX_Kiddy_PullPajamas14End:
GFX_Kiddy_PullPajamas15:
	db "GFX_Kiddy_PullPajamas15.bin"
GFX_Kiddy_PullPajamas15End:
GFX_Kiddy_PullPajamas16:
	db "GFX_Kiddy_PullPajamas16.bin"
GFX_Kiddy_PullPajamas16End:
GFX_Kiddy_PullPajamas17:
	db "GFX_Kiddy_PullPajamas17.bin"
GFX_Kiddy_PullPajamas17End:
GFX_Kiddy_PullPajamas18:
	db "GFX_Kiddy_PullPajamas18.bin"
GFX_Kiddy_PullPajamas18End:
GFX_Kiddy_PullPajamas19:
	db "GFX_Kiddy_PullPajamas19.bin"
GFX_Kiddy_PullPajamas19End:
GFX_Kiddy_PullPajamas20:
	db "GFX_Kiddy_PullPajamas20.bin"
GFX_Kiddy_PullPajamas20End:
GFX_Kiddy_PullPajamas21:
	db "GFX_Kiddy_PullPajamas21.bin"
GFX_Kiddy_PullPajamas21End:
GFX_Kiddy_PullPajamas22:
	db "GFX_Kiddy_PullPajamas22.bin"
GFX_Kiddy_PullPajamas22End:
GFX_Kiddy_PullPajamas23:
	db "GFX_Kiddy_PullPajamas23.bin"
GFX_Kiddy_PullPajamas23End:
GFX_Kiddy_PullPajamas24:
	db "GFX_Kiddy_PullPajamas24.bin"
GFX_Kiddy_PullPajamas24End:
GFX_Kiddy_PullPajamas25:
	db "GFX_Kiddy_PullPajamas25.bin"
GFX_Kiddy_PullPajamas25End:
GFX_Kiddy_PullPajamas26:
	db "GFX_Kiddy_PullPajamas26.bin"
GFX_Kiddy_PullPajamas26End:
GFX_Kiddy_PullPajamas27:
	db "GFX_Kiddy_PullPajamas27.bin"
GFX_Kiddy_PullPajamas27End:
GFX_Kiddy_Tantrum1:
	db "GFX_Kiddy_Tantrum1.bin"
GFX_Kiddy_Tantrum1End:
GFX_Kiddy_Tantrum2:
	db "GFX_Kiddy_Tantrum2.bin"
GFX_Kiddy_Tantrum2End:
GFX_Kiddy_Tantrum3:
	db "GFX_Kiddy_Tantrum3.bin"
GFX_Kiddy_Tantrum3End:
GFX_Kiddy_Tantrum4:
	db "GFX_Kiddy_Tantrum4.bin"
GFX_Kiddy_Tantrum4End:
GFX_Kiddy_Tantrum5:
	db "GFX_Kiddy_Tantrum5.bin"
GFX_Kiddy_Tantrum5End:
GFX_Kiddy_Tantrum6:
	db "GFX_Kiddy_Tantrum6.bin"
GFX_Kiddy_Tantrum6End:
GFX_Kiddy_Tantrum7:
	db "GFX_Kiddy_Tantrum7.bin"
GFX_Kiddy_Tantrum7End:
GFX_Kiddy_Hurt1:
	db "GFX_Kiddy_Hurt1.bin"
GFX_Kiddy_Hurt1End:
GFX_Kiddy_Hurt2:
	db "GFX_Kiddy_Hurt2.bin"
GFX_Kiddy_Hurt2End:
GFX_Kiddy_Hurt3:
	db "GFX_Kiddy_Hurt3.bin"
GFX_Kiddy_Hurt3End:
GFX_Kiddy_Hurt4:
	db "GFX_Kiddy_Hurt4.bin"
GFX_Kiddy_Hurt4End:
GFX_Kiddy_Hurt5:
	db "GFX_Kiddy_Hurt5.bin"
GFX_Kiddy_Hurt5End:
GFX_Kiddy_Hurt6:
	db "GFX_Kiddy_Hurt6.bin"
GFX_Kiddy_Hurt6End:
GFX_Kiddy_Hurt7:
	db "GFX_Kiddy_Hurt7.bin"
GFX_Kiddy_Hurt7End:
GFX_Kiddy_Hurt8:
	db "GFX_Kiddy_Hurt8.bin"
GFX_Kiddy_Hurt8End:
GFX_Kiddy_Hurt9:
	db "GFX_Kiddy_Hurt9.bin"
GFX_Kiddy_Hurt9End:
GFX_Kiddy_Hurt10:
	db "GFX_Kiddy_Hurt10.bin"
GFX_Kiddy_Hurt10End:
GFX_Kiddy_Hurt11:
	db "GFX_Kiddy_Hurt11.bin"
GFX_Kiddy_Hurt11End:
GFX_Kiddy_Hurt12:
	db "GFX_Kiddy_Hurt12.bin"
GFX_Kiddy_Hurt12End:
GFX_Kiddy_Hurt13:
	db "GFX_Kiddy_Hurt13.bin"
GFX_Kiddy_Hurt13End:
GFX_Kiddy_Throw1:
	db "GFX_Kiddy_Throw1.bin"
GFX_Kiddy_Throw1End:
GFX_Kiddy_Throw2:
	db "GFX_Kiddy_Throw2.bin"
GFX_Kiddy_Throw2End:
GFX_Kiddy_Throw3:
	db "GFX_Kiddy_Throw3.bin"
GFX_Kiddy_Throw3End:
GFX_Kiddy_Throw4:
	db "GFX_Kiddy_Throw4.bin"
GFX_Kiddy_Throw4End:
GFX_Kiddy_Throw5:
	db "GFX_Kiddy_Throw5.bin"
GFX_Kiddy_Throw5End:
GFX_Kiddy_Throw6:
	db "GFX_Kiddy_Throw6.bin"
GFX_Kiddy_Throw6End:
GFX_Kiddy_Throw7:
	db "GFX_Kiddy_Throw7.bin"
GFX_Kiddy_Throw7End:
GFX_Kiddy_Throw8:
	db "GFX_Kiddy_Throw8.bin"
GFX_Kiddy_Throw8End:
GFX_Kiddy_Throw9:
	db "GFX_Kiddy_Throw9.bin"
GFX_Kiddy_Throw9End:
GFX_Kiddy_Throw10:
	db "GFX_Kiddy_Throw10.bin"
GFX_Kiddy_Throw10End:
GFX_Kiddy_Throw11:
	db "GFX_Kiddy_Throw11.bin"
GFX_Kiddy_Throw11End:
GFX_Kiddy_Throw12:
	db "GFX_Kiddy_Throw12.bin"
GFX_Kiddy_Throw12End:
GFX_Kiddy_Throw13:
	db "GFX_Kiddy_Throw13.bin"
GFX_Kiddy_Throw13End:
GFX_Kiddy_Throw14:
	db "GFX_Kiddy_Throw14.bin"
GFX_Kiddy_Throw14End:
GFX_Kiddy_Throw15:
	db "GFX_Kiddy_Throw15.bin"
GFX_Kiddy_Throw15End:
GFX_Kiddy_Throw16:
	db "GFX_Kiddy_Throw16.bin"
GFX_Kiddy_Throw16End:
GFX_Kiddy_Swim1:
	db "GFX_Kiddy_Swim1.bin"
GFX_Kiddy_Swim1End:
GFX_Kiddy_Swim2:
	db "GFX_Kiddy_Swim2.bin"
GFX_Kiddy_Swim2End:
GFX_Kiddy_Swim3:
	db "GFX_Kiddy_Swim3.bin"
GFX_Kiddy_Swim3End:
GFX_Kiddy_Swim4:
	db "GFX_Kiddy_Swim4.bin"
GFX_Kiddy_Swim4End:
GFX_Kiddy_Swim5:
	db "GFX_Kiddy_Swim5.bin"
GFX_Kiddy_Swim5End:
GFX_Kiddy_Swim6:
	db "GFX_Kiddy_Swim6.bin"
GFX_Kiddy_Swim6End:
GFX_Kiddy_Swim7:
	db "GFX_Kiddy_Swim7.bin"
GFX_Kiddy_Swim7End:
GFX_Kiddy_Swim8:
	db "GFX_Kiddy_Swim8.bin"
GFX_Kiddy_Swim8End:
GFX_Kiddy_Swim9:
	db "GFX_Kiddy_Swim9.bin"
GFX_Kiddy_Swim9End:
GFX_Kiddy_Swim10:
	db "GFX_Kiddy_Swim10.bin"
GFX_Kiddy_Swim10End:
GFX_Kiddy_Swim11:
	db "GFX_Kiddy_Swim11.bin"
GFX_Kiddy_Swim11End:
GFX_Kiddy_Swim12:
	db "GFX_Kiddy_Swim12.bin"
GFX_Kiddy_Swim12End:
GFX_Kiddy_Swim13:
	db "GFX_Kiddy_Swim13.bin"
GFX_Kiddy_Swim13End:
GFX_Kiddy_Swim14:
	db "GFX_Kiddy_Swim14.bin"
GFX_Kiddy_Swim14End:
GFX_Kiddy_Swim15:
	db "GFX_Kiddy_Swim15.bin"
GFX_Kiddy_Swim15End:
GFX_Kiddy_Swim16:
	db "GFX_Kiddy_Swim16.bin"
GFX_Kiddy_Swim16End:
GFX_Kiddy_TurnWhileSwimming1:
	db "GFX_Kiddy_TurnWhileSwimming1.bin"
GFX_Kiddy_TurnWhileSwimming1End:
GFX_Kiddy_TurnWhileSwimming2:
	db "GFX_Kiddy_TurnWhileSwimming2.bin"
GFX_Kiddy_TurnWhileSwimming2End:
GFX_Kiddy_HangFromHorizontalRope1:
	db "GFX_Kiddy_HangFromHorizontalRope1.bin"
GFX_Kiddy_HangFromHorizontalRope1End:
GFX_Kiddy_HangFromHorizontalRope2:
	db "GFX_Kiddy_HangFromHorizontalRope2.bin"
GFX_Kiddy_HangFromHorizontalRope2End:
GFX_Kiddy_HangFromHorizontalRope3:
	db "GFX_Kiddy_HangFromHorizontalRope3.bin"
GFX_Kiddy_HangFromHorizontalRope3End:
GFX_Kiddy_HangFromHorizontalRope4:
	db "GFX_Kiddy_HangFromHorizontalRope4.bin"
GFX_Kiddy_HangFromHorizontalRope4End:
GFX_Kiddy_HangFromHorizontalRope5:
	db "GFX_Kiddy_HangFromHorizontalRope5.bin"
GFX_Kiddy_HangFromHorizontalRope5End:
GFX_Kiddy_HangFromHorizontalRope6:
	db "GFX_Kiddy_HangFromHorizontalRope6.bin"
GFX_Kiddy_HangFromHorizontalRope6End:
GFX_Kiddy_HangFromHorizontalRope7:
	db "GFX_Kiddy_HangFromHorizontalRope7.bin"
GFX_Kiddy_HangFromHorizontalRope7End:
GFX_Kiddy_HangFromHorizontalRope8:
	db "GFX_Kiddy_HangFromHorizontalRope8.bin"
GFX_Kiddy_HangFromHorizontalRope8End:
GFX_Kiddy_GrabHorizontalRope1:
	db "GFX_Kiddy_GrabHorizontalRope1.bin"
GFX_Kiddy_GrabHorizontalRope1End:
GFX_Kiddy_GrabHorizontalRope2:
	db "GFX_Kiddy_GrabHorizontalRope2.bin"
GFX_Kiddy_GrabHorizontalRope2End:
GFX_Kiddy_ClimbHorizontalRope1:
	db "GFX_Kiddy_ClimbHorizontalRope1.bin"
GFX_Kiddy_ClimbHorizontalRope1End:
GFX_Kiddy_ClimbHorizontalRope2:
	db "GFX_Kiddy_ClimbHorizontalRope2.bin"
GFX_Kiddy_ClimbHorizontalRope2End:
GFX_Kiddy_ClimbHorizontalRope3:
	db "GFX_Kiddy_ClimbHorizontalRope3.bin"
GFX_Kiddy_ClimbHorizontalRope3End:
GFX_Kiddy_ClimbHorizontalRope4:
	db "GFX_Kiddy_ClimbHorizontalRope4.bin"
GFX_Kiddy_ClimbHorizontalRope4End:
GFX_Kiddy_ClimbHorizontalRope5:
	db "GFX_Kiddy_ClimbHorizontalRope5.bin"
GFX_Kiddy_ClimbHorizontalRope5End:
GFX_Kiddy_ClimbHorizontalRope6:
	db "GFX_Kiddy_ClimbHorizontalRope6.bin"
GFX_Kiddy_ClimbHorizontalRope6End:
GFX_Kiddy_ClimbHorizontalRope7:
	db "GFX_Kiddy_ClimbHorizontalRope7.bin"
GFX_Kiddy_ClimbHorizontalRope7End:
GFX_Kiddy_ClimbHorizontalRope8:
	db "GFX_Kiddy_ClimbHorizontalRope8.bin"
GFX_Kiddy_ClimbHorizontalRope8End:
GFX_Kiddy_ClimbHorizontalRope9:
	db "GFX_Kiddy_ClimbHorizontalRope9.bin"
GFX_Kiddy_ClimbHorizontalRope9End:
GFX_Kiddy_ClimbHorizontalRope10:
	db "GFX_Kiddy_ClimbHorizontalRope10.bin"
GFX_Kiddy_ClimbHorizontalRope10End:
GFX_Kiddy_ClimbHorizontalRope11:
	db "GFX_Kiddy_ClimbHorizontalRope11.bin"
GFX_Kiddy_ClimbHorizontalRope11End:
GFX_Kiddy_ClimbHorizontalRope12:
	db "GFX_Kiddy_ClimbHorizontalRope12.bin"
GFX_Kiddy_ClimbHorizontalRope12End:
GFX_Kiddy_ClimbHorizontalRope13:
	db "GFX_Kiddy_ClimbHorizontalRope13.bin"
GFX_Kiddy_ClimbHorizontalRope13End:
GFX_Kiddy_ClimbHorizontalRope14:
	db "GFX_Kiddy_ClimbHorizontalRope14.bin"
GFX_Kiddy_ClimbHorizontalRope14End:
GFX_Kiddy_ClimbHorizontalRope15:
	db "GFX_Kiddy_ClimbHorizontalRope15.bin"
GFX_Kiddy_ClimbHorizontalRope15End:
GFX_Kiddy_ClimbHorizontalRope16:
	db "GFX_Kiddy_ClimbHorizontalRope16.bin"
GFX_Kiddy_ClimbHorizontalRope16End:
GFX_Kiddy_Turn1:
	db "GFX_Kiddy_Turn1.bin"
GFX_Kiddy_Turn1End:
GFX_Kiddy_Turn2:
	db "GFX_Kiddy_Turn2.bin"
GFX_Kiddy_Turn2End:
GFX_Kiddy_ClimbUpSingleVerticalRope1:
	db "GFX_Kiddy_ClimbUpSingleVerticalRope1.bin"
GFX_Kiddy_ClimbUpSingleVerticalRope1End:
GFX_Kiddy_ClimbUpSingleVerticalRope2:
	db "GFX_Kiddy_ClimbUpSingleVerticalRope2.bin"
GFX_Kiddy_ClimbUpSingleVerticalRope2End:
GFX_Kiddy_ClimbUpSingleVerticalRope3:
	db "GFX_Kiddy_ClimbUpSingleVerticalRope3.bin"
GFX_Kiddy_ClimbUpSingleVerticalRope3End:
GFX_Kiddy_ClimbUpSingleVerticalRope4:
	db "GFX_Kiddy_ClimbUpSingleVerticalRope4.bin"
GFX_Kiddy_ClimbUpSingleVerticalRope4End:
GFX_Kiddy_ClimbUpSingleVerticalRope5:
	db "GFX_Kiddy_ClimbUpSingleVerticalRope5.bin"
GFX_Kiddy_ClimbUpSingleVerticalRope5End:
GFX_Kiddy_ClimbUpSingleVerticalRope6:
	db "GFX_Kiddy_ClimbUpSingleVerticalRope6.bin"
GFX_Kiddy_ClimbUpSingleVerticalRope6End:
GFX_Kiddy_ClimbUpSingleVerticalRope7:
	db "GFX_Kiddy_ClimbUpSingleVerticalRope7.bin"
GFX_Kiddy_ClimbUpSingleVerticalRope7End:
GFX_Kiddy_ClimbUpSingleVerticalRope8:
	db "GFX_Kiddy_ClimbUpSingleVerticalRope8.bin"
GFX_Kiddy_ClimbUpSingleVerticalRope8End:
GFX_Kiddy_ClimbUpSingleVerticalRope9:
	db "GFX_Kiddy_ClimbUpSingleVerticalRope9.bin"
GFX_Kiddy_ClimbUpSingleVerticalRope9End:
GFX_Kiddy_ClimbUpSingleVerticalRope10:
	db "GFX_Kiddy_ClimbUpSingleVerticalRope10.bin"
GFX_Kiddy_ClimbUpSingleVerticalRope10End:
GFX_Kiddy_ClimbUpSingleVerticalRope11:
	db "GFX_Kiddy_ClimbUpSingleVerticalRope11.bin"
GFX_Kiddy_ClimbUpSingleVerticalRope11End:
GFX_Kiddy_ClimbUpSingleVerticalRope12:
	db "GFX_Kiddy_ClimbUpSingleVerticalRope12.bin"
GFX_Kiddy_ClimbUpSingleVerticalRope12End:
GFX_Kiddy_ClimbUpSingleVerticalRope13:
	db "GFX_Kiddy_ClimbUpSingleVerticalRope13.bin"
GFX_Kiddy_ClimbUpSingleVerticalRope13End:
GFX_Kiddy_ClimbUpSingleVerticalRope14:
	db "GFX_Kiddy_ClimbUpSingleVerticalRope14.bin"
GFX_Kiddy_ClimbUpSingleVerticalRope14End:
GFX_Kiddy_ClimbUpSingleVerticalRope15:
	db "GFX_Kiddy_ClimbUpSingleVerticalRope15.bin"
GFX_Kiddy_ClimbUpSingleVerticalRope15End:
GFX_Kiddy_ClimbUpSingleVerticalRope16:
	db "GFX_Kiddy_ClimbUpSingleVerticalRope16.bin"
GFX_Kiddy_ClimbUpSingleVerticalRope16End:
GFX_Kiddy_HangOnVerticalRope:
	db "GFX_Kiddy_HangOnVerticalRope.bin"
GFX_Kiddy_HangOnVerticalRopeEnd:
GFX_Kiddy_TurnOnVerticalRope1:
	db "GFX_Kiddy_TurnOnVerticalRope1.bin"
GFX_Kiddy_TurnOnVerticalRope1End:
GFX_Kiddy_TurnOnVerticalRope2:
	db "GFX_Kiddy_TurnOnVerticalRope2.bin"
GFX_Kiddy_TurnOnVerticalRope2End:
GFX_Kiddy_TurnOnVerticalRope3:
	db "GFX_Kiddy_TurnOnVerticalRope3.bin"
GFX_Kiddy_TurnOnVerticalRope3End:
GFX_Kiddy_IdleOnVerticalRope1:
	db "GFX_Kiddy_IdleOnVerticalRope1.bin"
GFX_Kiddy_IdleOnVerticalRope1End:
GFX_Kiddy_IdleOnVerticalRope2:
	db "GFX_Kiddy_IdleOnVerticalRope2.bin"
GFX_Kiddy_IdleOnVerticalRope2End:
GFX_Kiddy_IdleOnVerticalRope3:
	db "GFX_Kiddy_IdleOnVerticalRope3.bin"
GFX_Kiddy_IdleOnVerticalRope3End:
GFX_Kiddy_IdleOnVerticalRope4:
	db "GFX_Kiddy_IdleOnVerticalRope4.bin"
GFX_Kiddy_IdleOnVerticalRope4End:
GFX_Kiddy_IdleOnVerticalRope5:
	db "GFX_Kiddy_IdleOnVerticalRope5.bin"
GFX_Kiddy_IdleOnVerticalRope5End:
GFX_Kiddy_IdleOnVerticalRope6:
	db "GFX_Kiddy_IdleOnVerticalRope6.bin"
GFX_Kiddy_IdleOnVerticalRope6End:
GFX_Kiddy_IdleOnVerticalRope7:
	db "GFX_Kiddy_IdleOnVerticalRope7.bin"
GFX_Kiddy_IdleOnVerticalRope7End:
GFX_Kiddy_SitOnAnimalBuddy1:
	db "GFX_Kiddy_SitOnAnimalBuddy1.bin"
GFX_Kiddy_SitOnAnimalBuddy1End:
GFX_Kiddy_SitOnAnimalBuddy2:
	db "GFX_Kiddy_SitOnAnimalBuddy2.bin"
GFX_Kiddy_SitOnAnimalBuddy2End:
GFX_Kiddy_SitOnAnimalBuddy3:
	db "GFX_Kiddy_SitOnAnimalBuddy3.bin"
GFX_Kiddy_SitOnAnimalBuddy3End:
GFX_Kiddy_SitOnAnimalBuddy4:
	db "GFX_Kiddy_SitOnAnimalBuddy4.bin"
GFX_Kiddy_SitOnAnimalBuddy4End:
GFX_Kiddy_SitOnAnimalBuddy5:
	db "GFX_Kiddy_SitOnAnimalBuddy5.bin"
GFX_Kiddy_SitOnAnimalBuddy5End:
GFX_Kiddy_SitOnAnimalBuddy6:
	db "GFX_Kiddy_SitOnAnimalBuddy6.bin"
GFX_Kiddy_SitOnAnimalBuddy6End:
GFX_Kiddy_SitOnAnimalBuddy7:
	db "GFX_Kiddy_SitOnAnimalBuddy7.bin"
GFX_Kiddy_SitOnAnimalBuddy7End:
GFX_Kiddy_SitOnAnimalBuddy8:
	db "GFX_Kiddy_SitOnAnimalBuddy8.bin"
GFX_Kiddy_SitOnAnimalBuddy8End:
GFX_Kiddy_IdleOnAnimalBuddy1:
	db "GFX_Kiddy_IdleOnAnimalBuddy1.bin"
GFX_Kiddy_IdleOnAnimalBuddy1End:
GFX_Kiddy_IdleOnAnimalBuddy2:
	db "GFX_Kiddy_IdleOnAnimalBuddy2.bin"
GFX_Kiddy_IdleOnAnimalBuddy2End:
GFX_Kiddy_IdleOnAnimalBuddy3:
	db "GFX_Kiddy_IdleOnAnimalBuddy3.bin"
GFX_Kiddy_IdleOnAnimalBuddy3End:
GFX_Kiddy_IdleOnAnimalBuddy4:
	db "GFX_Kiddy_IdleOnAnimalBuddy4.bin"
GFX_Kiddy_IdleOnAnimalBuddy4End:
GFX_Kiddy_IdleOnAnimalBuddy5:
	db "GFX_Kiddy_IdleOnAnimalBuddy5.bin"
GFX_Kiddy_IdleOnAnimalBuddy5End:
GFX_Kiddy_RideSteelKeg1:
	db "GFX_Kiddy_RideSteelKeg1.bin"
GFX_Kiddy_RideSteelKeg1End:
GFX_Kiddy_RideSteelKeg2:
	db "GFX_Kiddy_RideSteelKeg2.bin"
GFX_Kiddy_RideSteelKeg2End:
GFX_Kiddy_RideSteelKeg3:
	db "GFX_Kiddy_RideSteelKeg3.bin"
GFX_Kiddy_RideSteelKeg3End:
GFX_Kiddy_RideSteelKeg4:
	db "GFX_Kiddy_RideSteelKeg4.bin"
GFX_Kiddy_RideSteelKeg4End:
GFX_Kiddy_RideSteelKeg5:
	db "GFX_Kiddy_RideSteelKeg5.bin"
GFX_Kiddy_RideSteelKeg5End:
GFX_Kiddy_RideSteelKeg6:
	db "GFX_Kiddy_RideSteelKeg6.bin"
GFX_Kiddy_RideSteelKeg6End:
GFX_Kiddy_RideSteelKeg7:
	db "GFX_Kiddy_RideSteelKeg7.bin"
GFX_Kiddy_RideSteelKeg7End:
GFX_Kiddy_RideSteelKeg8:
	db "GFX_Kiddy_RideSteelKeg8.bin"
GFX_Kiddy_RideSteelKeg8End:
GFX_Buzz_Dead1:
	db "GFX_Buzz_Dead1.bin"
GFX_Buzz_Dead1End:
GFX_Buzz_Dead2:
	db "GFX_Buzz_Dead2.bin"
GFX_Buzz_Dead2End:
GFX_Buzz_Dead3:
	db "GFX_Buzz_Dead3.bin"
GFX_Buzz_Dead3End:
GFX_Buzz_Dead4:
	db "GFX_Buzz_Dead4.bin"
GFX_Buzz_Dead4End:
GFX_Buzz_Dead5:
	db "GFX_Buzz_Dead5.bin"
GFX_Buzz_Dead5End:
GFX_Buzz_Fly1:
	db "GFX_Buzz_Fly1.bin"
GFX_Buzz_Fly1End:
GFX_Buzz_Fly2:
	db "GFX_Buzz_Fly2.bin"
GFX_Buzz_Fly2End:
GFX_Buzz_Fly3:
	db "GFX_Buzz_Fly3.bin"
GFX_Buzz_Fly3End:
GFX_Buzz_Fly4:
	db "GFX_Buzz_Fly4.bin"
GFX_Buzz_Fly4End:
GFX_Buzz_Fly5:
	db "GFX_Buzz_Fly5.bin"
GFX_Buzz_Fly5End:
GFX_Buzz_Fly6:
	db "GFX_Buzz_Fly6.bin"
GFX_Buzz_Fly6End:
GFX_Buzz_Fly7:
	db "GFX_Buzz_Fly7.bin"
GFX_Buzz_Fly7End:
GFX_Buzz_Fly8:
	db "GFX_Buzz_Fly8.bin"
GFX_Buzz_Fly8End:
GFX_Buzz_Turn1:
	db "GFX_Buzz_Turn1.bin"
GFX_Buzz_Turn1End:
GFX_Buzz_Turn2:
	db "GFX_Buzz_Turn2.bin"
GFX_Buzz_Turn2End:
GFX_DKBarrel_Pose1:
	db "GFX_DKBarrel_Pose1.bin"
GFX_DKBarrel_Pose1End:
GFX_DKBarrel_Pose2:
	db "GFX_DKBarrel_Pose2.bin"
GFX_DKBarrel_Pose2End:
GFX_DKBarrel_Pose3:
	db "GFX_DKBarrel_Pose3.bin"
GFX_DKBarrel_Pose3End:
GFX_DKBarrel_Pose4:
	db "GFX_DKBarrel_Pose4.bin"
GFX_DKBarrel_Pose4End:
GFX_DKBarrel_Pose5:
	db "GFX_DKBarrel_Pose5.bin"
GFX_DKBarrel_Pose5End:
GFX_DKBarrel_Pose6:
	db "GFX_DKBarrel_Pose6.bin"
GFX_DKBarrel_Pose6End:
GFX_DKBarrel_Pose7:
	db "GFX_DKBarrel_Pose7.bin"
GFX_DKBarrel_Pose7End:
GFX_DKBarrel_Pose8:
	db "GFX_DKBarrel_Pose8.bin"
GFX_DKBarrel_Pose8End:
GFX_Timer_Zero:
	db "GFX_Timer_Zero.bin"
GFX_Timer_ZeroEnd:
GFX_Timer_One:
	db "GFX_Timer_One.bin"
GFX_Timer_OneEnd:
GFX_Timer_Two:
	db "GFX_Timer_Two.bin"
GFX_Timer_TwoEnd:
GFX_Timer_Three:
	db "GFX_Timer_Three.bin"
GFX_Timer_ThreeEnd:
GFX_Timer_Four:
	db "GFX_Timer_Four.bin"
GFX_Timer_FourEnd:
GFX_Timer_Five:
	db "GFX_Timer_Five.bin"
GFX_Timer_FiveEnd:
GFX_Timer_Six:
	db "GFX_Timer_Six.bin"
GFX_Timer_SixEnd:
GFX_Timer_Seven:
	db "GFX_Timer_Seven.bin"
GFX_Timer_SevenEnd:
GFX_Timer_Eight:
	db "GFX_Timer_Eight.bin"
GFX_Timer_EightEnd:
GFX_Timer_Nine:
	db "GFX_Timer_Nine.bin"
GFX_Timer_NineEnd:
GFX_SwankyKong_Idle1:
	db "GFX_SwankyKong_Idle1.bin"
GFX_SwankyKong_Idle1End:
GFX_SwankyKong_Idle2:
	db "GFX_SwankyKong_Idle2.bin"
GFX_SwankyKong_Idle2End:
GFX_SwankyKong_Idle3:
	db "GFX_SwankyKong_Idle3.bin"
GFX_SwankyKong_Idle3End:
GFX_SwankyKong_Idle4:
	db "GFX_SwankyKong_Idle4.bin"
GFX_SwankyKong_Idle4End:
GFX_SwankyKong_Presents1:
	db "GFX_SwankyKong_Presents1.bin"
GFX_SwankyKong_Presents1End:
GFX_SwankyKong_Presents2:
	db "GFX_SwankyKong_Presents2.bin"
GFX_SwankyKong_Presents2End:
GFX_SwankyKong_Presents3:
	db "GFX_SwankyKong_Presents3.bin"
GFX_SwankyKong_Presents3End:
GFX_SwankyKong_Idle5:
	db "GFX_SwankyKong_Idle5.bin"
GFX_SwankyKong_Idle5End:
GFX_SwankyKong_Presents4:
	db "GFX_SwankyKong_Presents4.bin"
GFX_SwankyKong_Presents4End:
GFX_SwankyKong_Presents5:
	db "GFX_SwankyKong_Presents5.bin"
GFX_SwankyKong_Presents5End:
GFX_FunkysRentalsPool_Pose1:
	db "GFX_FunkysRentalsPool_Pose1.bin"
GFX_FunkysRentalsPool_Pose1End:
GFX_FunkysRentalsPool_Pose2:
	db "GFX_FunkysRentalsPool_Pose2.bin"
GFX_FunkysRentalsPool_Pose2End:
GFX_FunkysRentalsPool_Pose3:
	db "GFX_FunkysRentalsPool_Pose3.bin"
GFX_FunkysRentalsPool_Pose3End:
GFX_FunkysRentalsPool_Pose4:
	db "GFX_FunkysRentalsPool_Pose4.bin"
GFX_FunkysRentalsPool_Pose4End:
GFX_FunkysRentalsPool_Pose5:
	db "GFX_FunkysRentalsPool_Pose5.bin"
GFX_FunkysRentalsPool_Pose5End:
GFX_FunkysRentalsPool_Pose6:
	db "GFX_FunkysRentalsPool_Pose6.bin"
GFX_FunkysRentalsPool_Pose6End:
GFX_FunkysRentalsPool_Pose7:
	db "GFX_FunkysRentalsPool_Pose7.bin"
GFX_FunkysRentalsPool_Pose7End:
GFX_FunkysRentalsPool_Pose8:
	db "GFX_FunkysRentalsPool_Pose8.bin"
GFX_FunkysRentalsPool_Pose8End:
GFX_MapKiddy_WalkUp1:
	db "GFX_MapKiddy_WalkUp1.bin"
GFX_MapKiddy_WalkUp1End:
GFX_MapKiddy_WalkUp2:
	db "GFX_MapKiddy_WalkUp2.bin"
GFX_MapKiddy_WalkUp2End:
GFX_MapKiddy_WalkUp3:
	db "GFX_MapKiddy_WalkUp3.bin"
GFX_MapKiddy_WalkUp3End:
GFX_MapKiddy_WalkUp4:
	db "GFX_MapKiddy_WalkUp4.bin"
GFX_MapKiddy_WalkUp4End:
GFX_MapKiddy_WalkUp5:
	db "GFX_MapKiddy_WalkUp5.bin"
GFX_MapKiddy_WalkUp5End:
GFX_MapKiddy_WalkUp6:
	db "GFX_MapKiddy_WalkUp6.bin"
GFX_MapKiddy_WalkUp6End:
GFX_MapKiddy_WalkUp7:
	db "GFX_MapKiddy_WalkUp7.bin"
GFX_MapKiddy_WalkUp7End:
GFX_MapKiddy_WalkUp8:
	db "GFX_MapKiddy_WalkUp8.bin"
GFX_MapKiddy_WalkUp8End:
GFX_MapKiddy_WalkDiagonalUp1:
	db "GFX_MapKiddy_WalkDiagonalUp1.bin"
GFX_MapKiddy_WalkDiagonalUp1End:
GFX_MapKiddy_WalkDiagonalUp2:
	db "GFX_MapKiddy_WalkDiagonalUp2.bin"
GFX_MapKiddy_WalkDiagonalUp2End:
GFX_MapKiddy_WalkDiagonalUp3:
	db "GFX_MapKiddy_WalkDiagonalUp3.bin"
GFX_MapKiddy_WalkDiagonalUp3End:
GFX_MapKiddy_WalkDiagonalUp4:
	db "GFX_MapKiddy_WalkDiagonalUp4.bin"
GFX_MapKiddy_WalkDiagonalUp4End:
GFX_MapKiddy_WalkDiagonalUp5:
	db "GFX_MapKiddy_WalkDiagonalUp5.bin"
GFX_MapKiddy_WalkDiagonalUp5End:
GFX_MapKiddy_WalkDiagonalUp6:
	db "GFX_MapKiddy_WalkDiagonalUp6.bin"
GFX_MapKiddy_WalkDiagonalUp6End:
GFX_MapKiddy_WalkDiagonalUp7:
	db "GFX_MapKiddy_WalkDiagonalUp7.bin"
GFX_MapKiddy_WalkDiagonalUp7End:
GFX_MapKiddy_WalkDiagonalUp8:
	db "GFX_MapKiddy_WalkDiagonalUp8.bin"
GFX_MapKiddy_WalkDiagonalUp8End:
GFX_MapKiddy_WalkSide1:
	db "GFX_MapKiddy_WalkSide1.bin"
GFX_MapKiddy_WalkSide1End:
GFX_MapKiddy_WalkSide2:
	db "GFX_MapKiddy_WalkSide2.bin"
GFX_MapKiddy_WalkSide2End:
GFX_MapKiddy_WalkSide3:
	db "GFX_MapKiddy_WalkSide3.bin"
GFX_MapKiddy_WalkSide3End:
GFX_MapKiddy_WalkSide4:
	db "GFX_MapKiddy_WalkSide4.bin"
GFX_MapKiddy_WalkSide4End:
GFX_MapKiddy_WalkSide5:
	db "GFX_MapKiddy_WalkSide5.bin"
GFX_MapKiddy_WalkSide5End:
GFX_MapKiddy_WalkSide6:
	db "GFX_MapKiddy_WalkSide6.bin"
GFX_MapKiddy_WalkSide6End:
GFX_MapKiddy_WalkSide7:
	db "GFX_MapKiddy_WalkSide7.bin"
GFX_MapKiddy_WalkSide7End:
GFX_MapKiddy_WalkSide8:
	db "GFX_MapKiddy_WalkSide8.bin"
GFX_MapKiddy_WalkSide8End:
GFX_MapKiddy_WalkDiagonallyDown1:
	db "GFX_MapKiddy_WalkDiagonallyDown1.bin"
GFX_MapKiddy_WalkDiagonallyDown1End:
GFX_MapKiddy_WalkDiagonallyDown2:
	db "GFX_MapKiddy_WalkDiagonallyDown2.bin"
GFX_MapKiddy_WalkDiagonallyDown2End:
GFX_MapKiddy_WalkDiagonallyDown3:
	db "GFX_MapKiddy_WalkDiagonallyDown3.bin"
GFX_MapKiddy_WalkDiagonallyDown3End:
GFX_MapKiddy_WalkDiagonallyDown4:
	db "GFX_MapKiddy_WalkDiagonallyDown4.bin"
GFX_MapKiddy_WalkDiagonallyDown4End:
GFX_MapKiddy_WalkDiagonallyDown5:
	db "GFX_MapKiddy_WalkDiagonallyDown5.bin"
GFX_MapKiddy_WalkDiagonallyDown5End:
GFX_MapKiddy_WalkDiagonallyDown6:
	db "GFX_MapKiddy_WalkDiagonallyDown6.bin"
GFX_MapKiddy_WalkDiagonallyDown6End:
GFX_MapKiddy_WalkDiagonallyDown7:
	db "GFX_MapKiddy_WalkDiagonallyDown7.bin"
GFX_MapKiddy_WalkDiagonallyDown7End:
GFX_MapKiddy_WalkDiagonallyDown8:
	db "GFX_MapKiddy_WalkDiagonallyDown8.bin"
GFX_MapKiddy_WalkDiagonallyDown8End:
GFX_MapKiddy_WalkDown1:
	db "GFX_MapKiddy_WalkDown1.bin"
GFX_MapKiddy_WalkDown1End:
GFX_MapKiddy_WalkDown2:
	db "GFX_MapKiddy_WalkDown2.bin"
GFX_MapKiddy_WalkDown2End:
GFX_MapKiddy_WalkDown3:
	db "GFX_MapKiddy_WalkDown3.bin"
GFX_MapKiddy_WalkDown3End:
GFX_MapKiddy_WalkDown4:
	db "GFX_MapKiddy_WalkDown4.bin"
GFX_MapKiddy_WalkDown4End:
GFX_MapKiddy_WalkDown5:
	db "GFX_MapKiddy_WalkDown5.bin"
GFX_MapKiddy_WalkDown5End:
GFX_MapKiddy_WalkDown6:
	db "GFX_MapKiddy_WalkDown6.bin"
GFX_MapKiddy_WalkDown6End:
GFX_MapKiddy_WalkDown7:
	db "GFX_MapKiddy_WalkDown7.bin"
GFX_MapKiddy_WalkDown7End:
GFX_MapKiddy_WalkDown8:
	db "GFX_MapKiddy_WalkDown8.bin"
GFX_MapKiddy_WalkDown8End:
GFX_MapDixie_WalkUp1:
	db "GFX_MapDixie_WalkUp1.bin"
GFX_MapDixie_WalkUp1End:
GFX_MapDixie_WalkUp2:
	db "GFX_MapDixie_WalkUp2.bin"
GFX_MapDixie_WalkUp2End:
GFX_MapDixie_WalkUp3:
	db "GFX_MapDixie_WalkUp3.bin"
GFX_MapDixie_WalkUp3End:
GFX_MapDixie_WalkUp4:
	db "GFX_MapDixie_WalkUp4.bin"
GFX_MapDixie_WalkUp4End:
GFX_MapDixie_WalkUp5:
	db "GFX_MapDixie_WalkUp5.bin"
GFX_MapDixie_WalkUp5End:
GFX_MapDixie_WalkUp6:
	db "GFX_MapDixie_WalkUp6.bin"
GFX_MapDixie_WalkUp6End:
GFX_MapDixie_WalkUp7:
	db "GFX_MapDixie_WalkUp7.bin"
GFX_MapDixie_WalkUp7End:
GFX_MapDixie_WalkUp8:
	db "GFX_MapDixie_WalkUp8.bin"
GFX_MapDixie_WalkUp8End:
GFX_MapDixie_WalkDiagonalUp1:
	db "GFX_MapDixie_WalkDiagonalUp1.bin"
GFX_MapDixie_WalkDiagonalUp1End:
GFX_MapDixie_WalkDiagonalUp2:
	db "GFX_MapDixie_WalkDiagonalUp2.bin"
GFX_MapDixie_WalkDiagonalUp2End:
GFX_MapDixie_WalkDiagonalUp3:
	db "GFX_MapDixie_WalkDiagonalUp3.bin"
GFX_MapDixie_WalkDiagonalUp3End:
GFX_MapDixie_WalkDiagonalUp4:
	db "GFX_MapDixie_WalkDiagonalUp4.bin"
GFX_MapDixie_WalkDiagonalUp4End:
GFX_MapDixie_WalkDiagonalUp5:
	db "GFX_MapDixie_WalkDiagonalUp5.bin"
GFX_MapDixie_WalkDiagonalUp5End:
GFX_MapDixie_WalkDiagonalUp6:
	db "GFX_MapDixie_WalkDiagonalUp6.bin"
GFX_MapDixie_WalkDiagonalUp6End:
GFX_MapDixie_WalkDiagonalUp7:
	db "GFX_MapDixie_WalkDiagonalUp7.bin"
GFX_MapDixie_WalkDiagonalUp7End:
GFX_MapDixie_WalkDiagonalUp8:
	db "GFX_MapDixie_WalkDiagonalUp8.bin"
GFX_MapDixie_WalkDiagonalUp8End:
GFX_MapDixie_WalkSide1:
	db "GFX_MapDixie_WalkSide1.bin"
GFX_MapDixie_WalkSide1End:
GFX_MapDixie_WalkSide2:
	db "GFX_MapDixie_WalkSide2.bin"
GFX_MapDixie_WalkSide2End:
GFX_MapDixie_WalkSide3:
	db "GFX_MapDixie_WalkSide3.bin"
GFX_MapDixie_WalkSide3End:
GFX_MapDixie_WalkSide4:
	db "GFX_MapDixie_WalkSide4.bin"
GFX_MapDixie_WalkSide4End:
GFX_MapDixie_WalkSide5:
	db "GFX_MapDixie_WalkSide5.bin"
GFX_MapDixie_WalkSide5End:
GFX_MapDixie_WalkSide6:
	db "GFX_MapDixie_WalkSide6.bin"
GFX_MapDixie_WalkSide6End:
GFX_MapDixie_WalkSide7:
	db "GFX_MapDixie_WalkSide7.bin"
GFX_MapDixie_WalkSide7End:
GFX_MapDixie_WalkSide8:
	db "GFX_MapDixie_WalkSide8.bin"
GFX_MapDixie_WalkSide8End:
GFX_MapDixie_WalkDiagonallyDown1:
	db "GFX_MapDixie_WalkDiagonallyDown1.bin"
GFX_MapDixie_WalkDiagonallyDown1End:
GFX_MapDixie_WalkDiagonallyDown2:
	db "GFX_MapDixie_WalkDiagonallyDown2.bin"
GFX_MapDixie_WalkDiagonallyDown2End:
GFX_MapDixie_WalkDiagonallyDown3:
	db "GFX_MapDixie_WalkDiagonallyDown3.bin"
GFX_MapDixie_WalkDiagonallyDown3End:
GFX_MapDixie_WalkDiagonallyDown4:
	db "GFX_MapDixie_WalkDiagonallyDown4.bin"
GFX_MapDixie_WalkDiagonallyDown4End:
GFX_MapDixie_WalkDiagonallyDown5:
	db "GFX_MapDixie_WalkDiagonallyDown5.bin"
GFX_MapDixie_WalkDiagonallyDown5End:
GFX_MapDixie_WalkDiagonallyDown6:
	db "GFX_MapDixie_WalkDiagonallyDown6.bin"
GFX_MapDixie_WalkDiagonallyDown6End:
GFX_MapDixie_WalkDiagonallyDown7:
	db "GFX_MapDixie_WalkDiagonallyDown7.bin"
GFX_MapDixie_WalkDiagonallyDown7End:
GFX_MapDixie_WalkDiagonallyDown8:
	db "GFX_MapDixie_WalkDiagonallyDown8.bin"
GFX_MapDixie_WalkDiagonallyDown8End:
GFX_MapDixie_WalkDown1:
	db "GFX_MapDixie_WalkDown1.bin"
GFX_MapDixie_WalkDown1End:
GFX_MapDixie_WalkDown2:
	db "GFX_MapDixie_WalkDown2.bin"
GFX_MapDixie_WalkDown2End:
GFX_MapDixie_WalkDown3:
	db "GFX_MapDixie_WalkDown3.bin"
GFX_MapDixie_WalkDown3End:
GFX_MapDixie_WalkDown4:
	db "GFX_MapDixie_WalkDown4.bin"
GFX_MapDixie_WalkDown4End:
GFX_MapDixie_WalkDown5:
	db "GFX_MapDixie_WalkDown5.bin"
GFX_MapDixie_WalkDown5End:
GFX_MapDixie_WalkDown6:
	db "GFX_MapDixie_WalkDown6.bin"
GFX_MapDixie_WalkDown6End:
GFX_MapDixie_WalkDown7:
	db "GFX_MapDixie_WalkDown7.bin"
GFX_MapDixie_WalkDown7End:
GFX_MapDixie_WalkDown8:
	db "GFX_MapDixie_WalkDown8.bin"
GFX_MapDixie_WalkDown8End:
GFX_MapKiddy_BoatDriver1:
	db "GFX_MapKiddy_BoatDriver1.bin"
GFX_MapKiddy_BoatDriver1End:
GFX_MapKiddy_BoatDriver2:
	db "GFX_MapKiddy_BoatDriver2.bin"
GFX_MapKiddy_BoatDriver2End:
GFX_MapKiddy_BoatDriver3:
	db "GFX_MapKiddy_BoatDriver3.bin"
GFX_MapKiddy_BoatDriver3End:
GFX_MapKiddy_BoatDriver4:
	db "GFX_MapKiddy_BoatDriver4.bin"
GFX_MapKiddy_BoatDriver4End:
GFX_MapKiddy_BoatDriver5:
	db "GFX_MapKiddy_BoatDriver5.bin"
GFX_MapKiddy_BoatDriver5End:
GFX_MapKiddy_BoatDriver6:
	db "GFX_MapKiddy_BoatDriver6.bin"
GFX_MapKiddy_BoatDriver6End:
GFX_MapKiddy_BoatDriver7:
	db "GFX_MapKiddy_BoatDriver7.bin"
GFX_MapKiddy_BoatDriver7End:
GFX_MapKiddy_BoatDriver8:
	db "GFX_MapKiddy_BoatDriver8.bin"
GFX_MapKiddy_BoatDriver8End:
GFX_MapKiddy_BoatDriver9:
	db "GFX_MapKiddy_BoatDriver9.bin"
GFX_MapKiddy_BoatDriver9End:
GFX_MapKiddy_BoatPassanger1:
	db "GFX_MapKiddy_BoatPassanger1.bin"
GFX_MapKiddy_BoatPassanger1End:
GFX_MapKiddy_BoatPassanger2:
	db "GFX_MapKiddy_BoatPassanger2.bin"
GFX_MapKiddy_BoatPassanger2End:
GFX_MapKiddy_BoatPassanger3:
	db "GFX_MapKiddy_BoatPassanger3.bin"
GFX_MapKiddy_BoatPassanger3End:
GFX_MapKiddy_BoatPassanger4:
	db "GFX_MapKiddy_BoatPassanger4.bin"
GFX_MapKiddy_BoatPassanger4End:
GFX_MapKiddy_BoatPassanger5:
	db "GFX_MapKiddy_BoatPassanger5.bin"
GFX_MapKiddy_BoatPassanger5End:
GFX_MapKiddy_BoatPassanger6:
	db "GFX_MapKiddy_BoatPassanger6.bin"
GFX_MapKiddy_BoatPassanger6End:
GFX_MapKiddy_BoatPassanger7:
	db "GFX_MapKiddy_BoatPassanger7.bin"
GFX_MapKiddy_BoatPassanger7End:
GFX_MapKiddy_BoatPassanger8:
	db "GFX_MapKiddy_BoatPassanger8.bin"
GFX_MapKiddy_BoatPassanger8End:
GFX_MapKiddy_BoatPassanger9:
	db "GFX_MapKiddy_BoatPassanger9.bin"
GFX_MapKiddy_BoatPassanger9End:
GFX_MapKiddy_Jump1:
	db "GFX_MapKiddy_Jump1.bin"
GFX_MapKiddy_Jump1End:
GFX_MapKiddy_Jump2:
	db "GFX_MapKiddy_Jump2.bin"
GFX_MapKiddy_Jump2End:
GFX_MapKiddy_Jump3:
	db "GFX_MapKiddy_Jump3.bin"
GFX_MapKiddy_Jump3End:
GFX_MapKiddy_Jump4:
	db "GFX_MapKiddy_Jump4.bin"
GFX_MapKiddy_Jump4End:
GFX_MapKiddy_Jump5:
	db "GFX_MapKiddy_Jump5.bin"
GFX_MapKiddy_Jump5End:
GFX_MapDixie_BoatDriver1:
	db "GFX_MapDixie_BoatDriver1.bin"
GFX_MapDixie_BoatDriver1End:
GFX_MapDixie_BoatDriver2:
	db "GFX_MapDixie_BoatDriver2.bin"
GFX_MapDixie_BoatDriver2End:
GFX_MapDixie_BoatDriver3:
	db "GFX_MapDixie_BoatDriver3.bin"
GFX_MapDixie_BoatDriver3End:
GFX_MapDixie_BoatDriver4:
	db "GFX_MapDixie_BoatDriver4.bin"
GFX_MapDixie_BoatDriver4End:
GFX_MapDixie_BoatDriver5:
	db "GFX_MapDixie_BoatDriver5.bin"
GFX_MapDixie_BoatDriver5End:
GFX_MapDixie_BoatDriver6:
	db "GFX_MapDixie_BoatDriver6.bin"
GFX_MapDixie_BoatDriver6End:
GFX_MapDixie_BoatDriver7:
	db "GFX_MapDixie_BoatDriver7.bin"
GFX_MapDixie_BoatDriver7End:
GFX_MapDixie_BoatDriver8:
	db "GFX_MapDixie_BoatDriver8.bin"
GFX_MapDixie_BoatDriver8End:
GFX_MapDixie_BoatDriver9:
	db "GFX_MapDixie_BoatDriver9.bin"
GFX_MapDixie_BoatDriver9End:
GFX_MapDixie_BoatPassanger1:
	db "GFX_MapDixie_BoatPassanger1.bin"
GFX_MapDixie_BoatPassanger1End:
GFX_MapDixie_BoatPassanger2:
	db "GFX_MapDixie_BoatPassanger2.bin"
GFX_MapDixie_BoatPassanger2End:
GFX_MapDixie_BoatPassanger3:
	db "GFX_MapDixie_BoatPassanger3.bin"
GFX_MapDixie_BoatPassanger3End:
GFX_MapDixie_BoatPassanger4:
	db "GFX_MapDixie_BoatPassanger4.bin"
GFX_MapDixie_BoatPassanger4End:
GFX_MapDixie_BoatPassanger5:
	db "GFX_MapDixie_BoatPassanger5.bin"
GFX_MapDixie_BoatPassanger5End:
GFX_MapDixie_BoatPassanger6:
	db "GFX_MapDixie_BoatPassanger6.bin"
GFX_MapDixie_BoatPassanger6End:
GFX_MapDixie_BoatPassanger7:
	db "GFX_MapDixie_BoatPassanger7.bin"
GFX_MapDixie_BoatPassanger7End:
GFX_MapDixie_BoatPassanger8:
	db "GFX_MapDixie_BoatPassanger8.bin"
GFX_MapDixie_BoatPassanger8End:
GFX_MapDixie_BoatPassanger9:
	db "GFX_MapDixie_BoatPassanger9.bin"
GFX_MapDixie_BoatPassanger9End:
GFX_MapDixie_Jump1:
	db "GFX_MapDixie_Jump1.bin"
GFX_MapDixie_Jump1End:
GFX_MapDixie_Jump2:
	db "GFX_MapDixie_Jump2.bin"
GFX_MapDixie_Jump2End:
GFX_MapDixie_Jump3:
	db "GFX_MapDixie_Jump3.bin"
GFX_MapDixie_Jump3End:
GFX_MapDixie_Jump4:
	db "GFX_MapDixie_Jump4.bin"
GFX_MapDixie_Jump4End:
GFX_MapDixie_Jump5:
	db "GFX_MapDixie_Jump5.bin"
GFX_MapDixie_Jump5End:
GFX_MapKiddy_SwimUp1:
	db "GFX_MapKiddy_SwimUp1.bin"
GFX_MapKiddy_SwimUp1End:
GFX_MapKiddy_SwimUp2:
	db "GFX_MapKiddy_SwimUp2.bin"
GFX_MapKiddy_SwimUp2End:
GFX_MapKiddy_SwimUp3:
	db "GFX_MapKiddy_SwimUp3.bin"
GFX_MapKiddy_SwimUp3End:
GFX_MapKiddy_SwimUp4:
	db "GFX_MapKiddy_SwimUp4.bin"
GFX_MapKiddy_SwimUp4End:
GFX_MapKiddy_SwimUp5:
	db "GFX_MapKiddy_SwimUp5.bin"
GFX_MapKiddy_SwimUp5End:
GFX_MapKiddy_SwimUp6:
	db "GFX_MapKiddy_SwimUp6.bin"
GFX_MapKiddy_SwimUp6End:
GFX_MapKiddy_SwimUp7:
	db "GFX_MapKiddy_SwimUp7.bin"
GFX_MapKiddy_SwimUp7End:
GFX_MapKiddy_SwimUp8:
	db "GFX_MapKiddy_SwimUp8.bin"
GFX_MapKiddy_SwimUp8End:
GFX_MapKiddy_SwimDiagonallyUp1:
	db "GFX_MapKiddy_SwimDiagonallyUp1.bin"
GFX_MapKiddy_SwimDiagonallyUp1End:
GFX_MapKiddy_SwimDiagonallyUp2:
	db "GFX_MapKiddy_SwimDiagonallyUp2.bin"
GFX_MapKiddy_SwimDiagonallyUp2End:
GFX_MapKiddy_SwimDiagonallyUp3:
	db "GFX_MapKiddy_SwimDiagonallyUp3.bin"
GFX_MapKiddy_SwimDiagonallyUp3End:
GFX_MapKiddy_SwimDiagonallyUp4:
	db "GFX_MapKiddy_SwimDiagonallyUp4.bin"
GFX_MapKiddy_SwimDiagonallyUp4End:
GFX_MapKiddy_SwimDiagonallyUp5:
	db "GFX_MapKiddy_SwimDiagonallyUp5.bin"
GFX_MapKiddy_SwimDiagonallyUp5End:
GFX_MapKiddy_SwimDiagonallyUp6:
	db "GFX_MapKiddy_SwimDiagonallyUp6.bin"
GFX_MapKiddy_SwimDiagonallyUp6End:
GFX_MapKiddy_SwimDiagonallyUp7:
	db "GFX_MapKiddy_SwimDiagonallyUp7.bin"
GFX_MapKiddy_SwimDiagonallyUp7End:
GFX_MapKiddy_SwimDiagonallyUp8:
	db "GFX_MapKiddy_SwimDiagonallyUp8.bin"
GFX_MapKiddy_SwimDiagonallyUp8End:
GFX_MapKiddy_SwimSide1:
	db "GFX_MapKiddy_SwimSide1.bin"
GFX_MapKiddy_SwimSide1End:
GFX_MapKiddy_SwimSide2:
	db "GFX_MapKiddy_SwimSide2.bin"
GFX_MapKiddy_SwimSide2End:
GFX_MapKiddy_SwimSide3:
	db "GFX_MapKiddy_SwimSide3.bin"
GFX_MapKiddy_SwimSide3End:
GFX_MapKiddy_SwimSide4:
	db "GFX_MapKiddy_SwimSide4.bin"
GFX_MapKiddy_SwimSide4End:
GFX_MapKiddy_SwimSide5:
	db "GFX_MapKiddy_SwimSide5.bin"
GFX_MapKiddy_SwimSide5End:
GFX_MapKiddy_SwimSide6:
	db "GFX_MapKiddy_SwimSide6.bin"
GFX_MapKiddy_SwimSide6End:
GFX_MapKiddy_SwimSide7:
	db "GFX_MapKiddy_SwimSide7.bin"
GFX_MapKiddy_SwimSide7End:
GFX_MapKiddy_SwimSide8:
	db "GFX_MapKiddy_SwimSide8.bin"
GFX_MapKiddy_SwimSide8End:
GFX_MapKiddy_SwimDiagonallyDown1:
	db "GFX_MapKiddy_SwimDiagonallyDown1.bin"
GFX_MapKiddy_SwimDiagonallyDown1End:
GFX_MapKiddy_SwimDiagonallyDown2:
	db "GFX_MapKiddy_SwimDiagonallyDown2.bin"
GFX_MapKiddy_SwimDiagonallyDown2End:
GFX_MapKiddy_SwimDiagonallyDown3:
	db "GFX_MapKiddy_SwimDiagonallyDown3.bin"
GFX_MapKiddy_SwimDiagonallyDown3End:
GFX_MapKiddy_SwimDiagonallyDown4:
	db "GFX_MapKiddy_SwimDiagonallyDown4.bin"
GFX_MapKiddy_SwimDiagonallyDown4End:
GFX_MapKiddy_SwimDiagonallyDown5:
	db "GFX_MapKiddy_SwimDiagonallyDown5.bin"
GFX_MapKiddy_SwimDiagonallyDown5End:
GFX_MapKiddy_SwimDiagonallyDown6:
	db "GFX_MapKiddy_SwimDiagonallyDown6.bin"
GFX_MapKiddy_SwimDiagonallyDown6End:
GFX_MapKiddy_SwimDiagonallyDown7:
	db "GFX_MapKiddy_SwimDiagonallyDown7.bin"
GFX_MapKiddy_SwimDiagonallyDown7End:
GFX_MapKiddy_SwimDiagonallyDown8:
	db "GFX_MapKiddy_SwimDiagonallyDown8.bin"
GFX_MapKiddy_SwimDiagonallyDown8End:
GFX_MapKiddy_SwimDown1:
	db "GFX_MapKiddy_SwimDown1.bin"
GFX_MapKiddy_SwimDown1End:
GFX_MapKiddy_SwimDown2:
	db "GFX_MapKiddy_SwimDown2.bin"
GFX_MapKiddy_SwimDown2End:
GFX_MapKiddy_SwimDown3:
	db "GFX_MapKiddy_SwimDown3.bin"
GFX_MapKiddy_SwimDown3End:
GFX_MapKiddy_SwimDown4:
	db "GFX_MapKiddy_SwimDown4.bin"
GFX_MapKiddy_SwimDown4End:
GFX_MapKiddy_SwimDown5:
	db "GFX_MapKiddy_SwimDown5.bin"
GFX_MapKiddy_SwimDown5End:
GFX_MapKiddy_SwimDown6:
	db "GFX_MapKiddy_SwimDown6.bin"
GFX_MapKiddy_SwimDown6End:
GFX_MapKiddy_SwimDown7:
	db "GFX_MapKiddy_SwimDown7.bin"
GFX_MapKiddy_SwimDown7End:
GFX_MapKiddy_SwimDown8:
	db "GFX_MapKiddy_SwimDown8.bin"
GFX_MapKiddy_SwimDown8End:
GFX_MapDixie_SwimUp1:
	db "GFX_MapDixie_SwimUp1.bin"
GFX_MapDixie_SwimUp1End:
GFX_MapDixie_SwimUp2:
	db "GFX_MapDixie_SwimUp2.bin"
GFX_MapDixie_SwimUp2End:
GFX_MapDixie_SwimUp3:
	db "GFX_MapDixie_SwimUp3.bin"
GFX_MapDixie_SwimUp3End:
GFX_MapDixie_SwimUp4:
	db "GFX_MapDixie_SwimUp4.bin"
GFX_MapDixie_SwimUp4End:
GFX_MapDixie_SwimUp5:
	db "GFX_MapDixie_SwimUp5.bin"
GFX_MapDixie_SwimUp5End:
GFX_MapDixie_SwimUp6:
	db "GFX_MapDixie_SwimUp6.bin"
GFX_MapDixie_SwimUp6End:
GFX_MapDixie_SwimUp7:
	db "GFX_MapDixie_SwimUp7.bin"
GFX_MapDixie_SwimUp7End:
GFX_MapDixie_SwimUp8:
	db "GFX_MapDixie_SwimUp8.bin"
GFX_MapDixie_SwimUp8End:
GFX_MapDixie_SwimDiagonallyUp1:
	db "GFX_MapDixie_SwimDiagonallyUp1.bin"
GFX_MapDixie_SwimDiagonallyUp1End:
GFX_MapDixie_SwimDiagonallyUp2:
	db "GFX_MapDixie_SwimDiagonallyUp2.bin"
GFX_MapDixie_SwimDiagonallyUp2End:
GFX_MapDixie_SwimDiagonallyUp3:
	db "GFX_MapDixie_SwimDiagonallyUp3.bin"
GFX_MapDixie_SwimDiagonallyUp3End:
GFX_MapDixie_SwimDiagonallyUp4:
	db "GFX_MapDixie_SwimDiagonallyUp4.bin"
GFX_MapDixie_SwimDiagonallyUp4End:
GFX_MapDixie_SwimDiagonallyUp5:
	db "GFX_MapDixie_SwimDiagonallyUp5.bin"
GFX_MapDixie_SwimDiagonallyUp5End:
GFX_MapDixie_SwimDiagonallyUp6:
	db "GFX_MapDixie_SwimDiagonallyUp6.bin"
GFX_MapDixie_SwimDiagonallyUp6End:
GFX_MapDixie_SwimDiagonallyUp7:
	db "GFX_MapDixie_SwimDiagonallyUp7.bin"
GFX_MapDixie_SwimDiagonallyUp7End:
GFX_MapDixie_SwimDiagonallyUp8:
	db "GFX_MapDixie_SwimDiagonallyUp8.bin"
GFX_MapDixie_SwimDiagonallyUp8End:
GFX_MapDixie_SwimSide1:
	db "GFX_MapDixie_SwimSide1.bin"
GFX_MapDixie_SwimSide1End:
GFX_MapDixie_SwimSide2:
	db "GFX_MapDixie_SwimSide2.bin"
GFX_MapDixie_SwimSide2End:
GFX_MapDixie_SwimSide3:
	db "GFX_MapDixie_SwimSide3.bin"
GFX_MapDixie_SwimSide3End:
GFX_MapDixie_SwimSide4:
	db "GFX_MapDixie_SwimSide4.bin"
GFX_MapDixie_SwimSide4End:
GFX_MapDixie_SwimSide5:
	db "GFX_MapDixie_SwimSide5.bin"
GFX_MapDixie_SwimSide5End:
GFX_MapDixie_SwimSide6:
	db "GFX_MapDixie_SwimSide6.bin"
GFX_MapDixie_SwimSide6End:
GFX_MapDixie_SwimSide7:
	db "GFX_MapDixie_SwimSide7.bin"
GFX_MapDixie_SwimSide7End:
GFX_MapDixie_SwimSide8:
	db "GFX_MapDixie_SwimSide8.bin"
GFX_MapDixie_SwimSide8End:
GFX_MapDixie_SwimDiagonallyDown1:
	db "GFX_MapDixie_SwimDiagonallyDown1.bin"
GFX_MapDixie_SwimDiagonallyDown1End:
GFX_MapDixie_SwimDiagonallyDown2:
	db "GFX_MapDixie_SwimDiagonallyDown2.bin"
GFX_MapDixie_SwimDiagonallyDown2End:
GFX_MapDixie_SwimDiagonallyDown3:
	db "GFX_MapDixie_SwimDiagonallyDown3.bin"
GFX_MapDixie_SwimDiagonallyDown3End:
GFX_MapDixie_SwimDiagonallyDown4:
	db "GFX_MapDixie_SwimDiagonallyDown4.bin"
GFX_MapDixie_SwimDiagonallyDown4End:
GFX_MapDixie_SwimDiagonallyDown5:
	db "GFX_MapDixie_SwimDiagonallyDown5.bin"
GFX_MapDixie_SwimDiagonallyDown5End:
GFX_MapDixie_SwimDiagonallyDown6:
	db "GFX_MapDixie_SwimDiagonallyDown6.bin"
GFX_MapDixie_SwimDiagonallyDown6End:
GFX_MapDixie_SwimDiagonallyDown7:
	db "GFX_MapDixie_SwimDiagonallyDown7.bin"
GFX_MapDixie_SwimDiagonallyDown7End:
GFX_MapDixie_SwimDiagonallyDown8:
	db "GFX_MapDixie_SwimDiagonallyDown8.bin"
GFX_MapDixie_SwimDiagonallyDown8End:
GFX_MapDixie_SwimDown1:
	db "GFX_MapDixie_SwimDown1.bin"
GFX_MapDixie_SwimDown1End:
GFX_MapDixie_SwimDown2:
	db "GFX_MapDixie_SwimDown2.bin"
GFX_MapDixie_SwimDown2End:
GFX_MapDixie_SwimDown3:
	db "GFX_MapDixie_SwimDown3.bin"
GFX_MapDixie_SwimDown3End:
GFX_MapDixie_SwimDown4:
	db "GFX_MapDixie_SwimDown4.bin"
GFX_MapDixie_SwimDown4End:
GFX_MapDixie_SwimDown5:
	db "GFX_MapDixie_SwimDown5.bin"
GFX_MapDixie_SwimDown5End:
GFX_MapDixie_SwimDown6:
	db "GFX_MapDixie_SwimDown6.bin"
GFX_MapDixie_SwimDown6End:
GFX_MapDixie_SwimDown7:
	db "GFX_MapDixie_SwimDown7.bin"
GFX_MapDixie_SwimDown7End:
GFX_MapDixie_SwimDown8:
	db "GFX_MapDixie_SwimDown8.bin"
GFX_MapDixie_SwimDown8End:
GFX_UnknownEffect1_Pose1:
	db "GFX_UnknownEffect1_Pose1.bin"
GFX_UnknownEffect1_Pose1End:
GFX_UnknownEffect1_Pose2:
	db "GFX_UnknownEffect1_Pose2.bin"
GFX_UnknownEffect1_Pose2End:
GFX_UnknownEffect1_Pose3:
	db "GFX_UnknownEffect1_Pose3.bin"
GFX_UnknownEffect1_Pose3End:
GFX_UnknownEffect1_Pose4:
	db "GFX_UnknownEffect1_Pose4.bin"
GFX_UnknownEffect1_Pose4End:
GFX_UnknownEffect1_Pose5:
	db "GFX_UnknownEffect1_Pose5.bin"
GFX_UnknownEffect1_Pose5End:
GFX_MotorBoat_Pose1:
	db "GFX_MotorBoat_Pose1.bin"
GFX_MotorBoat_Pose1End:
GFX_MotorBoat_Pose2:
	db "GFX_MotorBoat_Pose2.bin"
GFX_MotorBoat_Pose2End:
GFX_MotorBoat_Pose3:
	db "GFX_MotorBoat_Pose3.bin"
GFX_MotorBoat_Pose3End:
GFX_MotorBoat_Pose4:
	db "GFX_MotorBoat_Pose4.bin"
GFX_MotorBoat_Pose4End:
GFX_MotorBoat_Pose5:
	db "GFX_MotorBoat_Pose5.bin"
GFX_MotorBoat_Pose5End:
GFX_MotorBoat_Pose6:
	db "GFX_MotorBoat_Pose6.bin"
GFX_MotorBoat_Pose6End:
GFX_MotorBoat_Pose7:
	db "GFX_MotorBoat_Pose7.bin"
GFX_MotorBoat_Pose7End:
GFX_MotorBoat_Pose8:
	db "GFX_MotorBoat_Pose8.bin"
GFX_MotorBoat_Pose8End:
GFX_MotorBoat_Pose9:
	db "GFX_MotorBoat_Pose9.bin"
GFX_MotorBoat_Pose9End:
GFX_Hovercraft_Pose1:
	db "GFX_Hovercraft_Pose1.bin"
GFX_Hovercraft_Pose1End:
GFX_Hovercraft_Pose2:
	db "GFX_Hovercraft_Pose2.bin"
GFX_Hovercraft_Pose2End:
GFX_Hovercraft_Pose3:
	db "GFX_Hovercraft_Pose3.bin"
GFX_Hovercraft_Pose3End:
GFX_Hovercraft_Pose4:
	db "GFX_Hovercraft_Pose4.bin"
GFX_Hovercraft_Pose4End:
GFX_Hovercraft_Pose5:
	db "GFX_Hovercraft_Pose5.bin"
GFX_Hovercraft_Pose5End:
GFX_Hovercraft_Pose6:
	db "GFX_Hovercraft_Pose6.bin"
GFX_Hovercraft_Pose6End:
GFX_Hovercraft_Pose7:
	db "GFX_Hovercraft_Pose7.bin"
GFX_Hovercraft_Pose7End:
GFX_Hovercraft_Pose8:
	db "GFX_Hovercraft_Pose8.bin"
GFX_Hovercraft_Pose8End:
GFX_Hovercraft_Pose9:
	db "GFX_Hovercraft_Pose9.bin"
GFX_Hovercraft_Pose9End:
GFX_BananaBunch_Pose1:
	db "GFX_BananaBunch_Pose1.bin"
GFX_BananaBunch_Pose1End:
GFX_BananaBunch_Pose2:
	db "GFX_BananaBunch_Pose2.bin"
GFX_BananaBunch_Pose2End:
GFX_BananaBunch_Pose3:
	db "GFX_BananaBunch_Pose3.bin"
GFX_BananaBunch_Pose3End:
GFX_BananaBunch_Pose4:
	db "GFX_BananaBunch_Pose4.bin"
GFX_BananaBunch_Pose4End:
GFX_BananaBunch_Pose5:
	db "GFX_BananaBunch_Pose5.bin"
GFX_BananaBunch_Pose5End:
GFX_BananaBunch_Pose6:
	db "GFX_BananaBunch_Pose6.bin"
GFX_BananaBunch_Pose6End:
GFX_K_Rotate1:
	db "GFX_K_Rotate1.bin"
GFX_K_Rotate1End:
GFX_K_Rotate2:
	db "GFX_K_Rotate2.bin"
GFX_K_Rotate2End:
GFX_K_Rotate3:
	db "GFX_K_Rotate3.bin"
GFX_K_Rotate3End:
GFX_K_Rotate4:
	db "GFX_K_Rotate4.bin"
GFX_K_Rotate4End:
GFX_K_Rotate5:
	db "GFX_K_Rotate5.bin"
GFX_K_Rotate5End:
GFX_K_Rotate6:
	db "GFX_K_Rotate6.bin"
GFX_K_Rotate6End:
GFX_K_Rotate7:
	db "GFX_K_Rotate7.bin"
GFX_K_Rotate7End:
GFX_K_Rotate8:
	db "GFX_K_Rotate8.bin"
GFX_K_Rotate8End:
GFX_O_Rotate1:
	db "GFX_O_Rotate1.bin"
GFX_O_Rotate1End:
GFX_O_Rotate2:
	db "GFX_O_Rotate2.bin"
GFX_O_Rotate2End:
GFX_O_Rotate3:
	db "GFX_O_Rotate3.bin"
GFX_O_Rotate3End:
GFX_O_Rotate4:
	db "GFX_O_Rotate4.bin"
GFX_O_Rotate4End:
GFX_O_Rotate5:
	db "GFX_O_Rotate5.bin"
GFX_O_Rotate5End:
GFX_O_Rotate6:
	db "GFX_O_Rotate6.bin"
GFX_O_Rotate6End:
GFX_O_Rotate7:
	db "GFX_O_Rotate7.bin"
GFX_O_Rotate7End:
GFX_O_Rotate8:
	db "GFX_O_Rotate8.bin"
GFX_O_Rotate8End:
GFX_N_Rotate1:
	db "GFX_N_Rotate1.bin"
GFX_N_Rotate1End:
GFX_N_Rotate2:
	db "GFX_N_Rotate2.bin"
GFX_N_Rotate2End:
GFX_N_Rotate3:
	db "GFX_N_Rotate3.bin"
GFX_N_Rotate3End:
GFX_N_Rotate4:
	db "GFX_N_Rotate4.bin"
GFX_N_Rotate4End:
GFX_N_Rotate5:
	db "GFX_N_Rotate5.bin"
GFX_N_Rotate5End:
GFX_N_Rotate6:
	db "GFX_N_Rotate6.bin"
GFX_N_Rotate6End:
GFX_N_Rotate7:
	db "GFX_N_Rotate7.bin"
GFX_N_Rotate7End:
GFX_N_Rotate8:
	db "GFX_N_Rotate8.bin"
GFX_N_Rotate8End:
GFX_G_Rotate1:
	db "GFX_G_Rotate1.bin"
GFX_G_Rotate1End:
GFX_G_Rotate2:
	db "GFX_G_Rotate2.bin"
GFX_G_Rotate2End:
GFX_G_Rotate3:
	db "GFX_G_Rotate3.bin"
GFX_G_Rotate3End:
GFX_G_Rotate4:
	db "GFX_G_Rotate4.bin"
GFX_G_Rotate4End:
GFX_G_Rotate5:
	db "GFX_G_Rotate5.bin"
GFX_G_Rotate5End:
GFX_G_Rotate6:
	db "GFX_G_Rotate6.bin"
GFX_G_Rotate6End:
GFX_G_Rotate7:
	db "GFX_G_Rotate7.bin"
GFX_G_Rotate7End:
GFX_G_Rotate8:
	db "GFX_G_Rotate8.bin"
GFX_G_Rotate8End:
GFX_K_Shrink1:
	db "GFX_K_Shrink1.bin"
GFX_K_Shrink1End:
GFX_K_Shrink2:
	db "GFX_K_Shrink2.bin"
GFX_K_Shrink2End:
GFX_O_Shrink1:
	db "GFX_O_Shrink1.bin"
GFX_O_Shrink1End:
GFX_O_Shrink2:
	db "GFX_O_Shrink2.bin"
GFX_O_Shrink2End:
GFX_N_Shrink1:
	db "GFX_N_Shrink1.bin"
GFX_N_Shrink1End:
GFX_N_Shrink2:
	db "GFX_N_Shrink2.bin"
GFX_N_Shrink2End:
GFX_G_Shrink1:
	db "GFX_G_Shrink1.bin"
GFX_G_Shrink1End:
GFX_G_Shrink2:
	db "GFX_G_Shrink2.bin"
GFX_G_Shrink2End:
GFX_SneekWheel_Pose1:
	db "GFX_SneekWheel_Pose1.bin"
GFX_SneekWheel_Pose1End:
GFX_SneekWheel_Pose2:
	db "GFX_SneekWheel_Pose2.bin"
GFX_SneekWheel_Pose2End:
GFX_SneekWheel_Pose3:
	db "GFX_SneekWheel_Pose3.bin"
GFX_SneekWheel_Pose3End:
GFX_DoorGear_Pose1:
	db "GFX_DoorGear_Pose1.bin"
GFX_DoorGear_Pose1End:
GFX_DoorGear_Pose2:
	db "GFX_DoorGear_Pose2.bin"
GFX_DoorGear_Pose2End:
GFX_DoorGear_Pose3:
	db "GFX_DoorGear_Pose3.bin"
GFX_DoorGear_Pose3End:
GFX_DoorGear_Pose4:
	db "GFX_DoorGear_Pose4.bin"
GFX_DoorGear_Pose4End:
GFX_DoorGear_Pose5:
	db "GFX_DoorGear_Pose5.bin"
GFX_DoorGear_Pose5End:
GFX_DoorGear_Pose6:
	db "GFX_DoorGear_Pose6.bin"
GFX_DoorGear_Pose6End:
GFX_DoorGear_Pose7:
	db "GFX_DoorGear_Pose7.bin"
GFX_DoorGear_Pose7End:
GFX_DoorGear_Pose8:
	db "GFX_DoorGear_Pose8.bin"
GFX_DoorGear_Pose8End:
GFX_MetalDoor_Pose:
	db "GFX_MetalDoor_Pose.bin"
GFX_MetalDoor_PoseEnd:
GFX_DoorLeverBar_Pose:
	db "GFX_DoorLeverBar_Pose.bin"
GFX_DoorLeverBar_PoseEnd:
GFX_ArichLegs_Pose1:
	db "GFX_ArichLegs_Pose1.bin"
GFX_ArichLegs_Pose1End:
GFX_ArichLegs_Pose2:
	db "GFX_ArichLegs_Pose2.bin"
GFX_ArichLegs_Pose2End:
GFX_ArichLegs_Pose3:
	db "GFX_ArichLegs_Pose3.bin"
GFX_ArichLegs_Pose3End:
GFX_ArichLegs_Pose4:
	db "GFX_ArichLegs_Pose4.bin"
GFX_ArichLegs_Pose4End:
GFX_ArichLegs_Pose5:
	db "GFX_ArichLegs_Pose5.bin"
GFX_ArichLegs_Pose5End:
GFX_ArichLegs_Pose6:
	db "GFX_ArichLegs_Pose6.bin"
GFX_ArichLegs_Pose6End:
GFX_ArichLegs_Pose7:
	db "GFX_ArichLegs_Pose7.bin"
GFX_ArichLegs_Pose7End:
GFX_ArichLegs_Pose8:
	db "GFX_ArichLegs_Pose8.bin"
GFX_ArichLegs_Pose8End:
GFX_ArichFace_Idle1:
	db "GFX_ArichFace_Idle1.bin"
GFX_ArichFace_Idle1End:
GFX_ArichFace_Idle2:
	db "GFX_ArichFace_Idle2.bin"
GFX_ArichFace_Idle2End:
GFX_ArichFace_Idle3:
	db "GFX_ArichFace_Idle3.bin"
GFX_ArichFace_Idle3End:
GFX_ArichFace_Idle4:
	db "GFX_ArichFace_Idle4.bin"
GFX_ArichFace_Idle4End:
GFX_ArichFace_SpitDown1:
	db "GFX_ArichFace_SpitDown1.bin"
GFX_ArichFace_SpitDown1End:
GFX_ArichFace_SpitDown2:
	db "GFX_ArichFace_SpitDown2.bin"
GFX_ArichFace_SpitDown2End:
GFX_ArichFace_SpitDown3:
	db "GFX_ArichFace_SpitDown3.bin"
GFX_ArichFace_SpitDown3End:
GFX_ArichFace_SpitDiagonallyDownLeft1:
	db "GFX_ArichFace_SpitDiagonallyDownLeft1.bin"
GFX_ArichFace_SpitDiagonallyDownLeft1End:
GFX_ArichFace_SpitDiagonallyDownLeft2:
	db "GFX_ArichFace_SpitDiagonallyDownLeft2.bin"
GFX_ArichFace_SpitDiagonallyDownLeft2End:
GFX_ArichFace_SpitDiagonallyDownLeft3:
	db "GFX_ArichFace_SpitDiagonallyDownLeft3.bin"
GFX_ArichFace_SpitDiagonallyDownLeft3End:
GFX_ArichFace_SpitDiagonallyDownRight1:
	db "GFX_ArichFace_SpitDiagonallyDownRight1.bin"
GFX_ArichFace_SpitDiagonallyDownRight1End:
GFX_ArichFace_SpitDiagonallyDownRight2:
	db "GFX_ArichFace_SpitDiagonallyDownRight2.bin"
GFX_ArichFace_SpitDiagonallyDownRight2End:
GFX_ArichFace_SpitDiagonallyDownRight3:
	db "GFX_ArichFace_SpitDiagonallyDownRight3.bin"
GFX_ArichFace_SpitDiagonallyDownRight3End:
GFX_ArichFace_Hurt1:
	db "GFX_ArichFace_Hurt1.bin"
GFX_ArichFace_Hurt1End:
GFX_ArichFace_Hurt2:
	db "GFX_ArichFace_Hurt2.bin"
GFX_ArichFace_Hurt2End:
GFX_ArichFace_Hurt3:
	db "GFX_ArichFace_Hurt3.bin"
GFX_ArichFace_Hurt3End:
GFX_ArichEye_Pose:
	db "GFX_ArichEye_Pose.bin"
GFX_ArichEye_PoseEnd:
GFX_Sawdust_Pose1:
	db "GFX_Sawdust_Pose1.bin"
GFX_Sawdust_Pose1End:
GFX_Sawdust_Pose2:
	db "GFX_Sawdust_Pose2.bin"
GFX_Sawdust_Pose2End:
GFX_Sawdust_Pose3:
	db "GFX_Sawdust_Pose3.bin"
GFX_Sawdust_Pose3End:
GFX_Sawdust_Pose4:
	db "GFX_Sawdust_Pose4.bin"
GFX_Sawdust_Pose4End:
GFX_Sawdust_Pose5:
	db "GFX_Sawdust_Pose5.bin"
GFX_Sawdust_Pose5End:
GFX_Sawdust_Pose6:
	db "GFX_Sawdust_Pose6.bin"
GFX_Sawdust_Pose6End:
GFX_Sawdust_Pose7:
	db "GFX_Sawdust_Pose7.bin"
GFX_Sawdust_Pose7End:
GFX_Sawdust_Pose8:
	db "GFX_Sawdust_Pose8.bin"
GFX_Sawdust_Pose8End:
GFX_TopOfK3Waterfall_Pose1:
	db "GFX_TopOfK3Waterfall_Pose1.bin"
GFX_TopOfK3Waterfall_Pose1End:
GFX_TopOfK3Waterfall_Pose2:
	db "GFX_TopOfK3Waterfall_Pose2.bin"
GFX_TopOfK3Waterfall_Pose2End:
GFX_TopOfK3Waterfall_Pose3:
	db "GFX_TopOfK3Waterfall_Pose3.bin"
GFX_TopOfK3Waterfall_Pose3End:
GFX_TopOfK3Waterfall_Pose4:
	db "GFX_TopOfK3Waterfall_Pose4.bin"
GFX_TopOfK3Waterfall_Pose4End:
GFX_KremwoodForestWaterTrail1_Pose1:
	db "GFX_KremwoodForestWaterTrail1_Pose1.bin"
GFX_KremwoodForestWaterTrail1_Pose1End:
GFX_KremwoodForestWaterTrail1_Pose2:
	db "GFX_KremwoodForestWaterTrail1_Pose2.bin"
GFX_KremwoodForestWaterTrail1_Pose2End:
GFX_KremwoodForestWaterTrail1_Pose3:
	db "GFX_KremwoodForestWaterTrail1_Pose3.bin"
GFX_KremwoodForestWaterTrail1_Pose3End:
GFX_KremwoodForestWaterTrail1_Pose4:
	db "GFX_KremwoodForestWaterTrail1_Pose4.bin"
GFX_KremwoodForestWaterTrail1_Pose4End:
GFX_BrashsCabinSmoke_Pose1:
	db "GFX_BrashsCabinSmoke_Pose1.bin"
GFX_BrashsCabinSmoke_Pose1End:
GFX_BrashsCabinSmoke_Pose2:
	db "GFX_BrashsCabinSmoke_Pose2.bin"
GFX_BrashsCabinSmoke_Pose2End:
GFX_BrashsCabinSmoke_Pose3:
	db "GFX_BrashsCabinSmoke_Pose3.bin"
GFX_BrashsCabinSmoke_Pose3End:
GFX_BrashsCabinSmoke_Pose4:
	db "GFX_BrashsCabinSmoke_Pose4.bin"
GFX_BrashsCabinSmoke_Pose4End:
GFX_BrashsCabinSmoke_Pose5:
	db "GFX_BrashsCabinSmoke_Pose5.bin"
GFX_BrashsCabinSmoke_Pose5End:
GFX_BrashsCabinSmoke_Pose6:
	db "GFX_BrashsCabinSmoke_Pose6.bin"
GFX_BrashsCabinSmoke_Pose6End:
GFX_BrashsCabinSmoke_Pose7:
	db "GFX_BrashsCabinSmoke_Pose7.bin"
GFX_BrashsCabinSmoke_Pose7End:
GFX_BrashsCabinSmoke_Pose8:
	db "GFX_BrashsCabinSmoke_Pose8.bin"
GFX_BrashsCabinSmoke_Pose8End:
GFX_BleaksHouseFace_Pose1:
	db "GFX_BleaksHouseFace_Pose1.bin"
GFX_BleaksHouseFace_Pose1End:
GFX_BleaksHouseFace_Pose2:
	db "GFX_BleaksHouseFace_Pose2.bin"
GFX_BleaksHouseFace_Pose2End:
GFX_BleaksHouseFace_Pose3:
	db "GFX_BleaksHouseFace_Pose3.bin"
GFX_BleaksHouseFace_Pose3End:
GFX_BleaksHouseFace_Pose4:
	db "GFX_BleaksHouseFace_Pose4.bin"
GFX_BleaksHouseFace_Pose4End:
GFX_BleaksHouseFace_Pose5:
	db "GFX_BleaksHouseFace_Pose5.bin"
GFX_BleaksHouseFace_Pose5End:
GFX_BleaksHouseFace_Pose6:
	db "GFX_BleaksHouseFace_Pose6.bin"
GFX_BleaksHouseFace_Pose6End:
GFX_ArichAmbushFace_Pose1:
	db "GFX_ArichAmbushFace_Pose1.bin"
GFX_ArichAmbushFace_Pose1End:
GFX_ArichAmbushFace_Pose2:
	db "GFX_ArichAmbushFace_Pose2.bin"
GFX_ArichAmbushFace_Pose2End:
GFX_ArichAmbushFace_Pose3:
	db "GFX_ArichAmbushFace_Pose3.bin"
GFX_ArichAmbushFace_Pose3End:
GFX_ArichAmbushFace_Pose4:
	db "GFX_ArichAmbushFace_Pose4.bin"
GFX_ArichAmbushFace_Pose4End:
GFX_ArichAmbushFace_Pose5:
	db "GFX_ArichAmbushFace_Pose5.bin"
GFX_ArichAmbushFace_Pose5End:
GFX_ArichAmbushFace_Pose6:
	db "GFX_ArichAmbushFace_Pose6.bin"
GFX_ArichAmbushFace_Pose6End:
GFX_WrinklysSaveCave_Pose1:
	db "GFX_WrinklysSaveCave_Pose1.bin"
GFX_WrinklysSaveCave_Pose1End:
GFX_WrinklysSaveCave_Pose2:
	db "GFX_WrinklysSaveCave_Pose2.bin"
GFX_WrinklysSaveCave_Pose2End:
GFX_WrinklysSaveCave_Pose3:
	db "GFX_WrinklysSaveCave_Pose3.bin"
GFX_WrinklysSaveCave_Pose3End:
GFX_BurstEffect_Pose1:
	db "GFX_BurstEffect_Pose1.bin"
GFX_BurstEffect_Pose1End:
GFX_BurstEffect_Pose2:
	db "GFX_BurstEffect_Pose2.bin"
GFX_BurstEffect_Pose2End:
GFX_BurstEffect_Pose3:
	db "GFX_BurstEffect_Pose3.bin"
GFX_BurstEffect_Pose3End:
GFX_BurstEffect_Pose4:
	db "GFX_BurstEffect_Pose4.bin"
GFX_BurstEffect_Pose4End:
GFX_BurstEffect_Pose5:
	db "GFX_BurstEffect_Pose5.bin"
GFX_BurstEffect_Pose5End:
GFX_BurstEffect_Pose6:
	db "GFX_BurstEffect_Pose6.bin"
GFX_BurstEffect_Pose6End:
GFX_TNTBarrel_Idle:
	db "GFX_TNTBarrel_Idle.bin"
GFX_TNTBarrel_IdleEnd:
GFX_ThrowBarrel_Idle:
	db "GFX_ThrowBarrel_Idle.bin"
GFX_ThrowBarrel_IdleEnd:
GFX_ThrowBarrel_Grabbed1:
	db "GFX_ThrowBarrel_Grabbed1.bin"
GFX_ThrowBarrel_Grabbed1End:
GFX_ThrowBarrel_Grabbed2:
	db "GFX_ThrowBarrel_Grabbed2.bin"
GFX_ThrowBarrel_Grabbed2End:
GFX_ThrowBarrel_Grabbed3:
	db "GFX_ThrowBarrel_Grabbed3.bin"
GFX_ThrowBarrel_Grabbed3End:
GFX_ThrowBarrel_Grabbed4:
	db "GFX_ThrowBarrel_Grabbed4.bin"
GFX_ThrowBarrel_Grabbed4End:
GFX_ThrowBarrel_Thrown1:
	db "GFX_ThrowBarrel_Thrown1.bin"
GFX_ThrowBarrel_Thrown1End:
GFX_ThrowBarrel_Thrown2:
	db "GFX_ThrowBarrel_Thrown2.bin"
GFX_ThrowBarrel_Thrown2End:
GFX_ThrowBarrel_Thrown3:
	db "GFX_ThrowBarrel_Thrown3.bin"
GFX_ThrowBarrel_Thrown3End:
GFX_ThrowBarrel_Thrown4:
	db "GFX_ThrowBarrel_Thrown4.bin"
GFX_ThrowBarrel_Thrown4End:
GFX_ThrowBarrel_Thrown5:
	db "GFX_ThrowBarrel_Thrown5.bin"
GFX_ThrowBarrel_Thrown5End:
GFX_ThrowBarrel_Thrown6:
	db "GFX_ThrowBarrel_Thrown6.bin"
GFX_ThrowBarrel_Thrown6End:
GFX_ThrowBarrel_Thrown7:
	db "GFX_ThrowBarrel_Thrown7.bin"
GFX_ThrowBarrel_Thrown7End:
GFX_ThrowBarrel_Thrown8:
	db "GFX_ThrowBarrel_Thrown8.bin"
GFX_ThrowBarrel_Thrown8End:
GFX_SteelKeg_Idle:
	db "GFX_SteelKeg_Idle.bin"
GFX_SteelKeg_IdleEnd:
GFX_SteelKeg_Grabbed1:
	db "GFX_SteelKeg_Grabbed1.bin"
GFX_SteelKeg_Grabbed1End:
GFX_SteelKeg_Grabbed2:
	db "GFX_SteelKeg_Grabbed2.bin"
GFX_SteelKeg_Grabbed2End:
GFX_SteelKeg_Grabbed3:
	db "GFX_SteelKeg_Grabbed3.bin"
GFX_SteelKeg_Grabbed3End:
GFX_SteelKeg_Thrown1:
	db "GFX_SteelKeg_Thrown1.bin"
GFX_SteelKeg_Thrown1End:
GFX_SteelKeg_Thrown2:
	db "GFX_SteelKeg_Thrown2.bin"
GFX_SteelKeg_Thrown2End:
GFX_SteelKeg_Thrown3:
	db "GFX_SteelKeg_Thrown3.bin"
GFX_SteelKeg_Thrown3End:
GFX_SteelKeg_Thrown4:
	db "GFX_SteelKeg_Thrown4.bin"
GFX_SteelKeg_Thrown4End:
GFX_SteelKeg_Thrown5:
	db "GFX_SteelKeg_Thrown5.bin"
GFX_SteelKeg_Thrown5End:
GFX_SteelKeg_Thrown6:
	db "GFX_SteelKeg_Thrown6.bin"
GFX_SteelKeg_Thrown6End:
GFX_SteelKeg_Thrown7:
	db "GFX_SteelKeg_Thrown7.bin"
GFX_SteelKeg_Thrown7End:
GFX_SteelKeg_Thrown8:
	db "GFX_SteelKeg_Thrown8.bin"
GFX_SteelKeg_Thrown8End:
GFX_CheckpointBarrel_Idle1:
	db "GFX_CheckpointBarrel_Idle1.bin"
GFX_CheckpointBarrel_Idle1End:
GFX_CheckpointBarrel_Idle2:
	db "GFX_CheckpointBarrel_Idle2.bin"
GFX_CheckpointBarrel_Idle2End:
GFX_CheckpointBarrel_Idle3:
	db "GFX_CheckpointBarrel_Idle3.bin"
GFX_CheckpointBarrel_Idle3End:
GFX_CheckpointBarrel_Idle4:
	db "GFX_CheckpointBarrel_Idle4.bin"
GFX_CheckpointBarrel_Idle4End:
GFX_CheckpointBarrel_Idle5:
	db "GFX_CheckpointBarrel_Idle5.bin"
GFX_CheckpointBarrel_Idle5End:
GFX_CheckpointBarrel_Idle6:
	db "GFX_CheckpointBarrel_Idle6.bin"
GFX_CheckpointBarrel_Idle6End:
GFX_CheckpointBarrel_Idle7:
	db "GFX_CheckpointBarrel_Idle7.bin"
GFX_CheckpointBarrel_Idle7End:
GFX_CheckpointBarrel_Idle8:
	db "GFX_CheckpointBarrel_Idle8.bin"
GFX_CheckpointBarrel_Idle8End:
GFX_WoodenBox_Idle:
	db "GFX_WoodenBox_Idle.bin"
GFX_WoodenBox_IdleEnd:
GFX_WoodenBox_Grabbed1:
	db "GFX_WoodenBox_Grabbed1.bin"
GFX_WoodenBox_Grabbed1End:
GFX_WoodenBox_Grabbed2:
	db "GFX_WoodenBox_Grabbed2.bin"
GFX_WoodenBox_Grabbed2End:
GFX_WoodenBox_Grabbed3:
	db "GFX_WoodenBox_Grabbed3.bin"
GFX_WoodenBox_Grabbed3End:
GFX_SmokePuff_Pose1:
	db "GFX_SmokePuff_Pose1.bin"
GFX_SmokePuff_Pose1End:
GFX_SmokePuff_Pose2:
	db "GFX_SmokePuff_Pose2.bin"
GFX_SmokePuff_Pose2End:
GFX_SmokePuff_Pose3:
	db "GFX_SmokePuff_Pose3.bin"
GFX_SmokePuff_Pose3End:
GFX_SmokePuff_Pose4:
	db "GFX_SmokePuff_Pose4.bin"
GFX_SmokePuff_Pose4End:
GFX_SmokePuff_Pose5:
	db "GFX_SmokePuff_Pose5.bin"
GFX_SmokePuff_Pose5End:
GFX_SmokePuff_Pose6:
	db "GFX_SmokePuff_Pose6.bin"
GFX_SmokePuff_Pose6End:
GFX_SmokePuff_Pose7:
	db "GFX_SmokePuff_Pose7.bin"
GFX_SmokePuff_Pose7End:
GFX_SmokePuff_Pose8:
	db "GFX_SmokePuff_Pose8.bin"
GFX_SmokePuff_Pose8End:
GFX_BigSmokeCloud_Pose1:
	db "GFX_BigSmokeCloud_Pose1.bin"
GFX_BigSmokeCloud_Pose1End:
GFX_BigSmokeCloud_Pose2:
	db "GFX_BigSmokeCloud_Pose2.bin"
GFX_BigSmokeCloud_Pose2End:
GFX_BigSmokeCloud_Pose3:
	db "GFX_BigSmokeCloud_Pose3.bin"
GFX_BigSmokeCloud_Pose3End:
GFX_BigSmokeCloud_Pose4:
	db "GFX_BigSmokeCloud_Pose4.bin"
GFX_BigSmokeCloud_Pose4End:
GFX_BigSmokeCloud_Pose5:
	db "GFX_BigSmokeCloud_Pose5.bin"
GFX_BigSmokeCloud_Pose5End:
GFX_BigSmokeCloud_Pose6:
	db "GFX_BigSmokeCloud_Pose6.bin"
GFX_BigSmokeCloud_Pose6End:
GFX_BigSmokeCloud_Pose7:
	db "GFX_BigSmokeCloud_Pose7.bin"
GFX_BigSmokeCloud_Pose7End:
GFX_BigSmokeCloud_Pose8:
	db "GFX_BigSmokeCloud_Pose8.bin"
GFX_BigSmokeCloud_Pose8End:
GFX_BigSmokeCloud_Pose9:
	db "GFX_BigSmokeCloud_Pose9.bin"
GFX_BigSmokeCloud_Pose9End:
GFX_BigSmokeCloud_Pose10:
	db "GFX_BigSmokeCloud_Pose10.bin"
GFX_BigSmokeCloud_Pose10End:
GFX_BigSmokeCloud_Pose11:
	db "GFX_BigSmokeCloud_Pose11.bin"
GFX_BigSmokeCloud_Pose11End:
GFX_BigSmokeCloud_Pose12:
	db "GFX_BigSmokeCloud_Pose12.bin"
GFX_BigSmokeCloud_Pose12End:
GFX_BigSmokeCloud_Pose13:
	db "GFX_BigSmokeCloud_Pose13.bin"
GFX_BigSmokeCloud_Pose13End:
GFX_Explosion_Pose1:
	db "GFX_Explosion_Pose1.bin"
GFX_Explosion_Pose1End:
GFX_Explosion_Pose2:
	db "GFX_Explosion_Pose2.bin"
GFX_Explosion_Pose2End:
GFX_Explosion_Pose3:
	db "GFX_Explosion_Pose3.bin"
GFX_Explosion_Pose3End:
GFX_Explosion_Pose4:
	db "GFX_Explosion_Pose4.bin"
GFX_Explosion_Pose4End:
GFX_Explosion_Pose5:
	db "GFX_Explosion_Pose5.bin"
GFX_Explosion_Pose5End:
GFX_Explosion_Pose6:
	db "GFX_Explosion_Pose6.bin"
GFX_Explosion_Pose6End:
GFX_Explosion_Pose7:
	db "GFX_Explosion_Pose7.bin"
GFX_Explosion_Pose7End:
GFX_Explosion_Pose8:
	db "GFX_Explosion_Pose8.bin"
GFX_Explosion_Pose8End:
GFX_Explosion_Pose9:
	db "GFX_Explosion_Pose9.bin"
GFX_Explosion_Pose9End:
GFX_Explosion_Pose10:
	db "GFX_Explosion_Pose10.bin"
GFX_Explosion_Pose10End:
GFX_Explosion_Pose11:
	db "GFX_Explosion_Pose11.bin"
GFX_Explosion_Pose11End:
GFX_Explosion_Pose12:
	db "GFX_Explosion_Pose12.bin"
GFX_Explosion_Pose12End:
GFX_Explosion_Pose13:
	db "GFX_Explosion_Pose13.bin"
GFX_Explosion_Pose13End:
GFX_Explosion_Pose14:
	db "GFX_Explosion_Pose14.bin"
GFX_Explosion_Pose14End:
GFX_Explosion_Pose15:
	db "GFX_Explosion_Pose15.bin"
GFX_Explosion_Pose15End:
GFX_BearCoin_Pose1:
	db "GFX_BearCoin_Pose1.bin"
GFX_BearCoin_Pose1End:
GFX_BearCoin_Pose2:
	db "GFX_BearCoin_Pose2.bin"
GFX_BearCoin_Pose2End:
GFX_BearCoin_Pose3:
	db "GFX_BearCoin_Pose3.bin"
GFX_BearCoin_Pose3End:
GFX_BearCoin_Pose4:
	db "GFX_BearCoin_Pose4.bin"
GFX_BearCoin_Pose4End:
GFX_BearCoin_Pose5:
	db "GFX_BearCoin_Pose5.bin"
GFX_BearCoin_Pose5End:
GFX_BearCoin_Pose6:
	db "GFX_BearCoin_Pose6.bin"
GFX_BearCoin_Pose6End:
GFX_BearCoin_Pose7:
	db "GFX_BearCoin_Pose7.bin"
GFX_BearCoin_Pose7End:
GFX_BearCoin_Pose8:
	db "GFX_BearCoin_Pose8.bin"
GFX_BearCoin_Pose8End:
GFX_DKCoin_Pose1:
	db "GFX_DKCoin_Pose1.bin"
GFX_DKCoin_Pose1End:
GFX_DKCoin_Pose2:
	db "GFX_DKCoin_Pose2.bin"
GFX_DKCoin_Pose2End:
GFX_DKCoin_Pose3:
	db "GFX_DKCoin_Pose3.bin"
GFX_DKCoin_Pose3End:
GFX_DKCoin_Pose4:
	db "GFX_DKCoin_Pose4.bin"
GFX_DKCoin_Pose4End:
GFX_DKCoin_Pose5:
	db "GFX_DKCoin_Pose5.bin"
GFX_DKCoin_Pose5End:
GFX_DKCoin_Pose6:
	db "GFX_DKCoin_Pose6.bin"
GFX_DKCoin_Pose6End:
GFX_DKCoin_Pose7:
	db "GFX_DKCoin_Pose7.bin"
GFX_DKCoin_Pose7End:
GFX_DKCoin_Pose8:
	db "GFX_DKCoin_Pose8.bin"
GFX_DKCoin_Pose8End:
GFX_BonusBCoin_Pose1:
	db "GFX_BonusBCoin_Pose1.bin"
GFX_BonusBCoin_Pose1End:
GFX_BonusBCoin_Pose2:
	db "GFX_BonusBCoin_Pose2.bin"
GFX_BonusBCoin_Pose2End:
GFX_BonusBCoin_Pose3:
	db "GFX_BonusBCoin_Pose3.bin"
GFX_BonusBCoin_Pose3End:
GFX_BonusBCoin_Pose4:
	db "GFX_BonusBCoin_Pose4.bin"
GFX_BonusBCoin_Pose4End:
GFX_BonusBCoin_Pose5:
	db "GFX_BonusBCoin_Pose5.bin"
GFX_BonusBCoin_Pose5End:
GFX_BonusBCoin_Pose6:
	db "GFX_BonusBCoin_Pose6.bin"
GFX_BonusBCoin_Pose6End:
GFX_BonusBCoin_Pose7:
	db "GFX_BonusBCoin_Pose7.bin"
GFX_BonusBCoin_Pose7End:
GFX_BonusBCoin_Pose8:
	db "GFX_BonusBCoin_Pose8.bin"
GFX_BonusBCoin_Pose8End:
GFX_BonusBCoin_Collected:
	db "GFX_BonusBCoin_Collected.bin"
GFX_BonusBCoin_CollectedEnd:
GFX_LargeWaterSplash_Pose1:
	db "GFX_LargeWaterSplash_Pose1.bin"
GFX_LargeWaterSplash_Pose1End:
GFX_LargeWaterSplash_Pose2:
	db "GFX_LargeWaterSplash_Pose2.bin"
GFX_LargeWaterSplash_Pose2End:
GFX_LargeWaterSplash_Pose3:
	db "GFX_LargeWaterSplash_Pose3.bin"
GFX_LargeWaterSplash_Pose3End:
GFX_LargeWaterSplash_Pose4:
	db "GFX_LargeWaterSplash_Pose4.bin"
GFX_LargeWaterSplash_Pose4End:
GFX_LargeWaterSplash_Pose5:
	db "GFX_LargeWaterSplash_Pose5.bin"
GFX_LargeWaterSplash_Pose5End:
GFX_LargeWaterSplash_Pose6:
	db "GFX_LargeWaterSplash_Pose6.bin"
GFX_LargeWaterSplash_Pose6End:
GFX_LargeWaterSplash_Pose7:
	db "GFX_LargeWaterSplash_Pose7.bin"
GFX_LargeWaterSplash_Pose7End:
GFX_LargeWaterSplash_Pose8:
	db "GFX_LargeWaterSplash_Pose8.bin"
GFX_LargeWaterSplash_Pose8End:
GFX_LargeWaterSplash_Pose9:
	db "GFX_LargeWaterSplash_Pose9.bin"
GFX_LargeWaterSplash_Pose9End:
GFX_LargeWaterSplash_Pose10:
	db "GFX_LargeWaterSplash_Pose10.bin"
GFX_LargeWaterSplash_Pose10End:
GFX_LargeWaterSplash_Pose11:
	db "GFX_LargeWaterSplash_Pose11.bin"
GFX_LargeWaterSplash_Pose11End:
GFX_LargeWaterSplash_Pose12:
	db "GFX_LargeWaterSplash_Pose12.bin"
GFX_LargeWaterSplash_Pose12End:
GFX_LargeWaterSplash_Pose13:
	db "GFX_LargeWaterSplash_Pose13.bin"
GFX_LargeWaterSplash_Pose13End:
GFX_LargeWaterSplash_Pose14:
	db "GFX_LargeWaterSplash_Pose14.bin"
GFX_LargeWaterSplash_Pose14End:
GFX_LargeWaterSplash_Pose15:
	db "GFX_LargeWaterSplash_Pose15.bin"
GFX_LargeWaterSplash_Pose15End:
GFX_LargeWaterSplash_Pose16:
	db "GFX_LargeWaterSplash_Pose16.bin"
GFX_LargeWaterSplash_Pose16End:
GFX_KongWaterSplash_Pose1:
	db "GFX_KongWaterSplash_Pose1.bin"
GFX_KongWaterSplash_Pose1End:
GFX_KongWaterSplash_Pose2:
	db "GFX_KongWaterSplash_Pose2.bin"
GFX_KongWaterSplash_Pose2End:
GFX_KongWaterSplash_Pose3:
	db "GFX_KongWaterSplash_Pose3.bin"
GFX_KongWaterSplash_Pose3End:
GFX_KongWaterSplash_Pose4:
	db "GFX_KongWaterSplash_Pose4.bin"
GFX_KongWaterSplash_Pose4End:
GFX_KongWaterSplash_Pose5:
	db "GFX_KongWaterSplash_Pose5.bin"
GFX_KongWaterSplash_Pose5End:
GFX_KongWaterSplash_Pose6:
	db "GFX_KongWaterSplash_Pose6.bin"
GFX_KongWaterSplash_Pose6End:
GFX_BarrelCannon_Base1:
	db "GFX_BarrelCannon_Base1.bin"
GFX_BarrelCannon_Base1End:
GFX_BarrelCannon_Base2:
	db "GFX_BarrelCannon_Base2.bin"
GFX_BarrelCannon_Base2End:
GFX_BarrelCannon_Base3:
	db "GFX_BarrelCannon_Base3.bin"
GFX_BarrelCannon_Base3End:
GFX_BarrelCannon_Base4:
	db "GFX_BarrelCannon_Base4.bin"
GFX_BarrelCannon_Base4End:
GFX_BarrelCannon_Base5:
	db "GFX_BarrelCannon_Base5.bin"
GFX_BarrelCannon_Base5End:
GFX_BarrelCannon_Base6:
	db "GFX_BarrelCannon_Base6.bin"
GFX_BarrelCannon_Base6End:
GFX_BarrelCannon_Base7:
	db "GFX_BarrelCannon_Base7.bin"
GFX_BarrelCannon_Base7End:
GFX_BarrelCannon_Base8:
	db "GFX_BarrelCannon_Base8.bin"
GFX_BarrelCannon_Base8End:
GFX_BarrelCannon_Base9:
	db "GFX_BarrelCannon_Base9.bin"
GFX_BarrelCannon_Base9End:
GFX_BarrelCannon_Base10:
	db "GFX_BarrelCannon_Base10.bin"
GFX_BarrelCannon_Base10End:
GFX_BarrelCannon_Base11:
	db "GFX_BarrelCannon_Base11.bin"
GFX_BarrelCannon_Base11End:
GFX_BarrelCannon_Base12:
	db "GFX_BarrelCannon_Base12.bin"
GFX_BarrelCannon_Base12End:
GFX_BarrelCannon_Base13:
	db "GFX_BarrelCannon_Base13.bin"
GFX_BarrelCannon_Base13End:
GFX_BarrelCannon_Base14:
	db "GFX_BarrelCannon_Base14.bin"
GFX_BarrelCannon_Base14End:
GFX_BarrelCannon_Base15:
	db "GFX_BarrelCannon_Base15.bin"
GFX_BarrelCannon_Base15End:
GFX_BarrelCannon_Base16:
	db "GFX_BarrelCannon_Base16.bin"
GFX_BarrelCannon_Base16End:
GFX_BarrelCannon_AutoFire1:
	db "GFX_BarrelCannon_AutoFire1.bin"
GFX_BarrelCannon_AutoFire1End:
GFX_BarrelCannon_AutoFire2:
	db "GFX_BarrelCannon_AutoFire2.bin"
GFX_BarrelCannon_AutoFire2End:
GFX_BarrelCannon_AutoFire3:
	db "GFX_BarrelCannon_AutoFire3.bin"
GFX_BarrelCannon_AutoFire3End:
GFX_BarrelCannon_AutoFire4:
	db "GFX_BarrelCannon_AutoFire4.bin"
GFX_BarrelCannon_AutoFire4End:
GFX_BarrelCannon_AutoFire5:
	db "GFX_BarrelCannon_AutoFire5.bin"
GFX_BarrelCannon_AutoFire5End:
GFX_BarrelCannon_AutoFire6:
	db "GFX_BarrelCannon_AutoFire6.bin"
GFX_BarrelCannon_AutoFire6End:
GFX_BarrelCannon_AutoFire7:
	db "GFX_BarrelCannon_AutoFire7.bin"
GFX_BarrelCannon_AutoFire7End:
GFX_BarrelCannon_AutoFire8:
	db "GFX_BarrelCannon_AutoFire8.bin"
GFX_BarrelCannon_AutoFire8End:
GFX_BarrelCannon_AutoFire9:
	db "GFX_BarrelCannon_AutoFire9.bin"
GFX_BarrelCannon_AutoFire9End:
GFX_BarrelCannon_AutoFire10:
	db "GFX_BarrelCannon_AutoFire10.bin"
GFX_BarrelCannon_AutoFire10End:
GFX_BarrelCannon_AutoFire11:
	db "GFX_BarrelCannon_AutoFire11.bin"
GFX_BarrelCannon_AutoFire11End:
GFX_BarrelCannon_AutoFire12:
	db "GFX_BarrelCannon_AutoFire12.bin"
GFX_BarrelCannon_AutoFire12End:
GFX_BarrelCannon_AutoFire13:
	db "GFX_BarrelCannon_AutoFire13.bin"
GFX_BarrelCannon_AutoFire13End:
GFX_BarrelCannon_AutoFire14:
	db "GFX_BarrelCannon_AutoFire14.bin"
GFX_BarrelCannon_AutoFire14End:
GFX_BarrelCannon_AutoFire15:
	db "GFX_BarrelCannon_AutoFire15.bin"
GFX_BarrelCannon_AutoFire15End:
GFX_BarrelCannon_AutoFire16:
	db "GFX_BarrelCannon_AutoFire16.bin"
GFX_BarrelCannon_AutoFire16End:
GFX_ArrowBarrelCannon_Pose1:
	db "GFX_ArrowBarrelCannon_Pose1.bin"
GFX_ArrowBarrelCannon_Pose1End:
GFX_ArrowBarrelCannon_Pose2:
	db "GFX_ArrowBarrelCannon_Pose2.bin"
GFX_ArrowBarrelCannon_Pose2End:
GFX_ArrowBarrelCannon_Pose3:
	db "GFX_ArrowBarrelCannon_Pose3.bin"
GFX_ArrowBarrelCannon_Pose3End:
GFX_BarrelCannonSymbols_Bonus:
	db "GFX_BarrelCannonSymbols_Bonus.bin"
GFX_BarrelCannonSymbols_BonusEnd:
GFX_BarrelCannonSymbols_BonusSwirl1:
	db "GFX_BarrelCannonSymbols_BonusSwirl1.bin"
GFX_BarrelCannonSymbols_BonusSwirl1End:
GFX_BarrelCannonSymbols_BonusSwirl2:
	db "GFX_BarrelCannonSymbols_BonusSwirl2.bin"
GFX_BarrelCannonSymbols_BonusSwirl2End:
GFX_BarrelCannonSymbols_BonusSwirl3:
	db "GFX_BarrelCannonSymbols_BonusSwirl3.bin"
GFX_BarrelCannonSymbols_BonusSwirl3End:
GFX_BarrelCannonSymbols_BonusSwirl4:
	db "GFX_BarrelCannonSymbols_BonusSwirl4.bin"
GFX_BarrelCannonSymbols_BonusSwirl4End:
GFX_BarrelCannonSymbols_BonusSwirl5:
	db "GFX_BarrelCannonSymbols_BonusSwirl5.bin"
GFX_BarrelCannonSymbols_BonusSwirl5End:
GFX_BarrelCannonSymbols_BonusSwirl6:
	db "GFX_BarrelCannonSymbols_BonusSwirl6.bin"
GFX_BarrelCannonSymbols_BonusSwirl6End:
GFX_BarrelCannonSymbols_BonusSwirl7:
	db "GFX_BarrelCannonSymbols_BonusSwirl7.bin"
GFX_BarrelCannonSymbols_BonusSwirl7End:
GFX_BarrelCannonSymbols_BonusSwirl8:
	db "GFX_BarrelCannonSymbols_BonusSwirl8.bin"
GFX_BarrelCannonSymbols_BonusSwirl8End:
GFX_BarrelCannonSymbols_BonusSwirl9:
	db "GFX_BarrelCannonSymbols_BonusSwirl9.bin"
GFX_BarrelCannonSymbols_BonusSwirl9End:
GFX_BarrelCannonSymbols_BonusSwirl10:
	db "GFX_BarrelCannonSymbols_BonusSwirl10.bin"
GFX_BarrelCannonSymbols_BonusSwirl10End:
GFX_BarrelCannonSymbols_Warp:
	db "GFX_BarrelCannonSymbols_Warp.bin"
GFX_BarrelCannonSymbols_WarpEnd:
GFX_ReKoil_Bounce1:
	db "GFX_ReKoil_Bounce1.bin"
GFX_ReKoil_Bounce1End:
GFX_ReKoil_Bounce2:
	db "GFX_ReKoil_Bounce2.bin"
GFX_ReKoil_Bounce2End:
GFX_ReKoil_Bounce3:
	db "GFX_ReKoil_Bounce3.bin"
GFX_ReKoil_Bounce3End:
GFX_ReKoil_Bounce4:
	db "GFX_ReKoil_Bounce4.bin"
GFX_ReKoil_Bounce4End:
GFX_ReKoil_Bounce5:
	db "GFX_ReKoil_Bounce5.bin"
GFX_ReKoil_Bounce5End:
GFX_ReKoil_Bounce6:
	db "GFX_ReKoil_Bounce6.bin"
GFX_ReKoil_Bounce6End:
GFX_ReKoil_Bounce7:
	db "GFX_ReKoil_Bounce7.bin"
GFX_ReKoil_Bounce7End:
GFX_ReKoil_Bounce8:
	db "GFX_ReKoil_Bounce8.bin"
GFX_ReKoil_Bounce8End:
GFX_ReKoil_Bounce9:
	db "GFX_ReKoil_Bounce9.bin"
GFX_ReKoil_Bounce9End:
GFX_ReKoil_Bounce10:
	db "GFX_ReKoil_Bounce10.bin"
GFX_ReKoil_Bounce10End:
GFX_ReKoil_Bounce11:
	db "GFX_ReKoil_Bounce11.bin"
GFX_ReKoil_Bounce11End:
GFX_ReKoil_Turn1:
	db "GFX_ReKoil_Turn1.bin"
GFX_ReKoil_Turn1End:
GFX_ReKoil_Turn2:
	db "GFX_ReKoil_Turn2.bin"
GFX_ReKoil_Turn2End:
GFX_ReKoil_Dead1:
	db "GFX_ReKoil_Dead1.bin"
GFX_ReKoil_Dead1End:
GFX_ReKoil_Dead2:
	db "GFX_ReKoil_Dead2.bin"
GFX_ReKoil_Dead2End:
GFX_ReKoil_Dead3:
	db "GFX_ReKoil_Dead3.bin"
GFX_ReKoil_Dead3End:
GFX_ReKoil_PeakOfJump1:
	db "GFX_ReKoil_PeakOfJump1.bin"
GFX_ReKoil_PeakOfJump1End:
GFX_ReKoil_PeakOfJump2:
	db "GFX_ReKoil_PeakOfJump2.bin"
GFX_ReKoil_PeakOfJump2End:
GFX_ReKoil_PeakOfJump3:
	db "GFX_ReKoil_PeakOfJump3.bin"
GFX_ReKoil_PeakOfJump3End:
GFX_ReKoil_PeakOfJump4:
	db "GFX_ReKoil_PeakOfJump4.bin"
GFX_ReKoil_PeakOfJump4End:
GFX_ReKoil_PeakOfJump5:
	db "GFX_ReKoil_PeakOfJump5.bin"
GFX_ReKoil_PeakOfJump5End:
GFX_Klasp_MoveOnRope1:
	db "GFX_Klasp_MoveOnRope1.bin"
GFX_Klasp_MoveOnRope1End:
GFX_Klasp_MoveOnRope2:
	db "GFX_Klasp_MoveOnRope2.bin"
GFX_Klasp_MoveOnRope2End:
GFX_Klasp_MoveOnRope3:
	db "GFX_Klasp_MoveOnRope3.bin"
GFX_Klasp_MoveOnRope3End:
GFX_Klasp_MoveOnRope4:
	db "GFX_Klasp_MoveOnRope4.bin"
GFX_Klasp_MoveOnRope4End:
GFX_Klasp_MoveOnRope5:
	db "GFX_Klasp_MoveOnRope5.bin"
GFX_Klasp_MoveOnRope5End:
GFX_Klasp_MoveOnRope6:
	db "GFX_Klasp_MoveOnRope6.bin"
GFX_Klasp_MoveOnRope6End:
GFX_Klasp_MoveOnRope7:
	db "GFX_Klasp_MoveOnRope7.bin"
GFX_Klasp_MoveOnRope7End:
GFX_Klasp_MoveOnRope8:
	db "GFX_Klasp_MoveOnRope8.bin"
GFX_Klasp_MoveOnRope8End:
GFX_Klasp_MoveOnRope9:
	db "GFX_Klasp_MoveOnRope9.bin"
GFX_Klasp_MoveOnRope9End:
GFX_Klasp_MoveOnRope10:
	db "GFX_Klasp_MoveOnRope10.bin"
GFX_Klasp_MoveOnRope10End:
GFX_Klasp_MoveOnRope11:
	db "GFX_Klasp_MoveOnRope11.bin"
GFX_Klasp_MoveOnRope11End:
GFX_Klasp_MoveOnRope12:
	db "GFX_Klasp_MoveOnRope12.bin"
GFX_Klasp_MoveOnRope12End:
GFX_Klasp_Idle1:
	db "GFX_Klasp_Idle1.bin"
GFX_Klasp_Idle1End:
GFX_Klasp_Idle2:
	db "GFX_Klasp_Idle2.bin"
GFX_Klasp_Idle2End:
GFX_Klasp_Idle3:
	db "GFX_Klasp_Idle3.bin"
GFX_Klasp_Idle3End:
GFX_Klasp_Idle4:
	db "GFX_Klasp_Idle4.bin"
GFX_Klasp_Idle4End:
GFX_Klasp_Idle5:
	db "GFX_Klasp_Idle5.bin"
GFX_Klasp_Idle5End:
GFX_Klasp_Idle6:
	db "GFX_Klasp_Idle6.bin"
GFX_Klasp_Idle6End:
GFX_Klasp_Idle7:
	db "GFX_Klasp_Idle7.bin"
GFX_Klasp_Idle7End:
GFX_Klasp_Idle8:
	db "GFX_Klasp_Idle8.bin"
GFX_Klasp_Idle8End:
GFX_Klasp_Turn:
	db "GFX_Klasp_Turn.bin"
GFX_Klasp_TurnEnd:
GFX_MainMapWaterFallByCottonTopCove_Pose1:
	db "GFX_MainMapWaterFallByCottonTopCove_Pose1.bin"
GFX_MainMapWaterFallByCottonTopCove_Pose1End:
GFX_MainMapWaterFallByCottonTopCove_Pose2:
	db "GFX_MainMapWaterFallByCottonTopCove_Pose2.bin"
GFX_MainMapWaterFallByCottonTopCove_Pose2End:
GFX_MainMapWaterFallByCottonTopCove_Pose3:
	db "GFX_MainMapWaterFallByCottonTopCove_Pose3.bin"
GFX_MainMapWaterFallByCottonTopCove_Pose3End:
GFX_MainMapWaterFallByCottonTopCove_Pose4:
	db "GFX_MainMapWaterFallByCottonTopCove_Pose4.bin"
GFX_MainMapWaterFallByCottonTopCove_Pose4End:
GFX_MainMapWideWaterfalls_Pose1:
	db "GFX_MainMapWideWaterfalls_Pose1.bin"
GFX_MainMapWideWaterfalls_Pose1End:
GFX_MainMapWideWaterfalls_Pose2:
	db "GFX_MainMapWideWaterfalls_Pose2.bin"
GFX_MainMapWideWaterfalls_Pose2End:
GFX_MainMapWideWaterfalls_Pose3:
	db "GFX_MainMapWideWaterfalls_Pose3.bin"
GFX_MainMapWideWaterfalls_Pose3End:
GFX_MainMapWideWaterfalls_Pose4:
	db "GFX_MainMapWideWaterfalls_Pose4.bin"
GFX_MainMapWideWaterfalls_Pose4End:
GFX_MainMapWideWaterfalls_Pose5:
	db "GFX_MainMapWideWaterfalls_Pose5.bin"
GFX_MainMapWideWaterfalls_Pose5End:
GFX_MainMapWideWaterfalls_Pose6:
	db "GFX_MainMapWideWaterfalls_Pose6.bin"
GFX_MainMapWideWaterfalls_Pose6End:
GFX_MainMapWideWaterfalls_Pose7:
	db "GFX_MainMapWideWaterfalls_Pose7.bin"
GFX_MainMapWideWaterfalls_Pose7End:
GFX_MainMapWideWaterfalls_Pose8:
	db "GFX_MainMapWideWaterfalls_Pose8.bin"
GFX_MainMapWideWaterfalls_Pose8End:
GFX_UnknownEffect2_Pose1:
	db "GFX_UnknownEffect2_Pose1.bin"
GFX_UnknownEffect2_Pose1End:
GFX_UnknownEffect2_Pose2:
	db "GFX_UnknownEffect2_Pose2.bin"
GFX_UnknownEffect2_Pose2End:
GFX_UnknownEffect2_Pose3:
	db "GFX_UnknownEffect2_Pose3.bin"
GFX_UnknownEffect2_Pose3End:
GFX_UnknownEffect2_Pose4:
	db "GFX_UnknownEffect2_Pose4.bin"
GFX_UnknownEffect2_Pose4End:
GFX_UnknownEffect2_Pose5:
	db "GFX_UnknownEffect2_Pose5.bin"
GFX_UnknownEffect2_Pose5End:
GFX_UnknownEffect2_Pose6:
	db "GFX_UnknownEffect2_Pose6.bin"
GFX_UnknownEffect2_Pose6End:
GFX_UnknownEffect2_Pose7:
	db "GFX_UnknownEffect2_Pose7.bin"
GFX_UnknownEffect2_Pose7End:
GFX_UnknownEffect2_Pose8:
	db "GFX_UnknownEffect2_Pose8.bin"
GFX_UnknownEffect2_Pose8End:
GFX_MillPlatform_Pose:
	db "GFX_MillPlatform_Pose.bin"
GFX_MillPlatform_PoseEnd:
GFX_LifeBallon_Idle1:
	db "GFX_LifeBallon_Idle1.bin"
GFX_LifeBallon_Idle1End:
GFX_LifeBallon_Idle2:
	db "GFX_LifeBallon_Idle2.bin"
GFX_LifeBallon_Idle2End:
GFX_LifeBallon_Idle3:
	db "GFX_LifeBallon_Idle3.bin"
GFX_LifeBallon_Idle3End:
GFX_LifeBallon_Idle4:
	db "GFX_LifeBallon_Idle4.bin"
GFX_LifeBallon_Idle4End:
GFX_LifeBallon_Idle5:
	db "GFX_LifeBallon_Idle5.bin"
GFX_LifeBallon_Idle5End:
GFX_LifeBallon_Idle6:
	db "GFX_LifeBallon_Idle6.bin"
GFX_LifeBallon_Idle6End:
GFX_LifeBallon_Idle7:
	db "GFX_LifeBallon_Idle7.bin"
GFX_LifeBallon_Idle7End:
GFX_LifeBallon_Idle8:
	db "GFX_LifeBallon_Idle8.bin"
GFX_LifeBallon_Idle8End:
GFX_Dixie_LifeIcon:
	db "GFX_Dixie_LifeIcon.bin"
GFX_Dixie_LifeIconEnd:
GFX_TrackerBarrel_Pose:
	db "GFX_TrackerBarrel_Pose.bin"
GFX_TrackerBarrel_PoseEnd:
GFX_Sneek_Walk1:
	db "GFX_Sneek_Walk1.bin"
GFX_Sneek_Walk1End:
GFX_Sneek_Walk2:
	db "GFX_Sneek_Walk2.bin"
GFX_Sneek_Walk2End:
GFX_Sneek_Walk3:
	db "GFX_Sneek_Walk3.bin"
GFX_Sneek_Walk3End:
GFX_Sneek_Walk4:
	db "GFX_Sneek_Walk4.bin"
GFX_Sneek_Walk4End:
GFX_Sneek_Walk5:
	db "GFX_Sneek_Walk5.bin"
GFX_Sneek_Walk5End:
GFX_Sneek_Walk6:
	db "GFX_Sneek_Walk6.bin"
GFX_Sneek_Walk6End:
GFX_Sneek_Walk7:
	db "GFX_Sneek_Walk7.bin"
GFX_Sneek_Walk7End:
GFX_Sneek_Walk8:
	db "GFX_Sneek_Walk8.bin"
GFX_Sneek_Walk8End:
GFX_Sneek_Turn1:
	db "GFX_Sneek_Turn1.bin"
GFX_Sneek_Turn1End:
GFX_Sneek_Turn2:
	db "GFX_Sneek_Turn2.bin"
GFX_Sneek_Turn2End:
GFX_Sneek_Dead1:
	db "GFX_Sneek_Dead1.bin"
GFX_Sneek_Dead1End:
GFX_Sneek_Dead2:
	db "GFX_Sneek_Dead2.bin"
GFX_Sneek_Dead2End:
GFX_Sneek_Dead3:
	db "GFX_Sneek_Dead3.bin"
GFX_Sneek_Dead3End:
GFX_Sneek_ScareEllie1:
	db "GFX_Sneek_ScareEllie1.bin"
GFX_Sneek_ScareEllie1End:
GFX_Sneek_ScareEllie2:
	db "GFX_Sneek_ScareEllie2.bin"
GFX_Sneek_ScareEllie2End:
GFX_Sneek_ScareEllie3:
	db "GFX_Sneek_ScareEllie3.bin"
GFX_Sneek_ScareEllie3End:
GFX_Kiddy_LookAroundIdle1:
	db "GFX_Kiddy_LookAroundIdle1.bin"
GFX_Kiddy_LookAroundIdle1End:
GFX_Kiddy_LookAroundIdle2:
	db "GFX_Kiddy_LookAroundIdle2.bin"
GFX_Kiddy_LookAroundIdle2End:
GFX_Kiddy_LookAroundIdle3:
	db "GFX_Kiddy_LookAroundIdle3.bin"
GFX_Kiddy_LookAroundIdle3End:
GFX_Kiddy_LookAroundIdle4:
	db "GFX_Kiddy_LookAroundIdle4.bin"
GFX_Kiddy_LookAroundIdle4End:
GFX_Kiddy_LookAroundIdle5:
	db "GFX_Kiddy_LookAroundIdle5.bin"
GFX_Kiddy_LookAroundIdle5End:
GFX_Kiddy_LookAroundIdle6:
	db "GFX_Kiddy_LookAroundIdle6.bin"
GFX_Kiddy_LookAroundIdle6End:
GFX_Kiddy_LookAroundIdle7:
	db "GFX_Kiddy_LookAroundIdle7.bin"
GFX_Kiddy_LookAroundIdle7End:
GFX_Kiddy_LookAroundIdle8:
	db "GFX_Kiddy_LookAroundIdle8.bin"
GFX_Kiddy_LookAroundIdle8End:
GFX_Kiddy_LookAroundIdle9:
	db "GFX_Kiddy_LookAroundIdle9.bin"
GFX_Kiddy_LookAroundIdle9End:
GFX_Kiddy_LookAroundIdle10:
	db "GFX_Kiddy_LookAroundIdle10.bin"
GFX_Kiddy_LookAroundIdle10End:
GFX_Kiddy_LookAroundIdle11:
	db "GFX_Kiddy_LookAroundIdle11.bin"
GFX_Kiddy_LookAroundIdle11End:
GFX_DoubleTroubleSign_Pose:
	db "GFX_DoubleTroubleSign_Pose.bin"
GFX_DoubleTroubleSign_PoseEnd:
GFX_TM_Pose:
	db "GFX_TM_Pose.bin"
GFX_TM_PoseEnd:
GFX_MusicTestSign_Pose:
	db "GFX_MusicTestSign_Pose.bin"
GFX_MusicTestSign_PoseEnd:
GFX_Kiddy_Duck1:
	db "GFX_Kiddy_Duck1.bin"
GFX_Kiddy_Duck1End:
GFX_Kiddy_Duck2:
	db "GFX_Kiddy_Duck2.bin"
GFX_Kiddy_Duck2End:
GFX_Kiddy_Duck3:
	db "GFX_Kiddy_Duck3.bin"
GFX_Kiddy_Duck3End:
GFX_Kiddy_Duck4:
	db "GFX_Kiddy_Duck4.bin"
GFX_Kiddy_Duck4End:
GFX_Kiddy_Duck5:
	db "GFX_Kiddy_Duck5.bin"
GFX_Kiddy_Duck5End:
GFX_Kiddy_Duck6:
	db "GFX_Kiddy_Duck6.bin"
GFX_Kiddy_Duck6End:
GFX_Kiddy_Duck7:
	db "GFX_Kiddy_Duck7.bin"
GFX_Kiddy_Duck7End:
GFX_Kiddy_Duck8:
	db "GFX_Kiddy_Duck8.bin"
GFX_Kiddy_Duck8End:
GFX_Dixie_BeingThrown1:
	db "GFX_Dixie_BeingThrown1.bin"
GFX_Dixie_BeingThrown1End:
GFX_Dixie_BeingThrown2:
	db "GFX_Dixie_BeingThrown2.bin"
GFX_Dixie_BeingThrown2End:
GFX_Dixie_BeingThrown3:
	db "GFX_Dixie_BeingThrown3.bin"
GFX_Dixie_BeingThrown3End:
GFX_Dixie_BeingThrown4:
	db "GFX_Dixie_BeingThrown4.bin"
GFX_Dixie_BeingThrown4End:
GFX_Kiddy_TeamUpThrow1:
	db "GFX_Kiddy_TeamUpThrow1.bin"
GFX_Kiddy_TeamUpThrow1End:
GFX_Kiddy_TeamUpThrow2:
	db "GFX_Kiddy_TeamUpThrow2.bin"
GFX_Kiddy_TeamUpThrow2End:
GFX_Kiddy_TeamUpThrow3:
	db "GFX_Kiddy_TeamUpThrow3.bin"
GFX_Kiddy_TeamUpThrow3End:
GFX_Kiddy_TeamUpThrow4:
	db "GFX_Kiddy_TeamUpThrow4.bin"
GFX_Kiddy_TeamUpThrow4End:
GFX_Ellie_Idle1:
	db "GFX_Ellie_Idle1.bin"
GFX_Ellie_Idle1End:
GFX_Ellie_Idle2:
	db "GFX_Ellie_Idle2.bin"
GFX_Ellie_Idle2End:
GFX_Ellie_Idle3:
	db "GFX_Ellie_Idle3.bin"
GFX_Ellie_Idle3End:
GFX_Ellie_Idle4:
	db "GFX_Ellie_Idle4.bin"
GFX_Ellie_Idle4End:
GFX_Ellie_Walk1:
	db "GFX_Ellie_Walk1.bin"
GFX_Ellie_Walk1End:
GFX_Ellie_Walk2:
	db "GFX_Ellie_Walk2.bin"
GFX_Ellie_Walk2End:
GFX_Ellie_Walk3:
	db "GFX_Ellie_Walk3.bin"
GFX_Ellie_Walk3End:
GFX_Ellie_Walk4:
	db "GFX_Ellie_Walk4.bin"
GFX_Ellie_Walk4End:
GFX_Ellie_Walk5:
	db "GFX_Ellie_Walk5.bin"
GFX_Ellie_Walk5End:
GFX_Ellie_Walk6:
	db "GFX_Ellie_Walk6.bin"
GFX_Ellie_Walk6End:
GFX_Ellie_Walk7:
	db "GFX_Ellie_Walk7.bin"
GFX_Ellie_Walk7End:
GFX_Ellie_Walk8:
	db "GFX_Ellie_Walk8.bin"
GFX_Ellie_Walk8End:
GFX_Ellie_Walk9:
	db "GFX_Ellie_Walk9.bin"
GFX_Ellie_Walk9End:
GFX_Ellie_Walk10:
	db "GFX_Ellie_Walk10.bin"
GFX_Ellie_Walk10End:
GFX_Ellie_Walk11:
	db "GFX_Ellie_Walk11.bin"
GFX_Ellie_Walk11End:
GFX_Ellie_Walk12:
	db "GFX_Ellie_Walk12.bin"
GFX_Ellie_Walk12End:
GFX_Ellie_Walk13:
	db "GFX_Ellie_Walk13.bin"
GFX_Ellie_Walk13End:
GFX_Ellie_Walk14:
	db "GFX_Ellie_Walk14.bin"
GFX_Ellie_Walk14End:
GFX_Ellie_Turn1:
	db "GFX_Ellie_Turn1.bin"
GFX_Ellie_Turn1End:
GFX_Ellie_Turn2:
	db "GFX_Ellie_Turn2.bin"
GFX_Ellie_Turn2End:
GFX_Ellie_Grab1:
	db "GFX_Ellie_Grab1.bin"
GFX_Ellie_Grab1End:
GFX_Ellie_Grab2:
	db "GFX_Ellie_Grab2.bin"
GFX_Ellie_Grab2End:
GFX_Ellie_Grab3:
	db "GFX_Ellie_Grab3.bin"
GFX_Ellie_Grab3End:
GFX_Ellie_Jump1:
	db "GFX_Ellie_Jump1.bin"
GFX_Ellie_Jump1End:
GFX_Ellie_Jump2:
	db "GFX_Ellie_Jump2.bin"
GFX_Ellie_Jump2End:
GFX_Ellie_Jump3:
	db "GFX_Ellie_Jump3.bin"
GFX_Ellie_Jump3End:
GFX_Ellie_Scared1:
	db "GFX_Ellie_Scared1.bin"
GFX_Ellie_Scared1End:
GFX_Ellie_Scared2:
	db "GFX_Ellie_Scared2.bin"
GFX_Ellie_Scared2End:
GFX_Ellie_Scared3:
	db "GFX_Ellie_Scared3.bin"
GFX_Ellie_Scared3End:
GFX_Ellie_Scared4:
	db "GFX_Ellie_Scared4.bin"
GFX_Ellie_Scared4End:
GFX_Ellie_Scared5:
	db "GFX_Ellie_Scared5.bin"
GFX_Ellie_Scared5End:
GFX_Ellie_Scared6:
	db "GFX_Ellie_Scared6.bin"
GFX_Ellie_Scared6End:
GFX_Ellie_SideSuck1:
	db "GFX_Ellie_SideSuck1.bin"
GFX_Ellie_SideSuck1End:
GFX_Ellie_SideSuck2:
	db "GFX_Ellie_SideSuck2.bin"
GFX_Ellie_SideSuck2End:
GFX_Ellie_SideSuck3:
	db "GFX_Ellie_SideSuck3.bin"
GFX_Ellie_SideSuck3End:
GFX_Ellie_SideSuck4:
	db "GFX_Ellie_SideSuck4.bin"
GFX_Ellie_SideSuck4End:
GFX_Ellie_SideSuck5:
	db "GFX_Ellie_SideSuck5.bin"
GFX_Ellie_SideSuck5End:
GFX_Ellie_SideSuck6:
	db "GFX_Ellie_SideSuck6.bin"
GFX_Ellie_SideSuck6End:
GFX_Ellie_SideSuck7:
	db "GFX_Ellie_SideSuck7.bin"
GFX_Ellie_SideSuck7End:
GFX_Ellie_SideSuck8:
	db "GFX_Ellie_SideSuck8.bin"
GFX_Ellie_SideSuck8End:
GFX_Ellie_SideSuck9:
	db "GFX_Ellie_SideSuck9.bin"
GFX_Ellie_SideSuck9End:
GFX_Ellie_DownSuck1:
	db "GFX_Ellie_DownSuck1.bin"
GFX_Ellie_DownSuck1End:
GFX_Ellie_DownSuck2:
	db "GFX_Ellie_DownSuck2.bin"
GFX_Ellie_DownSuck2End:
GFX_Ellie_DownSuck3:
	db "GFX_Ellie_DownSuck3.bin"
GFX_Ellie_DownSuck3End:
GFX_Ellie_DownSuck4:
	db "GFX_Ellie_DownSuck4.bin"
GFX_Ellie_DownSuck4End:
GFX_Ellie_DownSuck5:
	db "GFX_Ellie_DownSuck5.bin"
GFX_Ellie_DownSuck5End:
GFX_Ellie_DownSuck6:
	db "GFX_Ellie_DownSuck6.bin"
GFX_Ellie_DownSuck6End:
GFX_Ellie_DownSuck7:
	db "GFX_Ellie_DownSuck7.bin"
GFX_Ellie_DownSuck7End:
GFX_Ellie_DownSuck8:
	db "GFX_Ellie_DownSuck8.bin"
GFX_Ellie_DownSuck8End:
GFX_Ellie_DownSuck9:
	db "GFX_Ellie_DownSuck9.bin"
GFX_Ellie_DownSuck9End:
GFX_Ellie_SideShoot1:
	db "GFX_Ellie_SideShoot1.bin"
GFX_Ellie_SideShoot1End:
GFX_Ellie_SideShoot2:
	db "GFX_Ellie_SideShoot2.bin"
GFX_Ellie_SideShoot2End:
GFX_Ellie_SideShoot3:
	db "GFX_Ellie_SideShoot3.bin"
GFX_Ellie_SideShoot3End:
GFX_Ellie_SideShoot4:
	db "GFX_Ellie_SideShoot4.bin"
GFX_Ellie_SideShoot4End:
GFX_Ellie_SideShoot5:
	db "GFX_Ellie_SideShoot5.bin"
GFX_Ellie_SideShoot5End:
GFX_Ellie_SideShoot6:
	db "GFX_Ellie_SideShoot6.bin"
GFX_Ellie_SideShoot6End:
GFX_Ellie_UpShoot1:
	db "GFX_Ellie_UpShoot1.bin"
GFX_Ellie_UpShoot1End:
GFX_Ellie_UpShoot2:
	db "GFX_Ellie_UpShoot2.bin"
GFX_Ellie_UpShoot2End:
GFX_Ellie_UpShoot3:
	db "GFX_Ellie_UpShoot3.bin"
GFX_Ellie_UpShoot3End:
GFX_Ellie_UpShoot4:
	db "GFX_Ellie_UpShoot4.bin"
GFX_Ellie_UpShoot4End:
GFX_Ellie_Swim1:
	db "GFX_Ellie_Swim1.bin"
GFX_Ellie_Swim1End:
GFX_Ellie_Swim2:
	db "GFX_Ellie_Swim2.bin"
GFX_Ellie_Swim2End:
GFX_Ellie_Swim3:
	db "GFX_Ellie_Swim3.bin"
GFX_Ellie_Swim3End:
GFX_Ellie_Swim4:
	db "GFX_Ellie_Swim4.bin"
GFX_Ellie_Swim4End:
GFX_Ellie_Swim5:
	db "GFX_Ellie_Swim5.bin"
GFX_Ellie_Swim5End:
GFX_Ellie_Swim6:
	db "GFX_Ellie_Swim6.bin"
GFX_Ellie_Swim6End:
GFX_Ellie_Swim7:
	db "GFX_Ellie_Swim7.bin"
GFX_Ellie_Swim7End:
GFX_Ellie_Swim8:
	db "GFX_Ellie_Swim8.bin"
GFX_Ellie_Swim8End:
GFX_Ellie_Swim9:
	db "GFX_Ellie_Swim9.bin"
GFX_Ellie_Swim9End:
GFX_Ellie_Swim10:
	db "GFX_Ellie_Swim10.bin"
GFX_Ellie_Swim10End:
GFX_Enguarde_Swim1:
	db "GFX_Enguarde_Swim1.bin"
GFX_Enguarde_Swim1End:
GFX_Enguarde_Swim2:
	db "GFX_Enguarde_Swim2.bin"
GFX_Enguarde_Swim2End:
GFX_Enguarde_Swim3:
	db "GFX_Enguarde_Swim3.bin"
GFX_Enguarde_Swim3End:
GFX_Enguarde_Swim4:
	db "GFX_Enguarde_Swim4.bin"
GFX_Enguarde_Swim4End:
GFX_Enguarde_Swim5:
	db "GFX_Enguarde_Swim5.bin"
GFX_Enguarde_Swim5End:
GFX_Enguarde_Swim6:
	db "GFX_Enguarde_Swim6.bin"
GFX_Enguarde_Swim6End:
GFX_Enguarde_Swim7:
	db "GFX_Enguarde_Swim7.bin"
GFX_Enguarde_Swim7End:
GFX_Enguarde_Swim8:
	db "GFX_Enguarde_Swim8.bin"
GFX_Enguarde_Swim8End:
GFX_Enguarde_Turn1:
	db "GFX_Enguarde_Turn1.bin"
GFX_Enguarde_Turn1End:
GFX_Enguarde_Turn2:
	db "GFX_Enguarde_Turn2.bin"
GFX_Enguarde_Turn2End:
GFX_Enguarde_Turn3:
	db "GFX_Enguarde_Turn3.bin"
GFX_Enguarde_Turn3End:
GFX_Enguarde_Turn4:
	db "GFX_Enguarde_Turn4.bin"
GFX_Enguarde_Turn4End:
GFX_Enguarde_Hurt:
	db "GFX_Enguarde_Hurt.bin"
GFX_Enguarde_HurtEnd:
GFX_Enguarde_Stab1:
	db "GFX_Enguarde_Stab1.bin"
GFX_Enguarde_Stab1End:
GFX_Enguarde_Stab2:
	db "GFX_Enguarde_Stab2.bin"
GFX_Enguarde_Stab2End:
GFX_Enguarde_Stab3:
	db "GFX_Enguarde_Stab3.bin"
GFX_Enguarde_Stab3End:
GFX_Enguarde_Stab4:
	db "GFX_Enguarde_Stab4.bin"
GFX_Enguarde_Stab4End:
GFX_Enguarde_Stab5:
	db "GFX_Enguarde_Stab5.bin"
GFX_Enguarde_Stab5End:
GFX_Enguarde_Stab6:
	db "GFX_Enguarde_Stab6.bin"
GFX_Enguarde_Stab6End:
GFX_Enguarde_Stab7:
	db "GFX_Enguarde_Stab7.bin"
GFX_Enguarde_Stab7End:
GFX_Enguarde_Stab8:
	db "GFX_Enguarde_Stab8.bin"
GFX_Enguarde_Stab8End:
GFX_Knocka_Idle:
	db "GFX_Knocka_Idle.bin"
GFX_Knocka_IdleEnd:
GFX_Knocka_Emerge1:
	db "GFX_Knocka_Emerge1.bin"
GFX_Knocka_Emerge1End:
GFX_Knocka_Emerge2:
	db "GFX_Knocka_Emerge2.bin"
GFX_Knocka_Emerge2End:
GFX_Knocka_Emerge3:
	db "GFX_Knocka_Emerge3.bin"
GFX_Knocka_Emerge3End:
GFX_Knocka_Emerge4:
	db "GFX_Knocka_Emerge4.bin"
GFX_Knocka_Emerge4End:
GFX_Knocka_Run1:
	db "GFX_Knocka_Run1.bin"
GFX_Knocka_Run1End:
GFX_Knocka_Run2:
	db "GFX_Knocka_Run2.bin"
GFX_Knocka_Run2End:
GFX_Knocka_Run3:
	db "GFX_Knocka_Run3.bin"
GFX_Knocka_Run3End:
GFX_Knocka_Run4:
	db "GFX_Knocka_Run4.bin"
GFX_Knocka_Run4End:
GFX_Knocka_Run5:
	db "GFX_Knocka_Run5.bin"
GFX_Knocka_Run5End:
GFX_Knocka_Run6:
	db "GFX_Knocka_Run6.bin"
GFX_Knocka_Run6End:
GFX_Knocka_Run7:
	db "GFX_Knocka_Run7.bin"
GFX_Knocka_Run7End:
GFX_Knocka_Run8:
	db "GFX_Knocka_Run8.bin"
GFX_Knocka_Run8End:
GFX_Knocka_Turn1:
	db "GFX_Knocka_Turn1.bin"
GFX_Knocka_Turn1End:
GFX_Knocka_Turn2:
	db "GFX_Knocka_Turn2.bin"
GFX_Knocka_Turn2End:
GFX_KnockaLimbs_Emerge1:
	db "GFX_KnockaLimbs_Emerge1.bin"
GFX_KnockaLimbs_Emerge1End:
GFX_KnockaLimbs_Emerge2:
	db "GFX_KnockaLimbs_Emerge2.bin"
GFX_KnockaLimbs_Emerge2End:
GFX_KnockaLimbs_Emerge3:
	db "GFX_KnockaLimbs_Emerge3.bin"
GFX_KnockaLimbs_Emerge3End:
GFX_KnockaLimbs_Emerge4:
	db "GFX_KnockaLimbs_Emerge4.bin"
GFX_KnockaLimbs_Emerge4End:
GFX_KnockaLimbs_Run1:
	db "GFX_KnockaLimbs_Run1.bin"
GFX_KnockaLimbs_Run1End:
GFX_KnockaLimbs_Run2:
	db "GFX_KnockaLimbs_Run2.bin"
GFX_KnockaLimbs_Run2End:
GFX_KnockaLimbs_Run3:
	db "GFX_KnockaLimbs_Run3.bin"
GFX_KnockaLimbs_Run3End:
GFX_KnockaLimbs_Run4:
	db "GFX_KnockaLimbs_Run4.bin"
GFX_KnockaLimbs_Run4End:
GFX_KnockaLimbs_Run5:
	db "GFX_KnockaLimbs_Run5.bin"
GFX_KnockaLimbs_Run5End:
GFX_KnockaLimbs_Run6:
	db "GFX_KnockaLimbs_Run6.bin"
GFX_KnockaLimbs_Run6End:
GFX_KnockaLimbs_Run7:
	db "GFX_KnockaLimbs_Run7.bin"
GFX_KnockaLimbs_Run7End:
GFX_KnockaLimbs_Run8:
	db "GFX_KnockaLimbs_Run8.bin"
GFX_KnockaLimbs_Run8End:
GFX_KnockaLimbs_Turn1:
	db "GFX_KnockaLimbs_Turn1.bin"
GFX_KnockaLimbs_Turn1End:
GFX_KnockaLimbs_Turn2:
	db "GFX_KnockaLimbs_Turn2.bin"
GFX_KnockaLimbs_Turn2End:
GFX_Kracka_Idle:
	db "GFX_Kracka_Idle.bin"
GFX_Kracka_IdleEnd:
GFX_Kracka_Emerge1:
	db "GFX_Kracka_Emerge1.bin"
GFX_Kracka_Emerge1End:
GFX_Kracka_Emerge2:
	db "GFX_Kracka_Emerge2.bin"
GFX_Kracka_Emerge2End:
GFX_Kracka_Emerge3:
	db "GFX_Kracka_Emerge3.bin"
GFX_Kracka_Emerge3End:
GFX_Kracka_Emerge4:
	db "GFX_Kracka_Emerge4.bin"
GFX_Kracka_Emerge4End:
GFX_Kracka_Run1:
	db "GFX_Kracka_Run1.bin"
GFX_Kracka_Run1End:
GFX_Kracka_Run2:
	db "GFX_Kracka_Run2.bin"
GFX_Kracka_Run2End:
GFX_Kracka_Run3:
	db "GFX_Kracka_Run3.bin"
GFX_Kracka_Run3End:
GFX_Kracka_Run4:
	db "GFX_Kracka_Run4.bin"
GFX_Kracka_Run4End:
GFX_Kracka_Run5:
	db "GFX_Kracka_Run5.bin"
GFX_Kracka_Run5End:
GFX_Kracka_Run6:
	db "GFX_Kracka_Run6.bin"
GFX_Kracka_Run6End:
GFX_Kracka_Run7:
	db "GFX_Kracka_Run7.bin"
GFX_Kracka_Run7End:
GFX_Kracka_Run8:
	db "GFX_Kracka_Run8.bin"
GFX_Kracka_Run8End:
GFX_Kracka_Turn1:
	db "GFX_Kracka_Turn1.bin"
GFX_Kracka_Turn1End:
GFX_Kracka_Turn2:
	db "GFX_Kracka_Turn2.bin"
GFX_Kracka_Turn2End:
GFX_SideOfBelchasMouth_Pose:
	db "GFX_SideOfBelchasMouth_Pose.bin"
GFX_SideOfBelchasMouth_PoseEnd:
GFX_Koco_Swim1:
	db "GFX_Koco_Swim1.bin"
GFX_Koco_Swim1End:
GFX_Koco_Swim2:
	db "GFX_Koco_Swim2.bin"
GFX_Koco_Swim2End:
GFX_Koco_Swim3:
	db "GFX_Koco_Swim3.bin"
GFX_Koco_Swim3End:
GFX_Koco_Swim4:
	db "GFX_Koco_Swim4.bin"
GFX_Koco_Swim4End:
GFX_Koco_Swim5:
	db "GFX_Koco_Swim5.bin"
GFX_Koco_Swim5End:
GFX_Koco_Swim6:
	db "GFX_Koco_Swim6.bin"
GFX_Koco_Swim6End:
GFX_Koco_Swim7:
	db "GFX_Koco_Swim7.bin"
GFX_Koco_Swim7End:
GFX_Koco_Swim8:
	db "GFX_Koco_Swim8.bin"
GFX_Koco_Swim8End:
GFX_Koco_Turn1:
	db "GFX_Koco_Turn1.bin"
GFX_Koco_Turn1End:
GFX_Koco_Turn2:
	db "GFX_Koco_Turn2.bin"
GFX_Koco_Turn2End:
GFX_Koco_Turn3:
	db "GFX_Koco_Turn3.bin"
GFX_Koco_Turn3End:
GFX_Koco_Turn4:
	db "GFX_Koco_Turn4.bin"
GFX_Koco_Turn4End:
GFX_Koco_Dead1:
	db "GFX_Koco_Dead1.bin"
GFX_Koco_Dead1End:
GFX_Koco_Dead2:
	db "GFX_Koco_Dead2.bin"
GFX_Koco_Dead2End:
GFX_Koco_Dead3:
	db "GFX_Koco_Dead3.bin"
GFX_Koco_Dead3End:
GFX_Koco_Dead4:
	db "GFX_Koco_Dead4.bin"
GFX_Koco_Dead4End:
GFX_AnimalBuddyIcon_Ellie:
	db "GFX_AnimalBuddyIcon_Ellie.bin"
GFX_AnimalBuddyIcon_EllieEnd:
GFX_AnimalBuddyIcon_Enguarde:
	db "GFX_AnimalBuddyIcon_Enguarde.bin"
GFX_AnimalBuddyIcon_EnguardeEnd:
GFX_AnimalBuddyIcon_Squawks:
	db "GFX_AnimalBuddyIcon_Squawks.bin"
GFX_AnimalBuddyIcon_SquawksEnd:
GFX_AnimalBuddyIcon_Squitter:
	db "GFX_AnimalBuddyIcon_Squitter.bin"
GFX_AnimalBuddyIcon_SquitterEnd:
GFX_AnimalBuddyBox_Open:
	db "GFX_AnimalBuddyBox_Open.bin"
GFX_AnimalBuddyBox_OpenEnd:
GFX_AnimalBuddyBox_Ellie:
	db "GFX_AnimalBuddyBox_Ellie.bin"
GFX_AnimalBuddyBox_EllieEnd:
GFX_AnimalBuddyBox_Enguarde:
	db "GFX_AnimalBuddyBox_Enguarde.bin"
GFX_AnimalBuddyBox_EnguardeEnd:
GFX_AnimalBuddyBox_Squitter:
	db "GFX_AnimalBuddyBox_Squitter.bin"
GFX_AnimalBuddyBox_SquitterEnd:
GFX_AnimalBuddyBox_Squawks:
	db "GFX_AnimalBuddyBox_Squawks.bin"
GFX_AnimalBuddyBox_SquawksEnd:
GFX_AnimalBuddyBox_Parry:
	db "GFX_AnimalBuddyBox_Parry.bin"
GFX_AnimalBuddyBox_ParryEnd:
GFX_NoAnimalBuddySign_Ellie:
	db "GFX_NoAnimalBuddySign_Ellie.bin"
GFX_NoAnimalBuddySign_EllieEnd:
GFX_NoAnimalBuddySign_Enguarde:
	db "GFX_NoAnimalBuddySign_Enguarde.bin"
GFX_NoAnimalBuddySign_EnguardeEnd:
GFX_NoAnimalBuddySign_Squitter:
	db "GFX_NoAnimalBuddySign_Squitter.bin"
GFX_NoAnimalBuddySign_SquitterEnd:
GFX_NoAnimalBuddySign_Squawks:
	db "GFX_NoAnimalBuddySign_Squawks.bin"
GFX_NoAnimalBuddySign_SquawksEnd:
GFX_NoAnimalBuddySign_Parry:
	db "GFX_NoAnimalBuddySign_Parry.bin"
GFX_NoAnimalBuddySign_ParryEnd:
GFX_NoAnimalBuddySign_Nibbla:
	db "GFX_NoAnimalBuddySign_Nibbla.bin"
GFX_NoAnimalBuddySign_NibblaEnd:
GFX_NoKrosshairSign_Pose:
	db "GFX_NoKrosshairSign_Pose.bin"
GFX_NoKrosshairSign_PoseEnd:
GFX_WarningSign_Pose:
	db "GFX_WarningSign_Pose.bin"
GFX_WarningSign_PoseEnd:
GFX_KnikKnak_Walk1:
	db "GFX_KnikKnak_Walk1.bin"
GFX_KnikKnak_Walk1End:
GFX_KnikKnak_Walk2:
	db "GFX_KnikKnak_Walk2.bin"
GFX_KnikKnak_Walk2End:
GFX_KnikKnak_Walk3:
	db "GFX_KnikKnak_Walk3.bin"
GFX_KnikKnak_Walk3End:
GFX_KnikKnak_Walk4:
	db "GFX_KnikKnak_Walk4.bin"
GFX_KnikKnak_Walk4End:
GFX_KnikKnak_Walk5:
	db "GFX_KnikKnak_Walk5.bin"
GFX_KnikKnak_Walk5End:
GFX_KnikKnak_Walk6:
	db "GFX_KnikKnak_Walk6.bin"
GFX_KnikKnak_Walk6End:
GFX_KnikKnak_Walk7:
	db "GFX_KnikKnak_Walk7.bin"
GFX_KnikKnak_Walk7End:
GFX_KnikKnak_Walk8:
	db "GFX_KnikKnak_Walk8.bin"
GFX_KnikKnak_Walk8End:
GFX_KnikKnak_Fly1:
	db "GFX_KnikKnak_Fly1.bin"
GFX_KnikKnak_Fly1End:
GFX_KnikKnak_Fly2:
	db "GFX_KnikKnak_Fly2.bin"
GFX_KnikKnak_Fly2End:
GFX_KnikKnak_Fly3:
	db "GFX_KnikKnak_Fly3.bin"
GFX_KnikKnak_Fly3End:
GFX_KnikKnak_Fly4:
	db "GFX_KnikKnak_Fly4.bin"
GFX_KnikKnak_Fly4End:
GFX_KnikKnak_Fly5:
	db "GFX_KnikKnak_Fly5.bin"
GFX_KnikKnak_Fly5End:
GFX_KnikKnak_Fly6:
	db "GFX_KnikKnak_Fly6.bin"
GFX_KnikKnak_Fly6End:
GFX_KnikKnak_Fly7:
	db "GFX_KnikKnak_Fly7.bin"
GFX_KnikKnak_Fly7End:
GFX_KnikKnak_Fly8:
	db "GFX_KnikKnak_Fly8.bin"
GFX_KnikKnak_Fly8End:
GFX_KnikKnak_TurnWhileFlying1:
	db "GFX_KnikKnak_TurnWhileFlying1.bin"
GFX_KnikKnak_TurnWhileFlying1End:
GFX_KnikKnak_TurnWhileFlying2:
	db "GFX_KnikKnak_TurnWhileFlying2.bin"
GFX_KnikKnak_TurnWhileFlying2End:
GFX_KnikKnak_Turn1:
	db "GFX_KnikKnak_Turn1.bin"
GFX_KnikKnak_Turn1End:
GFX_KnikKnak_Turn2:
	db "GFX_KnikKnak_Turn2.bin"
GFX_KnikKnak_Turn2End:
GFX_KnikKnak_Unknown1:
	db "GFX_KnikKnak_Unknown1.bin"
GFX_KnikKnak_Unknown1End:
GFX_KnikKnak_Unknown2:
	db "GFX_KnikKnak_Unknown2.bin"
GFX_KnikKnak_Unknown2End:
GFX_KnikKnak_Unknown3:
	db "GFX_KnikKnak_Unknown3.bin"
GFX_KnikKnak_Unknown3End:
GFX_KnikKnak_Squish1:
	db "GFX_KnikKnak_Squish1.bin"
GFX_KnikKnak_Squish1End:
GFX_KnikKnak_Squish2:
	db "GFX_KnikKnak_Squish2.bin"
GFX_KnikKnak_Squish2End:
GFX_KnikKnak_Squish3:
	db "GFX_KnikKnak_Squish3.bin"
GFX_KnikKnak_Squish3End:
GFX_KnikKnak_Dead1:
	db "GFX_KnikKnak_Dead1.bin"
GFX_KnikKnak_Dead1End:
GFX_KnikKnak_Dead2:
	db "GFX_KnikKnak_Dead2.bin"
GFX_KnikKnak_Dead2End:
GFX_KnikKnak_Dead3:
	db "GFX_KnikKnak_Dead3.bin"
GFX_KnikKnak_Dead3End:
GFX_KnikKnak_Dead4:
	db "GFX_KnikKnak_Dead4.bin"
GFX_KnikKnak_Dead4End:
GFX_KnikKnak_Helpless1:
	db "GFX_KnikKnak_Helpless1.bin"
GFX_KnikKnak_Helpless1End:
GFX_KnikKnak_Helpless2:
	db "GFX_KnikKnak_Helpless2.bin"
GFX_KnikKnak_Helpless2End:
GFX_Krimp_Walk1:
	db "GFX_Krimp_Walk1.bin"
GFX_Krimp_Walk1End:
GFX_Krimp_Walk2:
	db "GFX_Krimp_Walk2.bin"
GFX_Krimp_Walk2End:
GFX_Krimp_Walk3:
	db "GFX_Krimp_Walk3.bin"
GFX_Krimp_Walk3End:
GFX_Krimp_Walk4:
	db "GFX_Krimp_Walk4.bin"
GFX_Krimp_Walk4End:
GFX_Krimp_Walk5:
	db "GFX_Krimp_Walk5.bin"
GFX_Krimp_Walk5End:
GFX_Krimp_Walk6:
	db "GFX_Krimp_Walk6.bin"
GFX_Krimp_Walk6End:
GFX_Krimp_Walk7:
	db "GFX_Krimp_Walk7.bin"
GFX_Krimp_Walk7End:
GFX_Krimp_Walk8:
	db "GFX_Krimp_Walk8.bin"
GFX_Krimp_Walk8End:
GFX_Krimp_Walk9:
	db "GFX_Krimp_Walk9.bin"
GFX_Krimp_Walk9End:
GFX_Krimp_Walk10:
	db "GFX_Krimp_Walk10.bin"
GFX_Krimp_Walk10End:
GFX_Krimp_Walk11:
	db "GFX_Krimp_Walk11.bin"
GFX_Krimp_Walk11End:
GFX_Krimp_Walk12:
	db "GFX_Krimp_Walk12.bin"
GFX_Krimp_Walk12End:
GFX_Krimp_Turn1:
	db "GFX_Krimp_Turn1.bin"
GFX_Krimp_Turn1End:
GFX_Krimp_Turn2:
	db "GFX_Krimp_Turn2.bin"
GFX_Krimp_Turn2End:
GFX_Krimp_Dead1:
	db "GFX_Krimp_Dead1.bin"
GFX_Krimp_Dead1End:
GFX_Krimp_Dead2:
	db "GFX_Krimp_Dead2.bin"
GFX_Krimp_Dead2End:
GFX_Krimp_Dead3:
	db "GFX_Krimp_Dead3.bin"
GFX_Krimp_Dead3End:
GFX_BarbosMouth_Squished1:
	db "GFX_BarbosMouth_Squished1.bin"
GFX_BarbosMouth_Squished1End:
GFX_BarbosMouth_Squished2:
	db "GFX_BarbosMouth_Squished2.bin"
GFX_BarbosMouth_Squished2End:
GFX_BarbosMouth_Hurt1:
	db "GFX_BarbosMouth_Hurt1.bin"
GFX_BarbosMouth_Hurt1End:
GFX_BarbosMouth_Hurt2:
	db "GFX_BarbosMouth_Hurt2.bin"
GFX_BarbosMouth_Hurt2End:
GFX_BarbosMouth_Idle1:
	db "GFX_BarbosMouth_Idle1.bin"
GFX_BarbosMouth_Idle1End:
GFX_BarbosMouth_Idle2:
	db "GFX_BarbosMouth_Idle2.bin"
GFX_BarbosMouth_Idle2End:
GFX_BarbosMouth_Idle3:
	db "GFX_BarbosMouth_Idle3.bin"
GFX_BarbosMouth_Idle3End:
GFX_Lurchin_Idle1:
	db "GFX_Lurchin_Idle1.bin"
GFX_Lurchin_Idle1End:
GFX_Lurchin_Idle2:
	db "GFX_Lurchin_Idle2.bin"
GFX_Lurchin_Idle2End:
GFX_Lurchin_Idle3:
	db "GFX_Lurchin_Idle3.bin"
GFX_Lurchin_Idle3End:
GFX_Lurchin_Idle4:
	db "GFX_Lurchin_Idle4.bin"
GFX_Lurchin_Idle4End:
GFX_Lurchin_Idle5:
	db "GFX_Lurchin_Idle5.bin"
GFX_Lurchin_Idle5End:
GFX_Lurchin_Idle6:
	db "GFX_Lurchin_Idle6.bin"
GFX_Lurchin_Idle6End:
GFX_Lurchin_Idle7:
	db "GFX_Lurchin_Idle7.bin"
GFX_Lurchin_Idle7End:
GFX_Lurchin_Idle8:
	db "GFX_Lurchin_Idle8.bin"
GFX_Lurchin_Idle8End:
GFX_Lurchin_Rotate1:
	db "GFX_Lurchin_Rotate1.bin"
GFX_Lurchin_Rotate1End:
GFX_Lurchin_Rotate2:
	db "GFX_Lurchin_Rotate2.bin"
GFX_Lurchin_Rotate2End:
GFX_Lurchin_Rotate3:
	db "GFX_Lurchin_Rotate3.bin"
GFX_Lurchin_Rotate3End:
GFX_Lurchin_Rotate4:
	db "GFX_Lurchin_Rotate4.bin"
GFX_Lurchin_Rotate4End:
GFX_Lurchin_Rotate5:
	db "GFX_Lurchin_Rotate5.bin"
GFX_Lurchin_Rotate5End:
GFX_Bristles_Walk1:
	db "GFX_Bristles_Walk1.bin"
GFX_Bristles_Walk1End:
GFX_Bristles_Walk2:
	db "GFX_Bristles_Walk2.bin"
GFX_Bristles_Walk2End:
GFX_Bristles_Walk3:
	db "GFX_Bristles_Walk3.bin"
GFX_Bristles_Walk3End:
GFX_Bristles_Walk4:
	db "GFX_Bristles_Walk4.bin"
GFX_Bristles_Walk4End:
GFX_Bristles_Walk5:
	db "GFX_Bristles_Walk5.bin"
GFX_Bristles_Walk5End:
GFX_Bristles_Walk6:
	db "GFX_Bristles_Walk6.bin"
GFX_Bristles_Walk6End:
GFX_Bristles_Walk7:
	db "GFX_Bristles_Walk7.bin"
GFX_Bristles_Walk7End:
GFX_Bristles_Walk8:
	db "GFX_Bristles_Walk8.bin"
GFX_Bristles_Walk8End:
GFX_Bristles_Roll1:
	db "GFX_Bristles_Roll1.bin"
GFX_Bristles_Roll1End:
GFX_Bristles_Roll2:
	db "GFX_Bristles_Roll2.bin"
GFX_Bristles_Roll2End:
GFX_Bristles_Roll3:
	db "GFX_Bristles_Roll3.bin"
GFX_Bristles_Roll3End:
GFX_Bristles_Roll4:
	db "GFX_Bristles_Roll4.bin"
GFX_Bristles_Roll4End:
GFX_Bristles_Roll5:
	db "GFX_Bristles_Roll5.bin"
GFX_Bristles_Roll5End:
GFX_Bristles_Roll6:
	db "GFX_Bristles_Roll6.bin"
GFX_Bristles_Roll6End:
GFX_Bristles_Roll7:
	db "GFX_Bristles_Roll7.bin"
GFX_Bristles_Roll7End:
GFX_Bristles_Roll8:
	db "GFX_Bristles_Roll8.bin"
GFX_Bristles_Roll8End:
GFX_Bristles_Roll9:
	db "GFX_Bristles_Roll9.bin"
GFX_Bristles_Roll9End:
GFX_Bristles_Roll10:
	db "GFX_Bristles_Roll10.bin"
GFX_Bristles_Roll10End:
GFX_Bristles_Roll11:
	db "GFX_Bristles_Roll11.bin"
GFX_Bristles_Roll11End:
GFX_Bristles_Roll12:
	db "GFX_Bristles_Roll12.bin"
GFX_Bristles_Roll12End:
GFX_Bristles_Roll13:
	db "GFX_Bristles_Roll13.bin"
GFX_Bristles_Roll13End:
GFX_Bristles_Roll14:
	db "GFX_Bristles_Roll14.bin"
GFX_Bristles_Roll14End:
GFX_Bristles_Roll15:
	db "GFX_Bristles_Roll15.bin"
GFX_Bristles_Roll15End:
GFX_Bristles_Turn1:
	db "GFX_Bristles_Turn1.bin"
GFX_Bristles_Turn1End:
GFX_Bristles_Turn2:
	db "GFX_Bristles_Turn2.bin"
GFX_Bristles_Turn2End:
GFX_Bristles_Dead1:
	db "GFX_Bristles_Dead1.bin"
GFX_Bristles_Dead1End:
GFX_Bristles_Dead2:
	db "GFX_Bristles_Dead2.bin"
GFX_Bristles_Dead2End:
GFX_Bristles_Dead3:
	db "GFX_Bristles_Dead3.bin"
GFX_Bristles_Dead3End:
GFX_RocketEyes_Pose1:
	db "GFX_RocketEyes_Pose1.bin"
GFX_RocketEyes_Pose1End:
GFX_RocketEyes_Pose2:
	db "GFX_RocketEyes_Pose2.bin"
GFX_RocketEyes_Pose2End:
GFX_RocketEyes_Pose3:
	db "GFX_RocketEyes_Pose3.bin"
GFX_RocketEyes_Pose3End:
GFX_RocketEyes_Pose4:
	db "GFX_RocketEyes_Pose4.bin"
GFX_RocketEyes_Pose4End:
GFX_RocketEyes_Pose5:
	db "GFX_RocketEyes_Pose5.bin"
GFX_RocketEyes_Pose5End:
GFX_RocketEyes_Pose6:
	db "GFX_RocketEyes_Pose6.bin"
GFX_RocketEyes_Pose6End:
GFX_RocketEyes_Pose7:
	db "GFX_RocketEyes_Pose7.bin"
GFX_RocketEyes_Pose7End:
GFX_RocketEyes_Pose8:
	db "GFX_RocketEyes_Pose8.bin"
GFX_RocketEyes_Pose8End:
GFX_RocketEyes_Pose9:
	db "GFX_RocketEyes_Pose9.bin"
GFX_RocketEyes_Pose9End:
GFX_Rocket_Pose:
	db "GFX_Rocket_Pose.bin"
GFX_Rocket_PoseEnd:
GFX_RocketLid_Pose1:
	db "GFX_RocketLid_Pose1.bin"
GFX_RocketLid_Pose1End:
GFX_RocketLid_Pose2:
	db "GFX_RocketLid_Pose2.bin"
GFX_RocketLid_Pose2End:
GFX_RocketFlame_Pose1:
	db "GFX_RocketFlame_Pose1.bin"
GFX_RocketFlame_Pose1End:
GFX_RocketFlame_Pose2:
	db "GFX_RocketFlame_Pose2.bin"
GFX_RocketFlame_Pose2End:
GFX_RocketFlame_Pose3:
	db "GFX_RocketFlame_Pose3.bin"
GFX_RocketFlame_Pose3End:
GFX_RocketFlame_Pose4:
	db "GFX_RocketFlame_Pose4.bin"
GFX_RocketFlame_Pose4End:
GFX_RocketFlame_Pose5:
	db "GFX_RocketFlame_Pose5.bin"
GFX_RocketFlame_Pose5End:
GFX_RocketFlame_Pose6:
	db "GFX_RocketFlame_Pose6.bin"
GFX_RocketFlame_Pose6End:
GFX_RocketFlame_Pose7:
	db "GFX_RocketFlame_Pose7.bin"
GFX_RocketFlame_Pose7End:
GFX_RocketFlame_Pose8:
	db "GFX_RocketFlame_Pose8.bin"
GFX_RocketFlame_Pose8End:
GFX_RocketFlame_Pose9:
	db "GFX_RocketFlame_Pose9.bin"
GFX_RocketFlame_Pose9End:
GFX_RocketFlame_Pose10:
	db "GFX_RocketFlame_Pose10.bin"
GFX_RocketFlame_Pose10End:
GFX_RocketFlame_Pose11:
	db "GFX_RocketFlame_Pose11.bin"
GFX_RocketFlame_Pose11End:
GFX_RocketFlame_Pose12:
	db "GFX_RocketFlame_Pose12.bin"
GFX_RocketFlame_Pose12End:
GFX_RopeFlame_Pose1:
	db "GFX_RopeFlame_Pose1.bin"
GFX_RopeFlame_Pose1End:
GFX_RopeFlame_Pose2:
	db "GFX_RopeFlame_Pose2.bin"
GFX_RopeFlame_Pose2End:
GFX_RopeFlame_Pose3:
	db "GFX_RopeFlame_Pose3.bin"
GFX_RopeFlame_Pose3End:
GFX_RopeFlame_Pose4:
	db "GFX_RopeFlame_Pose4.bin"
GFX_RopeFlame_Pose4End:
GFX_RopeFlame_Pose5:
	db "GFX_RopeFlame_Pose5.bin"
GFX_RopeFlame_Pose5End:
GFX_RopeFlame_Pose6:
	db "GFX_RopeFlame_Pose6.bin"
GFX_RopeFlame_Pose6End:
GFX_RopeFlame_Pose7:
	db "GFX_RopeFlame_Pose7.bin"
GFX_RopeFlame_Pose7End:
GFX_RopeFlame_Pose8:
	db "GFX_RopeFlame_Pose8.bin"
GFX_RopeFlame_Pose8End:
GFX_RopeFlame_Pose9:
	db "GFX_RopeFlame_Pose9.bin"
GFX_RopeFlame_Pose9End:
GFX_RopeFlame_Pose10:
	db "GFX_RopeFlame_Pose10.bin"
GFX_RopeFlame_Pose10End:
GFX_RopeFlame_Pose11:
	db "GFX_RopeFlame_Pose11.bin"
GFX_RopeFlame_Pose11End:
GFX_RopeFlame_Pose12:
	db "GFX_RopeFlame_Pose12.bin"
GFX_RopeFlame_Pose12End:
GFX_RopeFlame_Pose13:
	db "GFX_RopeFlame_Pose13.bin"
GFX_RopeFlame_Pose13End:
GFX_Squitter_Walk1:
	db "GFX_Squitter_Walk1.bin"
GFX_Squitter_Walk1End:
GFX_Squitter_Walk2:
	db "GFX_Squitter_Walk2.bin"
GFX_Squitter_Walk2End:
GFX_Squitter_Walk3:
	db "GFX_Squitter_Walk3.bin"
GFX_Squitter_Walk3End:
GFX_Squitter_Walk4:
	db "GFX_Squitter_Walk4.bin"
GFX_Squitter_Walk4End:
GFX_Squitter_Walk5:
	db "GFX_Squitter_Walk5.bin"
GFX_Squitter_Walk5End:
GFX_Squitter_Walk6:
	db "GFX_Squitter_Walk6.bin"
GFX_Squitter_Walk6End:
GFX_Squitter_Walk7:
	db "GFX_Squitter_Walk7.bin"
GFX_Squitter_Walk7End:
GFX_Squitter_Walk8:
	db "GFX_Squitter_Walk8.bin"
GFX_Squitter_Walk8End:
GFX_Squitter_Walk9:
	db "GFX_Squitter_Walk9.bin"
GFX_Squitter_Walk9End:
GFX_Squitter_Walk10:
	db "GFX_Squitter_Walk10.bin"
GFX_Squitter_Walk10End:
GFX_Squitter_Walk11:
	db "GFX_Squitter_Walk11.bin"
GFX_Squitter_Walk11End:
GFX_Squitter_Walk12:
	db "GFX_Squitter_Walk12.bin"
GFX_Squitter_Walk12End:
GFX_Squitter_Walk13:
	db "GFX_Squitter_Walk13.bin"
GFX_Squitter_Walk13End:
GFX_Squitter_Walk14:
	db "GFX_Squitter_Walk14.bin"
GFX_Squitter_Walk14End:
GFX_Squitter_Walk15:
	db "GFX_Squitter_Walk15.bin"
GFX_Squitter_Walk15End:
GFX_Squitter_Walk16:
	db "GFX_Squitter_Walk16.bin"
GFX_Squitter_Walk16End:
GFX_Squitter_Stand1:
	db "GFX_Squitter_Stand1.bin"
GFX_Squitter_Stand1End:
GFX_Squitter_Stand2:
	db "GFX_Squitter_Stand2.bin"
GFX_Squitter_Stand2End:
GFX_Squitter_Stand3:
	db "GFX_Squitter_Stand3.bin"
GFX_Squitter_Stand3End:
GFX_Squitter_Jump1:
	db "GFX_Squitter_Jump1.bin"
GFX_Squitter_Jump1End:
GFX_Squitter_Jump2:
	db "GFX_Squitter_Jump2.bin"
GFX_Squitter_Jump2End:
GFX_Squitter_Jump3:
	db "GFX_Squitter_Jump3.bin"
GFX_Squitter_Jump3End:
GFX_Squitter_Jump4:
	db "GFX_Squitter_Jump4.bin"
GFX_Squitter_Jump4End:
GFX_Squitter_Jump5:
	db "GFX_Squitter_Jump5.bin"
GFX_Squitter_Jump5End:
GFX_Squitter_Hurt:
	db "GFX_Squitter_Hurt.bin"
GFX_Squitter_HurtEnd:
GFX_WebShot_Attack1:
	db "GFX_WebShot_Attack1.bin"
GFX_WebShot_Attack1End:
GFX_WebShot_Attack2:
	db "GFX_WebShot_Attack2.bin"
GFX_WebShot_Attack2End:
GFX_WebShot_Attack3:
	db "GFX_WebShot_Attack3.bin"
GFX_WebShot_Attack3End:
GFX_WebShot_Attack4:
	db "GFX_WebShot_Attack4.bin"
GFX_WebShot_Attack4End:
GFX_WebShot_Attack5:
	db "GFX_WebShot_Attack5.bin"
GFX_WebShot_Attack5End:
GFX_WebShot_Attack6:
	db "GFX_WebShot_Attack6.bin"
GFX_WebShot_Attack6End:
GFX_WebShot_Attack7:
	db "GFX_WebShot_Attack7.bin"
GFX_WebShot_Attack7End:
GFX_WebShot_Blob1:
	db "GFX_WebShot_Blob1.bin"
GFX_WebShot_Blob1End:
GFX_WebShot_Blob2:
	db "GFX_WebShot_Blob2.bin"
GFX_WebShot_Blob2End:
GFX_WebShot_Blob3:
	db "GFX_WebShot_Blob3.bin"
GFX_WebShot_Blob3End:
GFX_WebShot_Blob4:
	db "GFX_WebShot_Blob4.bin"
GFX_WebShot_Blob4End:
GFX_WebPlatform_Deploy1:
	db "GFX_WebPlatform_Deploy1.bin"
GFX_WebPlatform_Deploy1End:
GFX_WebPlatform_Deploy2:
	db "GFX_WebPlatform_Deploy2.bin"
GFX_WebPlatform_Deploy2End:
GFX_WebPlatform_Deploy3:
	db "GFX_WebPlatform_Deploy3.bin"
GFX_WebPlatform_Deploy3End:
GFX_WebPlatform_Deploy4:
	db "GFX_WebPlatform_Deploy4.bin"
GFX_WebPlatform_Deploy4End:
GFX_WebPlatform_Deploy5:
	db "GFX_WebPlatform_Deploy5.bin"
GFX_WebPlatform_Deploy5End:
GFX_WebPlatform_Deploy6:
	db "GFX_WebPlatform_Deploy6.bin"
GFX_WebPlatform_Deploy6End:
GFX_WebPlatform_Deploy7:
	db "GFX_WebPlatform_Deploy7.bin"
GFX_WebPlatform_Deploy7End:
GFX_WebPlatform_Deploy8:
	db "GFX_WebPlatform_Deploy8.bin"
GFX_WebPlatform_Deploy8End:
GFX_WebPlatform_Deploy9:
	db "GFX_WebPlatform_Deploy9.bin"
GFX_WebPlatform_Deploy9End:
GFX_WebPlatform_Deploy10:
	db "GFX_WebPlatform_Deploy10.bin"
GFX_WebPlatform_Deploy10End:
GFX_WebPlatform_Deploy11:
	db "GFX_WebPlatform_Deploy11.bin"
GFX_WebPlatform_Deploy11End:
GFX_Squawks_SpitEgg1:
	db "GFX_Squawks_SpitEgg1.bin"
GFX_Squawks_SpitEgg1End:
GFX_Squawks_SpitEgg2:
	db "GFX_Squawks_SpitEgg2.bin"
GFX_Squawks_SpitEgg2End:
GFX_Squawks_SpitEgg3:
	db "GFX_Squawks_SpitEgg3.bin"
GFX_Squawks_SpitEgg3End:
GFX_Squawks_SpitEgg4:
	db "GFX_Squawks_SpitEgg4.bin"
GFX_Squawks_SpitEgg4End:
GFX_Squawks_SpitEgg5:
	db "GFX_Squawks_SpitEgg5.bin"
GFX_Squawks_SpitEgg5End:
GFX_Squawks_Fly1:
	db "GFX_Squawks_Fly1.bin"
GFX_Squawks_Fly1End:
GFX_Squawks_Fly2:
	db "GFX_Squawks_Fly2.bin"
GFX_Squawks_Fly2End:
GFX_Squawks_Fly3:
	db "GFX_Squawks_Fly3.bin"
GFX_Squawks_Fly3End:
GFX_Squawks_Fly4:
	db "GFX_Squawks_Fly4.bin"
GFX_Squawks_Fly4End:
GFX_Squawks_Fly5:
	db "GFX_Squawks_Fly5.bin"
GFX_Squawks_Fly5End:
GFX_Squawks_Fly6:
	db "GFX_Squawks_Fly6.bin"
GFX_Squawks_Fly6End:
GFX_Squawks_Fly7:
	db "GFX_Squawks_Fly7.bin"
GFX_Squawks_Fly7End:
GFX_Squawks_Fly8:
	db "GFX_Squawks_Fly8.bin"
GFX_Squawks_Fly8End:
GFX_Squawks_Fly9:
	db "GFX_Squawks_Fly9.bin"
GFX_Squawks_Fly9End:
GFX_Squawks_Fly10:
	db "GFX_Squawks_Fly10.bin"
GFX_Squawks_Fly10End:
GFX_Squawks_Fly11:
	db "GFX_Squawks_Fly11.bin"
GFX_Squawks_Fly11End:
GFX_Squawks_Fly12:
	db "GFX_Squawks_Fly12.bin"
GFX_Squawks_Fly12End:
GFX_Squawks_Fly13:
	db "GFX_Squawks_Fly13.bin"
GFX_Squawks_Fly13End:
GFX_Squawks_Fly14:
	db "GFX_Squawks_Fly14.bin"
GFX_Squawks_Fly14End:
GFX_Squawks_Hurt:
	db "GFX_Squawks_Hurt.bin"
GFX_Squawks_HurtEnd:
GFX_Squawks_GrabKongs:
	db "GFX_Squawks_GrabKongs.bin"
GFX_Squawks_GrabKongsEnd:
GFX_Squawks_Turn1:
	db "GFX_Squawks_Turn1.bin"
GFX_Squawks_Turn1End:
GFX_Squawks_Turn2:
	db "GFX_Squawks_Turn2.bin"
GFX_Squawks_Turn2End:
GFX_Parry_Fly1:
	db "GFX_Parry_Fly1.bin"
GFX_Parry_Fly1End:
GFX_Parry_Fly2:
	db "GFX_Parry_Fly2.bin"
GFX_Parry_Fly2End:
GFX_Parry_Fly3:
	db "GFX_Parry_Fly3.bin"
GFX_Parry_Fly3End:
GFX_Parry_Fly4:
	db "GFX_Parry_Fly4.bin"
GFX_Parry_Fly4End:
GFX_Parry_Fly5:
	db "GFX_Parry_Fly5.bin"
GFX_Parry_Fly5End:
GFX_Parry_Fly6:
	db "GFX_Parry_Fly6.bin"
GFX_Parry_Fly6End:
GFX_Parry_Fly7:
	db "GFX_Parry_Fly7.bin"
GFX_Parry_Fly7End:
GFX_Parry_Fly8:
	db "GFX_Parry_Fly8.bin"
GFX_Parry_Fly8End:
GFX_Parry_Fly9:
	db "GFX_Parry_Fly9.bin"
GFX_Parry_Fly9End:
GFX_Parry_Fly10:
	db "GFX_Parry_Fly10.bin"
GFX_Parry_Fly10End:
GFX_Parry_Turn1:
	db "GFX_Parry_Turn1.bin"
GFX_Parry_Turn1End:
GFX_Parry_Turn2:
	db "GFX_Parry_Turn2.bin"
GFX_Parry_Turn2End:
GFX_Parry_Hurt1:
	db "GFX_Parry_Hurt1.bin"
GFX_Parry_Hurt1End:
GFX_Parry_Hurt2:
	db "GFX_Parry_Hurt2.bin"
GFX_Parry_Hurt2End:
GFX_Parry_Hurt3:
	db "GFX_Parry_Hurt3.bin"
GFX_Parry_Hurt3End:
GFX_Parry_Hurt4:
	db "GFX_Parry_Hurt4.bin"
GFX_Parry_Hurt4End:
GFX_ChairliftPulley_Pose1:
	db "GFX_ChairliftPulley_Pose1.bin"
GFX_ChairliftPulley_Pose1End:
GFX_ChairliftPulley_Pose2:
	db "GFX_ChairliftPulley_Pose2.bin"
GFX_ChairliftPulley_Pose2End:
GFX_ChairliftPulley_Pose3:
	db "GFX_ChairliftPulley_Pose3.bin"
GFX_ChairliftPulley_Pose3End:
GFX_BarnaclesBirdCage_Pose:
	db "GFX_BarnaclesBirdCage_Pose.bin"
GFX_BarnaclesBirdCage_PoseEnd:
GFX_BramblesVase_Pose:
	db "GFX_BramblesVase_Pose.bin"
GFX_BramblesVase_PoseEnd:
GFX_PlayerSelectIcons_1Player:
	db "GFX_PlayerSelectIcons_1Player.bin"
GFX_PlayerSelectIcons_1PlayerEnd:
GFX_PlayerSelectIcons_2PlayerTeam:
	db "GFX_PlayerSelectIcons_2PlayerTeam.bin"
GFX_PlayerSelectIcons_2PlayerTeamEnd:
GFX_PlayerSelectIcons_2PlayerContest:
	db "GFX_PlayerSelectIcons_2PlayerContest.bin"
GFX_PlayerSelectIcons_2PlayerContestEnd:
GFX_Toboggan_Pose1:
	db "GFX_Toboggan_Pose1.bin"
GFX_Toboggan_Pose1End:
GFX_Toboggan_Pose2:
	db "GFX_Toboggan_Pose2.bin"
GFX_Toboggan_Pose2End:
GFX_Toboggan_Pose3:
	db "GFX_Toboggan_Pose3.bin"
GFX_Toboggan_Pose3End:
GFX_Toboggan_Pose4:
	db "GFX_Toboggan_Pose4.bin"
GFX_Toboggan_Pose4End:
GFX_Toboggan_Pose5:
	db "GFX_Toboggan_Pose5.bin"
GFX_Toboggan_Pose5End:
GFX_Toboggan_Pose6:
	db "GFX_Toboggan_Pose6.bin"
GFX_Toboggan_Pose6End:
GFX_Toboggan_Pose7:
	db "GFX_Toboggan_Pose7.bin"
GFX_Toboggan_Pose7End:
GFX_Toboggan_Pose8:
	db "GFX_Toboggan_Pose8.bin"
GFX_Toboggan_Pose8End:
GFX_Toboggan_Pose9:
	db "GFX_Toboggan_Pose9.bin"
GFX_Toboggan_Pose9End:
GFX_Toboggan_Pose10:
	db "GFX_Toboggan_Pose10.bin"
GFX_Toboggan_Pose10End:
GFX_Toboggan_Pose11:
	db "GFX_Toboggan_Pose11.bin"
GFX_Toboggan_Pose11End:
GFX_Toboggan_Pose12:
	db "GFX_Toboggan_Pose12.bin"
GFX_Toboggan_Pose12End:
GFX_Toboggan_Pose13:
	db "GFX_Toboggan_Pose13.bin"
GFX_Toboggan_Pose13End:
GFX_TobogganBackwall_Pose1:
	db "GFX_TobogganBackwall_Pose1.bin"
GFX_TobogganBackwall_Pose1End:
GFX_TobogganBackwall_Pose2:
	db "GFX_TobogganBackwall_Pose2.bin"
GFX_TobogganBackwall_Pose2End:
GFX_TobogganBackwall_Pose3:
	db "GFX_TobogganBackwall_Pose3.bin"
GFX_TobogganBackwall_Pose3End:
GFX_TobogganBackwall_Pose4:
	db "GFX_TobogganBackwall_Pose4.bin"
GFX_TobogganBackwall_Pose4End:
GFX_TobogganBackwall_Pose5:
	db "GFX_TobogganBackwall_Pose5.bin"
GFX_TobogganBackwall_Pose5End:
GFX_TobogganBackwall_Pose6:
	db "GFX_TobogganBackwall_Pose6.bin"
GFX_TobogganBackwall_Pose6End:
GFX_TobogganBackwall_Pose7:
	db "GFX_TobogganBackwall_Pose7.bin"
GFX_TobogganBackwall_Pose7End:
GFX_TobogganBackwall_Pose8:
	db "GFX_TobogganBackwall_Pose8.bin"
GFX_TobogganBackwall_Pose8End:
GFX_TobogganBackwall_Pose9:
	db "GFX_TobogganBackwall_Pose9.bin"
GFX_TobogganBackwall_Pose9End:
GFX_TobogganBackwall_Pose10:
	db "GFX_TobogganBackwall_Pose10.bin"
GFX_TobogganBackwall_Pose10End:
GFX_TobogganBackwall_Pose11:
	db "GFX_TobogganBackwall_Pose11.bin"
GFX_TobogganBackwall_Pose11End:
GFX_TobogganBackwall_Pose12:
	db "GFX_TobogganBackwall_Pose12.bin"
GFX_TobogganBackwall_Pose12End:
GFX_TobogganBackwall_Pose13:
	db "GFX_TobogganBackwall_Pose13.bin"
GFX_TobogganBackwall_Pose13End:
GFX_TobogganHook_Pose1:
	db "GFX_TobogganHook_Pose1.bin"
GFX_TobogganHook_Pose1End:
GFX_TobogganHook_Pose2:
	db "GFX_TobogganHook_Pose2.bin"
GFX_TobogganHook_Pose2End:
GFX_TobogganHook_Pose3:
	db "GFX_TobogganHook_Pose3.bin"
GFX_TobogganHook_Pose3End:
GFX_TobogganHook_Pose4:
	db "GFX_TobogganHook_Pose4.bin"
GFX_TobogganHook_Pose4End:
GFX_TobogganHook_Pose5:
	db "GFX_TobogganHook_Pose5.bin"
GFX_TobogganHook_Pose5End:
GFX_TobogganHook_Pose6:
	db "GFX_TobogganHook_Pose6.bin"
GFX_TobogganHook_Pose6End:
GFX_TobogganHook_Pose7:
	db "GFX_TobogganHook_Pose7.bin"
GFX_TobogganHook_Pose7End:
GFX_TobogganHook_Pose8:
	db "GFX_TobogganHook_Pose8.bin"
GFX_TobogganHook_Pose8End:
GFX_TobogganHook_Pose9:
	db "GFX_TobogganHook_Pose9.bin"
GFX_TobogganHook_Pose9End:
GFX_TobogganHook_Pose10:
	db "GFX_TobogganHook_Pose10.bin"
GFX_TobogganHook_Pose10End:
GFX_TobogganHook_Pose11:
	db "GFX_TobogganHook_Pose11.bin"
GFX_TobogganHook_Pose11End:
GFX_TobogganHook_Pose12:
	db "GFX_TobogganHook_Pose12.bin"
GFX_TobogganHook_Pose12End:
GFX_TobogganHook_Pose13:
	db "GFX_TobogganHook_Pose13.bin"
GFX_TobogganHook_Pose13End:
GFX_Kiddy_RideToboggan1:
	db "GFX_Kiddy_RideToboggan1.bin"
GFX_Kiddy_RideToboggan1End:
GFX_Kiddy_RideToboggan2:
	db "GFX_Kiddy_RideToboggan2.bin"
GFX_Kiddy_RideToboggan2End:
GFX_Kiddy_RideToboggan3:
	db "GFX_Kiddy_RideToboggan3.bin"
GFX_Kiddy_RideToboggan3End:
GFX_Kiddy_RideToboggan4:
	db "GFX_Kiddy_RideToboggan4.bin"
GFX_Kiddy_RideToboggan4End:
GFX_Kiddy_RideToboggan5:
	db "GFX_Kiddy_RideToboggan5.bin"
GFX_Kiddy_RideToboggan5End:
GFX_Kiddy_RideToboggan6:
	db "GFX_Kiddy_RideToboggan6.bin"
GFX_Kiddy_RideToboggan6End:
GFX_Kiddy_RideToboggan7:
	db "GFX_Kiddy_RideToboggan7.bin"
GFX_Kiddy_RideToboggan7End:
GFX_Kiddy_RideToboggan8:
	db "GFX_Kiddy_RideToboggan8.bin"
GFX_Kiddy_RideToboggan8End:
GFX_Kiddy_RideToboggan9:
	db "GFX_Kiddy_RideToboggan9.bin"
GFX_Kiddy_RideToboggan9End:
GFX_Kiddy_RideToboggan10:
	db "GFX_Kiddy_RideToboggan10.bin"
GFX_Kiddy_RideToboggan10End:
GFX_Kiddy_RideToboggan11:
	db "GFX_Kiddy_RideToboggan11.bin"
GFX_Kiddy_RideToboggan11End:
GFX_Kiddy_RideToboggan12:
	db "GFX_Kiddy_RideToboggan12.bin"
GFX_Kiddy_RideToboggan12End:
GFX_Kiddy_RideToboggan13:
	db "GFX_Kiddy_RideToboggan13.bin"
GFX_Kiddy_RideToboggan13End:
GFX_Kiddy_LookToSideInToboggan1:
	db "GFX_Kiddy_LookToSideInToboggan1.bin"
GFX_Kiddy_LookToSideInToboggan1End:
GFX_Kiddy_LookToSideInToboggan2:
	db "GFX_Kiddy_LookToSideInToboggan2.bin"
GFX_Kiddy_LookToSideInToboggan2End:
GFX_Kiddy_LookDownInToboggan1:
	db "GFX_Kiddy_LookDownInToboggan1.bin"
GFX_Kiddy_LookDownInToboggan1End:
GFX_Kiddy_LookDownInToboggan2:
	db "GFX_Kiddy_LookDownInToboggan2.bin"
GFX_Kiddy_LookDownInToboggan2End:
GFX_Kiddy_Zapped:
	db "GFX_Kiddy_Zapped.bin"
GFX_Kiddy_ZappedEnd:
GFX_Dixie_RideToboggan1:
	db "GFX_Dixie_RideToboggan1.bin"
GFX_Dixie_RideToboggan1End:
GFX_Dixie_RideToboggan2:
	db "GFX_Dixie_RideToboggan2.bin"
GFX_Dixie_RideToboggan2End:
GFX_Dixie_RideToboggan3:
	db "GFX_Dixie_RideToboggan3.bin"
GFX_Dixie_RideToboggan3End:
GFX_Dixie_RideToboggan4:
	db "GFX_Dixie_RideToboggan4.bin"
GFX_Dixie_RideToboggan4End:
GFX_Dixie_RideToboggan5:
	db "GFX_Dixie_RideToboggan5.bin"
GFX_Dixie_RideToboggan5End:
GFX_Dixie_RideToboggan6:
	db "GFX_Dixie_RideToboggan6.bin"
GFX_Dixie_RideToboggan6End:
GFX_Dixie_RideToboggan7:
	db "GFX_Dixie_RideToboggan7.bin"
GFX_Dixie_RideToboggan7End:
GFX_Dixie_RideToboggan8:
	db "GFX_Dixie_RideToboggan8.bin"
GFX_Dixie_RideToboggan8End:
GFX_Dixie_RideToboggan9:
	db "GFX_Dixie_RideToboggan9.bin"
GFX_Dixie_RideToboggan9End:
GFX_Dixie_RideToboggan10:
	db "GFX_Dixie_RideToboggan10.bin"
GFX_Dixie_RideToboggan10End:
GFX_Dixie_RideToboggan11:
	db "GFX_Dixie_RideToboggan11.bin"
GFX_Dixie_RideToboggan11End:
GFX_Dixie_RideToboggan12:
	db "GFX_Dixie_RideToboggan12.bin"
GFX_Dixie_RideToboggan12End:
GFX_Dixie_RideToboggan13:
	db "GFX_Dixie_RideToboggan13.bin"
GFX_Dixie_RideToboggan13End:
GFX_Dixie_LookToSideInToboggan1:
	db "GFX_Dixie_LookToSideInToboggan1.bin"
GFX_Dixie_LookToSideInToboggan1End:
GFX_Dixie_LookToSideInToboggan2:
	db "GFX_Dixie_LookToSideInToboggan2.bin"
GFX_Dixie_LookToSideInToboggan2End:
GFX_Dixie_LookDownInToboggan1:
	db "GFX_Dixie_LookDownInToboggan1.bin"
GFX_Dixie_LookDownInToboggan1End:
GFX_Dixie_LookDownInToboggan2:
	db "GFX_Dixie_LookDownInToboggan2.bin"
GFX_Dixie_LookDownInToboggan2End:
GFX_Dixie_Zapped:
	db "GFX_Dixie_Zapped.bin"
GFX_Dixie_ZappedEnd:
GFX_SeashellMissle_Pose1:
	db "GFX_SeashellMissle_Pose1.bin"
GFX_SeashellMissle_Pose1End:
GFX_SeashellMissle_Pose2:
	db "GFX_SeashellMissle_Pose2.bin"
GFX_SeashellMissle_Pose2End:
GFX_SeashellMissle_Pose3:
	db "GFX_SeashellMissle_Pose3.bin"
GFX_SeashellMissle_Pose3End:
GFX_SeashellMissle_Pose4:
	db "GFX_SeashellMissle_Pose4.bin"
GFX_SeashellMissle_Pose4End:
GFX_SeashellMissle_Pose5:
	db "GFX_SeashellMissle_Pose5.bin"
GFX_SeashellMissle_Pose5End:
GFX_SeashellMissle_Pose6:
	db "GFX_SeashellMissle_Pose6.bin"
GFX_SeashellMissle_Pose6End:
GFX_SeashellMissle_Pose7:
	db "GFX_SeashellMissle_Pose7.bin"
GFX_SeashellMissle_Pose7End:
GFX_SeashellMissle_Pose8:
	db "GFX_SeashellMissle_Pose8.bin"
GFX_SeashellMissle_Pose8End:
GFX_SeashellMissle_Pose9:
	db "GFX_SeashellMissle_Pose9.bin"
GFX_SeashellMissle_Pose9End:
GFX_SeashellMissle_Pose10:
	db "GFX_SeashellMissle_Pose10.bin"
GFX_SeashellMissle_Pose10End:
GFX_SeashellMissle_Pose11:
	db "GFX_SeashellMissle_Pose11.bin"
GFX_SeashellMissle_Pose11End:
GFX_SeashellMissle_Pose12:
	db "GFX_SeashellMissle_Pose12.bin"
GFX_SeashellMissle_Pose12End:
GFX_SeashellMissle_Pose13:
	db "GFX_SeashellMissle_Pose13.bin"
GFX_SeashellMissle_Pose13End:
GFX_SeashellMissle_Pose14:
	db "GFX_SeashellMissle_Pose14.bin"
GFX_SeashellMissle_Pose14End:
GFX_SeashellMissle_Pose15:
	db "GFX_SeashellMissle_Pose15.bin"
GFX_SeashellMissle_Pose15End:
GFX_Krumple_Walk1:
	db "GFX_Krumple_Walk1.bin"
GFX_Krumple_Walk1End:
GFX_Krumple_Walk2:
	db "GFX_Krumple_Walk2.bin"
GFX_Krumple_Walk2End:
GFX_Krumple_Walk3:
	db "GFX_Krumple_Walk3.bin"
GFX_Krumple_Walk3End:
GFX_Krumple_Walk4:
	db "GFX_Krumple_Walk4.bin"
GFX_Krumple_Walk4End:
GFX_Krumple_Walk5:
	db "GFX_Krumple_Walk5.bin"
GFX_Krumple_Walk5End:
GFX_Krumple_Walk6:
	db "GFX_Krumple_Walk6.bin"
GFX_Krumple_Walk6End:
GFX_Krumple_Walk7:
	db "GFX_Krumple_Walk7.bin"
GFX_Krumple_Walk7End:
GFX_Krumple_Walk8:
	db "GFX_Krumple_Walk8.bin"
GFX_Krumple_Walk8End:
GFX_Krumple_Turn1:
	db "GFX_Krumple_Turn1.bin"
GFX_Krumple_Turn1End:
GFX_Krumple_Turn2:
	db "GFX_Krumple_Turn2.bin"
GFX_Krumple_Turn2End:
GFX_Krumple_Taunt1:
	db "GFX_Krumple_Taunt1.bin"
GFX_Krumple_Taunt1End:
GFX_Krumple_Taunt2:
	db "GFX_Krumple_Taunt2.bin"
GFX_Krumple_Taunt2End:
GFX_Krumple_Taunt3:
	db "GFX_Krumple_Taunt3.bin"
GFX_Krumple_Taunt3End:
GFX_Krumple_Dead1:
	db "GFX_Krumple_Dead1.bin"
GFX_Krumple_Dead1End:
GFX_Krumple_Dead2:
	db "GFX_Krumple_Dead2.bin"
GFX_Krumple_Dead2End:
GFX_Krumple_Dead3:
	db "GFX_Krumple_Dead3.bin"
GFX_Krumple_Dead3End:
GFX_Swoopy_Fly1:
	db "GFX_Swoopy_Fly1.bin"
GFX_Swoopy_Fly1End:
GFX_Swoopy_Fly2:
	db "GFX_Swoopy_Fly2.bin"
GFX_Swoopy_Fly2End:
GFX_Swoopy_Fly3:
	db "GFX_Swoopy_Fly3.bin"
GFX_Swoopy_Fly3End:
GFX_Swoopy_Fly4:
	db "GFX_Swoopy_Fly4.bin"
GFX_Swoopy_Fly4End:
GFX_Swoopy_Fly5:
	db "GFX_Swoopy_Fly5.bin"
GFX_Swoopy_Fly5End:
GFX_Swoopy_Fly6:
	db "GFX_Swoopy_Fly6.bin"
GFX_Swoopy_Fly6End:
GFX_Swoopy_Fly7:
	db "GFX_Swoopy_Fly7.bin"
GFX_Swoopy_Fly7End:
GFX_Swoopy_Fly8:
	db "GFX_Swoopy_Fly8.bin"
GFX_Swoopy_Fly8End:
GFX_Swoopy_Swoop1:
	db "GFX_Swoopy_Swoop1.bin"
GFX_Swoopy_Swoop1End:
GFX_Swoopy_Swoop2:
	db "GFX_Swoopy_Swoop2.bin"
GFX_Swoopy_Swoop2End:
GFX_Swoopy_Swoop3:
	db "GFX_Swoopy_Swoop3.bin"
GFX_Swoopy_Swoop3End:
GFX_Swoopy_Swoop4:
	db "GFX_Swoopy_Swoop4.bin"
GFX_Swoopy_Swoop4End:
GFX_Swoopy_Swoop5:
	db "GFX_Swoopy_Swoop5.bin"
GFX_Swoopy_Swoop5End:
GFX_Swoopy_Swoop6:
	db "GFX_Swoopy_Swoop6.bin"
GFX_Swoopy_Swoop6End:
GFX_Swoopy_Swoop7:
	db "GFX_Swoopy_Swoop7.bin"
GFX_Swoopy_Swoop7End:
GFX_Swoopy_Swoop8:
	db "GFX_Swoopy_Swoop8.bin"
GFX_Swoopy_Swoop8End:
GFX_Swoopy_Swoop9:
	db "GFX_Swoopy_Swoop9.bin"
GFX_Swoopy_Swoop9End:
GFX_Swoopy_Swoop10:
	db "GFX_Swoopy_Swoop10.bin"
GFX_Swoopy_Swoop10End:
GFX_Swoopy_Swoop11:
	db "GFX_Swoopy_Swoop11.bin"
GFX_Swoopy_Swoop11End:
GFX_Swoopy_Swoop12:
	db "GFX_Swoopy_Swoop12.bin"
GFX_Swoopy_Swoop12End:
GFX_Swoopy_Swoop13:
	db "GFX_Swoopy_Swoop13.bin"
GFX_Swoopy_Swoop13End:
GFX_Swoopy_Dead1:
	db "GFX_Swoopy_Dead1.bin"
GFX_Swoopy_Dead1End:
GFX_Swoopy_Dead2:
	db "GFX_Swoopy_Dead2.bin"
GFX_Swoopy_Dead2End:
GFX_Swoopy_Dead3:
	db "GFX_Swoopy_Dead3.bin"
GFX_Swoopy_Dead3End:
GFX_NibblaBody_Swim1:
	db "GFX_NibblaBody_Swim1.bin"
GFX_NibblaBody_Swim1End:
GFX_NibblaBody_Swim2:
	db "GFX_NibblaBody_Swim2.bin"
GFX_NibblaBody_Swim2End:
GFX_NibblaBody_Swim3:
	db "GFX_NibblaBody_Swim3.bin"
GFX_NibblaBody_Swim3End:
GFX_NibblaBody_Swim4:
	db "GFX_NibblaBody_Swim4.bin"
GFX_NibblaBody_Swim4End:
GFX_NibblaBody_Swim5:
	db "GFX_NibblaBody_Swim5.bin"
GFX_NibblaBody_Swim5End:
GFX_NibblaBody_Swim6:
	db "GFX_NibblaBody_Swim6.bin"
GFX_NibblaBody_Swim6End:
GFX_NibblaBody_Swim7:
	db "GFX_NibblaBody_Swim7.bin"
GFX_NibblaBody_Swim7End:
GFX_NibblaBody_Swim8:
	db "GFX_NibblaBody_Swim8.bin"
GFX_NibblaBody_Swim8End:
GFX_NibblaBody_Turn1:
	db "GFX_NibblaBody_Turn1.bin"
GFX_NibblaBody_Turn1End:
GFX_NibblaBody_Turn2:
	db "GFX_NibblaBody_Turn2.bin"
GFX_NibblaBody_Turn2End:
GFX_NibblaBody_Turn3:
	db "GFX_NibblaBody_Turn3.bin"
GFX_NibblaBody_Turn3End:
GFX_NibblaBody_Turn4:
	db "GFX_NibblaBody_Turn4.bin"
GFX_NibblaBody_Turn4End:
GFX_NibblaHead_Bite1:
	db "GFX_NibblaHead_Bite1.bin"
GFX_NibblaHead_Bite1End:
GFX_NibblaHead_Bite2:
	db "GFX_NibblaHead_Bite2.bin"
GFX_NibblaHead_Bite2End:
GFX_NibblaHead_Bite3:
	db "GFX_NibblaHead_Bite3.bin"
GFX_NibblaHead_Bite3End:
GFX_NibblaHead_Bite4:
	db "GFX_NibblaHead_Bite4.bin"
GFX_NibblaHead_Bite4End:
GFX_NibblaHead_Happy1:
	db "GFX_NibblaHead_Happy1.bin"
GFX_NibblaHead_Happy1End:
GFX_NibblaHead_Happy2:
	db "GFX_NibblaHead_Happy2.bin"
GFX_NibblaHead_Happy2End:
GFX_NibblaHead_Happy3:
	db "GFX_NibblaHead_Happy3.bin"
GFX_NibblaHead_Happy3End:
GFX_NibblaHead_Happy4:
	db "GFX_NibblaHead_Happy4.bin"
GFX_NibblaHead_Happy4End:
GFX_NibblaHead_Happy5:
	db "GFX_NibblaHead_Happy5.bin"
GFX_NibblaHead_Happy5End:
GFX_NibblaHead_Happy6:
	db "GFX_NibblaHead_Happy6.bin"
GFX_NibblaHead_Happy6End:
GFX_NibblaHead_Happy7:
	db "GFX_NibblaHead_Happy7.bin"
GFX_NibblaHead_Happy7End:
GFX_NibblaHead_Happy8:
	db "GFX_NibblaHead_Happy8.bin"
GFX_NibblaHead_Happy8End:
GFX_NibblaHead_Sad1:
	db "GFX_NibblaHead_Sad1.bin"
GFX_NibblaHead_Sad1End:
GFX_NibblaHead_Sad2:
	db "GFX_NibblaHead_Sad2.bin"
GFX_NibblaHead_Sad2End:
GFX_NibblaHead_Sad3:
	db "GFX_NibblaHead_Sad3.bin"
GFX_NibblaHead_Sad3End:
GFX_NibblaHead_Sad4:
	db "GFX_NibblaHead_Sad4.bin"
GFX_NibblaHead_Sad4End:
GFX_NibblaHead_Sad5:
	db "GFX_NibblaHead_Sad5.bin"
GFX_NibblaHead_Sad5End:
GFX_NibblaHead_Sad6:
	db "GFX_NibblaHead_Sad6.bin"
GFX_NibblaHead_Sad6End:
GFX_NibblaHead_Sad7:
	db "GFX_NibblaHead_Sad7.bin"
GFX_NibblaHead_Sad7End:
GFX_NibblaHead_Sad8:
	db "GFX_NibblaHead_Sad8.bin"
GFX_NibblaHead_Sad8End:
GFX_NibblaHead_Angry1:
	db "GFX_NibblaHead_Angry1.bin"
GFX_NibblaHead_Angry1End:
GFX_NibblaHead_Angry2:
	db "GFX_NibblaHead_Angry2.bin"
GFX_NibblaHead_Angry2End:
GFX_NibblaHead_Angry3:
	db "GFX_NibblaHead_Angry3.bin"
GFX_NibblaHead_Angry3End:
GFX_NibblaHead_Angry4:
	db "GFX_NibblaHead_Angry4.bin"
GFX_NibblaHead_Angry4End:
GFX_NibblaHead_Angry5:
	db "GFX_NibblaHead_Angry5.bin"
GFX_NibblaHead_Angry5End:
GFX_NibblaHead_Angry6:
	db "GFX_NibblaHead_Angry6.bin"
GFX_NibblaHead_Angry6End:
GFX_NibblaHead_Angry7:
	db "GFX_NibblaHead_Angry7.bin"
GFX_NibblaHead_Angry7End:
GFX_NibblaHead_Angry8:
	db "GFX_NibblaHead_Angry8.bin"
GFX_NibblaHead_Angry8End:
GFX_KuchukaHand_Pose1:
	db "GFX_KuchukaHand_Pose1.bin"
GFX_KuchukaHand_Pose1End:
GFX_KuchukaHand_Pose2:
	db "GFX_KuchukaHand_Pose2.bin"
GFX_KuchukaHand_Pose2End:
GFX_KuchukaHand_Pose3:
	db "GFX_KuchukaHand_Pose3.bin"
GFX_KuchukaHand_Pose3End:
GFX_KuchukaHand_Pose4:
	db "GFX_KuchukaHand_Pose4.bin"
GFX_KuchukaHand_Pose4End:
GFX_KuchukaHand_Pose5:
	db "GFX_KuchukaHand_Pose5.bin"
GFX_KuchukaHand_Pose5End:
GFX_KuchukaHand_Pose6:
	db "GFX_KuchukaHand_Pose6.bin"
GFX_KuchukaHand_Pose6End:
GFX_KuchukaHand_Pose7:
	db "GFX_KuchukaHand_Pose7.bin"
GFX_KuchukaHand_Pose7End:
GFX_KuchukaHand_Pose8:
	db "GFX_KuchukaHand_Pose8.bin"
GFX_KuchukaHand_Pose8End:
GFX_KuchukaHand_Pose9:
	db "GFX_KuchukaHand_Pose9.bin"
GFX_KuchukaHand_Pose9End:
GFX_KuchukaHand_Pose10:
	db "GFX_KuchukaHand_Pose10.bin"
GFX_KuchukaHand_Pose10End:
GFX_KuchukaHand_Pose11:
	db "GFX_KuchukaHand_Pose11.bin"
GFX_KuchukaHand_Pose11End:
GFX_Bazza_Swim1:
	db "GFX_Bazza_Swim1.bin"
GFX_Bazza_Swim1End:
GFX_Bazza_Swim2:
	db "GFX_Bazza_Swim2.bin"
GFX_Bazza_Swim2End:
GFX_Bazza_Swim3:
	db "GFX_Bazza_Swim3.bin"
GFX_Bazza_Swim3End:
GFX_Bazza_Swim4:
	db "GFX_Bazza_Swim4.bin"
GFX_Bazza_Swim4End:
GFX_Bazza_Swim5:
	db "GFX_Bazza_Swim5.bin"
GFX_Bazza_Swim5End:
GFX_Bazza_Swim6:
	db "GFX_Bazza_Swim6.bin"
GFX_Bazza_Swim6End:
GFX_Bazza_Swim7:
	db "GFX_Bazza_Swim7.bin"
GFX_Bazza_Swim7End:
GFX_Bazza_Swim8:
	db "GFX_Bazza_Swim8.bin"
GFX_Bazza_Swim8End:
GFX_Bazza_Dead:
	db "GFX_Bazza_Dead.bin"
GFX_Bazza_DeadEnd:
GFX_BuzzSwarm_Pose1:
	db "GFX_BuzzSwarm_Pose1.bin"
GFX_BuzzSwarm_Pose1End:
GFX_BuzzSwarm_Pose2:
	db "GFX_BuzzSwarm_Pose2.bin"
GFX_BuzzSwarm_Pose2End:
GFX_BuzzSwarm_Pose3:
	db "GFX_BuzzSwarm_Pose3.bin"
GFX_BuzzSwarm_Pose3End:
GFX_BuzzSwarm_Pose4:
	db "GFX_BuzzSwarm_Pose4.bin"
GFX_BuzzSwarm_Pose4End:
GFX_BuzzSwarm_Pose5:
	db "GFX_BuzzSwarm_Pose5.bin"
GFX_BuzzSwarm_Pose5End:
GFX_BuzzSwarm_Pose6:
	db "GFX_BuzzSwarm_Pose6.bin"
GFX_BuzzSwarm_Pose6End:
GFX_BuzzSwarm_Pose7:
	db "GFX_BuzzSwarm_Pose7.bin"
GFX_BuzzSwarm_Pose7End:
GFX_BuzzSwarm_Pose8:
	db "GFX_BuzzSwarm_Pose8.bin"
GFX_BuzzSwarm_Pose8End:
GFX_BuzzSwarm_Pose9:
	db "GFX_BuzzSwarm_Pose9.bin"
GFX_BuzzSwarm_Pose9End:
GFX_BuzzSwarm_Pose10:
	db "GFX_BuzzSwarm_Pose10.bin"
GFX_BuzzSwarm_Pose10End:
GFX_BuzzSwarm_Pose11:
	db "GFX_BuzzSwarm_Pose11.bin"
GFX_BuzzSwarm_Pose11End:
GFX_BuzzSwarm_Pose12:
	db "GFX_BuzzSwarm_Pose12.bin"
GFX_BuzzSwarm_Pose12End:
GFX_BuzzSwarm_Pose13:
	db "GFX_BuzzSwarm_Pose13.bin"
GFX_BuzzSwarm_Pose13End:
GFX_BuzzSwarm_Pose14:
	db "GFX_BuzzSwarm_Pose14.bin"
GFX_BuzzSwarm_Pose14End:
GFX_BuzzSwarm_Pose15:
	db "GFX_BuzzSwarm_Pose15.bin"
GFX_BuzzSwarm_Pose15End:
GFX_BuzzSwarm_Pose16:
	db "GFX_BuzzSwarm_Pose16.bin"
GFX_BuzzSwarm_Pose16End:
GFX_BountyBass_Swim1:
	db "GFX_BountyBass_Swim1.bin"
GFX_BountyBass_Swim1End:
GFX_BountyBass_Swim2:
	db "GFX_BountyBass_Swim2.bin"
GFX_BountyBass_Swim2End:
GFX_BountyBass_Swim3:
	db "GFX_BountyBass_Swim3.bin"
GFX_BountyBass_Swim3End:
GFX_BountyBass_Swim4:
	db "GFX_BountyBass_Swim4.bin"
GFX_BountyBass_Swim4End:
GFX_BountyBass_Swim5:
	db "GFX_BountyBass_Swim5.bin"
GFX_BountyBass_Swim5End:
GFX_BountyBass_Swim6:
	db "GFX_BountyBass_Swim6.bin"
GFX_BountyBass_Swim6End:
GFX_BountyBass_Swim7:
	db "GFX_BountyBass_Swim7.bin"
GFX_BountyBass_Swim7End:
GFX_BountyBass_Swim8:
	db "GFX_BountyBass_Swim8.bin"
GFX_BountyBass_Swim8End:
GFX_BountyBass_Turn1:
	db "GFX_BountyBass_Turn1.bin"
GFX_BountyBass_Turn1End:
GFX_BountyBass_Turn2:
	db "GFX_BountyBass_Turn2.bin"
GFX_BountyBass_Turn2End:
GFX_BountyBass_Turn3:
	db "GFX_BountyBass_Turn3.bin"
GFX_BountyBass_Turn3End:
GFX_BountyBass_Turn4:
	db "GFX_BountyBass_Turn4.bin"
GFX_BountyBass_Turn4End:
GFX_BountyBass_Dead1:
	db "GFX_BountyBass_Dead1.bin"
GFX_BountyBass_Dead1End:
GFX_BountyBass_Dead2:
	db "GFX_BountyBass_Dead2.bin"
GFX_BountyBass_Dead2End:
GFX_BountyBass_Dead3:
	db "GFX_BountyBass_Dead3.bin"
GFX_BountyBass_Dead3End:
GFX_BountyBass_Dead4:
	db "GFX_BountyBass_Dead4.bin"
GFX_BountyBass_Dead4End:
GFX_BountyBass_Dead5:
	db "GFX_BountyBass_Dead5.bin"
GFX_BountyBass_Dead5End:
GFX_Gyrocopter_Pose1:
	db "GFX_Gyrocopter_Pose1.bin"
GFX_Gyrocopter_Pose1End:
GFX_Gyrocopter_Pose2:
	db "GFX_Gyrocopter_Pose2.bin"
GFX_Gyrocopter_Pose2End:
GFX_Gyrocopter_Pose3:
	db "GFX_Gyrocopter_Pose3.bin"
GFX_Gyrocopter_Pose3End:
GFX_Gyrocopter_Pose4:
	db "GFX_Gyrocopter_Pose4.bin"
GFX_Gyrocopter_Pose4End:
GFX_Gyrocopter_Pose5:
	db "GFX_Gyrocopter_Pose5.bin"
GFX_Gyrocopter_Pose5End:
GFX_Gyrocopter_Pose6:
	db "GFX_Gyrocopter_Pose6.bin"
GFX_Gyrocopter_Pose6End:
GFX_Gyrocopter_Pose7:
	db "GFX_Gyrocopter_Pose7.bin"
GFX_Gyrocopter_Pose7End:
GFX_Gyrocopter_Pose8:
	db "GFX_Gyrocopter_Pose8.bin"
GFX_Gyrocopter_Pose8End:
GFX_Gyrocopter_Pose9:
	db "GFX_Gyrocopter_Pose9.bin"
GFX_Gyrocopter_Pose9End:
GFX_GyrocopterBlades_Pose1:
	db "GFX_GyrocopterBlades_Pose1.bin"
GFX_GyrocopterBlades_Pose1End:
GFX_GyrocopterBlades_Pose2:
	db "GFX_GyrocopterBlades_Pose2.bin"
GFX_GyrocopterBlades_Pose2End:
GFX_GyrocopterBlades_Pose3:
	db "GFX_GyrocopterBlades_Pose3.bin"
GFX_GyrocopterBlades_Pose3End:
GFX_GyrocopterBlades_Pose4:
	db "GFX_GyrocopterBlades_Pose4.bin"
GFX_GyrocopterBlades_Pose4End:
GFX_GyrocopterBlades_Pose5:
	db "GFX_GyrocopterBlades_Pose5.bin"
GFX_GyrocopterBlades_Pose5End:
GFX_GyrocopterBlades_Pose6:
	db "GFX_GyrocopterBlades_Pose6.bin"
GFX_GyrocopterBlades_Pose6End:
GFX_GyrocopterBlades_Pose7:
	db "GFX_GyrocopterBlades_Pose7.bin"
GFX_GyrocopterBlades_Pose7End:
GFX_GyrocopterBlades_Pose8:
	db "GFX_GyrocopterBlades_Pose8.bin"
GFX_GyrocopterBlades_Pose8End:
GFX_TurboSki_Pose1:
	db "GFX_TurboSki_Pose1.bin"
GFX_TurboSki_Pose1End:
GFX_TurboSki_Pose2:
	db "GFX_TurboSki_Pose2.bin"
GFX_TurboSki_Pose2End:
GFX_TurboSki_Pose3:
	db "GFX_TurboSki_Pose3.bin"
GFX_TurboSki_Pose3End:
GFX_TurboSki_Pose4:
	db "GFX_TurboSki_Pose4.bin"
GFX_TurboSki_Pose4End:
GFX_TurboSki_Pose5:
	db "GFX_TurboSki_Pose5.bin"
GFX_TurboSki_Pose5End:
GFX_TurboSki_Pose6:
	db "GFX_TurboSki_Pose6.bin"
GFX_TurboSki_Pose6End:
GFX_TurboSki_Pose7:
	db "GFX_TurboSki_Pose7.bin"
GFX_TurboSki_Pose7End:
GFX_TurboSki_Pose8:
	db "GFX_TurboSki_Pose8.bin"
GFX_TurboSki_Pose8End:
GFX_TurboSki_Pose9:
	db "GFX_TurboSki_Pose9.bin"
GFX_TurboSki_Pose9End:
GFX_BootyBird_Fly1:
	db "GFX_BootyBird_Fly1.bin"
GFX_BootyBird_Fly1End:
GFX_BootyBird_Fly2:
	db "GFX_BootyBird_Fly2.bin"
GFX_BootyBird_Fly2End:
GFX_BootyBird_Fly3:
	db "GFX_BootyBird_Fly3.bin"
GFX_BootyBird_Fly3End:
GFX_BootyBird_Fly4:
	db "GFX_BootyBird_Fly4.bin"
GFX_BootyBird_Fly4End:
GFX_BootyBird_Fly5:
	db "GFX_BootyBird_Fly5.bin"
GFX_BootyBird_Fly5End:
GFX_BootyBird_Fly6:
	db "GFX_BootyBird_Fly6.bin"
GFX_BootyBird_Fly6End:
GFX_BootyBird_Fly7:
	db "GFX_BootyBird_Fly7.bin"
GFX_BootyBird_Fly7End:
GFX_BootyBird_Fly8:
	db "GFX_BootyBird_Fly8.bin"
GFX_BootyBird_Fly8End:
GFX_BootyBird_Turn1:
	db "GFX_BootyBird_Turn1.bin"
GFX_BootyBird_Turn1End:
GFX_BootyBird_Turn2:
	db "GFX_BootyBird_Turn2.bin"
GFX_BootyBird_Turn2End:
GFX_BootyBird_Dead1:
	db "GFX_BootyBird_Dead1.bin"
GFX_BootyBird_Dead1End:
GFX_BootyBird_Dead2:
	db "GFX_BootyBird_Dead2.bin"
GFX_BootyBird_Dead2End:
GFX_BootyBird_Dead3:
	db "GFX_BootyBird_Dead3.bin"
GFX_BootyBird_Dead3End:
GFX_BootyBird_Dead4:
	db "GFX_BootyBird_Dead4.bin"
GFX_BootyBird_Dead4End:
GFX_BootyBird_Dead5:
	db "GFX_BootyBird_Dead5.bin"
GFX_BootyBird_Dead5End:
GFX_BootyBird_Dead6:
	db "GFX_BootyBird_Dead6.bin"
GFX_BootyBird_Dead6End:
GFX_Bazuka_ShootSide1:
	db "GFX_Bazuka_ShootSide1.bin"
GFX_Bazuka_ShootSide1End:
GFX_Bazuka_ShootSide2:
	db "GFX_Bazuka_ShootSide2.bin"
GFX_Bazuka_ShootSide2End:
GFX_Bazuka_ShootSide3:
	db "GFX_Bazuka_ShootSide3.bin"
GFX_Bazuka_ShootSide3End:
GFX_Bazuka_ShootSide4:
	db "GFX_Bazuka_ShootSide4.bin"
GFX_Bazuka_ShootSide4End:
GFX_Bazuka_ShootSide5:
	db "GFX_Bazuka_ShootSide5.bin"
GFX_Bazuka_ShootSide5End:
GFX_Bazuka_ShootSide6:
	db "GFX_Bazuka_ShootSide6.bin"
GFX_Bazuka_ShootSide6End:
GFX_Bazuka_Walk1:
	db "GFX_Bazuka_Walk1.bin"
GFX_Bazuka_Walk1End:
GFX_Bazuka_Walk2:
	db "GFX_Bazuka_Walk2.bin"
GFX_Bazuka_Walk2End:
GFX_Bazuka_Walk3:
	db "GFX_Bazuka_Walk3.bin"
GFX_Bazuka_Walk3End:
GFX_Bazuka_Walk4:
	db "GFX_Bazuka_Walk4.bin"
GFX_Bazuka_Walk4End:
GFX_Bazuka_Walk5:
	db "GFX_Bazuka_Walk5.bin"
GFX_Bazuka_Walk5End:
GFX_Bazuka_Idle1:
	db "GFX_Bazuka_Idle1.bin"
GFX_Bazuka_Idle1End:
GFX_Bazuka_Idle2:
	db "GFX_Bazuka_Idle2.bin"
GFX_Bazuka_Idle2End:
GFX_Bazuka_ShootUp1:
	db "GFX_Bazuka_ShootUp1.bin"
GFX_Bazuka_ShootUp1End:
GFX_Bazuka_ShootUp2:
	db "GFX_Bazuka_ShootUp2.bin"
GFX_Bazuka_ShootUp2End:
GFX_Bazuka_ShootUp3:
	db "GFX_Bazuka_ShootUp3.bin"
GFX_Bazuka_ShootUp3End:
GFX_Bazuka_ShootUp4:
	db "GFX_Bazuka_ShootUp4.bin"
GFX_Bazuka_ShootUp4End:
GFX_Bazuka_ShootUp5:
	db "GFX_Bazuka_ShootUp5.bin"
GFX_Bazuka_ShootUp5End:
GFX_Bazuka_ShootUp6:
	db "GFX_Bazuka_ShootUp6.bin"
GFX_Bazuka_ShootUp6End:
GFX_Bazuka_Dead1:
	db "GFX_Bazuka_Dead1.bin"
GFX_Bazuka_Dead1End:
GFX_Bazuka_Dead2:
	db "GFX_Bazuka_Dead2.bin"
GFX_Bazuka_Dead2End:
GFX_Bazuka_Dead3:
	db "GFX_Bazuka_Dead3.bin"
GFX_Bazuka_Dead3End:
GFX_Bazuka_Dead4:
	db "GFX_Bazuka_Dead4.bin"
GFX_Bazuka_Dead4End:
GFX_Bazuka_Dead5:
	db "GFX_Bazuka_Dead5.bin"
GFX_Bazuka_Dead5End:
GFX_BarrelSwitchS_Pose:
	db "GFX_BarrelSwitchS_Pose.bin"
GFX_BarrelSwitchS_PoseEnd:
GFX_Koindozer_Run1:
	db "GFX_Koindozer_Run1.bin"
GFX_Koindozer_Run1End:
GFX_Koindozer_Run2:
	db "GFX_Koindozer_Run2.bin"
GFX_Koindozer_Run2End:
GFX_Koindozer_Run3:
	db "GFX_Koindozer_Run3.bin"
GFX_Koindozer_Run3End:
GFX_Koindozer_Run4:
	db "GFX_Koindozer_Run4.bin"
GFX_Koindozer_Run4End:
GFX_Koindozer_Run5:
	db "GFX_Koindozer_Run5.bin"
GFX_Koindozer_Run5End:
GFX_Koindozer_Run6:
	db "GFX_Koindozer_Run6.bin"
GFX_Koindozer_Run6End:
GFX_Koindozer_Run7:
	db "GFX_Koindozer_Run7.bin"
GFX_Koindozer_Run7End:
GFX_Koindozer_Run8:
	db "GFX_Koindozer_Run8.bin"
GFX_Koindozer_Run8End:
GFX_Kopter_TakeOff1:
	db "GFX_Kopter_TakeOff1.bin"
GFX_Kopter_TakeOff1End:
GFX_Kopter_TakeOff2:
	db "GFX_Kopter_TakeOff2.bin"
GFX_Kopter_TakeOff2End:
GFX_Kopter_TakeOff3:
	db "GFX_Kopter_TakeOff3.bin"
GFX_Kopter_TakeOff3End:
GFX_Kopter_TakeOff4:
	db "GFX_Kopter_TakeOff4.bin"
GFX_Kopter_TakeOff4End:
GFX_Kopter_TakeOff5:
	db "GFX_Kopter_TakeOff5.bin"
GFX_Kopter_TakeOff5End:
GFX_Kopter_TakeOff6:
	db "GFX_Kopter_TakeOff6.bin"
GFX_Kopter_TakeOff6End:
GFX_Kopter_Fly1:
	db "GFX_Kopter_Fly1.bin"
GFX_Kopter_Fly1End:
GFX_Kopter_Fly2:
	db "GFX_Kopter_Fly2.bin"
GFX_Kopter_Fly2End:
GFX_Kopter_Fly3:
	db "GFX_Kopter_Fly3.bin"
GFX_Kopter_Fly3End:
GFX_Kopter_Fly4:
	db "GFX_Kopter_Fly4.bin"
GFX_Kopter_Fly4End:
GFX_Kopter_Fly5:
	db "GFX_Kopter_Fly5.bin"
GFX_Kopter_Fly5End:
GFX_Kopter_Fly6:
	db "GFX_Kopter_Fly6.bin"
GFX_Kopter_Fly6End:
GFX_Kopter_Fly7:
	db "GFX_Kopter_Fly7.bin"
GFX_Kopter_Fly7End:
GFX_Kopter_Fly8:
	db "GFX_Kopter_Fly8.bin"
GFX_Kopter_Fly8End:
GFX_Kopter_Fly9:
	db "GFX_Kopter_Fly9.bin"
GFX_Kopter_Fly9End:
GFX_Kopter_Fly10:
	db "GFX_Kopter_Fly10.bin"
GFX_Kopter_Fly10End:
GFX_Kopter_Fly11:
	db "GFX_Kopter_Fly11.bin"
GFX_Kopter_Fly11End:
GFX_Kopter_Fly12:
	db "GFX_Kopter_Fly12.bin"
GFX_Kopter_Fly12End:
GFX_Kopter_Stand1:
	db "GFX_Kopter_Stand1.bin"
GFX_Kopter_Stand1End:
GFX_Kopter_Stand2:
	db "GFX_Kopter_Stand2.bin"
GFX_Kopter_Stand2End:
GFX_Kopter_Stand3:
	db "GFX_Kopter_Stand3.bin"
GFX_Kopter_Stand3End:
GFX_Kopter_Dead1:
	db "GFX_Kopter_Dead1.bin"
GFX_Kopter_Dead1End:
GFX_Kopter_Dead2:
	db "GFX_Kopter_Dead2.bin"
GFX_Kopter_Dead2End:
GFX_Kopter_Dead3:
	db "GFX_Kopter_Dead3.bin"
GFX_Kopter_Dead3End:
GFX_Nid_Idle1:
	db "GFX_Nid_Idle1.bin"
GFX_Nid_Idle1End:
GFX_Nid_Idle2:
	db "GFX_Nid_Idle2.bin"
GFX_Nid_Idle2End:
GFX_Nid_Idle3:
	db "GFX_Nid_Idle3.bin"
GFX_Nid_Idle3End:
GFX_Nid_Jump1:
	db "GFX_Nid_Jump1.bin"
GFX_Nid_Jump1End:
GFX_Nid_Jump2:
	db "GFX_Nid_Jump2.bin"
GFX_Nid_Jump2End:
GFX_Nid_Jump3:
	db "GFX_Nid_Jump3.bin"
GFX_Nid_Jump3End:
GFX_Nid_Jump4:
	db "GFX_Nid_Jump4.bin"
GFX_Nid_Jump4End:
GFX_Nid_Jump5:
	db "GFX_Nid_Jump5.bin"
GFX_Nid_Jump5End:
GFX_Crystal_Red:
	db "GFX_Crystal_Red.bin"
GFX_Crystal_RedEnd:
GFX_Crystal_Green:
	db "GFX_Crystal_Green.bin"
GFX_Crystal_GreenEnd:
GFX_Crystal_Blue:
	db "GFX_Crystal_Blue.bin"
GFX_Crystal_BlueEnd:
GFX_Crystal_Yellow:
	db "GFX_Crystal_Yellow.bin"
GFX_Crystal_YellowEnd:
GFX_CrackedCrystal_Pose:
	db "GFX_CrackedCrystal_Pose.bin"
GFX_CrackedCrystal_PoseEnd:
GFX_GhostBarrelCannon_Pose1:
	db "GFX_GhostBarrelCannon_Pose1.bin"
GFX_GhostBarrelCannon_Pose1End:
GFX_GhostBarrelCannon_Pose2:
	db "GFX_GhostBarrelCannon_Pose2.bin"
GFX_GhostBarrelCannon_Pose2End:
GFX_GhostBarrelCannon_Pose3:
	db "GFX_GhostBarrelCannon_Pose3.bin"
GFX_GhostBarrelCannon_Pose3End:
GFX_GhostBarrelCannon_Pose4:
	db "GFX_GhostBarrelCannon_Pose4.bin"
GFX_GhostBarrelCannon_Pose4End:
GFX_GhostBarrelCannon_Pose5:
	db "GFX_GhostBarrelCannon_Pose5.bin"
GFX_GhostBarrelCannon_Pose5End:
GFX_WrinklyKong_Stand1:
	db "GFX_WrinklyKong_Stand1.bin"
GFX_WrinklyKong_Stand1End:
GFX_WrinklyKong_Stand2:
	db "GFX_WrinklyKong_Stand2.bin"
GFX_WrinklyKong_Stand2End:
GFX_WrinklyKong_Stand3:
	db "GFX_WrinklyKong_Stand3.bin"
GFX_WrinklyKong_Stand3End:
GFX_WrinklyKong_Stand4:
	db "GFX_WrinklyKong_Stand4.bin"
GFX_WrinklyKong_Stand4End:
GFX_WrinklyKong_Stand5:
	db "GFX_WrinklyKong_Stand5.bin"
GFX_WrinklyKong_Stand5End:
GFX_WrinklyKong_Stand6:
	db "GFX_WrinklyKong_Stand6.bin"
GFX_WrinklyKong_Stand6End:
GFX_WrinklyKong_Stand7:
	db "GFX_WrinklyKong_Stand7.bin"
GFX_WrinklyKong_Stand7End:
GFX_WrinklyKong_Sleeping1:
	db "GFX_WrinklyKong_Sleeping1.bin"
GFX_WrinklyKong_Sleeping1End:
GFX_WrinklyKong_Sleeping2:
	db "GFX_WrinklyKong_Sleeping2.bin"
GFX_WrinklyKong_Sleeping2End:
GFX_WrinklyKong_Sleeping3:
	db "GFX_WrinklyKong_Sleeping3.bin"
GFX_WrinklyKong_Sleeping3End:
GFX_WrinklyKong_Sleeping4:
	db "GFX_WrinklyKong_Sleeping4.bin"
GFX_WrinklyKong_Sleeping4End:
GFX_WrinklyKong_PlayN64_1:
	db "GFX_WrinklyKong_PlayN64_1.bin"
GFX_WrinklyKong_PlayN64_1End:
GFX_WrinklyKong_PlayN64_2:
	db "GFX_WrinklyKong_PlayN64_2.bin"
GFX_WrinklyKong_PlayN64_2End:
GFX_WrinklyKong_PlayN64_3:
	db "GFX_WrinklyKong_PlayN64_3.bin"
GFX_WrinklyKong_PlayN64_3End:
GFX_WrinklyKong_PlayN64_4:
	db "GFX_WrinklyKong_PlayN64_4.bin"
GFX_WrinklyKong_PlayN64_4End:
GFX_Nintendo64_Pose:
	db "GFX_Nintendo64_Pose.bin"
GFX_Nintendo64_PoseEnd:
GFX_Dixie_KiddyTakesLead1:
	db "GFX_Dixie_KiddyTakesLead1.bin"
GFX_Dixie_KiddyTakesLead1End:
GFX_Dixie_KiddyTakesLead2:
	db "GFX_Dixie_KiddyTakesLead2.bin"
GFX_Dixie_KiddyTakesLead2End:
GFX_Dixie_KiddyTakesLead3:
	db "GFX_Dixie_KiddyTakesLead3.bin"
GFX_Dixie_KiddyTakesLead3End:
GFX_Dixie_KiddyTakesLead4:
	db "GFX_Dixie_KiddyTakesLead4.bin"
GFX_Dixie_KiddyTakesLead4End:
GFX_Dixie_KiddyTakesLead5:
	db "GFX_Dixie_KiddyTakesLead5.bin"
GFX_Dixie_KiddyTakesLead5End:
GFX_Dixie_KiddyTakesLead6:
	db "GFX_Dixie_KiddyTakesLead6.bin"
GFX_Dixie_KiddyTakesLead6End:
GFX_Dixie_KiddyTakesLead7:
	db "GFX_Dixie_KiddyTakesLead7.bin"
GFX_Dixie_KiddyTakesLead7End:
GFX_Dixie_KiddyTakesLead8:
	db "GFX_Dixie_KiddyTakesLead8.bin"
GFX_Dixie_KiddyTakesLead8End:
GFX_Dixie_KiddyTakesLead9:
	db "GFX_Dixie_KiddyTakesLead9.bin"
GFX_Dixie_KiddyTakesLead9End:
GFX_Dixie_KiddyTakesLead10:
	db "GFX_Dixie_KiddyTakesLead10.bin"
GFX_Dixie_KiddyTakesLead10End:
GFX_Dixie_KiddyTakesLead11:
	db "GFX_Dixie_KiddyTakesLead11.bin"
GFX_Dixie_KiddyTakesLead11End:
GFX_Dixie_KiddyTakesLead12:
	db "GFX_Dixie_KiddyTakesLead12.bin"
GFX_Dixie_KiddyTakesLead12End:
GFX_Dixie_KiddyTakesLead13:
	db "GFX_Dixie_KiddyTakesLead13.bin"
GFX_Dixie_KiddyTakesLead13End:
GFX_Dixie_KiddyTakesLead14:
	db "GFX_Dixie_KiddyTakesLead14.bin"
GFX_Dixie_KiddyTakesLead14End:
GFX_Dixie_KiddyTakesLead15:
	db "GFX_Dixie_KiddyTakesLead15.bin"
GFX_Dixie_KiddyTakesLead15End:
GFX_Dixie_KiddyTakesLead16:
	db "GFX_Dixie_KiddyTakesLead16.bin"
GFX_Dixie_KiddyTakesLead16End:
GFX_Dixie_KiddyTakesLead17:
	db "GFX_Dixie_KiddyTakesLead17.bin"
GFX_Dixie_KiddyTakesLead17End:
GFX_Dixie_KiddyTakesLead18:
	db "GFX_Dixie_KiddyTakesLead18.bin"
GFX_Dixie_KiddyTakesLead18End:
GFX_Kiddy_KiddyTakesLead1:
	db "GFX_Kiddy_KiddyTakesLead1.bin"
GFX_Kiddy_KiddyTakesLead1End:
GFX_Kiddy_KiddyTakesLead2:
	db "GFX_Kiddy_KiddyTakesLead2.bin"
GFX_Kiddy_KiddyTakesLead2End:
GFX_Kiddy_KiddyTakesLead3:
	db "GFX_Kiddy_KiddyTakesLead3.bin"
GFX_Kiddy_KiddyTakesLead3End:
GFX_Kiddy_KiddyTakesLead4:
	db "GFX_Kiddy_KiddyTakesLead4.bin"
GFX_Kiddy_KiddyTakesLead4End:
GFX_Kiddy_KiddyTakesLead5:
	db "GFX_Kiddy_KiddyTakesLead5.bin"
GFX_Kiddy_KiddyTakesLead5End:
GFX_Kiddy_KiddyTakesLead6:
	db "GFX_Kiddy_KiddyTakesLead6.bin"
GFX_Kiddy_KiddyTakesLead6End:
GFX_Kiddy_KiddyTakesLead7:
	db "GFX_Kiddy_KiddyTakesLead7.bin"
GFX_Kiddy_KiddyTakesLead7End:
GFX_Kiddy_KiddyTakesLead8:
	db "GFX_Kiddy_KiddyTakesLead8.bin"
GFX_Kiddy_KiddyTakesLead8End:
GFX_Kiddy_KiddyTakesLead9:
	db "GFX_Kiddy_KiddyTakesLead9.bin"
GFX_Kiddy_KiddyTakesLead9End:
GFX_Kiddy_KiddyTakesLead10:
	db "GFX_Kiddy_KiddyTakesLead10.bin"
GFX_Kiddy_KiddyTakesLead10End:
GFX_Kiddy_KiddyTakesLead11:
	db "GFX_Kiddy_KiddyTakesLead11.bin"
GFX_Kiddy_KiddyTakesLead11End:
GFX_Kiddy_KiddyTakesLead12:
	db "GFX_Kiddy_KiddyTakesLead12.bin"
GFX_Kiddy_KiddyTakesLead12End:
GFX_Dixie_DixieTakesLead1:
	db "GFX_Dixie_DixieTakesLead1.bin"
GFX_Dixie_DixieTakesLead1End:
GFX_Dixie_DixieTakesLead2:
	db "GFX_Dixie_DixieTakesLead2.bin"
GFX_Dixie_DixieTakesLead2End:
GFX_Dixie_DixieTakesLead3:
	db "GFX_Dixie_DixieTakesLead3.bin"
GFX_Dixie_DixieTakesLead3End:
GFX_Dixie_DixieTakesLead4:
	db "GFX_Dixie_DixieTakesLead4.bin"
GFX_Dixie_DixieTakesLead4End:
GFX_Dixie_DixieTakesLead5:
	db "GFX_Dixie_DixieTakesLead5.bin"
GFX_Dixie_DixieTakesLead5End:
GFX_Dixie_DixieTakesLead6:
	db "GFX_Dixie_DixieTakesLead6.bin"
GFX_Dixie_DixieTakesLead6End:
GFX_Dixie_DixieTakesLead7:
	db "GFX_Dixie_DixieTakesLead7.bin"
GFX_Dixie_DixieTakesLead7End:
GFX_Kiddy_DixieTakesLead1:
	db "GFX_Kiddy_DixieTakesLead1.bin"
GFX_Kiddy_DixieTakesLead1End:
GFX_Kiddy_DixieTakesLead2:
	db "GFX_Kiddy_DixieTakesLead2.bin"
GFX_Kiddy_DixieTakesLead2End:
GFX_Kiddy_DixieTakesLead3:
	db "GFX_Kiddy_DixieTakesLead3.bin"
GFX_Kiddy_DixieTakesLead3End:
GFX_Kiddy_DixieTakesLead4:
	db "GFX_Kiddy_DixieTakesLead4.bin"
GFX_Kiddy_DixieTakesLead4End:
GFX_Kiddy_DixieTakesLead5:
	db "GFX_Kiddy_DixieTakesLead5.bin"
GFX_Kiddy_DixieTakesLead5End:
GFX_Kiddy_DixieTakesLead6:
	db "GFX_Kiddy_DixieTakesLead6.bin"
GFX_Kiddy_DixieTakesLead6End:
GFX_Kiddy_DixieTakesLead7:
	db "GFX_Kiddy_DixieTakesLead7.bin"
GFX_Kiddy_DixieTakesLead7End:
GFX_KuffNKlout_Jump1:
	db "GFX_KuffNKlout_Jump1.bin"
GFX_KuffNKlout_Jump1End:
GFX_KuffNKlout_Jump2:
	db "GFX_KuffNKlout_Jump2.bin"
GFX_KuffNKlout_Jump2End:
GFX_KuffNKlout_Jump3:
	db "GFX_KuffNKlout_Jump3.bin"
GFX_KuffNKlout_Jump3End:
GFX_KuffNKlout_Jump4:
	db "GFX_KuffNKlout_Jump4.bin"
GFX_KuffNKlout_Jump4End:
GFX_KuffNKlout_Jump5:
	db "GFX_KuffNKlout_Jump5.bin"
GFX_KuffNKlout_Jump5End:
GFX_KuffNKlout_Jump6:
	db "GFX_KuffNKlout_Jump6.bin"
GFX_KuffNKlout_Jump6End:
GFX_KuffNKlout_Jump7:
	db "GFX_KuffNKlout_Jump7.bin"
GFX_KuffNKlout_Jump7End:
GFX_KuffNKlout_Jump8:
	db "GFX_KuffNKlout_Jump8.bin"
GFX_KuffNKlout_Jump8End:
GFX_KuffNKlout_Turn1:
	db "GFX_KuffNKlout_Turn1.bin"
GFX_KuffNKlout_Turn1End:
GFX_KuffNKlout_Turn2:
	db "GFX_KuffNKlout_Turn2.bin"
GFX_KuffNKlout_Turn2End:
GFX_KuffNKlout_Tackle1:
	db "GFX_KuffNKlout_Tackle1.bin"
GFX_KuffNKlout_Tackle1End:
GFX_KuffNKlout_Tackle2:
	db "GFX_KuffNKlout_Tackle2.bin"
GFX_KuffNKlout_Tackle2End:
GFX_KuffNKlout_Tackle3:
	db "GFX_KuffNKlout_Tackle3.bin"
GFX_KuffNKlout_Tackle3End:
GFX_KuffNKlout_Tackle4:
	db "GFX_KuffNKlout_Tackle4.bin"
GFX_KuffNKlout_Tackle4End:
GFX_KuffNKlout_Tackle5:
	db "GFX_KuffNKlout_Tackle5.bin"
GFX_KuffNKlout_Tackle5End:
GFX_KuffNKlout_Tackle6:
	db "GFX_KuffNKlout_Tackle6.bin"
GFX_KuffNKlout_Tackle6End:
GFX_KuffNKlout_Tackle7:
	db "GFX_KuffNKlout_Tackle7.bin"
GFX_KuffNKlout_Tackle7End:
GFX_KuffNKlout_Tackle8:
	db "GFX_KuffNKlout_Tackle8.bin"
GFX_KuffNKlout_Tackle8End:
GFX_KuffNKlout_Idle1:
	db "GFX_KuffNKlout_Idle1.bin"
GFX_KuffNKlout_Idle1End:
GFX_KuffNKlout_Idle2:
	db "GFX_KuffNKlout_Idle2.bin"
GFX_KuffNKlout_Idle2End:
GFX_KuffNKlout_Dead1:
	db "GFX_KuffNKlout_Dead1.bin"
GFX_KuffNKlout_Dead1End:
GFX_KuffNKlout_Dead2:
	db "GFX_KuffNKlout_Dead2.bin"
GFX_KuffNKlout_Dead2End:
GFX_KuffNKlout_Dead3:
	db "GFX_KuffNKlout_Dead3.bin"
GFX_KuffNKlout_Dead3End:
GFX_KuffNKlout_Dead4:
	db "GFX_KuffNKlout_Dead4.bin"
GFX_KuffNKlout_Dead4End:
GFX_FGBleak_Throw1:
	db "GFX_FGBleak_Throw1.bin"
GFX_FGBleak_Throw1End:
GFX_FGBleak_Throw2:
	db "GFX_FGBleak_Throw2.bin"
GFX_FGBleak_Throw2End:
GFX_FGBleak_Throw3:
	db "GFX_FGBleak_Throw3.bin"
GFX_FGBleak_Throw3End:
GFX_FGBleak_Throw4:
	db "GFX_FGBleak_Throw4.bin"
GFX_FGBleak_Throw4End:
GFX_FGBleak_Throw5:
	db "GFX_FGBleak_Throw5.bin"
GFX_FGBleak_Throw5End:
GFX_FGBleak_Throw6:
	db "GFX_FGBleak_Throw6.bin"
GFX_FGBleak_Throw6End:
GFX_FGBleak_Throw7:
	db "GFX_FGBleak_Throw7.bin"
GFX_FGBleak_Throw7End:
GFX_FGBleak_Throw8:
	db "GFX_FGBleak_Throw8.bin"
GFX_FGBleak_Throw8End:
GFX_FGBleak_Laugh1:
	db "GFX_FGBleak_Laugh1.bin"
GFX_FGBleak_Laugh1End:
GFX_FGBleak_Laugh2:
	db "GFX_FGBleak_Laugh2.bin"
GFX_FGBleak_Laugh2End:
GFX_FGBleak_ShootToSide1:
	db "GFX_FGBleak_ShootToSide1.bin"
GFX_FGBleak_ShootToSide1End:
GFX_FGBleak_ShootToSide2:
	db "GFX_FGBleak_ShootToSide2.bin"
GFX_FGBleak_ShootToSide2End:
GFX_FGBleak_ShootToSide3:
	db "GFX_FGBleak_ShootToSide3.bin"
GFX_FGBleak_ShootToSide3End:
GFX_FGBleak_ShootToSide4:
	db "GFX_FGBleak_ShootToSide4.bin"
GFX_FGBleak_ShootToSide4End:
GFX_FGBleak_ShootToSide5:
	db "GFX_FGBleak_ShootToSide5.bin"
GFX_FGBleak_ShootToSide5End:
GFX_FGBleak_ShootForward1:
	db "GFX_FGBleak_ShootForward1.bin"
GFX_FGBleak_ShootForward1End:
GFX_FGBleak_ShootForward2:
	db "GFX_FGBleak_ShootForward2.bin"
GFX_FGBleak_ShootForward2End:
GFX_FGBleak_ShootForward3:
	db "GFX_FGBleak_ShootForward3.bin"
GFX_FGBleak_ShootForward3End:
GFX_FGBleak_Idle1:
	db "GFX_FGBleak_Idle1.bin"
GFX_FGBleak_Idle1End:
GFX_FGBleak_Idle2:
	db "GFX_FGBleak_Idle2.bin"
GFX_FGBleak_Idle2End:
GFX_FGBleak_Idle3:
	db "GFX_FGBleak_Idle3.bin"
GFX_FGBleak_Idle3End:
GFX_FGBleak_Idle4:
	db "GFX_FGBleak_Idle4.bin"
GFX_FGBleak_Idle4End:
GFX_FGBleak_LowerHead1:
	db "GFX_FGBleak_LowerHead1.bin"
GFX_FGBleak_LowerHead1End:
GFX_FGBleak_LowerHead2:
	db "GFX_FGBleak_LowerHead2.bin"
GFX_FGBleak_LowerHead2End:
GFX_FGBleak_LowerHead3:
	db "GFX_FGBleak_LowerHead3.bin"
GFX_FGBleak_LowerHead3End:
GFX_FGBleak_Hurt1:
	db "GFX_FGBleak_Hurt1.bin"
GFX_FGBleak_Hurt1End:
GFX_FGBleak_Hurt2:
	db "GFX_FGBleak_Hurt2.bin"
GFX_FGBleak_Hurt2End:
GFX_BGBleak_Throw1:
	db "GFX_BGBleak_Throw1.bin"
GFX_BGBleak_Throw1End:
GFX_BGBleak_Throw2:
	db "GFX_BGBleak_Throw2.bin"
GFX_BGBleak_Throw2End:
GFX_BGBleak_Throw3:
	db "GFX_BGBleak_Throw3.bin"
GFX_BGBleak_Throw3End:
GFX_BGBleak_Throw4:
	db "GFX_BGBleak_Throw4.bin"
GFX_BGBleak_Throw4End:
GFX_BGBleak_Throw5:
	db "GFX_BGBleak_Throw5.bin"
GFX_BGBleak_Throw5End:
GFX_BGBleak_Throw6:
	db "GFX_BGBleak_Throw6.bin"
GFX_BGBleak_Throw6End:
GFX_BGBleak_Throw7:
	db "GFX_BGBleak_Throw7.bin"
GFX_BGBleak_Throw7End:
GFX_BGBleak_Throw8:
	db "GFX_BGBleak_Throw8.bin"
GFX_BGBleak_Throw8End:
GFX_BGBleak_Idle1:
	db "GFX_BGBleak_Idle1.bin"
GFX_BGBleak_Idle1End:
GFX_BGBleak_Idle2:
	db "GFX_BGBleak_Idle2.bin"
GFX_BGBleak_Idle2End:
GFX_BGBleak_Hurt1:
	db "GFX_BGBleak_Hurt1.bin"
GFX_BGBleak_Hurt1End:
GFX_BGBleak_Hurt2:
	db "GFX_BGBleak_Hurt2.bin"
GFX_BGBleak_Hurt2End:
GFX_BGBleak_Hurt3:
	db "GFX_BGBleak_Hurt3.bin"
GFX_BGBleak_Hurt3End:
GFX_LargeSnowball_Pose1:
	db "GFX_LargeSnowball_Pose1.bin"
GFX_LargeSnowball_Pose1End:
GFX_LargeSnowball_Pose2:
	db "GFX_LargeSnowball_Pose2.bin"
GFX_LargeSnowball_Pose2End:
GFX_LargeSnowball_Pose3:
	db "GFX_LargeSnowball_Pose3.bin"
GFX_LargeSnowball_Pose3End:
GFX_LargeSnowball_Pose4:
	db "GFX_LargeSnowball_Pose4.bin"
GFX_LargeSnowball_Pose4End:
GFX_LargeSnowball_Pose5:
	db "GFX_LargeSnowball_Pose5.bin"
GFX_LargeSnowball_Pose5End:
GFX_SmallSnowball_Pose1:
	db "GFX_SmallSnowball_Pose1.bin"
GFX_SmallSnowball_Pose1End:
GFX_SmallSnowball_Pose2:
	db "GFX_SmallSnowball_Pose2.bin"
GFX_SmallSnowball_Pose2End:
GFX_SmallSnowball_Pose3:
	db "GFX_SmallSnowball_Pose3.bin"
GFX_SmallSnowball_Pose3End:
GFX_SmallSnowball_Pose4:
	db "GFX_SmallSnowball_Pose4.bin"
GFX_SmallSnowball_Pose4End:
GFX_SmallSnowball_Pose5:
	db "GFX_SmallSnowball_Pose5.bin"
GFX_SmallSnowball_Pose5End:
GFX_SmallSnowball_Pose6:
	db "GFX_SmallSnowball_Pose6.bin"
GFX_SmallSnowball_Pose6End:
GFX_SmallSnowball_Pose7:
	db "GFX_SmallSnowball_Pose7.bin"
GFX_SmallSnowball_Pose7End:
GFX_SmallSnowball_Pose8:
	db "GFX_SmallSnowball_Pose8.bin"
GFX_SmallSnowball_Pose8End:
GFX_SmallSnowball_Pose9:
	db "GFX_SmallSnowball_Pose9.bin"
GFX_SmallSnowball_Pose9End:
GFX_SmallSnowball_Pose10:
	db "GFX_SmallSnowball_Pose10.bin"
GFX_SmallSnowball_Pose10End:
GFX_Kobble_Walk1:
	db "GFX_Kobble_Walk1.bin"
GFX_Kobble_Walk1End:
GFX_Kobble_Walk2:
	db "GFX_Kobble_Walk2.bin"
GFX_Kobble_Walk2End:
GFX_Kobble_Walk3:
	db "GFX_Kobble_Walk3.bin"
GFX_Kobble_Walk3End:
GFX_Kobble_Walk4:
	db "GFX_Kobble_Walk4.bin"
GFX_Kobble_Walk4End:
GFX_Kobble_Walk5:
	db "GFX_Kobble_Walk5.bin"
GFX_Kobble_Walk5End:
GFX_Kobble_Walk6:
	db "GFX_Kobble_Walk6.bin"
GFX_Kobble_Walk6End:
GFX_Kobble_Walk7:
	db "GFX_Kobble_Walk7.bin"
GFX_Kobble_Walk7End:
GFX_Kobble_Walk8:
	db "GFX_Kobble_Walk8.bin"
GFX_Kobble_Walk8End:
GFX_Kobble_Turn1:
	db "GFX_Kobble_Turn1.bin"
GFX_Kobble_Turn1End:
GFX_Kobble_Turn2:
	db "GFX_Kobble_Turn2.bin"
GFX_Kobble_Turn2End:
GFX_Skidda_Walk1:
	db "GFX_Skidda_Walk1.bin"
GFX_Skidda_Walk1End:
GFX_Skidda_Walk2:
	db "GFX_Skidda_Walk2.bin"
GFX_Skidda_Walk2End:
GFX_Skidda_Walk3:
	db "GFX_Skidda_Walk3.bin"
GFX_Skidda_Walk3End:
GFX_Skidda_Walk4:
	db "GFX_Skidda_Walk4.bin"
GFX_Skidda_Walk4End:
GFX_Skidda_Walk5:
	db "GFX_Skidda_Walk5.bin"
GFX_Skidda_Walk5End:
GFX_Skidda_Walk6:
	db "GFX_Skidda_Walk6.bin"
GFX_Skidda_Walk6End:
GFX_Skidda_Walk7:
	db "GFX_Skidda_Walk7.bin"
GFX_Skidda_Walk7End:
GFX_Skidda_Walk8:
	db "GFX_Skidda_Walk8.bin"
GFX_Skidda_Walk8End:
GFX_Skidda_Dead1:
	db "GFX_Skidda_Dead1.bin"
GFX_Skidda_Dead1End:
GFX_Skidda_Dead2:
	db "GFX_Skidda_Dead2.bin"
GFX_Skidda_Dead2End:
GFX_Skidda_Dead3:
	db "GFX_Skidda_Dead3.bin"
GFX_Skidda_Dead3End:
GFX_Skidda_Turn1:
	db "GFX_Skidda_Turn1.bin"
GFX_Skidda_Turn1End:
GFX_Skidda_Turn2:
	db "GFX_Skidda_Turn2.bin"
GFX_Skidda_Turn2End:
GFX_Koin_Defend1:
	db "GFX_Koin_Defend1.bin"
GFX_Koin_Defend1End:
GFX_Koin_Defend2:
	db "GFX_Koin_Defend2.bin"
GFX_Koin_Defend2End:
GFX_Koin_Defend3:
	db "GFX_Koin_Defend3.bin"
GFX_Koin_Defend3End:
GFX_Koin_Defend4:
	db "GFX_Koin_Defend4.bin"
GFX_Koin_Defend4End:
GFX_Koin_Defend5:
	db "GFX_Koin_Defend5.bin"
GFX_Koin_Defend5End:
GFX_Koin_Defend6:
	db "GFX_Koin_Defend6.bin"
GFX_Koin_Defend6End:
GFX_Koin_Defend7:
	db "GFX_Koin_Defend7.bin"
GFX_Koin_Defend7End:
GFX_Koin_Defend8:
	db "GFX_Koin_Defend8.bin"
GFX_Koin_Defend8End:
GFX_Koin_Defend9:
	db "GFX_Koin_Defend9.bin"
GFX_Koin_Defend9End:
GFX_DKCoinOnShield_FaceRightDefend1:
	db "GFX_DKCoinOnShield_FaceRightDefend1.bin"
GFX_DKCoinOnShield_FaceRightDefend1End:
GFX_DKCoinOnShield_FaceRightDefend2:
	db "GFX_DKCoinOnShield_FaceRightDefend2.bin"
GFX_DKCoinOnShield_FaceRightDefend2End:
GFX_DKCoinOnShield_FaceRightDefend3:
	db "GFX_DKCoinOnShield_FaceRightDefend3.bin"
GFX_DKCoinOnShield_FaceRightDefend3End:
GFX_DKCoinOnShield_FaceRightDefend4:
	db "GFX_DKCoinOnShield_FaceRightDefend4.bin"
GFX_DKCoinOnShield_FaceRightDefend4End:
GFX_DKCoinOnShield_FaceRightDefend5:
	db "GFX_DKCoinOnShield_FaceRightDefend5.bin"
GFX_DKCoinOnShield_FaceRightDefend5End:
GFX_DKCoinOnShield_FaceRightDefend6:
	db "GFX_DKCoinOnShield_FaceRightDefend6.bin"
GFX_DKCoinOnShield_FaceRightDefend6End:
GFX_DKCoinOnShield_FaceRightDefend7:
	db "GFX_DKCoinOnShield_FaceRightDefend7.bin"
GFX_DKCoinOnShield_FaceRightDefend7End:
GFX_DKCoinOnShield_FaceRightDefend8:
	db "GFX_DKCoinOnShield_FaceRightDefend8.bin"
GFX_DKCoinOnShield_FaceRightDefend8End:
GFX_DKCoinOnShield_FaceRightDefend9:
	db "GFX_DKCoinOnShield_FaceRightDefend9.bin"
GFX_DKCoinOnShield_FaceRightDefend9End:
GFX_Koin_Idle1:
	db "GFX_Koin_Idle1.bin"
GFX_Koin_Idle1End:
GFX_Koin_Idle2:
	db "GFX_Koin_Idle2.bin"
GFX_Koin_Idle2End:
GFX_DKCoinOnShield_FaceLeftDefend1:
	db "GFX_DKCoinOnShield_FaceLeftDefend1.bin"
GFX_DKCoinOnShield_FaceLeftDefend1End:
GFX_DKCoinOnShield_FaceLeftDefend2:
	db "GFX_DKCoinOnShield_FaceLeftDefend2.bin"
GFX_DKCoinOnShield_FaceLeftDefend2End:
GFX_DKCoinOnShield_FaceLeftDefend3:
	db "GFX_DKCoinOnShield_FaceLeftDefend3.bin"
GFX_DKCoinOnShield_FaceLeftDefend3End:
GFX_DKCoinOnShield_FaceLeftDefend4:
	db "GFX_DKCoinOnShield_FaceLeftDefend4.bin"
GFX_DKCoinOnShield_FaceLeftDefend4End:
GFX_DKCoinOnShield_FaceLeftDefend5:
	db "GFX_DKCoinOnShield_FaceLeftDefend5.bin"
GFX_DKCoinOnShield_FaceLeftDefend5End:
GFX_DKCoinOnShield_FaceLeftDefend6:
	db "GFX_DKCoinOnShield_FaceLeftDefend6.bin"
GFX_DKCoinOnShield_FaceLeftDefend6End:
GFX_DKCoinOnShield_FaceLeftDefend7:
	db "GFX_DKCoinOnShield_FaceLeftDefend7.bin"
GFX_DKCoinOnShield_FaceLeftDefend7End:
GFX_DKCoinOnShield_FaceLeftDefend8:
	db "GFX_DKCoinOnShield_FaceLeftDefend8.bin"
GFX_DKCoinOnShield_FaceLeftDefend8End:
GFX_DKCoinOnShield_FaceLeftDefend9:
	db "GFX_DKCoinOnShield_FaceLeftDefend9.bin"
GFX_DKCoinOnShield_FaceLeftDefend9End:
GFX_Koin_Dead1:
	db "GFX_Koin_Dead1.bin"
GFX_Koin_Dead1End:
GFX_Koin_Dead2:
	db "GFX_Koin_Dead2.bin"
GFX_Koin_Dead2End:
GFX_Koin_Dead3:
	db "GFX_Koin_Dead3.bin"
GFX_Koin_Dead3End:
GFX_DKCoinOnShield_Freed1:
	db "GFX_DKCoinOnShield_Freed1.bin"
GFX_DKCoinOnShield_Freed1End:
GFX_DKCoinOnShield_Freed2:
	db "GFX_DKCoinOnShield_Freed2.bin"
GFX_DKCoinOnShield_Freed2End:
GFX_DKCoinOnShield_Freed3:
	db "GFX_DKCoinOnShield_Freed3.bin"
GFX_DKCoinOnShield_Freed3End:
GFX_DKCoinOnShield_Freed4:
	db "GFX_DKCoinOnShield_Freed4.bin"
GFX_DKCoinOnShield_Freed4End:
GFX_DKCoinOnShield_Freed5:
	db "GFX_DKCoinOnShield_Freed5.bin"
GFX_DKCoinOnShield_Freed5End:
GFX_DKCoinOnShield_Unknown1:
	db "GFX_DKCoinOnShield_Unknown1.bin"
GFX_DKCoinOnShield_Unknown1End:
GFX_DKCoinOnShield_Unknown2:
	db "GFX_DKCoinOnShield_Unknown2.bin"
GFX_DKCoinOnShield_Unknown2End:
GFX_DKCoinOnShield_Unknown3:
	db "GFX_DKCoinOnShield_Unknown3.bin"
GFX_DKCoinOnShield_Unknown3End:
GFX_DKCoinOnShield_Unknown4:
	db "GFX_DKCoinOnShield_Unknown4.bin"
GFX_DKCoinOnShield_Unknown4End:
GFX_DKCoinOnShield_Unknown5:
	db "GFX_DKCoinOnShield_Unknown5.bin"
GFX_DKCoinOnShield_Unknown5End:
GFX_Koin_Knockback1:
	db "GFX_Koin_Knockback1.bin"
GFX_Koin_Knockback1End:
GFX_Koin_Knockback2:
	db "GFX_Koin_Knockback2.bin"
GFX_Koin_Knockback2End:
GFX_TNTBarrel_Thrown1:
	db "GFX_TNTBarrel_Thrown1.bin"
GFX_TNTBarrel_Thrown1End:
GFX_TNTBarrel_Thrown2:
	db "GFX_TNTBarrel_Thrown2.bin"
GFX_TNTBarrel_Thrown2End:
GFX_TNTBarrel_Thrown3:
	db "GFX_TNTBarrel_Thrown3.bin"
GFX_TNTBarrel_Thrown3End:
GFX_TNTBarrel_Thrown4:
	db "GFX_TNTBarrel_Thrown4.bin"
GFX_TNTBarrel_Thrown4End:
GFX_TNTBarrel_Thrown5:
	db "GFX_TNTBarrel_Thrown5.bin"
GFX_TNTBarrel_Thrown5End:
GFX_TNTBarrel_Thrown6:
	db "GFX_TNTBarrel_Thrown6.bin"
GFX_TNTBarrel_Thrown6End:
GFX_TNTBarrel_Thrown7:
	db "GFX_TNTBarrel_Thrown7.bin"
GFX_TNTBarrel_Thrown7End:
GFX_TNTBarrel_Thrown8:
	db "GFX_TNTBarrel_Thrown8.bin"
GFX_TNTBarrel_Thrown8End:
GFX_InvincibilityBarrel_Idle:
	db "GFX_InvincibilityBarrel_Idle.bin"
GFX_InvincibilityBarrel_IdleEnd:
GFX_RocketBarrelCannon_Pose:
	db "GFX_RocketBarrelCannon_Pose.bin"
GFX_RocketBarrelCannon_PoseEnd:
GFX_Dixie_HangFromSquawks1:
	db "GFX_Dixie_HangFromSquawks1.bin"
GFX_Dixie_HangFromSquawks1End:
GFX_Dixie_HangFromSquawks2:
	db "GFX_Dixie_HangFromSquawks2.bin"
GFX_Dixie_HangFromSquawks2End:
GFX_Dixie_HangFromSquawks3:
	db "GFX_Dixie_HangFromSquawks3.bin"
GFX_Dixie_HangFromSquawks3End:
GFX_Dixie_HangFromSquawks4:
	db "GFX_Dixie_HangFromSquawks4.bin"
GFX_Dixie_HangFromSquawks4End:
GFX_Dixie_HangFromSquawks5:
	db "GFX_Dixie_HangFromSquawks5.bin"
GFX_Dixie_HangFromSquawks5End:
GFX_Dixie_HangFromSquawks6:
	db "GFX_Dixie_HangFromSquawks6.bin"
GFX_Dixie_HangFromSquawks6End:
GFX_Dixie_HangFromSquawks7:
	db "GFX_Dixie_HangFromSquawks7.bin"
GFX_Dixie_HangFromSquawks7End:
GFX_Dixie_HangFromSquawks8:
	db "GFX_Dixie_HangFromSquawks8.bin"
GFX_Dixie_HangFromSquawks8End:
GFX_Kiddy_HangFromSquawks1:
	db "GFX_Kiddy_HangFromSquawks1.bin"
GFX_Kiddy_HangFromSquawks1End:
GFX_Kiddy_HangFromSquawks2:
	db "GFX_Kiddy_HangFromSquawks2.bin"
GFX_Kiddy_HangFromSquawks2End:
GFX_Kiddy_HangFromSquawks3:
	db "GFX_Kiddy_HangFromSquawks3.bin"
GFX_Kiddy_HangFromSquawks3End:
GFX_Kiddy_HangFromSquawks4:
	db "GFX_Kiddy_HangFromSquawks4.bin"
GFX_Kiddy_HangFromSquawks4End:
GFX_Kiddy_HangFromSquawks5:
	db "GFX_Kiddy_HangFromSquawks5.bin"
GFX_Kiddy_HangFromSquawks5End:
GFX_Kiddy_HangFromSquawks6:
	db "GFX_Kiddy_HangFromSquawks6.bin"
GFX_Kiddy_HangFromSquawks6End:
GFX_BlankFrame_Pose:
	db "GFX_BlankFrame_Pose.bin"
GFX_BlankFrame_PoseEnd:
GFX_TopOfKAOSKoreWaterFall_Pose1:
	db "GFX_TopOfKAOSKoreWaterFall_Pose1.bin"
GFX_TopOfKAOSKoreWaterFall_Pose1End:
GFX_TopOfKAOSKoreWaterFall_Pose2:
	db "GFX_TopOfKAOSKoreWaterFall_Pose2.bin"
GFX_TopOfKAOSKoreWaterFall_Pose2End:
GFX_TopOfKAOSKoreWaterFall_Pose3:
	db "GFX_TopOfKAOSKoreWaterFall_Pose3.bin"
GFX_TopOfKAOSKoreWaterFall_Pose3End:
GFX_TopOfKAOSKoreWaterFall_Pose4:
	db "GFX_TopOfKAOSKoreWaterFall_Pose4.bin"
GFX_TopOfKAOSKoreWaterFall_Pose4End:
GFX_BottomOfKAOSKoreWaterFall_Pose1:
	db "GFX_BottomOfKAOSKoreWaterFall_Pose1.bin"
GFX_BottomOfKAOSKoreWaterFall_Pose1End:
GFX_BottomOfKAOSKoreWaterFall_Pose2:
	db "GFX_BottomOfKAOSKoreWaterFall_Pose2.bin"
GFX_BottomOfKAOSKoreWaterFall_Pose2End:
GFX_BottomOfKAOSKoreWaterFall_Pose3:
	db "GFX_BottomOfKAOSKoreWaterFall_Pose3.bin"
GFX_BottomOfKAOSKoreWaterFall_Pose3End:
GFX_BottomOfKAOSKoreWaterFall_Pose4:
	db "GFX_BottomOfKAOSKoreWaterFall_Pose4.bin"
GFX_BottomOfKAOSKoreWaterFall_Pose4End:
GFX_TobogganSparks_Pose1:
	db "GFX_TobogganSparks_Pose1.bin"
GFX_TobogganSparks_Pose1End:
GFX_TobogganSparks_Pose2:
	db "GFX_TobogganSparks_Pose2.bin"
GFX_TobogganSparks_Pose2End:
GFX_TobogganSparks_Pose3:
	db "GFX_TobogganSparks_Pose3.bin"
GFX_TobogganSparks_Pose3End:
GFX_TobogganSparks_Pose4:
	db "GFX_TobogganSparks_Pose4.bin"
GFX_TobogganSparks_Pose4End:
GFX_TobogganSparks_Pose5:
	db "GFX_TobogganSparks_Pose5.bin"
GFX_TobogganSparks_Pose5End:
GFX_TobogganSparks_Pose6:
	db "GFX_TobogganSparks_Pose6.bin"
GFX_TobogganSparks_Pose6End:
GFX_TobogganSparks_Pose7:
	db "GFX_TobogganSparks_Pose7.bin"
GFX_TobogganSparks_Pose7End:
GFX_TobogganSparks_Pose8:
	db "GFX_TobogganSparks_Pose8.bin"
GFX_TobogganSparks_Pose8End:
GFX_TobogganSparks_Pose9:
	db "GFX_TobogganSparks_Pose9.bin"
GFX_TobogganSparks_Pose9End:
GFX_TobogganSparks_Pose10:
	db "GFX_TobogganSparks_Pose10.bin"
GFX_TobogganSparks_Pose10End:
GFX_TobogganSparks_Pose11:
	db "GFX_TobogganSparks_Pose11.bin"
GFX_TobogganSparks_Pose11End:
GFX_TobogganSnowPuff_Pose1:
	db "GFX_TobogganSnowPuff_Pose1.bin"
GFX_TobogganSnowPuff_Pose1End:
GFX_TobogganSnowPuff_Pose2:
	db "GFX_TobogganSnowPuff_Pose2.bin"
GFX_TobogganSnowPuff_Pose2End:
GFX_TobogganSnowPuff_Pose3:
	db "GFX_TobogganSnowPuff_Pose3.bin"
GFX_TobogganSnowPuff_Pose3End:
GFX_TobogganSnowPuff_Pose4:
	db "GFX_TobogganSnowPuff_Pose4.bin"
GFX_TobogganSnowPuff_Pose4End:
GFX_TobogganSnowPuff_Pose5:
	db "GFX_TobogganSnowPuff_Pose5.bin"
GFX_TobogganSnowPuff_Pose5End:
GFX_TobogganSnowPuff_Pose6:
	db "GFX_TobogganSnowPuff_Pose6.bin"
GFX_TobogganSnowPuff_Pose6End:
GFX_TobogganSnowPuff_Pose7:
	db "GFX_TobogganSnowPuff_Pose7.bin"
GFX_TobogganSnowPuff_Pose7End:
GFX_TobogganSnowPuff_Pose8:
	db "GFX_TobogganSnowPuff_Pose8.bin"
GFX_TobogganSnowPuff_Pose8End:
GFX_TobogganSnowPuff_Pose9:
	db "GFX_TobogganSnowPuff_Pose9.bin"
GFX_TobogganSnowPuff_Pose9End:
GFX_TobogganSnowPuff_Pose10:
	db "GFX_TobogganSnowPuff_Pose10.bin"
GFX_TobogganSnowPuff_Pose10End:
GFX_TobogganSnowPuff_Pose11:
	db "GFX_TobogganSnowPuff_Pose11.bin"
GFX_TobogganSnowPuff_Pose11End:
GFX_TobogganSnowPuff_Pose12:
	db "GFX_TobogganSnowPuff_Pose12.bin"
GFX_TobogganSnowPuff_Pose12End:
GFX_MapKiddy_Bounce1:
	db "GFX_MapKiddy_Bounce1.bin"
GFX_MapKiddy_Bounce1End:
GFX_MapKiddy_Bounce2:
	db "GFX_MapKiddy_Bounce2.bin"
GFX_MapKiddy_Bounce2End:
GFX_MapKiddy_Bounce3:
	db "GFX_MapKiddy_Bounce3.bin"
GFX_MapKiddy_Bounce3End:
GFX_MapKiddy_Bounce4:
	db "GFX_MapKiddy_Bounce4.bin"
GFX_MapKiddy_Bounce4End:
GFX_MapKiddy_Bounce5:
	db "GFX_MapKiddy_Bounce5.bin"
GFX_MapKiddy_Bounce5End:
GFX_MapKiddy_RideChairlift:
	db "GFX_MapKiddy_RideChairlift.bin"
GFX_MapKiddy_RideChairliftEnd:
GFX_MapDixie_Bounce1:
	db "GFX_MapDixie_Bounce1.bin"
GFX_MapDixie_Bounce1End:
GFX_MapDixie_Bounce2:
	db "GFX_MapDixie_Bounce2.bin"
GFX_MapDixie_Bounce2End:
GFX_MapDixie_Bounce3:
	db "GFX_MapDixie_Bounce3.bin"
GFX_MapDixie_Bounce3End:
GFX_MapDixie_Bounce4:
	db "GFX_MapDixie_Bounce4.bin"
GFX_MapDixie_Bounce4End:
GFX_MapDixie_Bounce5:
	db "GFX_MapDixie_Bounce5.bin"
GFX_MapDixie_Bounce5End:
GFX_MapDixie_RideChairlift:
	db "GFX_MapDixie_RideChairlift.bin"
GFX_MapDixie_RideChairliftEnd:
GFX_KAOSHead_LaserHead:
	db "GFX_KAOSHead_LaserHead.bin"
GFX_KAOSHead_LaserHeadEnd:
GFX_KAOSHead_SkullHeadLookFront:
	db "GFX_KAOSHead_SkullHeadLookFront.bin"
GFX_KAOSHead_SkullHeadLookFrontEnd:
GFX_KAOSHead_CylinderHeadPose1:
	db "GFX_KAOSHead_CylinderHeadPose1.bin"
GFX_KAOSHead_CylinderHeadPose1End:
GFX_KAOSHead_CylinderHeadPose2:
	db "GFX_KAOSHead_CylinderHeadPose2.bin"
GFX_KAOSHead_CylinderHeadPose2End:
GFX_KAOSHead_CylinderHeadPose3:
	db "GFX_KAOSHead_CylinderHeadPose3.bin"
GFX_KAOSHead_CylinderHeadPose3End:
GFX_KAOSHead_CylinderHeadPose4:
	db "GFX_KAOSHead_CylinderHeadPose4.bin"
GFX_KAOSHead_CylinderHeadPose4End:
GFX_KAOSHead_CylinderHeadPose5:
	db "GFX_KAOSHead_CylinderHeadPose5.bin"
GFX_KAOSHead_CylinderHeadPose5End:
GFX_KAOSHead_CylinderHeadPose6:
	db "GFX_KAOSHead_CylinderHeadPose6.bin"
GFX_KAOSHead_CylinderHeadPose6End:
GFX_KAOSHead_CylinderHeadPose7:
	db "GFX_KAOSHead_CylinderHeadPose7.bin"
GFX_KAOSHead_CylinderHeadPose7End:
GFX_KAOSBoxingGlove_Pose1:
	db "GFX_KAOSBoxingGlove_Pose1.bin"
GFX_KAOSBoxingGlove_Pose1End:
GFX_KAOSBoxingGlove_Pose2:
	db "GFX_KAOSBoxingGlove_Pose2.bin"
GFX_KAOSBoxingGlove_Pose2End:
GFX_KAOSBoxingGlove_Pose3:
	db "GFX_KAOSBoxingGlove_Pose3.bin"
GFX_KAOSBoxingGlove_Pose3End:
GFX_KAOSBoxingGlove_Pose4:
	db "GFX_KAOSBoxingGlove_Pose4.bin"
GFX_KAOSBoxingGlove_Pose4End:
GFX_KAOSBlade_Pose1:
	db "GFX_KAOSBlade_Pose1.bin"
GFX_KAOSBlade_Pose1End:
GFX_KAOSBlade_Pose2:
	db "GFX_KAOSBlade_Pose2.bin"
GFX_KAOSBlade_Pose2End:
GFX_KAOSBlade_Pose3:
	db "GFX_KAOSBlade_Pose3.bin"
GFX_KAOSBlade_Pose3End:
GFX_KAOSBlade_Pose4:
	db "GFX_KAOSBlade_Pose4.bin"
GFX_KAOSBlade_Pose4End:
GFX_KAOSBlade_Pose5:
	db "GFX_KAOSBlade_Pose5.bin"
GFX_KAOSBlade_Pose5End:
GFX_KAOSBlade_Pose6:
	db "GFX_KAOSBlade_Pose6.bin"
GFX_KAOSBlade_Pose6End:
GFX_KAOSBlade_Pose7:
	db "GFX_KAOSBlade_Pose7.bin"
GFX_KAOSBlade_Pose7End:
GFX_KAOSBlade_Pose8:
	db "GFX_KAOSBlade_Pose8.bin"
GFX_KAOSBlade_Pose8End:
GFX_KAOSBlade_Pose9:
	db "GFX_KAOSBlade_Pose9.bin"
GFX_KAOSBlade_Pose9End:
GFX_KAOSBlade_Pose10:
	db "GFX_KAOSBlade_Pose10.bin"
GFX_KAOSBlade_Pose10End:
GFX_KAOSBlade_Pose11:
	db "GFX_KAOSBlade_Pose11.bin"
GFX_KAOSBlade_Pose11End:
GFX_KAOSHead_SkullHeadLookLeft1:
	db "GFX_KAOSHead_SkullHeadLookLeft1.bin"
GFX_KAOSHead_SkullHeadLookLeft1End:
GFX_KAOSHead_SkullHeadLookRight1:
	db "GFX_KAOSHead_SkullHeadLookRight1.bin"
GFX_KAOSHead_SkullHeadLookRight1End:
GFX_KAOSHead_SkullHeadLookLeft2:
	db "GFX_KAOSHead_SkullHeadLookLeft2.bin"
GFX_KAOSHead_SkullHeadLookLeft2End:
GFX_KAOSHead_SkullHeadLookRight2:
	db "GFX_KAOSHead_SkullHeadLookRight2.bin"
GFX_KAOSHead_SkullHeadLookRight2End:
GFX_KAOSBomb_Pose1:
	db "GFX_KAOSBomb_Pose1.bin"
GFX_KAOSBomb_Pose1End:
GFX_KAOSBomb_Pose2:
	db "GFX_KAOSBomb_Pose2.bin"
GFX_KAOSBomb_Pose2End:
GFX_KAOSBomb_Pose3:
	db "GFX_KAOSBomb_Pose3.bin"
GFX_KAOSBomb_Pose3End:
GFX_FireballLandingParticles_Pose1:
	db "GFX_FireballLandingParticles_Pose1.bin"
GFX_FireballLandingParticles_Pose1End:
GFX_FireballLandingParticles_Pose2:
	db "GFX_FireballLandingParticles_Pose2.bin"
GFX_FireballLandingParticles_Pose2End:
GFX_FireballLandingParticles_Pose3:
	db "GFX_FireballLandingParticles_Pose3.bin"
GFX_FireballLandingParticles_Pose3End:
GFX_FireballLandingParticles_Pose4:
	db "GFX_FireballLandingParticles_Pose4.bin"
GFX_FireballLandingParticles_Pose4End:
GFX_FireballLandingParticles_Pose5:
	db "GFX_FireballLandingParticles_Pose5.bin"
GFX_FireballLandingParticles_Pose5End:
GFX_FireballLandingParticles_Pose6:
	db "GFX_FireballLandingParticles_Pose6.bin"
GFX_FireballLandingParticles_Pose6End:
GFX_FireballLandingParticles_Pose7:
	db "GFX_FireballLandingParticles_Pose7.bin"
GFX_FireballLandingParticles_Pose7End:
GFX_FireballLandingParticles_Pose8:
	db "GFX_FireballLandingParticles_Pose8.bin"
GFX_FireballLandingParticles_Pose8End:
GFX_FireballLandingParticles_Pose9:
	db "GFX_FireballLandingParticles_Pose9.bin"
GFX_FireballLandingParticles_Pose9End:
GFX_FireballLandingParticles_Pose10:
	db "GFX_FireballLandingParticles_Pose10.bin"
GFX_FireballLandingParticles_Pose10End:
GFX_FireballLandingParticles_Pose11:
	db "GFX_FireballLandingParticles_Pose11.bin"
GFX_FireballLandingParticles_Pose11End:
GFX_FireballLandingParticles_Pose12:
	db "GFX_FireballLandingParticles_Pose12.bin"
GFX_FireballLandingParticles_Pose12End:
GFX_FireballLandingParticles_Pose13:
	db "GFX_FireballLandingParticles_Pose13.bin"
GFX_FireballLandingParticles_Pose13End:
GFX_KAOSFlame_Idle1:
	db "GFX_KAOSFlame_Idle1.bin"
GFX_KAOSFlame_Idle1End:
GFX_KAOSFlame_Idle2:
	db "GFX_KAOSFlame_Idle2.bin"
GFX_KAOSFlame_Idle2End:
GFX_KAOSFlame_Idle3:
	db "GFX_KAOSFlame_Idle3.bin"
GFX_KAOSFlame_Idle3End:
GFX_KAOSFlame_Idle4:
	db "GFX_KAOSFlame_Idle4.bin"
GFX_KAOSFlame_Idle4End:
GFX_KAOSFlame_Idle5:
	db "GFX_KAOSFlame_Idle5.bin"
GFX_KAOSFlame_Idle5End:
GFX_KAOSFlame_Idle6:
	db "GFX_KAOSFlame_Idle6.bin"
GFX_KAOSFlame_Idle6End:
GFX_KAOSFlame_Idle7:
	db "GFX_KAOSFlame_Idle7.bin"
GFX_KAOSFlame_Idle7End:
GFX_KAOSFlame_Idle8:
	db "GFX_KAOSFlame_Idle8.bin"
GFX_KAOSFlame_Idle8End:
GFX_KAOSFlame_Idle9:
	db "GFX_KAOSFlame_Idle9.bin"
GFX_KAOSFlame_Idle9End:
GFX_KAOSFlame_Idle10:
	db "GFX_KAOSFlame_Idle10.bin"
GFX_KAOSFlame_Idle10End:
GFX_KAOSFlame_Idle11:
	db "GFX_KAOSFlame_Idle11.bin"
GFX_KAOSFlame_Idle11End:
GFX_KAOSFlame_Idle12:
	db "GFX_KAOSFlame_Idle12.bin"
GFX_KAOSFlame_Idle12End:
GFX_KAOSFlame_SpreadOnGround1:
	db "GFX_KAOSFlame_SpreadOnGround1.bin"
GFX_KAOSFlame_SpreadOnGround1End:
GFX_KAOSFlame_SpreadOnGround2:
	db "GFX_KAOSFlame_SpreadOnGround2.bin"
GFX_KAOSFlame_SpreadOnGround2End:
GFX_KAOSFlame_SpreadOnGround3:
	db "GFX_KAOSFlame_SpreadOnGround3.bin"
GFX_KAOSFlame_SpreadOnGround3End:
GFX_KAOSFlame_SpreadOnGround4:
	db "GFX_KAOSFlame_SpreadOnGround4.bin"
GFX_KAOSFlame_SpreadOnGround4End:
GFX_KAOSFlame_SpreadOnGround5:
	db "GFX_KAOSFlame_SpreadOnGround5.bin"
GFX_KAOSFlame_SpreadOnGround5End:
GFX_KAOSFlame_SpreadOnGround6:
	db "GFX_KAOSFlame_SpreadOnGround6.bin"
GFX_KAOSFlame_SpreadOnGround6End:
GFX_KAOSFlame_SpreadOnGround7:
	db "GFX_KAOSFlame_SpreadOnGround7.bin"
GFX_KAOSFlame_SpreadOnGround7End:
GFX_KAOSFlame_SpreadOnGround8:
	db "GFX_KAOSFlame_SpreadOnGround8.bin"
GFX_KAOSFlame_SpreadOnGround8End:
GFX_KAOSFlame_SpreadOnGround9:
	db "GFX_KAOSFlame_SpreadOnGround9.bin"
GFX_KAOSFlame_SpreadOnGround9End:
GFX_KAOSFlame_SpreadOnGround10:
	db "GFX_KAOSFlame_SpreadOnGround10.bin"
GFX_KAOSFlame_SpreadOnGround10End:
GFX_KAOSFlame_SpreadOnGround11:
	db "GFX_KAOSFlame_SpreadOnGround11.bin"
GFX_KAOSFlame_SpreadOnGround11End:
GFX_KastleKAOSSpriteMask_Pose:
	db "GFX_KastleKAOSSpriteMask_Pose.bin"
GFX_KastleKAOSSpriteMask_PoseEnd:
GFX_PostKAOSFightSpriteMask_Pose:
	db "GFX_PostKAOSFightSpriteMask_Pose.bin"
GFX_PostKAOSFightSpriteMask_PoseEnd:
GFX_SkyHighSecretRock_Pose:
	db "GFX_SkyHighSecretRock_Pose.bin"
GFX_SkyHighSecretRock_PoseEnd:
GFX_LargePipe_Pose:
	db "GFX_LargePipe_Pose.bin"
GFX_LargePipe_PoseEnd:
GFX_WaterfallBarrel_Pose1:
	db "GFX_WaterfallBarrel_Pose1.bin"
GFX_WaterfallBarrel_Pose1End:
GFX_WaterfallBarrel_Pose2:
	db "GFX_WaterfallBarrel_Pose2.bin"
GFX_WaterfallBarrel_Pose2End:
GFX_WaterfallBarrel_Pose3:
	db "GFX_WaterfallBarrel_Pose3.bin"
GFX_WaterfallBarrel_Pose3End:
GFX_WaterfallBarrel_Pose4:
	db "GFX_WaterfallBarrel_Pose4.bin"
GFX_WaterfallBarrel_Pose4End:
GFX_WaterfallBarrel_Pose5:
	db "GFX_WaterfallBarrel_Pose5.bin"
GFX_WaterfallBarrel_Pose5End:
GFX_WaterfallBarrel_Pose6:
	db "GFX_WaterfallBarrel_Pose6.bin"
GFX_WaterfallBarrel_Pose6End:
GFX_WaterfallBarrel_Pose7:
	db "GFX_WaterfallBarrel_Pose7.bin"
GFX_WaterfallBarrel_Pose7End:
GFX_WaterfallBarrel_Pose8:
	db "GFX_WaterfallBarrel_Pose8.bin"
GFX_WaterfallBarrel_Pose8End:
GFX_Rockpile_Explode1:
	db "GFX_Rockpile_Explode1.bin"
GFX_Rockpile_Explode1End:
GFX_Rockpile_Explode2:
	db "GFX_Rockpile_Explode2.bin"
GFX_Rockpile_Explode2End:
GFX_Rockpile_Explode3:
	db "GFX_Rockpile_Explode3.bin"
GFX_Rockpile_Explode3End:
GFX_Rockpile_Explode4:
	db "GFX_Rockpile_Explode4.bin"
GFX_Rockpile_Explode4End:
GFX_Rockpile_Explode5:
	db "GFX_Rockpile_Explode5.bin"
GFX_Rockpile_Explode5End:
GFX_Rockpile_Explode6:
	db "GFX_Rockpile_Explode6.bin"
GFX_Rockpile_Explode6End:
GFX_Rockpile_Explode7:
	db "GFX_Rockpile_Explode7.bin"
GFX_Rockpile_Explode7End:
GFX_Rockpile_Explode8:
	db "GFX_Rockpile_Explode8.bin"
GFX_Rockpile_Explode8End:
GFX_Rockpile_Explode9:
	db "GFX_Rockpile_Explode9.bin"
GFX_Rockpile_Explode9End:
GFX_Rockpile_Explode10:
	db "GFX_Rockpile_Explode10.bin"
GFX_Rockpile_Explode10End:
GFX_Rockpile_Explode11:
	db "GFX_Rockpile_Explode11.bin"
GFX_Rockpile_Explode11End:
GFX_Krosshair_Pose:
	db "GFX_Krosshair_Pose.bin"
GFX_Krosshair_PoseEnd:
GFX_Ellie_SuckTowardsCamera1:
	db "GFX_Ellie_SuckTowardsCamera1.bin"
GFX_Ellie_SuckTowardsCamera1End:
GFX_Ellie_SuckTowardsCamera2:
	db "GFX_Ellie_SuckTowardsCamera2.bin"
GFX_Ellie_SuckTowardsCamera2End:
GFX_Ellie_SuckTowardsCamera3:
	db "GFX_Ellie_SuckTowardsCamera3.bin"
GFX_Ellie_SuckTowardsCamera3End:
GFX_Ellie_SuckTowardsCamera4:
	db "GFX_Ellie_SuckTowardsCamera4.bin"
GFX_Ellie_SuckTowardsCamera4End:
GFX_Ellie_SuckTowardsCamera5:
	db "GFX_Ellie_SuckTowardsCamera5.bin"
GFX_Ellie_SuckTowardsCamera5End:
GFX_Ellie_SuckTowardsCamera6:
	db "GFX_Ellie_SuckTowardsCamera6.bin"
GFX_Ellie_SuckTowardsCamera6End:
GFX_Ellie_SuckTowardsCamera7:
	db "GFX_Ellie_SuckTowardsCamera7.bin"
GFX_Ellie_SuckTowardsCamera7End:
GFX_Ellie_SuckTowardsCamera8:
	db "GFX_Ellie_SuckTowardsCamera8.bin"
GFX_Ellie_SuckTowardsCamera8End:
GFX_Ellie_SuckTowardsCamera9:
	db "GFX_Ellie_SuckTowardsCamera9.bin"
GFX_Ellie_SuckTowardsCamera9End:
GFX_Ellie_SuckTowardsBG1:
	db "GFX_Ellie_SuckTowardsBG1.bin"
GFX_Ellie_SuckTowardsBG1End:
GFX_Ellie_SuckTowardsBG2:
	db "GFX_Ellie_SuckTowardsBG2.bin"
GFX_Ellie_SuckTowardsBG2End:
GFX_Ellie_SuckTowardsBG3:
	db "GFX_Ellie_SuckTowardsBG3.bin"
GFX_Ellie_SuckTowardsBG3End:
GFX_Ellie_SuckTowardsBG4:
	db "GFX_Ellie_SuckTowardsBG4.bin"
GFX_Ellie_SuckTowardsBG4End:
GFX_Ellie_SuckTowardsBG5:
	db "GFX_Ellie_SuckTowardsBG5.bin"
GFX_Ellie_SuckTowardsBG5End:
GFX_Ellie_SuckTowardsBG6:
	db "GFX_Ellie_SuckTowardsBG6.bin"
GFX_Ellie_SuckTowardsBG6End:
GFX_Ellie_SuckTowardsBG7:
	db "GFX_Ellie_SuckTowardsBG7.bin"
GFX_Ellie_SuckTowardsBG7End:
GFX_Ellie_SuckTowardsBG8:
	db "GFX_Ellie_SuckTowardsBG8.bin"
GFX_Ellie_SuckTowardsBG8End:
GFX_Ellie_SuckTowardsBG9:
	db "GFX_Ellie_SuckTowardsBG9.bin"
GFX_Ellie_SuckTowardsBG9End:
GFX_Knautilus_Pose:
	db "GFX_Knautilus_Pose.bin"
GFX_Knautilus_PoseEnd:
GFX_KnautilusDoor_Pose1:
	db "GFX_KnautilusDoor_Pose1.bin"
GFX_KnautilusDoor_Pose1End:
GFX_KnautilusDoor_Pose2:
	db "GFX_KnautilusDoor_Pose2.bin"
GFX_KnautilusDoor_Pose2End:
GFX_KnautilusDoor_Pose3:
	db "GFX_KnautilusDoor_Pose3.bin"
GFX_KnautilusDoor_Pose3End:
GFX_KnautilusDoor_Pose4:
	db "GFX_KnautilusDoor_Pose4.bin"
GFX_KnautilusDoor_Pose4End:
GFX_KnautilusDoor_Pose5:
	db "GFX_KnautilusDoor_Pose5.bin"
GFX_KnautilusDoor_Pose5End:
GFX_KnautilusDoor_Pose6:
	db "GFX_KnautilusDoor_Pose6.bin"
GFX_KnautilusDoor_Pose6End:
GFX_ElectricNode_Pose1:
	db "GFX_ElectricNode_Pose1.bin"
GFX_ElectricNode_Pose1End:
GFX_ElectricNode_Pose2:
	db "GFX_ElectricNode_Pose2.bin"
GFX_ElectricNode_Pose2End:
GFX_ElectricNode_Pose3:
	db "GFX_ElectricNode_Pose3.bin"
GFX_ElectricNode_Pose3End:
GFX_ElectricNode_Pose4:
	db "GFX_ElectricNode_Pose4.bin"
GFX_ElectricNode_Pose4End:
GFX_ElectricNode_Pose5:
	db "GFX_ElectricNode_Pose5.bin"
GFX_ElectricNode_Pose5End:
GFX_ElectricNode_Pose6:
	db "GFX_ElectricNode_Pose6.bin"
GFX_ElectricNode_Pose6End:
GFX_KastleKAOSLever_Idle:
	db "GFX_KastleKAOSLever_Idle.bin"
GFX_KastleKAOSLever_IdleEnd:
GFX_KastleKAOSLever_Retract1:
	db "GFX_KastleKAOSLever_Retract1.bin"
GFX_KastleKAOSLever_Retract1End:
GFX_KastleKAOSLever_Retract2:
	db "GFX_KastleKAOSLever_Retract2.bin"
GFX_KastleKAOSLever_Retract2End:
GFX_KastleKAOSLever_Retract3:
	db "GFX_KastleKAOSLever_Retract3.bin"
GFX_KastleKAOSLever_Retract3End:
GFX_KRoolPropeller_Deploy1:
	db "GFX_KRoolPropeller_Deploy1.bin"
GFX_KRoolPropeller_Deploy1End:
GFX_KRoolPropeller_Deploy2:
	db "GFX_KRoolPropeller_Deploy2.bin"
GFX_KRoolPropeller_Deploy2End:
GFX_KRoolPropeller_Deploy3:
	db "GFX_KRoolPropeller_Deploy3.bin"
GFX_KRoolPropeller_Deploy3End:
GFX_KRoolPropeller_Deploy4:
	db "GFX_KRoolPropeller_Deploy4.bin"
GFX_KRoolPropeller_Deploy4End:
GFX_KRoolPropeller_Spin1:
	db "GFX_KRoolPropeller_Spin1.bin"
GFX_KRoolPropeller_Spin1End:
GFX_KRoolPropeller_Spin2:
	db "GFX_KRoolPropeller_Spin2.bin"
GFX_KRoolPropeller_Spin2End:
GFX_KRoolPropeller_Spin3:
	db "GFX_KRoolPropeller_Spin3.bin"
GFX_KRoolPropeller_Spin3End:
GFX_KRoolPropeller_Spin4:
	db "GFX_KRoolPropeller_Spin4.bin"
GFX_KRoolPropeller_Spin4End:
GFX_KRoolPropeller_Spin5:
	db "GFX_KRoolPropeller_Spin5.bin"
GFX_KRoolPropeller_Spin5End:
GFX_KRoolPropeller_Spin6:
	db "GFX_KRoolPropeller_Spin6.bin"
GFX_KRoolPropeller_Spin6End:
GFX_LavaSmoke_Pose1:
	db "GFX_LavaSmoke_Pose1.bin"
GFX_LavaSmoke_Pose1End:
GFX_LavaSmoke_Pose2:
	db "GFX_LavaSmoke_Pose2.bin"
GFX_LavaSmoke_Pose2End:
GFX_LavaSmoke_Pose3:
	db "GFX_LavaSmoke_Pose3.bin"
GFX_LavaSmoke_Pose3End:
GFX_LavaSmoke_Pose4:
	db "GFX_LavaSmoke_Pose4.bin"
GFX_LavaSmoke_Pose4End:
GFX_LavaSmoke_Pose5:
	db "GFX_LavaSmoke_Pose5.bin"
GFX_LavaSmoke_Pose5End:
GFX_LavaSmoke_Pose6:
	db "GFX_LavaSmoke_Pose6.bin"
GFX_LavaSmoke_Pose6End:
GFX_LavaSmoke_Pose7:
	db "GFX_LavaSmoke_Pose7.bin"
GFX_LavaSmoke_Pose7End:
GFX_LavaSmoke_Pose8:
	db "GFX_LavaSmoke_Pose8.bin"
GFX_LavaSmoke_Pose8End:
GFX_LavaSmoke_Pose9:
	db "GFX_LavaSmoke_Pose9.bin"
GFX_LavaSmoke_Pose9End:
GFX_LavaSmoke_Pose10:
	db "GFX_LavaSmoke_Pose10.bin"
GFX_LavaSmoke_Pose10End:
GFX_LavaSmoke_Pose11:
	db "GFX_LavaSmoke_Pose11.bin"
GFX_LavaSmoke_Pose11End:
GFX_LavaSmoke_Pose12:
	db "GFX_LavaSmoke_Pose12.bin"
GFX_LavaSmoke_Pose12End:
GFX_CollectableCog_Pose1:
	db "GFX_CollectableCog_Pose1.bin"
GFX_CollectableCog_Pose1End:
GFX_CollectableCog_Pose2:
	db "GFX_CollectableCog_Pose2.bin"
GFX_CollectableCog_Pose2End:
GFX_CollectableCog_Pose3:
	db "GFX_CollectableCog_Pose3.bin"
GFX_CollectableCog_Pose3End:
GFX_CollectableCog_Pose4:
	db "GFX_CollectableCog_Pose4.bin"
GFX_CollectableCog_Pose4End:
GFX_CollectableCog_Pose5:
	db "GFX_CollectableCog_Pose5.bin"
GFX_CollectableCog_Pose5End:
GFX_CollectableCog_Pose6:
	db "GFX_CollectableCog_Pose6.bin"
GFX_CollectableCog_Pose6End:
GFX_CollectableCog_Pose7:
	db "GFX_CollectableCog_Pose7.bin"
GFX_CollectableCog_Pose7End:
GFX_CollectableCog_Pose8:
	db "GFX_CollectableCog_Pose8.bin"
GFX_CollectableCog_Pose8End:
GFX_MapKRool_Pose1:
	db "GFX_MapKRool_Pose1.bin"
GFX_MapKRool_Pose1End:
GFX_MapKRool_Pose2:
	db "GFX_MapKRool_Pose2.bin"
GFX_MapKRool_Pose2End:
GFX_MapKRool_Pose3:
	db "GFX_MapKRool_Pose3.bin"
GFX_MapKRool_Pose3End:
GFX_MapKRool_Pose4:
	db "GFX_MapKRool_Pose4.bin"
GFX_MapKRool_Pose4End:
GFX_MapKRool_Pose5:
	db "GFX_MapKRool_Pose5.bin"
GFX_MapKRool_Pose5End:
GFX_MapKRool_Pose6:
	db "GFX_MapKRool_Pose6.bin"
GFX_MapKRool_Pose6End:
GFX_MapKRool_Pose7:
	db "GFX_MapKRool_Pose7.bin"
GFX_MapKRool_Pose7End:
GFX_MapKRool_Pose8:
	db "GFX_MapKRool_Pose8.bin"
GFX_MapKRool_Pose8End:
GFX_MapKRool_Pose9:
	db "GFX_MapKRool_Pose9.bin"
GFX_MapKRool_Pose9End:
GFX_FunkyKongDrivingBoat_Pose:
	db "GFX_FunkyKongDrivingBoat_Pose.bin"
GFX_FunkyKongDrivingBoat_PoseEnd:
GFX_CrankyKongJetSkiing_Normal1:
	db "GFX_CrankyKongJetSkiing_Normal1.bin"
GFX_CrankyKongJetSkiing_Normal1End:
GFX_CrankyKongJetSkiing_Normal2:
	db "GFX_CrankyKongJetSkiing_Normal2.bin"
GFX_CrankyKongJetSkiing_Normal2End:
GFX_CrankyKongJetSkiing_Normal3:
	db "GFX_CrankyKongJetSkiing_Normal3.bin"
GFX_CrankyKongJetSkiing_Normal3End:
GFX_CrankyKongJetSkiing_Waving1:
	db "GFX_CrankyKongJetSkiing_Waving1.bin"
GFX_CrankyKongJetSkiing_Waving1End:
GFX_CrankyKongJetSkiing_Waving2:
	db "GFX_CrankyKongJetSkiing_Waving2.bin"
GFX_CrankyKongJetSkiing_Waving2End:
GFX_CrankyKongJetSkiing_Waving3:
	db "GFX_CrankyKongJetSkiing_Waving3.bin"
GFX_CrankyKongJetSkiing_Waving3End:
GFX_CrankyKongJetSkiing_Handstand1:
	db "GFX_CrankyKongJetSkiing_Handstand1.bin"
GFX_CrankyKongJetSkiing_Handstand1End:
GFX_CrankyKongJetSkiing_Handstand2:
	db "GFX_CrankyKongJetSkiing_Handstand2.bin"
GFX_CrankyKongJetSkiing_Handstand2End:
GFX_CrankyKongJetSkiing_Handstand3:
	db "GFX_CrankyKongJetSkiing_Handstand3.bin"
GFX_CrankyKongJetSkiing_Handstand3End:
GFX_CrankyKongJetSkiing_Dragged1:
	db "GFX_CrankyKongJetSkiing_Dragged1.bin"
GFX_CrankyKongJetSkiing_Dragged1End:
GFX_CrankyKongJetSkiing_Dragged2:
	db "GFX_CrankyKongJetSkiing_Dragged2.bin"
GFX_CrankyKongJetSkiing_Dragged2End:
GFX_CrankyKongJetSkiing_Dragged3:
	db "GFX_CrankyKongJetSkiing_Dragged3.bin"
GFX_CrankyKongJetSkiing_Dragged3End:
GFX_FuelTank_Pose:
	db "GFX_FuelTank_Pose.bin"
GFX_FuelTank_PoseEnd:
GFX_BananaBirdQueenHead_Pose1:
	db "GFX_BananaBirdQueenHead_Pose1.bin"
GFX_BananaBirdQueenHead_Pose1End:
GFX_BananaBirdQueenHead_Pose2:
	db "GFX_BananaBirdQueenHead_Pose2.bin"
GFX_BananaBirdQueenHead_Pose2End:
GFX_BananaBirdQueenHead_Pose3:
	db "GFX_BananaBirdQueenHead_Pose3.bin"
GFX_BananaBirdQueenHead_Pose3End:
GFX_BananaBirdQueenHead_Pose4:
	db "GFX_BananaBirdQueenHead_Pose4.bin"
GFX_BananaBirdQueenHead_Pose4End:
GFX_BananaBirdQueenHead_Pose5:
	db "GFX_BananaBirdQueenHead_Pose5.bin"
GFX_BananaBirdQueenHead_Pose5End:
GFX_BananaBirdQueenHead_Pose6:
	db "GFX_BananaBirdQueenHead_Pose6.bin"
GFX_BananaBirdQueenHead_Pose6End:
GFX_LightsOnBananaBirdQueenBarrier_Pose:
	db "GFX_LightsOnBananaBirdQueenBarrier_Pose.bin"
GFX_LightsOnBananaBirdQueenBarrier_PoseEnd:
GFX_GiantBananaBirdQueenEgg_Pose:
	db "GFX_GiantBananaBirdQueenEgg_Pose.bin"
GFX_GiantBananaBirdQueenEgg_PoseEnd:
GFX_KRoolsEyes_Pose1:
	db "GFX_KRoolsEyes_Pose1.bin"
GFX_KRoolsEyes_Pose1End:
GFX_KRoolsEyes_Pose2:
	db "GFX_KRoolsEyes_Pose2.bin"
GFX_KRoolsEyes_Pose2End:
GFX_KRoolsEyes_Pose3:
	db "GFX_KRoolsEyes_Pose3.bin"
GFX_KRoolsEyes_Pose3End:
GFX_EggShellPiece1_Pose1:
	db "GFX_EggShellPiece1_Pose1.bin"
GFX_EggShellPiece1_Pose1End:
GFX_EggShellPiece1_Pose2:
	db "GFX_EggShellPiece1_Pose2.bin"
GFX_EggShellPiece1_Pose2End:
GFX_EggShellPiece1_Pose3:
	db "GFX_EggShellPiece1_Pose3.bin"
GFX_EggShellPiece1_Pose3End:
GFX_EggShellPiece1_Pose4:
	db "GFX_EggShellPiece1_Pose4.bin"
GFX_EggShellPiece1_Pose4End:
GFX_EggShellPiece1_Pose5:
	db "GFX_EggShellPiece1_Pose5.bin"
GFX_EggShellPiece1_Pose5End:
GFX_EggShellPiece1_Pose6:
	db "GFX_EggShellPiece1_Pose6.bin"
GFX_EggShellPiece1_Pose6End:
GFX_EggShellPiece1_Pose7:
	db "GFX_EggShellPiece1_Pose7.bin"
GFX_EggShellPiece1_Pose7End:
GFX_EggShellPiece1_Pose8:
	db "GFX_EggShellPiece1_Pose8.bin"
GFX_EggShellPiece1_Pose8End:
GFX_EggShellPiece2_Pose1:
	db "GFX_EggShellPiece2_Pose1.bin"
GFX_EggShellPiece2_Pose1End:
GFX_EggShellPiece2_Pose2:
	db "GFX_EggShellPiece2_Pose2.bin"
GFX_EggShellPiece2_Pose2End:
GFX_EggShellPiece2_Pose3:
	db "GFX_EggShellPiece2_Pose3.bin"
GFX_EggShellPiece2_Pose3End:
GFX_EggShellPiece2_Pose4:
	db "GFX_EggShellPiece2_Pose4.bin"
GFX_EggShellPiece2_Pose4End:
GFX_EggShellPiece2_Pose5:
	db "GFX_EggShellPiece2_Pose5.bin"
GFX_EggShellPiece2_Pose5End:
GFX_EggShellPiece2_Pose6:
	db "GFX_EggShellPiece2_Pose6.bin"
GFX_EggShellPiece2_Pose6End:
GFX_EggShellPiece2_Pose7:
	db "GFX_EggShellPiece2_Pose7.bin"
GFX_EggShellPiece2_Pose7End:
GFX_EggShellPiece2_Pose8:
	db "GFX_EggShellPiece2_Pose8.bin"
GFX_EggShellPiece2_Pose8End:
GFX_Dixie_SitOnEgg1:
	db "GFX_Dixie_SitOnEgg1.bin"
GFX_Dixie_SitOnEgg1End:
GFX_Dixie_SitOnEgg2:
	db "GFX_Dixie_SitOnEgg2.bin"
GFX_Dixie_SitOnEgg2End:
GFX_Dixie_SitOnEgg3:
	db "GFX_Dixie_SitOnEgg3.bin"
GFX_Dixie_SitOnEgg3End:
GFX_Dixie_SitOnEgg4:
	db "GFX_Dixie_SitOnEgg4.bin"
GFX_Dixie_SitOnEgg4End:
GFX_Dixie_SitOnEgg5:
	db "GFX_Dixie_SitOnEgg5.bin"
GFX_Dixie_SitOnEgg5End:
GFX_Dixie_SitOnEgg6:
	db "GFX_Dixie_SitOnEgg6.bin"
GFX_Dixie_SitOnEgg6End:
GFX_Dixie_SitOnEgg7:
	db "GFX_Dixie_SitOnEgg7.bin"
GFX_Dixie_SitOnEgg7End:
GFX_Kiddy_SitOnEgg1:
	db "GFX_Kiddy_SitOnEgg1.bin"
GFX_Kiddy_SitOnEgg1End:
GFX_Kiddy_SitOnEgg2:
	db "GFX_Kiddy_SitOnEgg2.bin"
GFX_Kiddy_SitOnEgg2End:
GFX_Kiddy_SitOnEgg3:
	db "GFX_Kiddy_SitOnEgg3.bin"
GFX_Kiddy_SitOnEgg3End:
GFX_Kiddy_SitOnEgg4:
	db "GFX_Kiddy_SitOnEgg4.bin"
GFX_Kiddy_SitOnEgg4End:
GFX_Kiddy_SitOnEgg5:
	db "GFX_Kiddy_SitOnEgg5.bin"
GFX_Kiddy_SitOnEgg5End:
GFX_Kiddy_SitOnEgg6:
	db "GFX_Kiddy_SitOnEgg6.bin"
GFX_Kiddy_SitOnEgg6End:
GFX_Kiddy_SitOnEgg7:
	db "GFX_Kiddy_SitOnEgg7.bin"
GFX_Kiddy_SitOnEgg7End:
GFX_Kiddy_SitOnEgg8:
	db "GFX_Kiddy_SitOnEgg8.bin"
GFX_Kiddy_SitOnEgg8End:
GFX_RocketPlatform_Pose:
	db "GFX_RocketPlatform_Pose.bin"
GFX_RocketPlatform_PoseEnd:
GFX_KRoolHead_LookUp1:
	db "GFX_KRoolHead_LookUp1.bin"
GFX_KRoolHead_LookUp1End:
GFX_KRoolHead_LookUp2:
	db "GFX_KRoolHead_LookUp2.bin"
GFX_KRoolHead_LookUp2End:
GFX_KRoolHead_LookUp3:
	db "GFX_KRoolHead_LookUp3.bin"
GFX_KRoolHead_LookUp3End:
GFX_KRoolHead_LookUp4:
	db "GFX_KRoolHead_LookUp4.bin"
GFX_KRoolHead_LookUp4End:
GFX_KRoolHead_LookUp5:
	db "GFX_KRoolHead_LookUp5.bin"
GFX_KRoolHead_LookUp5End:
GFX_KRoolHead_Shock1:
	db "GFX_KRoolHead_Shock1.bin"
GFX_KRoolHead_Shock1End:
GFX_KRoolHead_Shock2:
	db "GFX_KRoolHead_Shock2.bin"
GFX_KRoolHead_Shock2End:
GFX_KRoolHead_Shock3:
	db "GFX_KRoolHead_Shock3.bin"
GFX_KRoolHead_Shock3End:
GFX_MapBananaBirdQueen_FlyUp1:
	db "GFX_MapBananaBirdQueen_FlyUp1.bin"
GFX_MapBananaBirdQueen_FlyUp1End:
GFX_MapBananaBirdQueen_FlyUp2:
	db "GFX_MapBananaBirdQueen_FlyUp2.bin"
GFX_MapBananaBirdQueen_FlyUp2End:
GFX_MapBananaBirdQueen_FlyUp3:
	db "GFX_MapBananaBirdQueen_FlyUp3.bin"
GFX_MapBananaBirdQueen_FlyUp3End:
GFX_MapBananaBirdQueen_FlyUp4:
	db "GFX_MapBananaBirdQueen_FlyUp4.bin"
GFX_MapBananaBirdQueen_FlyUp4End:
GFX_MapBananaBirdQueen_FlyUp5:
	db "GFX_MapBananaBirdQueen_FlyUp5.bin"
GFX_MapBananaBirdQueen_FlyUp5End:
GFX_MapBananaBirdQueen_FlyUp6:
	db "GFX_MapBananaBirdQueen_FlyUp6.bin"
GFX_MapBananaBirdQueen_FlyUp6End:
GFX_MapBananaBirdQueen_FlyDiagonallyUp1:
	db "GFX_MapBananaBirdQueen_FlyDiagonallyUp1.bin"
GFX_MapBananaBirdQueen_FlyDiagonallyUp1End:
GFX_MapBananaBirdQueen_FlyDiagonallyUp2:
	db "GFX_MapBananaBirdQueen_FlyDiagonallyUp2.bin"
GFX_MapBananaBirdQueen_FlyDiagonallyUp2End:
GFX_MapBananaBirdQueen_FlyDiagonallyUp3:
	db "GFX_MapBananaBirdQueen_FlyDiagonallyUp3.bin"
GFX_MapBananaBirdQueen_FlyDiagonallyUp3End:
GFX_MapBananaBirdQueen_FlyDiagonallyUp4:
	db "GFX_MapBananaBirdQueen_FlyDiagonallyUp4.bin"
GFX_MapBananaBirdQueen_FlyDiagonallyUp4End:
GFX_MapBananaBirdQueen_FlyDiagonallyUp5:
	db "GFX_MapBananaBirdQueen_FlyDiagonallyUp5.bin"
GFX_MapBananaBirdQueen_FlyDiagonallyUp5End:
GFX_MapBananaBirdQueen_FlyDiagonallyUp6:
	db "GFX_MapBananaBirdQueen_FlyDiagonallyUp6.bin"
GFX_MapBananaBirdQueen_FlyDiagonallyUp6End:
GFX_MapBananaBirdQueen_FlySide1:
	db "GFX_MapBananaBirdQueen_FlySide1.bin"
GFX_MapBananaBirdQueen_FlySide1End:
GFX_MapBananaBirdQueen_FlySide2:
	db "GFX_MapBananaBirdQueen_FlySide2.bin"
GFX_MapBananaBirdQueen_FlySide2End:
GFX_MapBananaBirdQueen_FlySide3:
	db "GFX_MapBananaBirdQueen_FlySide3.bin"
GFX_MapBananaBirdQueen_FlySide3End:
GFX_MapBananaBirdQueen_FlySide4:
	db "GFX_MapBananaBirdQueen_FlySide4.bin"
GFX_MapBananaBirdQueen_FlySide4End:
GFX_MapBananaBirdQueen_FlySide5:
	db "GFX_MapBananaBirdQueen_FlySide5.bin"
GFX_MapBananaBirdQueen_FlySide5End:
GFX_MapBananaBirdQueen_FlySide6:
	db "GFX_MapBananaBirdQueen_FlySide6.bin"
GFX_MapBananaBirdQueen_FlySide6End:
GFX_MapBananaBirdQueen_FlyDiagonallyDown1:
	db "GFX_MapBananaBirdQueen_FlyDiagonallyDown1.bin"
GFX_MapBananaBirdQueen_FlyDiagonallyDown1End:
GFX_MapBananaBirdQueen_FlyDiagonallyDown2:
	db "GFX_MapBananaBirdQueen_FlyDiagonallyDown2.bin"
GFX_MapBananaBirdQueen_FlyDiagonallyDown2End:
GFX_MapBananaBirdQueen_FlyDiagonallyDown3:
	db "GFX_MapBananaBirdQueen_FlyDiagonallyDown3.bin"
GFX_MapBananaBirdQueen_FlyDiagonallyDown3End:
GFX_MapBananaBirdQueen_FlyDiagonallyDown4:
	db "GFX_MapBananaBirdQueen_FlyDiagonallyDown4.bin"
GFX_MapBananaBirdQueen_FlyDiagonallyDown4End:
GFX_MapBananaBirdQueen_FlyDiagonallyDown5:
	db "GFX_MapBananaBirdQueen_FlyDiagonallyDown5.bin"
GFX_MapBananaBirdQueen_FlyDiagonallyDown5End:
GFX_MapBananaBirdQueen_FlyDiagonallyDown6:
	db "GFX_MapBananaBirdQueen_FlyDiagonallyDown6.bin"
GFX_MapBananaBirdQueen_FlyDiagonallyDown6End:
GFX_MapBananaBirdQueen_FlyDown1:
	db "GFX_MapBananaBirdQueen_FlyDown1.bin"
GFX_MapBananaBirdQueen_FlyDown1End:
GFX_MapBananaBirdQueen_FlyDown2:
	db "GFX_MapBananaBirdQueen_FlyDown2.bin"
GFX_MapBananaBirdQueen_FlyDown2End:
GFX_MapBananaBirdQueen_FlyDown3:
	db "GFX_MapBananaBirdQueen_FlyDown3.bin"
GFX_MapBananaBirdQueen_FlyDown3End:
GFX_MapBananaBirdQueen_FlyDown4:
	db "GFX_MapBananaBirdQueen_FlyDown4.bin"
GFX_MapBananaBirdQueen_FlyDown4End:
GFX_MapBananaBirdQueen_FlyDown5:
	db "GFX_MapBananaBirdQueen_FlyDown5.bin"
GFX_MapBananaBirdQueen_FlyDown5End:
GFX_MapBananaBirdQueen_FlyDown6:
	db "GFX_MapBananaBirdQueen_FlyDown6.bin"
GFX_MapBananaBirdQueen_FlyDown6End:
GFX_SwankyKongsBarrelInEnding_Pose:
	db "GFX_SwankyKongsBarrelInEnding_Pose.bin"
GFX_SwankyKongsBarrelInEnding_PoseEnd:
GFX_CheckpointStars_Pose1:
	db "GFX_CheckpointStars_Pose1.bin"
GFX_CheckpointStars_Pose1End:
GFX_CheckpointStars_Pose2:
	db "GFX_CheckpointStars_Pose2.bin"
GFX_CheckpointStars_Pose2End:
GFX_CheckpointStars_Pose3:
	db "GFX_CheckpointStars_Pose3.bin"
GFX_CheckpointStars_Pose3End:
GFX_CheckpointStars_Pose4:
	db "GFX_CheckpointStars_Pose4.bin"
GFX_CheckpointStars_Pose4End:
GFX_CheckpointStars_Pose5:
	db "GFX_CheckpointStars_Pose5.bin"
GFX_CheckpointStars_Pose5End:
GFX_CheckpointStars_Pose6:
	db "GFX_CheckpointStars_Pose6.bin"
GFX_CheckpointStars_Pose6End:
GFX_CheckpointStars_Pose7:
	db "GFX_CheckpointStars_Pose7.bin"
GFX_CheckpointStars_Pose7End:
GFX_CheckpointStars_Pose8:
	db "GFX_CheckpointStars_Pose8.bin"
GFX_CheckpointStars_Pose8End:
GFX_CheckpointStars_Pose9:
	db "GFX_CheckpointStars_Pose9.bin"
GFX_CheckpointStars_Pose9End:
GFX_CheckpointStars_Pose10:
	db "GFX_CheckpointStars_Pose10.bin"
GFX_CheckpointStars_Pose10End:
GFX_CheckpointStars_Pose11:
	db "GFX_CheckpointStars_Pose11.bin"
GFX_CheckpointStars_Pose11End:
GFX_CheckpointStars_Pose12:
	db "GFX_CheckpointStars_Pose12.bin"
GFX_CheckpointStars_Pose12End:
GFX_CheckpointStars_Pose13:
	db "GFX_CheckpointStars_Pose13.bin"
GFX_CheckpointStars_Pose13End:
GFX_CheckpointStars_Pose14:
	db "GFX_CheckpointStars_Pose14.bin"
GFX_CheckpointStars_Pose14End:
GFX_CheckpointStars_Pose15:
	db "GFX_CheckpointStars_Pose15.bin"
GFX_CheckpointStars_Pose15End:
GFX_LevelEndFlagpole_Pose:
	db "GFX_LevelEndFlagpole_Pose.bin"
GFX_LevelEndFlagpole_PoseEnd:
GFX_LevelEndFlag_Rest:
	db "GFX_LevelEndFlag_Rest.bin"
GFX_LevelEndFlag_RestEnd:
GFX_LevelEndFlag_BeginRaise:
	db "GFX_LevelEndFlag_BeginRaise.bin"
GFX_LevelEndFlag_BeginRaiseEnd:
GFX_LimpLevelEndFlag_Rest:
	db "GFX_LimpLevelEndFlag_Rest.bin"
GFX_LimpLevelEndFlag_RestEnd:
GFX_LimpLevelEndFlag_BeginRaise:
	db "GFX_LimpLevelEndFlag_BeginRaise.bin"
GFX_LimpLevelEndFlag_BeginRaiseEnd:
GFX_LevelEndFlag_Flap1:
	db "GFX_LevelEndFlag_Flap1.bin"
GFX_LevelEndFlag_Flap1End:
GFX_LevelEndFlag_Flap2:
	db "GFX_LevelEndFlag_Flap2.bin"
GFX_LevelEndFlag_Flap2End:
GFX_LevelEndFlag_Flap3:
	db "GFX_LevelEndFlag_Flap3.bin"
GFX_LevelEndFlag_Flap3End:
GFX_LevelEndFlag_Flap4:
	db "GFX_LevelEndFlag_Flap4.bin"
GFX_LevelEndFlag_Flap4End:
GFX_LevelEndFlag_Flap5:
	db "GFX_LevelEndFlag_Flap5.bin"
GFX_LevelEndFlag_Flap5End:
GFX_LevelEndFlag_Flap6:
	db "GFX_LevelEndFlag_Flap6.bin"
GFX_LevelEndFlag_Flap6End:
GFX_LevelEndFlag_Flap7:
	db "GFX_LevelEndFlag_Flap7.bin"
GFX_LevelEndFlag_Flap7End:
GFX_LevelEndFlag_Flap8:
	db "GFX_LevelEndFlag_Flap8.bin"
GFX_LevelEndFlag_Flap8End:
GFX_LimpLevelEndFlag_Flap1:
	db "GFX_LimpLevelEndFlag_Flap1.bin"
GFX_LimpLevelEndFlag_Flap1End:
GFX_LimpLevelEndFlag_Flap2:
	db "GFX_LimpLevelEndFlag_Flap2.bin"
GFX_LimpLevelEndFlag_Flap2End:
GFX_LimpLevelEndFlag_Flap3:
	db "GFX_LimpLevelEndFlag_Flap3.bin"
GFX_LimpLevelEndFlag_Flap3End:
GFX_LimpLevelEndFlag_Flap4:
	db "GFX_LimpLevelEndFlag_Flap4.bin"
GFX_LimpLevelEndFlag_Flap4End:
GFX_LimpLevelEndFlag_Flap5:
	db "GFX_LimpLevelEndFlag_Flap5.bin"
GFX_LimpLevelEndFlag_Flap5End:
GFX_LimpLevelEndFlag_Flap6:
	db "GFX_LimpLevelEndFlag_Flap6.bin"
GFX_LimpLevelEndFlag_Flap6End:
GFX_LimpLevelEndFlag_Flap7:
	db "GFX_LimpLevelEndFlag_Flap7.bin"
GFX_LimpLevelEndFlag_Flap7End:
GFX_LimpLevelEndFlag_Flap8:
	db "GFX_LimpLevelEndFlag_Flap8.bin"
GFX_LimpLevelEndFlag_Flap8End:
GFX_UnknownCircles_Pose1:
	db "GFX_UnknownCircles_Pose1.bin"
GFX_UnknownCircles_Pose1End:
GFX_UnknownCircles_Pose2:
	db "GFX_UnknownCircles_Pose2.bin"
GFX_UnknownCircles_Pose2End:
GFX_UnknownCircles_Pose3:
	db "GFX_UnknownCircles_Pose3.bin"
GFX_UnknownCircles_Pose3End:
GFX_UnknownCircles_Pose4:
	db "GFX_UnknownCircles_Pose4.bin"
GFX_UnknownCircles_Pose4End:
GFX_UnknownCircles_Pose5:
	db "GFX_UnknownCircles_Pose5.bin"
GFX_UnknownCircles_Pose5End:
GFX_UnknownCircles_Pose6:
	db "GFX_UnknownCircles_Pose6.bin"
GFX_UnknownCircles_Pose6End:
GFX_UnknownCircles_Pose7:
	db "GFX_UnknownCircles_Pose7.bin"
GFX_UnknownCircles_Pose7End:
GFX_BGKRool_Idle1:
	db "GFX_BGKRool_Idle1.bin"
GFX_BGKRool_Idle1End:
GFX_BGKRool_Idle2:
	db "GFX_BGKRool_Idle2.bin"
GFX_BGKRool_Idle2End:
GFX_BGKRool_Idle3:
	db "GFX_BGKRool_Idle3.bin"
GFX_BGKRool_Idle3End:
GFX_BGKRool_Idle4:
	db "GFX_BGKRool_Idle4.bin"
GFX_BGKRool_Idle4End:
GFX_BGKRool_Idle5:
	db "GFX_BGKRool_Idle5.bin"
GFX_BGKRool_Idle5End:
GFX_BGKRool_Idle6:
	db "GFX_BGKRool_Idle6.bin"
GFX_BGKRool_Idle6End:
GFX_BGKRool_Turn1:
	db "GFX_BGKRool_Turn1.bin"
GFX_BGKRool_Turn1End:
GFX_BGKRool_Turn2:
	db "GFX_BGKRool_Turn2.bin"
GFX_BGKRool_Turn2End:
GFX_BGKRool_PressRemote1:
	db "GFX_BGKRool_PressRemote1.bin"
GFX_BGKRool_PressRemote1End:
GFX_BGKRool_PressRemote2:
	db "GFX_BGKRool_PressRemote2.bin"
GFX_BGKRool_PressRemote2End:
GFX_BGKRool_PressRemote3:
	db "GFX_BGKRool_PressRemote3.bin"
GFX_BGKRool_PressRemote3End:
GFX_BGKRool_PressRemote4:
	db "GFX_BGKRool_PressRemote4.bin"
GFX_BGKRool_PressRemote4End:
GFX_BGKRool_PressRemote5:
	db "GFX_BGKRool_PressRemote5.bin"
GFX_BGKRool_PressRemote5End:
GFX_BGKRool_PressRemote6:
	db "GFX_BGKRool_PressRemote6.bin"
GFX_BGKRool_PressRemote6End:
GFX_BGKRool_PressRemote7:
	db "GFX_BGKRool_PressRemote7.bin"
GFX_BGKRool_PressRemote7End:
GFX_BGKRool_Hurt1:
	db "GFX_BGKRool_Hurt1.bin"
GFX_BGKRool_Hurt1End:
GFX_BGKRool_Hurt2:
	db "GFX_BGKRool_Hurt2.bin"
GFX_BGKRool_Hurt2End:
GFX_BGKRool_Hurt3:
	db "GFX_BGKRool_Hurt3.bin"
GFX_BGKRool_Hurt3End:
GFX_BGKRool_Hurt4:
	db "GFX_BGKRool_Hurt4.bin"
GFX_BGKRool_Hurt4End:
GFX_BGKRool_Dead1:
	db "GFX_BGKRool_Dead1.bin"
GFX_BGKRool_Dead1End:
GFX_BGKRool_Dead2:
	db "GFX_BGKRool_Dead2.bin"
GFX_BGKRool_Dead2End:
GFX_BGKRool_Dead3:
	db "GFX_BGKRool_Dead3.bin"
GFX_BGKRool_Dead3End:
GFX_BGKRool_Dead4:
	db "GFX_BGKRool_Dead4.bin"
GFX_BGKRool_Dead4End:
GFX_BGKRool_Dead5:
	db "GFX_BGKRool_Dead5.bin"
GFX_BGKRool_Dead5End:
GFX_BGKRoolPropeller_Spin1:
	db "GFX_BGKRoolPropeller_Spin1.bin"
GFX_BGKRoolPropeller_Spin1End:
GFX_BGKRoolPropeller_Spin2:
	db "GFX_BGKRoolPropeller_Spin2.bin"
GFX_BGKRoolPropeller_Spin2End:
GFX_BGKRoolPropeller_Spin3:
	db "GFX_BGKRoolPropeller_Spin3.bin"
GFX_BGKRoolPropeller_Spin3End:
GFX_BGKRoolPropeller_Spin4:
	db "GFX_BGKRoolPropeller_Spin4.bin"
GFX_BGKRoolPropeller_Spin4End:
GFX_BGKRoolPropeller_Spin5:
	db "GFX_BGKRoolPropeller_Spin5.bin"
GFX_BGKRoolPropeller_Spin5End:
GFX_BGKRoolPropeller_Spin6:
	db "GFX_BGKRoolPropeller_Spin6.bin"
GFX_BGKRoolPropeller_Spin6End:
GFX_JapaneseSubtitleSign_Pose:
	db "GFX_JapaneseSubtitleSign_Pose.bin"
GFX_JapaneseSubtitleSign_PoseEnd:
GFX_KRool_Flailing1:
	db "GFX_KRool_Flailing1.bin"
GFX_KRool_Flailing1End:
GFX_KRool_Flailing2:
	db "GFX_KRool_Flailing2.bin"
GFX_KRool_Flailing2End:
GFX_KRool_Flailing3:
	db "GFX_KRool_Flailing3.bin"
GFX_KRool_Flailing3End:
GFX_KRool_Flailing4:
	db "GFX_KRool_Flailing4.bin"
GFX_KRool_Flailing4End:
GFX_KRool_Flailing5:
	db "GFX_KRool_Flailing5.bin"
GFX_KRool_Flailing5End:
GFX_KRool_Talking1:
	db "GFX_KRool_Talking1.bin"
GFX_KRool_Talking1End:
GFX_KRool_Talking2:
	db "GFX_KRool_Talking2.bin"
GFX_KRool_Talking2End:
GFX_KRool_Talking3:
	db "GFX_KRool_Talking3.bin"
GFX_KRool_Talking3End:
GFX_KRool_Talking4:
	db "GFX_KRool_Talking4.bin"
GFX_KRool_Talking4End:
GFX_KRool_Talking5:
	db "GFX_KRool_Talking5.bin"
GFX_KRool_Talking5End:
GFX_KRool_Talking6:
	db "GFX_KRool_Talking6.bin"
GFX_KRool_Talking6End:
GFX_KRool_Jump1:
	db "GFX_KRool_Jump1.bin"
GFX_KRool_Jump1End:
GFX_KRool_Jump2:
	db "GFX_KRool_Jump2.bin"
GFX_KRool_Jump2End:
GFX_KRool_Exposed1:
	db "GFX_KRool_Exposed1.bin"
GFX_KRool_Exposed1End:
GFX_KRool_Exposed2:
	db "GFX_KRool_Exposed2.bin"
GFX_KRool_Exposed2End:
GFX_KRool_Exposed3:
	db "GFX_KRool_Exposed3.bin"
GFX_KRool_Exposed3End:
GFX_KRool_Exposed4:
	db "GFX_KRool_Exposed4.bin"
GFX_KRool_Exposed4End:
GFX_CraneThatCarriesKAOS_Pose:
	db "GFX_CraneThatCarriesKAOS_Pose.bin"
GFX_CraneThatCarriesKAOS_PoseEnd:
GFX_KRoolCurtain_Pose:
	db "GFX_KRoolCurtain_Pose.bin"
GFX_KRoolCurtain_PoseEnd:
GFX_SteelKeg_InBG:
	db "GFX_SteelKeg_InBG.bin"
GFX_SteelKeg_InBGEnd:
GFX_KnautilusFireballShooter_Pose1:
	db "GFX_KnautilusFireballShooter_Pose1.bin"
GFX_KnautilusFireballShooter_Pose1End:
GFX_KnautilusFireballShooter_Pose2:
	db "GFX_KnautilusFireballShooter_Pose2.bin"
GFX_KnautilusFireballShooter_Pose2End:
GFX_KnautilusFireballShooter_Pose3:
	db "GFX_KnautilusFireballShooter_Pose3.bin"
GFX_KnautilusFireballShooter_Pose3End:
GFX_KnautilusFireballShooter_Pose4:
	db "GFX_KnautilusFireballShooter_Pose4.bin"
GFX_KnautilusFireballShooter_Pose4End:
GFX_CeilingVacuumEffect_Pose1:
	db "GFX_CeilingVacuumEffect_Pose1.bin"
GFX_CeilingVacuumEffect_Pose1End:
GFX_CeilingVacuumEffect_Pose2:
	db "GFX_CeilingVacuumEffect_Pose2.bin"
GFX_CeilingVacuumEffect_Pose2End:
GFX_CeilingVacuumEffect_Pose3:
	db "GFX_CeilingVacuumEffect_Pose3.bin"
GFX_CeilingVacuumEffect_Pose3End:
GFX_CeilingVacuumEffect_Pose4:
	db "GFX_CeilingVacuumEffect_Pose4.bin"
GFX_CeilingVacuumEffect_Pose4End:
GFX_CeilingVacuumEffect_Pose5:
	db "GFX_CeilingVacuumEffect_Pose5.bin"
GFX_CeilingVacuumEffect_Pose5End:
GFX_CeilingVacuumEffect_Pose6:
	db "GFX_CeilingVacuumEffect_Pose6.bin"
GFX_CeilingVacuumEffect_Pose6End:
GFX_CeilingVacuumEffect_Pose7:
	db "GFX_CeilingVacuumEffect_Pose7.bin"
GFX_CeilingVacuumEffect_Pose7End:
GFX_CeilingVacuumEffect_Pose8:
	db "GFX_CeilingVacuumEffect_Pose8.bin"
GFX_CeilingVacuumEffect_Pose8End:
GFX_SteelKeg_Electrified1:
	db "GFX_SteelKeg_Electrified1.bin"
GFX_SteelKeg_Electrified1End:
GFX_SteelKeg_Electrified2:
	db "GFX_SteelKeg_Electrified2.bin"
GFX_SteelKeg_Electrified2End:
GFX_SteelKeg_Electrified3:
	db "GFX_SteelKeg_Electrified3.bin"
GFX_SteelKeg_Electrified3End:
GFX_SteelKeg_Electrified4:
	db "GFX_SteelKeg_Electrified4.bin"
GFX_SteelKeg_Electrified4End:
GFX_SteelKeg_Electrified5:
	db "GFX_SteelKeg_Electrified5.bin"
GFX_SteelKeg_Electrified5End:
GFX_SteelKeg_Electrified6:
	db "GFX_SteelKeg_Electrified6.bin"
GFX_SteelKeg_Electrified6End:
GFX_SteelKeg_Electrified7:
	db "GFX_SteelKeg_Electrified7.bin"
GFX_SteelKeg_Electrified7End:
GFX_SteelKeg_Electrified8:
	db "GFX_SteelKeg_Electrified8.bin"
GFX_SteelKeg_Electrified8End:
GFX_DonkeyKong_Talking1:
	db "GFX_DonkeyKong_Talking1.bin"
GFX_DonkeyKong_Talking1End:
GFX_DonkeyKong_Talking2:
	db "GFX_DonkeyKong_Talking2.bin"
GFX_DonkeyKong_Talking2End:
GFX_DonkeyKong_Talking3:
	db "GFX_DonkeyKong_Talking3.bin"
GFX_DonkeyKong_Talking3End:
GFX_DonkeyKong_Talking4:
	db "GFX_DonkeyKong_Talking4.bin"
GFX_DonkeyKong_Talking4End:
GFX_DonkeyKong_Talking5:
	db "GFX_DonkeyKong_Talking5.bin"
GFX_DonkeyKong_Talking5End:
GFX_DonkeyKong_Talking6:
	db "GFX_DonkeyKong_Talking6.bin"
GFX_DonkeyKong_Talking6End:
GFX_DonkeyKong_Talking7:
	db "GFX_DonkeyKong_Talking7.bin"
GFX_DonkeyKong_Talking7End:
GFX_DonkeyKong_Jump1:
	db "GFX_DonkeyKong_Jump1.bin"
GFX_DonkeyKong_Jump1End:
GFX_DonkeyKong_Jump2:
	db "GFX_DonkeyKong_Jump2.bin"
GFX_DonkeyKong_Jump2End:
GFX_DonkeyKong_Jump3:
	db "GFX_DonkeyKong_Jump3.bin"
GFX_DonkeyKong_Jump3End:
GFX_DonkeyKong_Jump4:
	db "GFX_DonkeyKong_Jump4.bin"
GFX_DonkeyKong_Jump4End:
GFX_DonkeyKong_Jump5:
	db "GFX_DonkeyKong_Jump5.bin"
GFX_DonkeyKong_Jump5End:
GFX_DonkeyKong_Jump6:
	db "GFX_DonkeyKong_Jump6.bin"
GFX_DonkeyKong_Jump6End:
GFX_DonkeyKong_Jump7:
	db "GFX_DonkeyKong_Jump7.bin"
GFX_DonkeyKong_Jump7End:
GFX_DiddyKong_Jump1:
	db "GFX_DiddyKong_Jump1.bin"
GFX_DiddyKong_Jump1End:
GFX_DiddyKong_Jump2:
	db "GFX_DiddyKong_Jump2.bin"
GFX_DiddyKong_Jump2End:
GFX_DiddyKong_Jump3:
	db "GFX_DiddyKong_Jump3.bin"
GFX_DiddyKong_Jump3End:
GFX_DiddyKong_Jump4:
	db "GFX_DiddyKong_Jump4.bin"
GFX_DiddyKong_Jump4End:
GFX_DiddyKong_Jump5:
	db "GFX_DiddyKong_Jump5.bin"
GFX_DiddyKong_Jump5End:
GFX_DiddyKong_Jump6:
	db "GFX_DiddyKong_Jump6.bin"
GFX_DiddyKong_Jump6End:
GFX_DiddyKong_Jump7:
	db "GFX_DiddyKong_Jump7.bin"
GFX_DiddyKong_Jump7End:
GFX_DiddyKong_Jump8:
	db "GFX_DiddyKong_Jump8.bin"
GFX_DiddyKong_Jump8End:
GFX_DiddyKong_Talking1:
	db "GFX_DiddyKong_Talking1.bin"
GFX_DiddyKong_Talking1End:
GFX_DiddyKong_Talking2:
	db "GFX_DiddyKong_Talking2.bin"
GFX_DiddyKong_Talking2End:
GFX_DiddyKong_Talking3:
	db "GFX_DiddyKong_Talking3.bin"
GFX_DiddyKong_Talking3End:
GFX_DiddyKong_Talking4:
	db "GFX_DiddyKong_Talking4.bin"
GFX_DiddyKong_Talking4End:
GFX_DiddyKong_Talking5:
	db "GFX_DiddyKong_Talking5.bin"
GFX_DiddyKong_Talking5End:
GFX_DiddyKong_Talking6:
	db "GFX_DiddyKong_Talking6.bin"
GFX_DiddyKong_Talking6End:
GFX_CrankyKong_Walking1:
	db "GFX_CrankyKong_Walking1.bin"
GFX_CrankyKong_Walking1End:
GFX_CrankyKong_Walking2:
	db "GFX_CrankyKong_Walking2.bin"
GFX_CrankyKong_Walking2End:
GFX_CrankyKong_Walking3:
	db "GFX_CrankyKong_Walking3.bin"
GFX_CrankyKong_Walking3End:
GFX_CrankyKong_Walking4:
	db "GFX_CrankyKong_Walking4.bin"
GFX_CrankyKong_Walking4End:
GFX_CrankyKong_Walking5:
	db "GFX_CrankyKong_Walking5.bin"
GFX_CrankyKong_Walking5End:
GFX_CrankyKong_Walking6:
	db "GFX_CrankyKong_Walking6.bin"
GFX_CrankyKong_Walking6End:
GFX_CrankyKong_Walking7:
	db "GFX_CrankyKong_Walking7.bin"
GFX_CrankyKong_Walking7End:
GFX_CrankyKong_Walking8:
	db "GFX_CrankyKong_Walking8.bin"
GFX_CrankyKong_Walking8End:
GFX_CrankyKong_TurnToFaceAwayFromCamera:
	db "GFX_CrankyKong_TurnToFaceAwayFromCamera.bin"
GFX_CrankyKong_TurnToFaceAwayFromCameraEnd:
GFX_CrankyKong_TurnTowardsCameraAndSmile1:
	db "GFX_CrankyKong_TurnTowardsCameraAndSmile1.bin"
GFX_CrankyKong_TurnTowardsCameraAndSmile1End:
GFX_CrankyKong_TurnTowardsCameraAndSmile2:
	db "GFX_CrankyKong_TurnTowardsCameraAndSmile2.bin"
GFX_CrankyKong_TurnTowardsCameraAndSmile2End:
GFX_CrankyKong_TurnTowardsCameraAndSmile3:
	db "GFX_CrankyKong_TurnTowardsCameraAndSmile3.bin"
GFX_CrankyKong_TurnTowardsCameraAndSmile3End:
GFX_CrankyKong_TurnTowardsCameraAndSmile4:
	db "GFX_CrankyKong_TurnTowardsCameraAndSmile4.bin"
GFX_CrankyKong_TurnTowardsCameraAndSmile4End:
GFX_CrankyKong_TurnTowardsCameraAndSmile5:
	db "GFX_CrankyKong_TurnTowardsCameraAndSmile5.bin"
GFX_CrankyKong_TurnTowardsCameraAndSmile5End:
GFX_CrankyKong_TurnTowardsCameraAndSmile6:
	db "GFX_CrankyKong_TurnTowardsCameraAndSmile6.bin"
GFX_CrankyKong_TurnTowardsCameraAndSmile6End:
GFX_CrankyKong_TurnTowardsCameraAndSmile7:
	db "GFX_CrankyKong_TurnTowardsCameraAndSmile7.bin"
GFX_CrankyKong_TurnTowardsCameraAndSmile7End:
GFX_CrankyKong_TurnTowardsCameraAndSmile8:
	db "GFX_CrankyKong_TurnTowardsCameraAndSmile8.bin"
GFX_CrankyKong_TurnTowardsCameraAndSmile8End:
GFX_CrankyKong_TurnTowardsCameraAndSmile9:
	db "GFX_CrankyKong_TurnTowardsCameraAndSmile9.bin"
GFX_CrankyKong_TurnTowardsCameraAndSmile9End:
GFX_CrankyKong_Throw1:
	db "GFX_CrankyKong_Throw1.bin"
GFX_CrankyKong_Throw1End:
GFX_CrankyKong_Throw2:
	db "GFX_CrankyKong_Throw2.bin"
GFX_CrankyKong_Throw2End:
GFX_CrankyKong_Throw3:
	db "GFX_CrankyKong_Throw3.bin"
GFX_CrankyKong_Throw3End:
GFX_CrankyKong_Throw4:
	db "GFX_CrankyKong_Throw4.bin"
GFX_CrankyKong_Throw4End:
GFX_CrankyKong_Throw5:
	db "GFX_CrankyKong_Throw5.bin"
GFX_CrankyKong_Throw5End:
GFX_CrankyKong_Throw6:
	db "GFX_CrankyKong_Throw6.bin"
GFX_CrankyKong_Throw6End:
GFX_CrankyKong_Throw7:
	db "GFX_CrankyKong_Throw7.bin"
GFX_CrankyKong_Throw7End:
GFX_CrankyKong_Throw8:
	db "GFX_CrankyKong_Throw8.bin"
GFX_CrankyKong_Throw8End:
GFX_CrankyKong_Throw9:
	db "GFX_CrankyKong_Throw9.bin"
GFX_CrankyKong_Throw9End:
GFX_CrankyKong_Throw10:
	db "GFX_CrankyKong_Throw10.bin"
GFX_CrankyKong_Throw10End:
GFX_CrankyKong_Throw11:
	db "GFX_CrankyKong_Throw11.bin"
GFX_CrankyKong_Throw11End:
GFX_CrankyKong_Idle1:
	db "GFX_CrankyKong_Idle1.bin"
GFX_CrankyKong_Idle1End:
GFX_CrankyKong_Idle2:
	db "GFX_CrankyKong_Idle2.bin"
GFX_CrankyKong_Idle2End:
GFX_CrankyKong_Idle3:
	db "GFX_CrankyKong_Idle3.bin"
GFX_CrankyKong_Idle3End:
GFX_CrankyKong_Idle4:
	db "GFX_CrankyKong_Idle4.bin"
GFX_CrankyKong_Idle4End:
GFX_CrankyKong_PutOnAndShowGlasses1:
	db "GFX_CrankyKong_PutOnAndShowGlasses1.bin"
GFX_CrankyKong_PutOnAndShowGlasses1End:
GFX_CrankyKong_PutOnAndShowGlasses2:
	db "GFX_CrankyKong_PutOnAndShowGlasses2.bin"
GFX_CrankyKong_PutOnAndShowGlasses2End:
GFX_CrankyKong_PutOnAndShowGlasses3:
	db "GFX_CrankyKong_PutOnAndShowGlasses3.bin"
GFX_CrankyKong_PutOnAndShowGlasses3End:
GFX_CrankyKong_PutOnAndShowGlasses4:
	db "GFX_CrankyKong_PutOnAndShowGlasses4.bin"
GFX_CrankyKong_PutOnAndShowGlasses4End:
GFX_CrankyKong_PutOnAndShowGlasses5:
	db "GFX_CrankyKong_PutOnAndShowGlasses5.bin"
GFX_CrankyKong_PutOnAndShowGlasses5End:
GFX_CrankyKong_PutOnAndShowGlasses6:
	db "GFX_CrankyKong_PutOnAndShowGlasses6.bin"
GFX_CrankyKong_PutOnAndShowGlasses6End:
GFX_CrankyKong_PutOnAndShowGlasses7:
	db "GFX_CrankyKong_PutOnAndShowGlasses7.bin"
GFX_CrankyKong_PutOnAndShowGlasses7End:
GFX_CrankyKong_PutOnAndShowGlasses8:
	db "GFX_CrankyKong_PutOnAndShowGlasses8.bin"
GFX_CrankyKong_PutOnAndShowGlasses8End:
GFX_CrankyKong_PutOnAndShowGlasses9:
	db "GFX_CrankyKong_PutOnAndShowGlasses9.bin"
GFX_CrankyKong_PutOnAndShowGlasses9End:
GFX_CrankyKong_PutOnAndShowGlasses10:
	db "GFX_CrankyKong_PutOnAndShowGlasses10.bin"
GFX_CrankyKong_PutOnAndShowGlasses10End:
GFX_CrankyKong_HoldingTheEndSign1:
	db "GFX_CrankyKong_HoldingTheEndSign1.bin"
GFX_CrankyKong_HoldingTheEndSign1End:
GFX_CrankyKong_HoldingTheEndSign2:
	db "GFX_CrankyKong_HoldingTheEndSign2.bin"
GFX_CrankyKong_HoldingTheEndSign2End:
GFX_CrankyKong_HoldingTheEndSign3:
	db "GFX_CrankyKong_HoldingTheEndSign3.bin"
GFX_CrankyKong_HoldingTheEndSign3End:
GFX_CrankyKong_HoldingTheEndSign4:
	db "GFX_CrankyKong_HoldingTheEndSign4.bin"
GFX_CrankyKong_HoldingTheEndSign4End:
GFX_CrankyKong_HoldingTheEndSign5:
	db "GFX_CrankyKong_HoldingTheEndSign5.bin"
GFX_CrankyKong_HoldingTheEndSign5End:
GFX_CrankyKong_HoldingTheEndSign6:
	db "GFX_CrankyKong_HoldingTheEndSign6.bin"
GFX_CrankyKong_HoldingTheEndSign6End:
GFX_CrankyKong_HoldingTheEndSign7:
	db "GFX_CrankyKong_HoldingTheEndSign7.bin"
GFX_CrankyKong_HoldingTheEndSign7End:
GFX_CrankyKong_HoldingTheEndSign8:
	db "GFX_CrankyKong_HoldingTheEndSign8.bin"
GFX_CrankyKong_HoldingTheEndSign8End:
GFX_TheEndSign_Pose:
	db "GFX_TheEndSign_Pose.bin"
GFX_TheEndSign_PoseEnd:
GFX_UnknownObject_Pose:
	db "GFX_UnknownObject_Pose.bin"
GFX_UnknownObject_PoseEnd:
GFX_SquirtsEyeLids_Pose1:
	db "GFX_SquirtsEyeLids_Pose1.bin"
GFX_SquirtsEyeLids_Pose1End:
GFX_SquirtsEyeLids_Pose2:
	db "GFX_SquirtsEyeLids_Pose2.bin"
GFX_SquirtsEyeLids_Pose2End:
GFX_SquirtsEyeLids_Pose3:
	db "GFX_SquirtsEyeLids_Pose3.bin"
GFX_SquirtsEyeLids_Pose3End:
GFX_SquirtsEyeLids_Pose4:
	db "GFX_SquirtsEyeLids_Pose4.bin"
GFX_SquirtsEyeLids_Pose4End:
GFX_SquirtsEyeLids_Pose5:
	db "GFX_SquirtsEyeLids_Pose5.bin"
GFX_SquirtsEyeLids_Pose5End:
GFX_SquirtsEyeLids_Pose6:
	db "GFX_SquirtsEyeLids_Pose6.bin"
GFX_SquirtsEyeLids_Pose6End:
GFX_SquirtsEyeLids_Pose7:
	db "GFX_SquirtsEyeLids_Pose7.bin"
GFX_SquirtsEyeLids_Pose7End:
GFX_SquirtsEyeLids_Pose8:
	db "GFX_SquirtsEyeLids_Pose8.bin"
GFX_SquirtsEyeLids_Pose8End:
GFX_SquirtsMouth_Pose1:
	db "GFX_SquirtsMouth_Pose1.bin"
GFX_SquirtsMouth_Pose1End:
GFX_SquirtsMouth_Pose2:
	db "GFX_SquirtsMouth_Pose2.bin"
GFX_SquirtsMouth_Pose2End:
GFX_SquirtsMouth_Pose3:
	db "GFX_SquirtsMouth_Pose3.bin"
GFX_SquirtsMouth_Pose3End:
GFX_SquirtsMouth_Pose4:
	db "GFX_SquirtsMouth_Pose4.bin"
GFX_SquirtsMouth_Pose4End:
GFX_SquirtsMouth_Pose5:
	db "GFX_SquirtsMouth_Pose5.bin"
GFX_SquirtsMouth_Pose5End:
GFX_SquirtsMouth_Pose6:
	db "GFX_SquirtsMouth_Pose6.bin"
GFX_SquirtsMouth_Pose6End:
GFX_SquirtsEyeball_Pose:
	db "GFX_SquirtsEyeball_Pose.bin"
GFX_SquirtsEyeball_PoseEnd:
GFX_SquirtsPupil_Pose:
	db "GFX_SquirtsPupil_Pose.bin"
GFX_SquirtsPupil_PoseEnd:
GFX_KarateCrankyTrophy_Rotate1:
	db "GFX_KarateCrankyTrophy_Rotate1.bin"
GFX_KarateCrankyTrophy_Rotate1End:
GFX_KarateCrankyTrophy_Rotate2:
	db "GFX_KarateCrankyTrophy_Rotate2.bin"
GFX_KarateCrankyTrophy_Rotate2End:
GFX_KarateCrankyTrophy_Rotate3:
	db "GFX_KarateCrankyTrophy_Rotate3.bin"
GFX_KarateCrankyTrophy_Rotate3End:
GFX_KarateCrankyTrophy_Rotate4:
	db "GFX_KarateCrankyTrophy_Rotate4.bin"
GFX_KarateCrankyTrophy_Rotate4End:
GFX_KarateCrankyTrophy_Rotate5:
	db "GFX_KarateCrankyTrophy_Rotate5.bin"
GFX_KarateCrankyTrophy_Rotate5End:
GFX_KarateCrankyTrophy_Rotate6:
	db "GFX_KarateCrankyTrophy_Rotate6.bin"
GFX_KarateCrankyTrophy_Rotate6End:
GFX_KarateCrankyTrophy_Rotate7:
	db "GFX_KarateCrankyTrophy_Rotate7.bin"
GFX_KarateCrankyTrophy_Rotate7End:
GFX_KarateCrankyTrophy_Rotate8:
	db "GFX_KarateCrankyTrophy_Rotate8.bin"
GFX_KarateCrankyTrophy_Rotate8End:
GFX_KarateCrankyTrophy_Rotate9:
	db "GFX_KarateCrankyTrophy_Rotate9.bin"
GFX_KarateCrankyTrophy_Rotate9End:
GFX_KarateCrankyTrophy_Rotate10:
	db "GFX_KarateCrankyTrophy_Rotate10.bin"
GFX_KarateCrankyTrophy_Rotate10End:
GFX_KarateCrankyTrophy_Rotate11:
	db "GFX_KarateCrankyTrophy_Rotate11.bin"
GFX_KarateCrankyTrophy_Rotate11End:
GFX_KarateCrankyTrophy_Rotate12:
	db "GFX_KarateCrankyTrophy_Rotate12.bin"
GFX_KarateCrankyTrophy_Rotate12End:
GFX_KarateCrankyTrophy_Rotate13:
	db "GFX_KarateCrankyTrophy_Rotate13.bin"
GFX_KarateCrankyTrophy_Rotate13End:
GFX_KarateCrankyTrophy_Rotate14:
	db "GFX_KarateCrankyTrophy_Rotate14.bin"
GFX_KarateCrankyTrophy_Rotate14End:
GFX_KarateCrankyTrophy_Rotate15:
	db "GFX_KarateCrankyTrophy_Rotate15.bin"
GFX_KarateCrankyTrophy_Rotate15End:
GFX_KarateCrankyTrophy_Rotate16:
	db "GFX_KarateCrankyTrophy_Rotate16.bin"
GFX_KarateCrankyTrophy_Rotate16End:
GFX_TrophyPedastal_Pose1:
	db "GFX_TrophyPedastal_Pose1.bin"
GFX_TrophyPedastal_Pose1End:
GFX_TrophyPedastal_Pose2:
	db "GFX_TrophyPedastal_Pose2.bin"
GFX_TrophyPedastal_Pose2End:
GFX_TrophyPedastal_Pose3:
	db "GFX_TrophyPedastal_Pose3.bin"
GFX_TrophyPedastal_Pose3End:
GFX_TrophyPedastal_Pose4:
	db "GFX_TrophyPedastal_Pose4.bin"
GFX_TrophyPedastal_Pose4End:
GFX_KarateCrankyTrophy_Punch1:
	db "GFX_KarateCrankyTrophy_Punch1.bin"
GFX_KarateCrankyTrophy_Punch1End:
GFX_KarateCrankyTrophy_Punch2:
	db "GFX_KarateCrankyTrophy_Punch2.bin"
GFX_KarateCrankyTrophy_Punch2End:
GFX_KarateCrankyTrophy_Punch3:
	db "GFX_KarateCrankyTrophy_Punch3.bin"
GFX_KarateCrankyTrophy_Punch3End:
GFX_KarateCrankyTrophy_Punch4:
	db "GFX_KarateCrankyTrophy_Punch4.bin"
GFX_KarateCrankyTrophy_Punch4End:
GFX_KarateCrankyTrophy_Punch5:
	db "GFX_KarateCrankyTrophy_Punch5.bin"
GFX_KarateCrankyTrophy_Punch5End:
GFX_KarateCrankyTrophy_Punch6:
	db "GFX_KarateCrankyTrophy_Punch6.bin"
GFX_KarateCrankyTrophy_Punch6End:
GFX_KarateCrankyTrophy_Punch7:
	db "GFX_KarateCrankyTrophy_Punch7.bin"
GFX_KarateCrankyTrophy_Punch7End:
GFX_KarateCrankyTrophy_Punch8:
	db "GFX_KarateCrankyTrophy_Punch8.bin"
GFX_KarateCrankyTrophy_Punch8End:
GFX_KarateCrankyTrophy_Punch9:
	db "GFX_KarateCrankyTrophy_Punch9.bin"
GFX_KarateCrankyTrophy_Punch9End:
GFX_KarateCrankyTrophy_Punch10:
	db "GFX_KarateCrankyTrophy_Punch10.bin"
GFX_KarateCrankyTrophy_Punch10End:
GFX_KarateCrankyTrophy_Kick1:
	db "GFX_KarateCrankyTrophy_Kick1.bin"
GFX_KarateCrankyTrophy_Kick1End:
GFX_KarateCrankyTrophy_Kick2:
	db "GFX_KarateCrankyTrophy_Kick2.bin"
GFX_KarateCrankyTrophy_Kick2End:
GFX_KarateCrankyTrophy_Kick3:
	db "GFX_KarateCrankyTrophy_Kick3.bin"
GFX_KarateCrankyTrophy_Kick3End:
GFX_KarateCrankyTrophy_Kick4:
	db "GFX_KarateCrankyTrophy_Kick4.bin"
GFX_KarateCrankyTrophy_Kick4End:
GFX_KarateCrankyTrophy_Kick5:
	db "GFX_KarateCrankyTrophy_Kick5.bin"
GFX_KarateCrankyTrophy_Kick5End:
GFX_KarateCrankyTrophy_Kick6:
	db "GFX_KarateCrankyTrophy_Kick6.bin"
GFX_KarateCrankyTrophy_Kick6End:
GFX_KarateCrankyTrophy_Kick7:
	db "GFX_KarateCrankyTrophy_Kick7.bin"
GFX_KarateCrankyTrophy_Kick7End:
GFX_ElectricSparkBall_Pose1:
	db "GFX_ElectricSparkBall_Pose1.bin"
GFX_ElectricSparkBall_Pose1End:
GFX_ElectricSparkBall_Pose2:
	db "GFX_ElectricSparkBall_Pose2.bin"
GFX_ElectricSparkBall_Pose2End:
GFX_ElectricSparkBall_Pose3:
	db "GFX_ElectricSparkBall_Pose3.bin"
GFX_ElectricSparkBall_Pose3End:
GFX_ElectricSparkBall_Pose4:
	db "GFX_ElectricSparkBall_Pose4.bin"
GFX_ElectricSparkBall_Pose4End:
GFX_ElectricSparkBall_Pose5:
	db "GFX_ElectricSparkBall_Pose5.bin"
GFX_ElectricSparkBall_Pose5End:
GFX_ElectricSparkBall_Pose6:
	db "GFX_ElectricSparkBall_Pose6.bin"
GFX_ElectricSparkBall_Pose6End:
GFX_ElectricSparkBall_Pose7:
	db "GFX_ElectricSparkBall_Pose7.bin"
GFX_ElectricSparkBall_Pose7End:
GFX_ElectricSparkBall_Pose8:
	db "GFX_ElectricSparkBall_Pose8.bin"
GFX_ElectricSparkBall_Pose8End:
GFX_KRoolsFeetBehindCurtain_Pose:
	db "GFX_KRoolsFeetBehindCurtain_Pose.bin"
GFX_KRoolsFeetBehindCurtain_PoseEnd:
GFX_KRool_Zapped:
	db "GFX_KRool_Zapped.bin"
GFX_KRool_ZappedEnd:
GFX_Lemguin_Slide1:
	db "GFX_Lemguin_Slide1.bin"
GFX_Lemguin_Slide1End:
GFX_Lemguin_Slide2:
	db "GFX_Lemguin_Slide2.bin"
GFX_Lemguin_Slide2End:
GFX_Lemguin_Slide3:
	db "GFX_Lemguin_Slide3.bin"
GFX_Lemguin_Slide3End:
GFX_Lemguin_Slide4:
	db "GFX_Lemguin_Slide4.bin"
GFX_Lemguin_Slide4End:
GFX_Lemguin_Slide5:
	db "GFX_Lemguin_Slide5.bin"
GFX_Lemguin_Slide5End:
GFX_Lemguin_Slide6:
	db "GFX_Lemguin_Slide6.bin"
GFX_Lemguin_Slide6End:
GFX_Lemguin_Slide7:
	db "GFX_Lemguin_Slide7.bin"
GFX_Lemguin_Slide7End:
GFX_Lemguin_Slide8:
	db "GFX_Lemguin_Slide8.bin"
GFX_Lemguin_Slide8End:
GFX_Lemguin_Slide9:
	db "GFX_Lemguin_Slide9.bin"
GFX_Lemguin_Slide9End:
GFX_Lemguin_Slide10:
	db "GFX_Lemguin_Slide10.bin"
GFX_Lemguin_Slide10End:
GFX_Lemguin_Slide11:
	db "GFX_Lemguin_Slide11.bin"
GFX_Lemguin_Slide11End:
GFX_Lemguin_Slide12:
	db "GFX_Lemguin_Slide12.bin"
GFX_Lemguin_Slide12End:
GFX_Lemguin_Dead1:
	db "GFX_Lemguin_Dead1.bin"
GFX_Lemguin_Dead1End:
GFX_Lemguin_Dead2:
	db "GFX_Lemguin_Dead2.bin"
GFX_Lemguin_Dead2End:
GFX_Lemguin_Dead3:
	db "GFX_Lemguin_Dead3.bin"
GFX_Lemguin_Dead3End:
GFX_Lemguin_Emerge1:
	db "GFX_Lemguin_Emerge1.bin"
GFX_Lemguin_Emerge1End:
GFX_Lemguin_Emerge2:
	db "GFX_Lemguin_Emerge2.bin"
GFX_Lemguin_Emerge2End:
GFX_LemguinHoleSpriteMask_Pose:
	db "GFX_LemguinHoleSpriteMask_Pose.bin"
GFX_LemguinHoleSpriteMask_PoseEnd:
GFX_PadlockOnFloorDoor_Pose:
	db "GFX_PadlockOnFloorDoor_Pose.bin"
GFX_PadlockOnFloorDoor_PoseEnd:
GFX_Sprite_BelchasPlatform_Pose:
	db "GFX_Sprite_BelchasPlatform_Pose.bin"
GFX_Sprite_BelchasPlatform_PoseEnd:
GFX_Karbine_Fly1:
	db "GFX_Karbine_Fly1.bin"
GFX_Karbine_Fly1End:
GFX_Karbine_Fly2:
	db "GFX_Karbine_Fly2.bin"
GFX_Karbine_Fly2End:
GFX_Karbine_Fly3:
	db "GFX_Karbine_Fly3.bin"
GFX_Karbine_Fly3End:
GFX_Karbine_Fly4:
	db "GFX_Karbine_Fly4.bin"
GFX_Karbine_Fly4End:
GFX_Karbine_Fly5:
	db "GFX_Karbine_Fly5.bin"
GFX_Karbine_Fly5End:
GFX_Karbine_Fly6:
	db "GFX_Karbine_Fly6.bin"
GFX_Karbine_Fly6End:
GFX_Karbine_Fly7:
	db "GFX_Karbine_Fly7.bin"
GFX_Karbine_Fly7End:
GFX_Karbine_Fly8:
	db "GFX_Karbine_Fly8.bin"
GFX_Karbine_Fly8End:
GFX_Karbine_Fly9:
	db "GFX_Karbine_Fly9.bin"
GFX_Karbine_Fly9End:
GFX_Karbine_Shoot1:
	db "GFX_Karbine_Shoot1.bin"
GFX_Karbine_Shoot1End:
GFX_Karbine_Shoot2:
	db "GFX_Karbine_Shoot2.bin"
GFX_Karbine_Shoot2End:
GFX_Karbine_Shoot3:
	db "GFX_Karbine_Shoot3.bin"
GFX_Karbine_Shoot3End:
GFX_Karbine_Shoot4:
	db "GFX_Karbine_Shoot4.bin"
GFX_Karbine_Shoot4End:
GFX_BoomerExplosiveSmokeCloud_Pose1:
	db "GFX_BoomerExplosiveSmokeCloud_Pose1.bin"
GFX_BoomerExplosiveSmokeCloud_Pose1End:
GFX_BoomerExplosiveSmokeCloud_Pose2:
	db "GFX_BoomerExplosiveSmokeCloud_Pose2.bin"
GFX_BoomerExplosiveSmokeCloud_Pose2End:
GFX_BoomerExplosiveSmokeCloud_Pose3:
	db "GFX_BoomerExplosiveSmokeCloud_Pose3.bin"
GFX_BoomerExplosiveSmokeCloud_Pose3End:
GFX_BoomerExplosiveSmokeCloud_Pose4:
	db "GFX_BoomerExplosiveSmokeCloud_Pose4.bin"
GFX_BoomerExplosiveSmokeCloud_Pose4End:
GFX_BoomerExplosiveSmokeCloud_Pose5:
	db "GFX_BoomerExplosiveSmokeCloud_Pose5.bin"
GFX_BoomerExplosiveSmokeCloud_Pose5End:
GFX_BoomerExplosiveSmokeCloud_Pose6:
	db "GFX_BoomerExplosiveSmokeCloud_Pose6.bin"
GFX_BoomerExplosiveSmokeCloud_Pose6End:
GFX_BoomerExplosiveSmokeCloud_Pose7:
	db "GFX_BoomerExplosiveSmokeCloud_Pose7.bin"
GFX_BoomerExplosiveSmokeCloud_Pose7End:
GFX_BoomerExplosiveSmokeCloud_Pose8:
	db "GFX_BoomerExplosiveSmokeCloud_Pose8.bin"
GFX_BoomerExplosiveSmokeCloud_Pose8End:
GFX_BoomerExplosiveSmokeCloud_Pose9:
	db "GFX_BoomerExplosiveSmokeCloud_Pose9.bin"
GFX_BoomerExplosiveSmokeCloud_Pose9End:
GFX_BoomerExplosiveSmokeCloud_Pose10:
	db "GFX_BoomerExplosiveSmokeCloud_Pose10.bin"
GFX_BoomerExplosiveSmokeCloud_Pose10End:
GFX_BoomerExplosiveSmokeCloud_Pose11:
	db "GFX_BoomerExplosiveSmokeCloud_Pose11.bin"
GFX_BoomerExplosiveSmokeCloud_Pose11End:
GFX_BoomerExplosiveSmokeCloud_Pose12:
	db "GFX_BoomerExplosiveSmokeCloud_Pose12.bin"
GFX_BoomerExplosiveSmokeCloud_Pose12End:
GFX_BoomerExplosiveSmokeCloud_Pose13:
	db "GFX_BoomerExplosiveSmokeCloud_Pose13.bin"
GFX_BoomerExplosiveSmokeCloud_Pose13End:
GFX_DiddyKong_LookToSide1:
	db "GFX_DiddyKong_LookToSide1.bin"
GFX_DiddyKong_LookToSide1End:
GFX_DiddyKong_LookToSide2:
	db "GFX_DiddyKong_LookToSide2.bin"
GFX_DiddyKong_LookToSide2End:
GFX_DiddyKong_LookToSide3:
	db "GFX_DiddyKong_LookToSide3.bin"
GFX_DiddyKong_LookToSide3End:

;--------------------------------------------------------------------

GFX_Layer1_KAOSKore:
	db "GFX_Layer1_KAOSKore.bin"
GFX_Layer1_KAOSKoreEnd:
GFX_Layer1_CottonTopCove:
	db "GFX_Layer1_CottonTopCove.bin"
GFX_Layer1_CottonTopCoveEnd:
GFX_Layer1_K3:
	db "GFX_Layer1_K3.bin"
GFX_Layer1_K3End:
GFX_Layer1_WrinklysSaveCave:
	db "GFX_Layer1_WrinklysSaveCave.bin"
GFX_Layer1_WrinklysSaveCaveEnd:
GFX_Layer2_SwankysSideshowInTent:
	db "GFX_Layer2_SwankysSideshowInTent.bin"
GFX_Layer2_SwankysSideshowInTentEnd:
GFX_Layer1_SwankysSideshowInTent:
	db "GFX_Layer1_SwankysSideshowInTent.bin"
GFX_Layer1_SwankysSideshowInTentEnd:
GFX_Layer1_KremwoodForest:
	db "GFX_Layer1_KremwoodForest.bin"
GFX_Layer1_KremwoodForestEnd:
GFX_Layer1_GameOverScreen:
	db "GFX_Layer1_GameOverScreen.bin"
GFX_Layer1_GameOverScreenEnd:
GFX_Layer1_TitleScreen:
	db "GFX_Layer1_TitleScreen.bin"
GFX_Layer1_TitleScreenEnd:
GFX_Layer1_FunkysRentals:
	db "GFX_Layer1_FunkysRentals.bin"
GFX_Layer1_FunkysRentalsEnd:
GFX_Layer1_SwankysSideshowOutside:
	db "GFX_Layer1_SwankysSideshowOutside.bin"
GFX_Layer1_SwankysSideshowOutsideEnd:
GFX_Layer1_LakeOrangatanga:
	db "GFX_Layer1_LakeOrangatanga.bin"
GFX_Layer1_LakeOrangatangaEnd:
GFX_Layer3_LakeOrangatanga:
	db "GFX_Layer3_LakeOrangatanga.bin"
GFX_Layer3_LakeOrangatangaEnd:
GFX_Layer3_KremwoodForest:
	db "GFX_Layer3_KremwoodForest.bin"
GFX_Layer3_KremwoodForestEnd:
GFX_Layer1_TVScreen:
	db "GFX_Layer1_TVScreen.bin"
GFX_Layer1_TVScreenEnd:
GFX_Layer2_FileSelectScreen:
	db "GFX_Layer2_FileSelectScreen.bin"
GFX_Layer2_FileSelectScreenEnd:
GFX_Layer1_Mekanos:
	db "GFX_Layer1_Mekanos.bin"
GFX_Layer1_MekanosEnd:
GFX_Layer1_Kremtoa:
	db "GFX_Layer1_Kremtoa.bin"
GFX_Layer1_KremtoaEnd:
GFX_Layer3_PierLevels:
	db "GFX_Layer3_PierLevels.bin"
GFX_Layer3_PierLevelsEnd:
GFX_Layer2_MillLevels:
	db "GFX_Layer2_MillLevels.bin"
GFX_Layer2_MillLevelsEnd:
GFX_Layer1_CaveLevels:
	db "GFX_Layer1_CaveLevels.bin"
GFX_Layer1_CaveLevelsEnd:
GFX_Layer2_CoralReefLevels:
	db "GFX_Layer2_CoralReefLevels.bin"
GFX_Layer2_CoralReefLevelsEnd:
GFX_Layer1_MountainLevels:
	db "GFX_Layer1_MountainLevels.bin"
GFX_Layer1_MountainLevelsEnd:
GFX_Layer1_JungleLevels:
	db "GFX_Layer1_JungleLevels.bin"
GFX_Layer1_JungleLevelsEnd:
GFX_Layer1_FactoryLevels:
	db "GFX_Layer1_FactoryLevels.bin"
GFX_Layer1_FactoryLevelsEnd:
GFX_Layer1_MillLevels:
	db "GFX_Layer1_MillLevels.bin"
GFX_Layer1_MillLevelsEnd:
GFX_Layer1_RiverbankLevels:
	db "GFX_Layer1_RiverbankLevels.bin"
GFX_Layer1_RiverbankLevelsEnd:
GFX_Layer2_PierLevels:
	db "GFX_Layer2_PierLevels.bin"
GFX_Layer2_PierLevelsEnd:
GFX_Layer1_PierLevels:
	db "GFX_Layer1_PierLevels.bin"
GFX_Layer1_PierLevelsEnd:
GFX_Layer1_SnowLevels:
	db "GFX_Layer1_SnowLevels.bin"
GFX_Layer1_SnowLevelsEnd:
GFX_Layer1_ForestLevels:
	db "GFX_Layer1_ForestLevels.bin"
GFX_Layer1_ForestLevelsEnd:
GFX_Layer3_ForestLevels:
	db "GFX_Layer3_ForestLevels.bin"
GFX_Layer3_ForestLevelsEnd:
GFX_Layer2_ForestLevels:
	db "GFX_Layer2_ForestLevels.bin"
GFX_Layer2_ForestLevelsEnd:
GFX_Layer1_DrainPipeLevels:
	db "GFX_Layer1_DrainPipeLevels.bin"
GFX_Layer1_DrainPipeLevelsEnd:
GFX_Layer1_WaterfallLevels:
	db "GFX_Layer1_WaterfallLevels.bin"
GFX_Layer1_WaterfallLevelsEnd:
GFX_Layer2_RiverbankLevels:
	db "GFX_Layer2_RiverbankLevels.bin"
GFX_Layer2_RiverbankLevelsEnd:
GFX_Layer3_RiverbankLevels:
	db "GFX_Layer3_RiverbankLevels.bin"
GFX_Layer3_RiverbankLevelsEnd:
GFX_Layer2_KastleKAOS:
	db "GFX_Layer2_KastleKAOS.bin"
GFX_Layer2_KastleKAOSEnd:
GFX_Layer2_GameOverScreen:
	db "GFX_Layer2_GameOverScreen.bin"
GFX_Layer2_GameOverScreenEnd:
GFX_Layer2_TitleScreenDixieKongLogo:
	db "GFX_Layer2_TitleScreenDixieKongLogo.bin"
GFX_Layer2_TitleScreenDixieKongLogoEnd:
GFX_Layer1_BleaksHouse:
	db "GFX_Layer1_BleaksHouse.bin"
GFX_Layer1_BleaksHouseEnd:
GFX_Layer2_BelchasBarn:
	db "GFX_Layer2_BelchasBarn.bin"
GFX_Layer2_BelchasBarnEnd:
GFX_Layer3_FactoryLevels:
	db "GFX_Layer3_FactoryLevels.bin"
GFX_Layer3_FactoryLevelsEnd:
GFX_Layer1_BarbossBarrier:
	db "GFX_Layer1_BarbossBarrier.bin"
GFX_Layer1_BarbossBarrierEnd:
GFX_Layer1_FileSelectScreen:
	db "GFX_Layer1_FileSelectScreen.bin"
GFX_Layer1_FileSelectScreenEnd:
GFX_Layer3_SaveFileStatusScreen:
	db "GFX_Layer3_SaveFileStatusScreen.bin"
GFX_Layer3_SaveFileStatusScreenEnd:
GFX_Layer2_WaterFallLevel:
	db "GFX_Layer2_WaterFallLevel.bin"
GFX_Layer2_WaterFallLevelEnd:
GFX_Layer3_MountainLevels:
	db "GFX_Layer3_MountainLevels.bin"
GFX_Layer3_MountainLevelsEnd:
GFX_Layer2_MountainLevels:
	db "GFX_Layer2_MountainLevels.bin"
GFX_Layer2_MountainLevelsEnd:
GFX_Layer3_DrainPipeLevels:
	db "GFX_Layer3_DrainPipeLevels.bin"
GFX_Layer3_DrainPipeLevelsEnd:
GFX_Layer2_DrainPipeLevels:
	db "GFX_Layer2_DrainPipeLevels.bin"
GFX_Layer2_DrainPipeLevelsEnd:
GFX_Layer1_BashTheBaddiesScreen:
	db "GFX_Layer1_BashTheBaddiesScreen.bin"
GFX_Layer1_BashTheBaddiesScreenEnd:
GFX_Layer1_CollectXXStarsScreen:
	db "GFX_Layer1_CollectXXStarsScreen.bin"
GFX_Layer1_CollectXXStarsScreenEnd:
GFX_Layer1_GrabXXBananasScreen:
	db "GFX_Layer1_GrabXXBananasScreen.bin"
GFX_Layer1_GrabXXBananasScreenEnd:
GFX_Layer1_FindTheCoinScreen:
	db "GFX_Layer1_FindTheCoinScreen.bin"
GFX_Layer1_FindTheCoinScreenEnd:
GFX_Layer2_BonusRoomIntroScreen:
	db "GFX_Layer2_BonusRoomIntroScreen.bin"
GFX_Layer2_BonusRoomIntroScreenEnd:
GFX_Layer1_BananaBirdCave:
	db "GFX_Layer1_BananaBirdCave.bin"
GFX_Layer1_BananaBirdCaveEnd:
GFX_Layer2_MapWater:
	db "GFX_Layer2_MapWater.bin"
GFX_Layer2_MapWaterEnd:
GFX_Layer1_FloodlitFish:
	db "GFX_Layer1_FloodlitFish.bin"
GFX_Layer1_FloodlitFishEnd:
GFX_Layer2_BossPhotos:
	db "GFX_Layer2_BossPhotos.bin"
GFX_Layer2_BossPhotosEnd:
GFX_Layer2_BananaBirdQueenScreen:
	db "GFX_Layer2_BananaBirdQueenScreen.bin"
GFX_Layer2_BananaBirdQueenScreenEnd:
GFX_Layer2_KRoolInHovercraft:
	db "GFX_Layer2_KRoolInHovercraft.bin"
GFX_Layer2_KRoolInHovercraftEnd:
GFX_Layer3_Knautilus:
	db "GFX_Layer3_Knautilus.bin"
GFX_Layer3_KnautilusEnd:
GFX_Layer1_Knautilus:
	db "GFX_Layer1_Knautilus.bin"
GFX_Layer1_KnautilusEnd:
GFX_Layer1_Player1TeamWinsScreen:
	db "GFX_Layer1_Player1TeamWinsScreen.bin"
GFX_Layer1_Player1TeamWinsScreenEnd:
GFX_Layer1_Player2TeamWinsScreen:
	db "GFX_Layer1_Player2TeamWinsScreen.bin"
GFX_Layer1_Player2TeamWinsScreenEnd:
GFX_Layer3_MainMap:
	db "GFX_Layer3_MainMap.bin"
GFX_Layer3_MainMapEnd:
GFX_Layer2_JungleLevels:
	db "GFX_Layer2_JungleLevels.bin"
GFX_Layer2_JungleLevelsEnd:
GFX_Layer3_JungleLevels:
	db "GFX_Layer3_JungleLevels.bin"
GFX_Layer3_JungleLevelsEnd:
GFX_Layer2_CaveLevels:
	db "GFX_Layer2_CaveLevels.bin"
GFX_Layer2_CaveLevelsEnd:
GFX_Layer1_BananaBirdQueenScreen:
	db "GFX_Layer1_BananaBirdQueenScreen.bin"
GFX_Layer1_BananaBirdQueenScreenEnd:
GFX_Layer2_PhotoAlbumSection:
	db "GFX_Layer2_PhotoAlbumSection.bin"
GFX_Layer2_PhotoAlbumSectionEnd:
GFX_Layer1_MainMap:
	db "GFX_Layer1_MainMap.bin"
GFX_Layer1_MainMapEnd:
GFX_Layer3_CottonTopCove:
	db "GFX_Layer3_CottonTopCove.bin"
GFX_Layer3_CottonTopCoveEnd:
GFX_Layer3_Mekanos:
	db "GFX_Layer3_Mekanos.bin"
GFX_Layer3_MekanosEnd:
GFX_Layer3_RazorRidge:
	db "GFX_Layer3_RazorRidge.bin"
GFX_Layer3_RazorRidgeEnd:
GFX_Layer3_KAOSKore:
	db "GFX_Layer3_KAOSKore.bin"
GFX_Layer3_KAOSKoreEnd:
GFX_Layer3_Kremtoa:
	db "GFX_Layer3_Kremtoa.bin"
GFX_Layer3_KremtoaEnd:
GFX_Layer2_SnowLevels:
	db "GFX_Layer2_SnowLevels.bin"
GFX_Layer2_SnowLevelsEnd:
GFX_Layer1_RazorRidge:
	db "GFX_Layer1_RazorRidge.bin"
GFX_Layer1_RazorRidgeEnd:
GFX_Layer2_BrothersBearPhotos:
	db "GFX_Layer2_BrothersBearPhotos.bin"
GFX_Layer2_BrothersBearPhotosEnd:
GFX_Layer2_BananaBirdCave:
	db "GFX_Layer2_BananaBirdCave.bin"
GFX_Layer2_BananaBirdCaveEnd:
GFX_Layer1_BrothersBearHouse:
	db "GFX_Layer1_BrothersBearHouse.bin"
GFX_Layer1_BrothersBearHouseEnd:
GFX_Layer2_BrothersBearHouse:
	db "GFX_Layer2_BrothersBearHouse.bin"
GFX_Layer2_BrothersBearHouseEnd:

;--------------------------------------------------------------------

GFX_TargetShootKiddy:
	db "GFX_TargetShootKiddy.bin"
GFX_TargetShootKiddyEnd:
GFX_TargetShootDixie:
	db "GFX_TargetShootDixie.bin"
GFX_TargetShootDixieEnd:
GFX_RareLogo:
	db "GFX_RareLogo.bin"
GFX_RareLogoEnd:
GFX_FunkyKong:
	db "GFX_FunkyKong.bin"
GFX_FunkyKongEnd:
GFX_KRool1:
	db "GFX_KRool1.bin"
GFX_KRool1End:
GFX_KRool2:
	db "GFX_KRool2.bin"
GFX_KRool2End:
GFX_TargetShootHUD:
	db "GFX_TargetShootHUD.bin"
GFX_TargetShootHUDEnd:
GFX_GameOverBlocks:
	db "GFX_GameOverBlocks.bin"
GFX_GameOverBlocksEnd:
GFX_BrothersBearAccessories1:
	db "GFX_BrothersBearAccessories1.bin"
GFX_BrothersBearAccessories1End:
GFX_BrothersBearAccessories2:
	db "GFX_BrothersBearAccessories2.bin"
GFX_BrothersBearAccessories2End:
GFX_BrothersBearAccessories3:
	db "GFX_BrothersBearAccessories3.bin"
GFX_BrothersBearAccessories3End:
GFX_BrothersBearBase:
	db "GFX_BrothersBearBase.bin"
GFX_BrothersBearBaseEnd:
GFX_BlankFile:
	db "GFX_BlankFile.bin"
GFX_BlankFileEnd:

;--------------------------------------------------------------------

TM_Layer3_MurkyMill:
	db "Layer3_MurkyMill.bin"
TM_Layer3_MurkyMillEnd:
TM_Layer3_RiverbankWaterSurface:
	db "Layer3_RiverbankWaterSurface.bin"
TM_Layer3_RiverbankWaterSurfaceEnd:
TM_Layer2_KastleKAOSBarredWindow:
	db "Layer2_KastleKAOSBarredWindow.bin"
TM_Layer2_KastleKAOSBarredWindowEnd:
TM_Layer2_KastleKAOSCurtainCover:
	db "Layer2_KastleKAOSCurtainCover.bin"
TM_Layer2_KastleKAOSCurtainCoverEnd:
TM_Layer2_KastleKAOSRemoveCurtain:
	db "Layer2_KastleKAOSRemoveCurtain.bin"
TM_Layer2_KastleKAOSRemoveCurtainEnd:
TM_Layer2_KastleKAOSBrokenFloor1LeftHalf:
	db "Layer2_KastleKAOSBrokenFloor1LeftHalf.bin"
TM_Layer2_KastleKAOSBrokenFloor1LeftHalfEnd:
TM_Layer2_KastleKAOSBrokenFloor1RightHalf:
	db "Layer2_KastleKAOSBrokenFloor1RightHalf.bin"
TM_Layer2_KastleKAOSBrokenFloor1RightHalfEnd:
TM_Layer2_KastleKAOSUnknownDoorTilemap:
	db "Layer2_KastleKAOSUnknownDoorTilemap.bin"
TM_Layer2_KastleKAOSUnknownDoorTilemapEnd:
TM_Layer2_KastleKAOSBrokenFloor2LeftHalf:
	db "Layer2_KastleKAOSBrokenFloor2LeftHalf.bin"
TM_Layer2_KastleKAOSBrokenFloor2LeftHalfEnd:
TM_Layer2_KastleKAOSBrokenFloor2RightHalf:
	db "Layer2_KastleKAOSBrokenFloor2RightHalf.bin"
TM_Layer2_KastleKAOSBrokenFloor2RightHalfEnd:
TM_Layer2_GameOverScreen:
	db "Layer2_GameOverScreen.bin"
TM_Layer2_GameOverScreenEnd:
TM_Layer1_CopyrightScreen:
	db "Layer1_CopyrightScreen.bin"
TM_Layer1_CopyrightScreenEnd:
TM_Layer1_Arich:
	db "Layer1_Arich.bin"
TM_Layer1_ArichEnd:
TM_Layer1_KAOS:
	db "Layer1_KAOS.bin"
TM_Layer1_KAOSEnd:
TM_Layer2_FileSelectCopyAndEraseButtons:
	db "Layer2_FileSelectCopyAndEraseButtons.bin"
TM_Layer2_FileSelectCopyAndEraseButtonsEnd:
TM_Layer2_DrainPipeLevels:
	db "Layer2_DrainPipeLevels.bin"
TM_Layer2_DrainPipeLevelsEnd:
TM_Layer2_CottonTopCoveWaterfalls:
	db "Layer2_CottonTopCoveWaterfalls.bin"
TM_Layer2_CottonTopCoveWaterfallsEnd:
TM_Layer3_KnautilusBGRightHalf:
	db "Layer3_KnautilusBGRightHalf.bin"
TM_Layer3_KnautilusBGRightHalfEnd:
TM_Layer3_KnautilusBGLeftHalf:
	db "Layer3_KnautilusBGLeftHalf.bin"
TM_Layer3_KnautilusBGLeftHalfEnd:
TM_Layer3_KnautilusConveyorBelt:
	db "Layer3_KnautilusConveyorBelt.bin"
TM_Layer3_KnautilusConveyorBeltEnd:
TM_Layer2_FactoryLevels:
	db "Layer2_FactoryLevels.bin"
TM_Layer2_FactoryLevelsEnd:
TM_Layer2_KnautilusCeilingBar:
	db "Layer2_KnautilusCeilingBar.bin"
TM_Layer2_KnautilusCeilingBarEnd:
TM_Layer2_KAOSKoreWaterfall:
	db "Layer2_KAOSKoreWaterfall.bin"
TM_Layer2_KAOSKoreWaterfallEnd:
TM_Layer2_K3Waterfall:
	db "Layer2_K3Waterfall.bin"
TM_Layer2_K3WaterfallEnd:
TM_Layer2_WaterfallLevelWaterfalls:
	db "Layer2_WaterfallLevelWaterfalls.bin"
TM_Layer2_WaterfallLevelWaterfallsEnd:
TM_Layer2_ElectricCurrents:
	db "Layer2_ElectricCurrents.bin"
TM_Layer2_ElectricCurrentsEnd:
TM_Mode7_RareLogo:
	db "Mode7_RareLogo.bin"
TM_Mode7_RareLogoEnd:
TM_Layer1_SnowLevels:
	db "Layer1_SnowLevels.bin"
TM_Layer1_SnowLevelsEnd:
TM_Layer3_HeavySnowfall:
	db "Layer3_HeavySnowfall.bin"
TM_Layer3_HeavySnowfallEnd:

;--------------------------------------------------------------------

TM_Layer3_PierLevels:
	db "Layer3_PierLevels.bin"
TM_Layer3_PierLevelsEnd:
TM_Layer2_MillLevels:
	db "Layer2_MillLevels.bin"
TM_Layer2_MillLevelsEnd:
TM_Layer1_GameOverScreen:
	db "Layer1_GameOverScreen.bin"
TM_Layer1_GameOverScreenEnd:
TM_Layer1_PierLevelWaterllineAndMountains:
	db "Layer1_PierLevelWaterllineAndMountains.bin"
TM_Layer1_PierLevelWaterllineAndMountainsEnd:
TM_Layer1_PierLevelSeaFloor:
	db "Layer1_PierLevelSeaFloor.bin"
TM_Layer1_PierLevelSeaFloorEnd:
TM_Layer3_PierLevelsSky:
	db "Layer3_PierLevelsSky.bin"
TM_Layer3_PierLevelsSkyEnd:
TM_Layer3_ForestLevels:
	db "Layer3_ForestLevels.bin"
TM_Layer3_ForestLevelsEnd:
TM_Layer2_ForestLevels:
	db "Layer2_ForestLevels.bin"
TM_Layer2_ForestLevelsEnd:
TM_Layer2_SwankysSideshowInTent:
	db "Layer2_SwankysSideshowInTent.bin"
TM_Layer2_SwankysSideshowInTentEnd:
TM_Layer1_SwankysSideshowInTent:
	db "Layer1_SwankysSideshowInTent.bin"
TM_Layer1_SwankysSideshowInTentEnd:
TM_Layer1_K3:
	db "Layer1_K3.bin"
TM_Layer1_K3End:
TM_Layer1_KremwoodForest:
	db "Layer1_KremwoodForest.bin"
TM_Layer1_KremwoodForestEnd:
TM_Layer1_LakeOrangatanga:
	db "Layer1_LakeOrangatanga.bin"
TM_Layer1_LakeOrangatangaEnd:
TM_Layer3_LakeOrangatanga:
	db "Layer3_LakeOrangatanga.bin"
TM_Layer3_LakeOrangatangaEnd:
TM_Layer3_KremwoodForest:
	db "Layer3_KremwoodForest.bin"
TM_Layer3_KremwoodForestEnd:
TM_Layer1_TitleScreen:
	db "Layer1_TitleScreen.bin"
TM_Layer1_TitleScreenEnd:
TM_Layer1_WrinklysSaveCave:
	db "Layer1_WrinklysSaveCave.bin"
TM_Layer1_WrinklysSaveCaveEnd:
TM_Layer1_FunkysRentals:
	db "Layer1_FunkysRentals.bin"
TM_Layer1_FunkysRentalsEnd:
TM_Layer1_SwankysSideshowOutside:
	db "Layer1_SwankysSideshowOutside.bin"
TM_Layer1_SwankysSideshowOutsideEnd:
TM_Layer1_TVScreen:
	db "Layer1_TVScreen.bin"
TM_Layer1_TVScreenEnd:
TM_Layer2_RiverbankLevels:
	db "Layer2_RiverbankLevels.bin"
TM_Layer2_RiverbankLevelsEnd:
TM_Layer3_RiverbankLightning:
	db "Layer3_RiverbankLightning.bin"
TM_Layer3_RiverbankLightningEnd:
TM_Layer2_KastleKAOSLeftHalf:
	db "Layer2_KastleKAOSLeftHalf.bin"
TM_Layer2_KastleKAOSLeftHalfEnd:
TM_Layer2_KastleKAOSRightHalf:
	db "Layer2_KastleKAOSRightHalf.bin"
TM_Layer2_KastleKAOSRightHalfEnd:
TM_Layer1_BrothersBearHouse:
	db "Layer1_BrothersBearHouse.bin"
TM_Layer1_BrothersBearHouseEnd:
TM_Layer2_TitleScreenDixieKongLogo:
	db "Layer2_TitleScreenDixieKongLogo.bin"
TM_Layer2_TitleScreenDixieKongLogoEnd:
TM_Layer1_BleaksHouse:
	db "Layer1_BleaksHouse.bin"
TM_Layer1_BleaksHouseEnd:
TM_Layer2_BleaksHouse:
	db "Layer2_BleaksHouse.bin"
TM_Layer2_BleaksHouseEnd:
TM_Layer2_BelchasBarn:
	db "Layer2_BelchasBarn.bin"
TM_Layer2_BelchasBarnEnd:
TM_Layer3_FactoryLevels:
	db "Layer3_FactoryLevels.bin"
TM_Layer3_FactoryLevelsEnd:
TM_Layer1_BarbossBarrier:
	db "Layer1_BarbossBarrier.bin"
TM_Layer1_BarbossBarrierEnd:
TM_Layer3_CoralReefLevels:
	db "Layer3_CoralReefLevels.bin"
TM_Layer3_CoralReefLevelsEnd:
TM_Layer2_FileSelectScreen:
	db "Layer2_FileSelectScreen.bin"
TM_Layer2_FileSelectScreenEnd:
TM_Layer1_FileSelectScreen:
	db "Layer1_FileSelectScreen.bin"
TM_Layer1_FileSelectScreenEnd:
TM_Layer3_SaveFileStatusScreen:
	db "Layer3_SaveFileStatusScreen.bin"
TM_Layer3_SaveFileStatusScreenEnd:
TM_Layer3_WaterfallLevel:
	db "Layer3_WaterfallLevel.bin"
TM_Layer3_WaterfallLevelEnd:
TM_Layer3_SquirtsHead:
	db "Layer3_SquirtsHead.bin"
TM_Layer3_SquirtsHeadEnd:
TM_Layer3_MountainLevels:
	db "Layer3_MountainLevels.bin"
TM_Layer3_MountainLevelsEnd:
TM_Layer2_MountainLevels:
	db "Layer2_MountainLevels.bin"
TM_Layer2_MountainLevelsEnd:
TM_Layer3_DrainPipeLevels:
	db "Layer3_DrainPipeLevels.bin"
TM_Layer3_DrainPipeLevelsEnd:
TM_Layer1_BashTheBaddiesScreen:
	db "Layer1_BashTheBaddiesScreen.bin"
TM_Layer1_BashTheBaddiesScreenEnd:
TM_Layer1_Mekanos:
	db "Layer1_Mekanos.bin"
TM_Layer1_MekanosEnd:
TM_Layer1_Kremtoa:
	db "Layer1_Kremtoa.bin"
TM_Layer1_KremtoaEnd:
TM_Layer2_BananaBirdCave:
	db "Layer2_BananaBirdCave.bin"
TM_Layer2_BananaBirdCaveEnd:
TM_Layer1_CollectXXStarsScreen:
	db "Layer1_CollectXXStarsScreen.bin"
TM_Layer1_CollectXXStarsScreenEnd:
TM_Layer1_GrabXXBananasScreen:
	db "Layer1_GrabXXBananasScreen.bin"
TM_Layer1_GrabXXBananasScreenEnd:
TM_Layer1_FindTheCoinScreen:
	db "Layer1_FindTheCoinScreen.bin"
TM_Layer1_FindTheCoinScreenEnd:
TM_Layer2_BonusRoomIntroScreen:
	db "Layer2_BonusRoomIntroScreen.bin"
TM_Layer2_BonusRoomIntroScreenEnd:
TM_Layer1_CottonTopCove:
	db "Layer1_CottonTopCove.bin"
TM_Layer1_CottonTopCoveEnd:
TM_Layer1_KAOSKore:
	db "Layer1_KAOSKore.bin"
TM_Layer1_KAOSKoreEnd:
TM_Layer1_BananaBirdCave:
	db "Layer1_BananaBirdCave.bin"
TM_Layer1_BananaBirdCaveEnd:
TM_Layer2_MapWater:
	db "Layer2_MapWater.bin"
TM_Layer2_MapWaterEnd:
TM_Layer2_BrothersBearPhotos:
	db "Layer2_BrothersBearPhotos.bin"
TM_Layer2_BrothersBearPhotosEnd:
TM_Layer1_FloodlitFish:
	db "Layer1_FloodlitFish.bin"
TM_Layer1_FloodlitFishEnd:
TM_Layer2_BossPhotos:
	db "Layer2_BossPhotos.bin"
TM_Layer2_BossPhotosEnd:
TM_Layer2_BananaBirdQueenScreen:
	db "Layer2_BananaBirdQueenScreen.bin"
TM_Layer2_BananaBirdQueenScreenEnd:
TM_Layer2_KRoolAndHovercraft:
	db "Layer2_KRoolAndHovercraft.bin"
TM_Layer2_KRoolAndHovercraftEnd:
TM_Layer1_KnautilusRightHalf:
	db "Layer1_KnautilusRightHalf.bin"
TM_Layer1_KnautilusRightHalfEnd:
TM_Layer1_KnautilusLeftHalf:
	db "Layer1_KnautilusLeftHalf.bin"
TM_Layer1_KnautilusLeftHalfEnd:
TM_Layer3_KastleKAOS:
	db "Layer3_KastleKAOS.bin"
TM_Layer3_KastleKAOSEnd:
TM_Layer1_Player1TeamWinsScreen:
	db "Layer1_Player1TeamWinsScreen.bin"
TM_Layer1_Player1TeamWinsScreenEnd:
TM_Layer1_Player2TeamWinsScreen:
	db "Layer1_Player2TeamWinsScreen.bin"
TM_Layer1_Player2TeamWinsScreenEnd:
TM_Layer3_IrregularityScreenText:
	db "Layer3_IrregularityScreenText.bin"
TM_Layer3_IrregularityScreenTextEnd:
TM_Layer3_CopyDetectionScreenText:
	db "Layer3_CopyDetectionScreenText.bin"
TM_Layer3_CopyDetectionScreenTextEnd:
TM_Layer3_RegionLockoutScreenText:
	db "Layer3_RegionLockoutScreenText.bin"
TM_Layer3_RegionLockoutScreenTextEnd:
TM_Layer1_MainMap:
	db "Layer1_MainMap.bin"
TM_Layer1_MainMapEnd:
TM_Layer3_MainMap:
	db "Layer3_MainMap.bin"
TM_Layer3_MainMapEnd:
TM_Layer2_JungleLevels:
	db "Layer2_JungleLevels.bin"
TM_Layer2_JungleLevelsEnd:
TM_Layer3_JungleLevels:
	db "Layer3_JungleLevels.bin"
TM_Layer3_JungleLevelsEnd:
TM_Layer2_CaveLevels:
	db "Layer2_CaveLevels.bin"
TM_Layer2_CaveLevelsEnd:
TM_Layer1_NintendoPresentsScreen:
	db "Layer1_NintendoPresentsScreen.bin"
TM_Layer1_NintendoPresentsScreenEnd:
TM_Layer3_NintendoPresentsScreen:
	db "Layer3_NintendoPresentsScreen.bin"
TM_Layer3_NintendoPresentsScreenEnd:
TM_Layer1_BananaBirdQueenScreen:
	db "Layer1_BananaBirdQueenScreen.bin"
TM_Layer1_BananaBirdQueenScreenEnd:
TM_Layer2_PhotoAlbumCover:
	db "Layer2_PhotoAlbumCover.bin"
TM_Layer2_PhotoAlbumCoverEnd:
TM_Layer2_PhotoAlbumSection:
	db "Layer2_PhotoAlbumSection.bin"
TM_Layer2_PhotoAlbumSectionEnd:
TM_Layer2_NintendoPresentsScreen:
	db "Layer2_NintendoPresentsScreen.bin"
TM_Layer2_NintendoPresentsScreenEnd:
TM_Layer3_CottonTopCove:
	db "Layer3_CottonTopCove.bin"
TM_Layer3_CottonTopCoveEnd:
TM_Layer3_Mekanos:
	db "Layer3_Mekanos.bin"
TM_Layer3_MekanosEnd:
TM_Layer3_RazorRidge:
	db "Layer3_RazorRidge.bin"
TM_Layer3_RazorRidgeEnd:
TM_Layer3_KAOSKore:
	db "Layer3_KAOSKore.bin"
TM_Layer3_KAOSKoreEnd:
TM_Layer3_Kremtoa:
	db "Layer3_Kremtoa.bin"
TM_Layer3_KremtoaEnd:
TM_Layer1_RazorRidge:
	db "Layer1_RazorRidge.bin"
TM_Layer1_RazorRidgeEnd:

;--------------------------------------------------------------------

M32_Layer1_Level_Cave:
	db "Layer1_Level_Cave.bin"
M32_Layer1_Level_CaveEnd:
M32_Layer1_Level_CoralReef:
	db "Layer1_Level_CoralReef.bin"
M32_Layer1_Level_CoralReefEnd:
M32_Layer1_Level_Mountain:
	db "Layer1_Level_Mountain.bin"
M32_Layer1_Level_MountainEnd:
M32_Layer1_Level_Jungle:
	db "Layer1_Level_Jungle.bin"
M32_Layer1_Level_JungleEnd:
M32_Layer1_Level_Factory:
	db "Layer1_Level_Factory.bin"
M32_Layer1_Level_FactoryEnd:
M32_Layer1_Level_Mill:
	db "Layer1_Level_Mill.bin"
M32_Layer1_Level_MillEnd:
M32_Layer1_Level_Riverbank:
	db "Layer1_Level_Riverbank.bin"
M32_Layer1_Level_RiverbankEnd:
M32_Layer2_Level_Pier:
	db "Layer2_Level_Pier.bin"
M32_Layer2_Level_PierEnd:
M32_Layer2_Level_Snow:
	db "Layer2_Level_Snow.bin"
M32_Layer2_Level_SnowEnd:
M32_Layer2_Level_Forest:
	db "Layer2_Level_Forest.bin"
M32_Layer2_Level_ForestEnd:
M32_Layer2_Level_DrainPipe:
	db "Layer2_Level_DrainPipe.bin"
M32_Layer2_Level_DrainPipeEnd:
M32_Layer2_Level_Waterfall:
	db "Layer2_Level_Waterfall.bin"
M32_Layer2_Level_WaterfallEnd:

;--------------------------------------------------------------------

CaveLevels1:
	db "CaveLevels1.bin"
CaveLevels1End:
CaveLevels2:
	db "CaveLevels2.bin"
CaveLevels2End:
CoralReefLevels1:
	db "CoralReefLevels1.bin"
CoralReefLevels1End:
CoralReefLevels2:
	db "CoralReefLevels2.bin"
CoralReefLevels2End:
MountainLevels1:
	db "MountainLevels1.bin"
MountainLevels1End:
MountainLevels2:
	db "MountainLevels2.bin"
MountainLevels2End:
JungleLevels:
	db "JungleLevels.bin"
JungleLevelsEnd:
FactoryLevels:
	db "FactoryLevels.bin"
FactoryLevelsEnd:
MillLevels:
	db "MillLevels.bin"
MillLevelsEnd:
RiverbankLevels:
	db "RiverbankLevels.bin"
RiverbankLevelsEnd:
PierLevels:
	db "PierLevels.bin"
PierLevelsEnd:
SnowLevels:
	db "SnowLevels.bin"
SnowLevelsEnd:
ForestLevels:
	db "ForestLevels.bin"
ForestLevelsEnd:
DrainPipeLevels1:
	db "DrainPipeLevels1.bin"
DrainPipeLevels1End:
DrainPipeLevels2:
	db "DrainPipeLevels2.bin"
DrainPipeLevels2End:
DrainPipeLevels3:
	db "DrainPipeLevels3.bin"
DrainPipeLevels3End:
WaterfallLevels1:
	db "WaterfallLevels1.bin"
WaterfallLevels1End:
WaterfallLevels2:
	db "WaterfallLevels2.bin"
WaterfallLevels2End:

;--------------------------------------------------------------------

SPR_EmptyDoorStopDashSublevel:
	db "EmptyDoorStopDashSublevel.bin"
SPR_EmptyDoorStopDashSublevelEnd:
SPR_NullLevel1:
	db "NullLevel1.bin"
SPR_NullLevel1End:
SPR_NullLevel2:
	db "NullLevel2.bin"
SPR_NullLevel2End:
SPR_NullLevel3:
	db "NullLevel3.bin"
SPR_NullLevel3End:
SPR_NullLevel4:
	db "NullLevel4.bin"
SPR_NullLevel4End:
SPR_NullLevel5:
	db "NullLevel5.bin"
SPR_NullLevel5End:
SPR_NullLevel6:
	db "NullLevel6.bin"
SPR_NullLevel6End:
SPR_NullLevel7:
	db "NullLevel7.bin"
SPR_NullLevel7End:
SPR_BazzasBlockade_PhotoAlbum:
	db "BazzasBlockade_PhotoAlbum.bin"
SPR_BazzasBlockade_PhotoAlbumEnd:
SPR_DoorstopDash_PhotoAlbum:
	db "DoorstopDash_PhotoAlbum.bin"
SPR_DoorstopDash_PhotoAlbumEnd:
SPR_LemguinLunge_PhotoAlbum:
	db "LemguinLunge_PhotoAlbum.bin"
SPR_LemguinLunge_PhotoAlbumEnd:
SPR_RopeyRumpus_PhotoAlbum:
	db "RopeyRumpus_PhotoAlbum.bin"
SPR_RopeyRumpus_PhotoAlbumEnd:
SPR_SkiddasRow_PhotoAlbum:
	db "SkiddasRow_PhotoAlbum.bin"
SPR_SkiddasRow_PhotoAlbumEnd:
SPR_SquealsOnWheels_PhotoAlbum:
	db "SquealsOnWheels_PhotoAlbum.bin"
SPR_SquealsOnWheels_PhotoAlbumEnd:
SPR_FloodlitFish_PhotoAlbum:
	db "FloodlitFish_PhotoAlbum.bin"
SPR_FloodlitFish_PhotoAlbumEnd:
SPR_BrothersBearPhotos:
	db "BrothersBearPhotos.bin"
SPR_BrothersBearPhotosEnd:
SPR_SwankysSideshow_PhotoAlbum:
	db "SwankysSideshow_PhotoAlbum.bin"
SPR_SwankysSideshow_PhotoAlbumEnd:
SPR_BossPhotos:
	db "BossPhotos.bin"
SPR_BossPhotosEnd:
SPR_CloseupOfKRoolDrivingHovercraft:
	db "CloseupOfKRoolDrivingHovercraft.bin"
SPR_CloseupOfKRoolDrivingHovercraftEnd:
SPR_KastleKAOS_PhotoAlbum:
	db "KastleKAOS_PhotoAlbum.bin"
SPR_KastleKAOS_PhotoAlbumEnd:
SPR_EarlyBobbingBarrelBrawl:
	db "EarlyBobbingBarrelBrawl.bin"
SPR_EarlyBobbingBarrelBrawlEnd:
SPR_KiddysPhotoAlbumArea:
	db "KiddysPhotoAlbumArea.bin"
SPR_KiddysPhotoAlbumAreaEnd:
SPR_DixiesPhotoAlbumArea:
	db "DixiesPhotoAlbumArea.bin"
SPR_DixiesPhotoAlbumAreaEnd:
SPR_NullLevel8:
	db "NullLevel8.bin"
SPR_NullLevel8End:
SPR_NullLevel9:
	db "NullLevel9.bin"
SPR_NullLevel9End:
SPR_NullLevel10:
	db "NullLevel10.bin"
SPR_NullLevel10End:
SPR_BazzasBlockade_ExitSublevel:
	db "BazzasBlockade_ExitSublevel.bin"
SPR_BazzasBlockade_ExitSublevelEnd:
SPR_FishfoodFrenzy_ExitSublevel:
	db "FishfoodFrenzy_ExitSublevel.bin"
SPR_FishfoodFrenzy_ExitSublevelEnd:
SPR_FloodlitFish_ExitSublevel:
	db "FloodlitFish_ExitSublevel.bin"
SPR_FloodlitFish_ExitSublevelEnd:
SPR_BelchasBarn:
	db "BelchasBarn.bin"
SPR_BelchasBarnEnd:
SPR_ArichsAmbush:
	db "ArichsAmbush.bin"
SPR_ArichsAmbushEnd:
SPR_SquirtsShowdown:
	db "SquirtsShowdown.bin"
SPR_SquirtsShowdownEnd:
SPR_KAOSKarnage:
	db "KAOSKarnage.bin"
SPR_KAOSKarnageEnd:
SPR_BleaksHouse:
	db "BleaksHouse.bin"
SPR_BleaksHouseEnd:
SPR_BarbossBarrier:
	db "BarbossBarrier.bin"
SPR_BarbossBarrierEnd:
SPR_KastleKAOS:
	db "KastleKAOS.bin"
SPR_KastleKAOSEnd:
SPR_Knautilus:
	db "Knautilus.bin"
SPR_KnautilusEnd:
SPR_LakesideLimbo_Main:
	db "LakesideLimbo_Main.bin"
SPR_LakesideLimbo_MainEnd:
SPR_KreepingKlasps_Main:
	db "KreepingKlasps_Main.bin"
SPR_KreepingKlasps_MainEnd:
SPR_TidalTrouble_Main:
	db "TidalTrouble_Main.bin"
SPR_TidalTrouble_MainEnd:
SPR_DoorstopDash_Main:
	db "DoorstopDash_Main.bin"
SPR_DoorstopDash_MainEnd:
SPR_SquealsOnWheels_Main:
	db "SquealsOnWheels_Main.bin"
SPR_SquealsOnWheels_MainEnd:
SPR_MurkyMill_Main:
	db "MurkyMill_Main.bin"
SPR_MurkyMill_MainEnd:
SPR_SkiddasRow_Main:
	db "SkiddasRow_Main.bin"
SPR_SkiddasRow_MainEnd:
SPR_LemguinLunge_Main:
	db "LemguinLunge_Main.bin"
SPR_LemguinLunge_MainEnd:
SPR_TearawayToboggan_Main:
	db "TearawayToboggan_Main.bin"
SPR_TearawayToboggan_MainEnd:
SPR_RipsawRage_Main:
	db "RipsawRage_Main.bin"
SPR_RipsawRage_MainEnd:
SPR_SpringinSpiders_Main:
	db "SpringinSpiders_Main.bin"
SPR_SpringinSpiders_MainEnd:
SPR_BarrelShieldBustUp_Main:
	db "BarrelShieldBustUp_Main.bin"
SPR_BarrelShieldBustUp_MainEnd:
SPR_SwoopySalvo_Main:
	db "SwoopySalvo_Main.bin"
SPR_SwoopySalvo_MainEnd:
SPR_RiversideRace_Main:
	db "RiversideRace_Main.bin"
SPR_RiversideRace_MainEnd:
SPR_LightningLookOut_Main:
	db "LightningLookOut_Main.bin"
SPR_LightningLookOut_MainEnd:
SPR_BobbingBarrelBrawl_Main:
	db "BobbingBarrelBrawl_Main.bin"
SPR_BobbingBarrelBrawl_MainEnd:
SPR_BazzasBlockade_Main:
	db "BazzasBlockade_Main.bin"
SPR_BazzasBlockade_MainEnd:
SPR_FishFoodFrenzy_Main:
	db "FishFoodFrenzy_Main.bin"
SPR_FishFoodFrenzy_MainEnd:
SPR_FloodlitFish_Main:
	db "FloodlitFish_Main.bin"
SPR_FloodlitFish_MainEnd:
SPR_RocketBarrelRide_Main:
	db "RocketBarrelRide_Main.bin"
SPR_RocketBarrelRide_MainEnd:
SPR_TrackerBarrelTrek_Main:
	db "TrackerBarrelTrek_Main.bin"
SPR_TrackerBarrelTrek_MainEnd:
SPR_BarrelDropBounce_Main:
	db "BarrelDropBounce_Main.bin"
SPR_BarrelDropBounce_MainEnd:
SPR_FireballFrenzy_Main:
	db "FireballFrenzy_Main.bin"
SPR_FireballFrenzy_MainEnd:
SPR_BlazingBazukas_Main:
	db "BlazingBazukas_Main.bin"
SPR_BlazingBazukas_MainEnd:
SPR_KrackshotKroc_Main:
	db "KrackshotKroc_Main.bin"
SPR_KrackshotKroc_MainEnd:
SPR_LowGLabyrinth_Main:
	db "LowGLabyrinth_Main.bin"
SPR_LowGLabyrinth_MainEnd:
SPR_PoisonousPipeline_Main:
	db "PoisonousPipeline_Main.bin"
SPR_PoisonousPipeline_MainEnd:
SPR_DemolitionDrainPipe_Main:
	db "DemolitionDrainPipe_Main.bin"
SPR_DemolitionDrainPipe_MainEnd:
SPR_KreviceKreepers_Main:
	db "KreviceKreepers_Main.bin"
SPR_KreviceKreepers_MainEnd:
SPR_KongFusedCliffs_Main:
	db "KongFusedCliffs_Main.bin"
SPR_KongFusedCliffs_MainEnd:
SPR_RopeyRumpus_Main:
	db "RopeyRumpus_Main.bin"
SPR_RopeyRumpus_MainEnd:
SPR_BuzzerBarrage_Main:
	db "BuzzerBarrage_Main.bin"
SPR_BuzzerBarrage_MainEnd:
SPR_PotHolePanic_Main:
	db "PotHolePanic_Main.bin"
SPR_PotHolePanic_MainEnd:
SPR_CreepyCaverns_Main:
	db "CreepyCaverns_Main.bin"
SPR_CreepyCaverns_MainEnd:
SPR_KoindozerKlamber_Main:
	db "KoindozerKlamber_Main.bin"
SPR_KoindozerKlamber_MainEnd:
SPR_KonveyorRopeKlash_Main:
	db "KonveyorRopeKlash_Main.bin"
SPR_KonveyorRopeKlash_MainEnd:
SPR_StampedeSprint_Main:
	db "StampedeSprint_Main.bin"
SPR_StampedeSprint_MainEnd:
SPR_CrissKrossCliffs_Main:
	db "CrissKrossCliffs_Main.bin"
SPR_CrissKrossCliffs_MainEnd:
SPR_TyrantTwinTussle_Main:
	db "TyrantTwinTussle_Main.bin"
SPR_TyrantTwinTussle_MainEnd:
SPR_RocketRush_Main:
	db "RocketRush_Main.bin"
SPR_RocketRush_MainEnd:
SPR_SwankysSideshow_InTent:
	db "SwankysSideshow_InTent.bin"
SPR_SwankysSideshow_InTentEnd:
SPR_NullLevel11:
	db "NullLevel11.bin"
SPR_NullLevel11End:
SPR_NullLevel12:
	db "NullLevel12.bin"
SPR_NullLevel12End:
SPR_LakesideLimbo_Bonus1:
	db "LakesideLimbo_Bonus1.bin"
SPR_LakesideLimbo_Bonus1End:
SPR_LakesideLimbo_Bonus2:
	db "LakesideLimbo_Bonus2.bin"
SPR_LakesideLimbo_Bonus2End:
SPR_DoorstopDash_Bonus1:
	db "DoorstopDash_Bonus1.bin"
SPR_DoorstopDash_Bonus1End:
SPR_DoorstopDash_Bonus2:
	db "DoorstopDash_Bonus2.bin"
SPR_DoorstopDash_Bonus2End:
SPR_TidalTrouble_Bonus1:
	db "TidalTrouble_Bonus1.bin"
SPR_TidalTrouble_Bonus1End:
SPR_TidalTrouble_Bonus2:
	db "TidalTrouble_Bonus2.bin"
SPR_TidalTrouble_Bonus2End:
SPR_SkiddasRow_Bonus1:
	db "SkiddasRow_Bonus1.bin"
SPR_SkiddasRow_Bonus1End:
SPR_SkiddasRow_Bonus2:
	db "SkiddasRow_Bonus2.bin"
SPR_SkiddasRow_Bonus2End:
SPR_SquealsOnWheels_Bonus1:
	db "SquealsOnWheels_Bonus1.bin"
SPR_SquealsOnWheels_Bonus1End:
SPR_SquealsOnWheels_Bonus2:
	db "SquealsOnWheels_Bonus2.bin"
SPR_SquealsOnWheels_Bonus2End:
SPR_BarrelShieldBustUp_Bonus1:
	db "BarrelShieldBustUp_Bonus1.bin"
SPR_BarrelShieldBustUp_Bonus1End:
SPR_BarrelShieldBustUp_Bonus2:
	db "BarrelShieldBustUp_Bonus2.bin"
SPR_BarrelShieldBustUp_Bonus2End:
SPR_RiverbankRace_Bonus1:
	db "RiverbankRace_Bonus1.bin"
SPR_RiverbankRace_Bonus1End:
SPR_RiverbankRace_Bonus2:
	db "RiverbankRace_Bonus2.bin"
SPR_RiverbankRace_Bonus2End:
SPR_MurkyMill_Bonus1:
	db "MurkyMill_Bonus1.bin"
SPR_MurkyMill_Bonus1End:
SPR_MurkyMill_Bonus2:
	db "MurkyMill_Bonus2.bin"
SPR_MurkyMill_Bonus2End:
SPR_SpringinSpiders_Bonus1:
	db "SpringinSpiders_Bonus1.bin"
SPR_SpringinSpiders_Bonus1End:
SPR_SpringinSpiders_Bonus2:
	db "SpringinSpiders_Bonus2.bin"
SPR_SpringinSpiders_Bonus2End:
SPR_LightningLookOut_Bonus1:
	db "LightningLookOut_Bonus1.bin"
SPR_LightningLookOut_Bonus1End:
SPR_LightningLookOut_Bonus2:
	db "LightningLookOut_Bonus2.bin"
SPR_LightningLookOut_Bonus2End:
SPR_BazzasBlockade_Bonus1:
	db "BazzasBlockade_Bonus1.bin"
SPR_BazzasBlockade_Bonus1End:
SPR_BazzasBlockade_Bonus2:
	db "BazzasBlockade_Bonus2.bin"
SPR_BazzasBlockade_Bonus2End:
SPR_RocketBarrelRide_Bonus1:
	db "RocketBarrelRide_Bonus1.bin"
SPR_RocketBarrelRide_Bonus1End:
SPR_RocketBarrelRide_Bonus2:
	db "RocketBarrelRide_Bonus2.bin"
SPR_RocketBarrelRide_Bonus2End:
SPR_KreepingKlasps_Bonus1:
	db "KreepingKlasps_Bonus1.bin"
SPR_KreepingKlasps_Bonus1End:
SPR_KreepingKlasps_Bonus2:
	db "KreepingKlasps_Bonus2.bin"
SPR_KreepingKlasps_Bonus2End:
SPR_TrackerBarrelTrek_Bonus1:
	db "TrackerBarrelTrek_Bonus1.bin"
SPR_TrackerBarrelTrek_Bonus1End:
SPR_TrackerBarrelTrek_Bonus2:
	db "TrackerBarrelTrek_Bonus2.bin"
SPR_TrackerBarrelTrek_Bonus2End:
SPR_FishFoodFrenzy_Bonus1:
	db "FishFoodFrenzy_Bonus1.bin"
SPR_FishFoodFrenzy_Bonus1End:
SPR_FishFoodFrenzy_Bonus2:
	db "FishFoodFrenzy_Bonus2.bin"
SPR_FishFoodFrenzy_Bonus2End:
SPR_FireballFrenzy_Bonus1:
	db "FireballFrenzy_Bonus1.bin"
SPR_FireballFrenzy_Bonus1End:
SPR_FireballFrenzy_Bonus2:
	db "FireballFrenzy_Bonus2.bin"
SPR_FireballFrenzy_Bonus2End:
SPR_DemolitionDrainPipe_Bonus1:
	db "DemolitionDrainPipe_Bonus1.bin"
SPR_DemolitionDrainPipe_Bonus1End:
SPR_DemolitionDrainPipe_Bonus2:
	db "DemolitionDrainPipe_Bonus2.bin"
SPR_DemolitionDrainPipe_Bonus2End:
SPR_RipsawRage_Bonus1:
	db "RipsawRage_Bonus1.bin"
SPR_RipsawRage_Bonus1End:
SPR_RipsawRage_Bonus2:
	db "RipsawRage_Bonus2.bin"
SPR_RipsawRage_Bonus2End:
SPR_BlazingBazukas_Bonus1:
	db "BlazingBazukas_Bonus1.bin"
SPR_BlazingBazukas_Bonus1End:
SPR_BlazingBazukas_Bonus2:
	db "BlazingBazukas_Bonus2.bin"
SPR_BlazingBazukas_Bonus2End:
SPR_LowGLabyrinth_Bonus1:
	db "LowGLabyrinth_Bonus1.bin"
SPR_LowGLabyrinth_Bonus1End:
SPR_LowGLabyrinth_Bonus2:
	db "LowGLabyrinth_Bonus2.bin"
SPR_LowGLabyrinth_Bonus2End:
SPR_KreviceKreepers_Bonus1:
	db "KreviceKreepers_Bonus1.bin"
SPR_KreviceKreepers_Bonus1End:
SPR_KreviceKreepers_Bonus2:
	db "KreviceKreepers_Bonus2.bin"
SPR_KreviceKreepers_Bonus2End:
SPR_TearawayToboggan_Bonus1:
	db "TearawayToboggan_Bonus1.bin"
SPR_TearawayToboggan_Bonus1End:
SPR_TearawayToboggan_Bonus2:
	db "TearawayToboggan_Bonus2.bin"
SPR_TearawayToboggan_Bonus2End:
SPR_BarrelDropBounce_Bonus1:
	db "BarrelDropBounce_Bonus1.bin"
SPR_BarrelDropBounce_Bonus1End:
SPR_BarrelDropBounce_Bonus2:
	db "BarrelDropBounce_Bonus2.bin"
SPR_BarrelDropBounce_Bonus2End:
SPR_KrackshotKroc_Bonus1:
	db "KrackshotKroc_Bonus1.bin"
SPR_KrackshotKroc_Bonus1End:
SPR_KrackshotKroc_Bonus2:
	db "KrackshotKroc_Bonus2.bin"
SPR_KrackshotKroc_Bonus2End:
SPR_LemguinLunge_Bonus1:
	db "LemguinLunge_Bonus1.bin"
SPR_LemguinLunge_Bonus1End:
SPR_LemguinLunge_Bonus2:
	db "LemguinLunge_Bonus2.bin"
SPR_LemguinLunge_Bonus2End:
SPR_BuzzerBarrage_Bonus1:
	db "BuzzerBarrage_Bonus1.bin"
SPR_BuzzerBarrage_Bonus1End:
SPR_BuzzerBarrage_Bonus2:
	db "BuzzerBarrage_Bonus2.bin"
SPR_BuzzerBarrage_Bonus2End:
SPR_KongFusedCliffs_Bonus1:
	db "KongFusedCliffs_Bonus1.bin"
SPR_KongFusedCliffs_Bonus1End:
SPR_KongFusedCliffs_Bonus2:
	db "KongFusedCliffs_Bonus2.bin"
SPR_KongFusedCliffs_Bonus2End:
SPR_FloodlitFish_Bonus1:
	db "FloodlitFish_Bonus1.bin"
SPR_FloodlitFish_Bonus1End:
SPR_FloodlitFish_Bonus2:
	db "FloodlitFish_Bonus2.bin"
SPR_FloodlitFish_Bonus2End:
SPR_PotHolePanic_Bonus1:
	db "PotHolePanic_Bonus1.bin"
SPR_PotHolePanic_Bonus1End:
SPR_PotHolePanic_Bonus2:
	db "PotHolePanic_Bonus2.bin"
SPR_PotHolePanic_Bonus2End:
SPR_RopeyRumpus_Bonus1:
	db "RopeyRumpus_Bonus1.bin"
SPR_RopeyRumpus_Bonus1End:
SPR_RopeyRumpus_Bonus2:
	db "RopeyRumpus_Bonus2.bin"
SPR_RopeyRumpus_Bonus2End:
SPR_KoindozerKlamber_Bonus1:
	db "KoindozerKlamber_Bonus1.bin"
SPR_KoindozerKlamber_Bonus1End:
SPR_KoindozerKlamber_Bonus2:
	db "KoindozerKlamber_Bonus2.bin"
SPR_KoindozerKlamber_Bonus2End:
SPR_CreepyCaverns_Bonus1:
	db "CreepyCaverns_Bonus1.bin"
SPR_CreepyCaverns_Bonus1End:
SPR_CreepyCaverns_Bonus2:
	db "CreepyCaverns_Bonus2.bin"
SPR_CreepyCaverns_Bonus2End:
SPR_BobbingBarrelBrawl_Bonus1:
	db "BobbingBarrelBrawl_Bonus1.bin"
SPR_BobbingBarrelBrawl_Bonus1End:
SPR_BobbingBarrelBrawl_Bonus2:
	db "BobbingBarrelBrawl_Bonus2.bin"
SPR_BobbingBarrelBrawl_Bonus2End:
SPR_KonveyorRopeKlash_Bonus1:
	db "KonveyorRopeKlash_Bonus1.bin"
SPR_KonveyorRopeKlash_Bonus1End:
SPR_KonveyorRopeKlash_Bonus2:
	db "KonveyorRopeKlash_Bonus2.bin"
SPR_KonveyorRopeKlash_Bonus2End:
SPR_PoisonousPipeline_Bonus1:
	db "PoisonousPipeline_Bonus1.bin"
SPR_PoisonousPipeline_Bonus1End:
SPR_PoisonousPipeline_Bonus2:
	db "PoisonousPipeline_Bonus2.bin"
SPR_PoisonousPipeline_Bonus2End:
SPR_SwoopySalvo_Bonus3:
	db "SwoopySalvo_Bonus3.bin"
SPR_SwoopySalvo_Bonus3End:
SPR_SwoopySalvo_Bonus1:
	db "SwoopySalvo_Bonus1.bin"
SPR_SwoopySalvo_Bonus1End:
SPR_SwoopySalvo_Bonus2:
	db "SwoopySalvo_Bonus2.bin"
SPR_SwoopySalvo_Bonus2End:
SPR_CrissKrossCliffs_Bonus1:
	db "CrissKrossCliffs_Bonus1.bin"
SPR_CrissKrossCliffs_Bonus1End:
SPR_CrissKrossCliffs_Bonus2:
	db "CrissKrossCliffs_Bonus2.bin"
SPR_CrissKrossCliffs_Bonus2End:
TyrantTwinTussle_Bonus1:
	db "TyrantTwinTussle_Bonus1.bin"
TyrantTwinTussle_Bonus1End:
TyrantTwinTussle_Bonus3:
	db "TyrantTwinTussle_Bonus3.bin"
TyrantTwinTussle_Bonus3End:
TyrantTwinTussle_Bonus2:
	db "TyrantTwinTussle_Bonus2.bin"
TyrantTwinTussle_Bonus2End:
SPR_StampedeSprint_Bonus2:
	db "StampedeSprint_Bonus2.bin"
SPR_StampedeSprint_Bonus2End:
SPR_StampedeSprint_Bonus3:
	db "StampedeSprint_Bonus3.bin"
SPR_StampedeSprint_Bonus3End:
SPR_StampedeSprint_Bonus1:
	db "StampedeSprint_Bonus1.bin"
SPR_StampedeSprint_Bonus1End:

;--------------------------------------------------------------------

BFD_LakesideLimbo_Main:
	db "LakesideLimbo_Main.bin"
BFD_LakesideLimbo_MainEnd:
BFD_KreepingKlasps_Main:
	db "KreepingKlasps_Main.bin"
BFD_KreepingKlasps_MainEnd:
BFD_TidalTrouble_Main:
	db "TidalTrouble_Main.bin"
BFD_TidalTrouble_MainEnd:
BFD_DoorstopDash_Main:
	db "DoorstopDash_Main.bin"
BFD_DoorstopDash_MainEnd:
BFD_SquealsOnWheels_Main:
	db "SquealsOnWheels_Main.bin"
BFD_SquealsOnWheels_MainEnd:
BFD_MurkyMill_Main:
	db "MurkyMill_Main.bin"
BFD_MurkyMill_MainEnd:
BFD_SkiddasRow_Main:
	db "SkiddasRow_Main.bin"
BFD_SkiddasRow_MainEnd:
BFD_LemguinLunge_Main:
	db "LemguinLunge_Main.bin"
BFD_LemguinLunge_MainEnd:
BFD_TearawayToboggan_Main:
	db "TearawayToboggan_Main.bin"
BFD_TearawayToboggan_MainEnd:
BFD_RipsawRage_Main:
	db "RipsawRage_Main.bin"
BFD_RipsawRage_MainEnd:
BFD_SpringinSpiders_Main:
	db "SpringinSpiders_Main.bin"
BFD_SpringinSpiders_MainEnd:
BFD_BarrelShieldBustUp_Main:
	db "BarrelShieldBustUp_Main.bin"
BFD_BarrelShieldBustUp_MainEnd:
BFD_SwoopySalvo_Main:
	db "SwoopySalvo_Main.bin"
BFD_SwoopySalvo_MainEnd:
BFD_RiversideRace_Main:
	db "RiversideRace_Main.bin"
BFD_RiversideRace_MainEnd:
BFD_LightningLookOut_Main:
	db "LightningLookOut_Main.bin"
BFD_LightningLookOut_MainEnd:
BFD_BobbingBarrelBrawl_Main:
	db "BobbingBarrelBrawl_Main.bin"
BFD_BobbingBarrelBrawl_MainEnd:
BFD_BazzasBlockade_Main:
	db "BazzasBlockade_Main.bin"
BFD_BazzasBlockade_MainEnd:
BFD_FishFoodFrenzy_Main:
	db "FishFoodFrenzy_Main.bin"
BFD_FishFoodFrenzy_MainEnd:
BFD_FloodlitFish_Main:
	db "FloodlitFish_Main.bin"
BFD_FloodlitFish_MainEnd:
BFD_RocketBarrelRide_Main:
	db "RocketBarrelRide_Main.bin"
BFD_RocketBarrelRide_MainEnd:
BFD_TrackerBarrelTrek_Main:
	db "TrackerBarrelTrek_Main.bin"
BFD_TrackerBarrelTrek_MainEnd:
BFD_BarrelDropBounce_Main:
	db "BarrelDropBounce_Main.bin"
BFD_BarrelDropBounce_MainEnd:
BFD_FireballFrenzy_Main:
	db "FireballFrenzy_Main.bin"
BFD_FireballFrenzy_MainEnd:
BFD_BlazingBazukas_Main:
	db "BlazingBazukas_Main.bin"
BFD_BlazingBazukas_MainEnd:
BFD_KrackshotKroc_Main:
	db "KrackshotKroc_Main.bin"
BFD_KrackshotKroc_MainEnd:
BFD_LowGLabyrinth_Main:
	db "LowGLabyrinth_Main.bin"
BFD_LowGLabyrinth_MainEnd:
BFD_PoisonousPipeline_Main:
	db "PoisonousPipeline_Main.bin"
BFD_PoisonousPipeline_MainEnd:
BFD_DemolitionDrainPipe_Main:
	db "DemolitionDrainPipe_Main.bin"
BFD_DemolitionDrainPipe_MainEnd:
BFD_KreviceKreepers_Main:
	db "KreviceKreepers_Main.bin"
BFD_KreviceKreepers_MainEnd:
BFD_KongFusedCliffs_Main:
	db "KongFusedCliffs_Main.bin"
BFD_KongFusedCliffs_MainEnd:
BFD_RopeyRumpus_Main:
	db "RopeyRumpus_Main.bin"
BFD_RopeyRumpus_MainEnd:
BFD_BuzzerBarrage_Main:
	db "BuzzerBarrage_Main.bin"
BFD_BuzzerBarrage_MainEnd:
BFD_PotHolePanic_Main:
	db "PotHolePanic_Main.bin"
BFD_PotHolePanic_MainEnd:
BFD_CreepyCaverns_Main:
	db "CreepyCaverns_Main.bin"
BFD_CreepyCaverns_MainEnd:
BFD_KoindozerKlamber_Main:
	db "KoindozerKlamber_Main.bin"
BFD_KoindozerKlamber_MainEnd:
BFD_KonveyorRopeKlash_Main:
	db "KonveyorRopeKlash_Main.bin"
BFD_KonveyorRopeKlash_MainEnd:
BFD_StampedeSprint_Main:
	db "StampedeSprint_Main.bin"
BFD_StampedeSprint_MainEnd:
BFD_CrissKrossCliffs_Main:
	db "CrissKrossCliffs_Main.bin"
BFD_CrissKrossCliffs_MainEnd:
BFD_TyrantTwinTussle_Main:
	db "TyrantTwinTussle_Main.bin"
BFD_TyrantTwinTussle_MainEnd:
BFD_RocketRush_Main:
	db "RocketRush_Main.bin"
BFD_RocketRush_MainEnd:
BFD_LakesideLimbo_Bonus1:
	db "LakesideLimbo_Bonus1.bin"
BFD_LakesideLimbo_Bonus1End:
BFD_DoorstopDash_Bonus1:
	db "DoorstopDash_Bonus1.bin"
BFD_DoorstopDash_Bonus1End:
BFD_TidalTrouble_Bonus1:
	db "TidalTrouble_Bonus1.bin"
BFD_TidalTrouble_Bonus1End:
BFD_TidalTrouble_Bonus2:
	db "TidalTrouble_Bonus2.bin"
BFD_TidalTrouble_Bonus2End:
BFD_SquealsOnWheels_Bonus1:
	db "SquealsOnWheels_Bonus1.bin"
BFD_SquealsOnWheels_Bonus1End:
BFD_BarrelShieldBustUp_Bonus1:
	db "BarrelShieldBustUp_Bonus1.bin"
BFD_BarrelShieldBustUp_Bonus1End:
BFD_SpringinSpiders_Bonus2:
	db "SpringinSpiders_Bonus2.bin"
BFD_SpringinSpiders_Bonus2End:
BFD_RocketBarrelRide_Bonus1:
	db "RocketBarrelRide_Bonus1.bin"
BFD_RocketBarrelRide_Bonus1End:
BFD_RocketBarrelRide_Bonus2:
	db "RocketBarrelRide_Bonus2.bin"
BFD_RocketBarrelRide_Bonus2End:
BFD_TrackerBarrelTrek_Bonus1:
	db "TrackerBarrelTrek_Bonus1.bin"
BFD_TrackerBarrelTrek_Bonus1End:
BFD_DemolitionDrainPipe_Bonus2:
	db "DemolitionDrainPipe_Bonus2.bin"
BFD_DemolitionDrainPipe_Bonus2End:
BFD_RipsawRage_Bonus1:
	db "RipsawRage_Bonus1.bin"
BFD_RipsawRage_Bonus1End:
BFD_BlazingBazukas_Bonus2:
	db "BlazingBazukas_Bonus2.bin"
BFD_BlazingBazukas_Bonus2End:
BFD_LowGLabyrinth_Bonus1:
	db "LowGLabyrinth_Bonus1.bin"
BFD_LowGLabyrinth_Bonus1End:
BFD_KreviceKreepers_Bonus1:
	db "KreviceKreepers_Bonus1.bin"
BFD_KreviceKreepers_Bonus1End:
BFD_KreviceKreepers_Bonus2:
	db "KreviceKreepers_Bonus2.bin"
BFD_KreviceKreepers_Bonus2End:
BFD_TearawayToboggan_Bonus2:
	db "TearawayToboggan_Bonus2.bin"
BFD_TearawayToboggan_Bonus2End:
BFD_LemguinLunge_Bonus2:
	db "LemguinLunge_Bonus2.bin"
BFD_LemguinLunge_Bonus2End:
BFD_BuzzerBarrage_Bonus2:
	db "BuzzerBarrage_Bonus2.bin"
BFD_BuzzerBarrage_Bonus2End:
BFD_FloodlitFish_Bonus1:
	db "FloodlitFish_Bonus1.bin"
BFD_FloodlitFish_Bonus1End:
BFD_FloodlitFish_Bonus2:
	db "FloodlitFish_Bonus2.bin"
BFD_FloodlitFish_Bonus2End:
BFD_PotHolePanic_Bonus1:
	db "PotHolePanic_Bonus1.bin"
BFD_PotHolePanic_Bonus1End:
BFD_RopeyRumpus_Bonus1:
	db "RopeyRumpus_Bonus1.bin"
BFD_RopeyRumpus_Bonus1End:
BFD_KoindozerKlamber_Bonus1:
	db "KoindozerKlamber_Bonus1.bin"
BFD_KoindozerKlamber_Bonus1End:
BFD_CreepyCaverns_Bonus1:
	db "CreepyCaverns_Bonus1.bin"
BFD_CreepyCaverns_Bonus1End:
BFD_BobbingBarrelBrawl_Bonus2:
	db "BobbingBarrelBrawl_Bonus2.bin"
BFD_BobbingBarrelBrawl_Bonus2End:
BFD_KonveyorRopeKlash_Bonus1:
	db "KonveyorRopeKlash_Bonus1.bin"
BFD_KonveyorRopeKlash_Bonus1End:
BFD_PoisonousPipeline_Bonus1:
	db "PoisonousPipeline_Bonus1.bin"
BFD_PoisonousPipeline_Bonus1End:
BFD_SwoopySalvo_Bonus3:
	db "SwoopySalvo_Bonus3.bin"
BFD_SwoopySalvo_Bonus3End:
BFD_TyrantTwinTussle_Bonus1:
	db "TyrantTwinTussle_Bonus1.bin"
BFD_TyrantTwinTussle_Bonus1End:
BFD_TyrantTwinTussle_Bonus2:
	db "TyrantTwinTussle_Bonus2.bin"
BFD_TyrantTwinTussle_Bonus2End:

;--------------------------------------------------------------------

PAL_Layer1_FloodlitFishLight:
	db "Layer1_FloodlitFishLight.bin"
PAL_Layer1_FloodlitFishLightEnd:
PAL_Layer3_LightningLookOutLightning:
	db "Layer3_LightningLookOutLightning.bin"
PAL_Layer3_LightningLookOutLightningEnd:
PAL_Layer1_SnowLevelSky:
	db "Layer1_SnowLevelSky.bin"
PAL_Layer1_SnowLevelSkyEnd:
PAL_Sprite_Dixie_Active:
	db "Sprite_Dixie_Active.bin"
PAL_Sprite_Dixie_ActiveEnd:
PAL_Sprite_Dixie_InActive:
	db "Sprite_Dixie_InActive.bin"
PAL_Sprite_Dixie_InActiveEnd:
PAL_Sprite_Dixie_P2Active:
	db "Sprite_Dixie_P2Active.bin"
PAL_Sprite_Dixie_P2ActiveEnd:
PAL_Sprite_Dixie_P2InActive:
	db "Sprite_Dixie_P2InActive.bin"
PAL_Sprite_Dixie_P2InActiveEnd:
PAL_Sprite_Dixie_Invincible:
	db "Sprite_Dixie_Invincible.bin"
PAL_Sprite_Dixie_InvincibleEnd:
PAL_Sprite_Dixie_Zapped:
	db "Sprite_Dixie_Zapped.bin"
PAL_Sprite_Dixie_ZappedEnd:
PAL_Sprite_Kiddy_Active:
	db "Sprite_Kiddy_Active.bin"
PAL_Sprite_Kiddy_ActiveEnd:
PAL_Sprite_Kiddy_InActive:
	db "Sprite_Kiddy_InActive.bin"
PAL_Sprite_Kiddy_InActiveEnd:
PAL_Sprite_Kiddy_P2Active:
	db "Sprite_Kiddy_P2Active.bin"
PAL_Sprite_Kiddy_P2ActiveEnd:
PAL_Sprite_Kiddy_P2InActive:
	db "Sprite_Kiddy_P2InActive.bin"
PAL_Sprite_Kiddy_P2InActiveEnd:
PAL_Sprite_Kiddy_Invincible:
	db "Sprite_Kiddy_Invincible.bin"
PAL_Sprite_Kiddy_InvincibleEnd:
PAL_Sprite_Kiddy_Zapped:
	db "Sprite_Kiddy_Zapped.bin"
PAL_Sprite_Kiddy_ZappedEnd:
PAL_Sprite_DonkeyKong:
	db "Sprite_DonkeyKong.bin"
PAL_Sprite_DonkeyKongEnd:
PAL_Sprite_DiddyKong:
	db "Sprite_DiddyKong.bin"
PAL_Sprite_DiddyKongEnd:
PAL_Sprite_Ellie:
	db "Sprite_Ellie.bin"
PAL_Sprite_EllieEnd:
PAL_Sprite_Enguarde:
	db "Sprite_Enguarde.bin"
PAL_Sprite_EnguardeEnd:
PAL_Sprite_Squitter:
	db "Sprite_Squitter.bin"
PAL_Sprite_SquitterEnd:
PAL_Sprite_GreenSquawks:
	db "Sprite_GreenSquawks.bin"
PAL_Sprite_GreenSquawksEnd:
PAL_Sprite_PurpleSquawks:
	db "Sprite_PurpleSquawks.bin"
PAL_Sprite_PurpleSquawksEnd:
PAL_Sprite_Parry:
	db "Sprite_Parry.bin"
PAL_Sprite_ParryEnd:
PAL_Sprite_RedBuzz:
	db "Sprite_RedBuzz.bin"
PAL_Sprite_RedBuzzEnd:
PAL_Sprite_GreenBuzz:
	db "Sprite_GreenBuzz.bin"
PAL_Sprite_GreenBuzzEnd:
PAL_Sprite_ReKoil:
	db "Sprite_ReKoil.bin"
PAL_Sprite_ReKoilEnd:
PAL_Sprite_Koin:
	db "Sprite_Koin.bin"
PAL_Sprite_KoinEnd:
PAL_Sprite_Sneek:
	db "Sprite_Sneek.bin"
PAL_Sprite_SneekEnd:
PAL_Sprite_RedKoco:
	db "Sprite_RedKoco.bin"
PAL_Sprite_RedKocoEnd:
PAL_Sprite_GreenKoco:
	db "Sprite_GreenKoco.bin"
PAL_Sprite_GreenKocoEnd:
PAL_Sprite_GleaminBream:
	db "Sprite_GleaminBream.bin"
PAL_Sprite_GleaminBreamEnd:
PAL_Sprite_BountyBass:
	db "Sprite_BountyBass.bin"
PAL_Sprite_BountyBassEnd:
PAL_Sprite_GreenLurchin:
	db "Sprite_GreenLurchin.bin"
PAL_Sprite_GreenLurchinEnd:
PAL_Sprite_PurpleLurchin:
	db "Sprite_PurpleLurchin.bin"
PAL_Sprite_PurpleLurchinEnd:
PAL_Sprite_RedKnikKnak:
	db "Sprite_RedKnikKnak.bin"
PAL_Sprite_RedKnikKnakEnd:
PAL_Sprite_YellowKnikKnak:
	db "Sprite_YellowKnikKnak.bin"
PAL_Sprite_YellowKnikKnakEnd:
PAL_Sprite_BootyBird:
	db "Sprite_BootyBird.bin"
PAL_Sprite_BootyBirdEnd:
PAL_Sprite_Bazuka:
	db "Sprite_Bazuka.bin"
PAL_Sprite_BazukaEnd:
PAL_Sprite_PurpleNid:
	db "Sprite_PurpleNid.bin"
PAL_Sprite_PurpleNidEnd:
PAL_Sprite_Kopter:
	db "Sprite_Kopter.bin"
PAL_Sprite_KopterEnd:
PAL_Sprite_NoAnimalBuddySign:
	db "Sprite_NoAnimalBuddySign.bin"
PAL_Sprite_NoAnimalBuddySignEnd:
PAL_Sprite_WarningSign:
	db "Sprite_WarningSign.bin"
PAL_Sprite_WarningSignEnd:
PAL_Sprite_NoKrosshairSign:
	db "Sprite_NoKrosshairSign.bin"
PAL_Sprite_NoKrosshairSignEnd:
PAL_Sprite_HUDNumbers:
	db "Sprite_HUDNumbers.bin"
PAL_Sprite_HUDNumbersEnd:
PAL_Sprite_GreenBananas:
	db "Sprite_GreenBananas.bin"
PAL_Sprite_GreenBananasEnd:
PAL_Sprite_ChristmasPresents:
	db "Sprite_ChristmasPresents.bin"
PAL_Sprite_ChristmasPresentsEnd:
PAL_Sprite_ChristmasOrnaments:
	db "Sprite_ChristmasOrnaments.bin"
PAL_Sprite_ChristmasOrnamentsEnd:
PAL_Sprite_MillPlatform:
	db "Sprite_MillPlatform.bin"
PAL_Sprite_MillPlatformEnd:
PAL_Sprite_FactoryPlatform:
	db "Sprite_FactoryPlatform.bin"
PAL_Sprite_FactoryPlatformEnd:
PAL_Sprite_RedExtraLifeBalloon:
	db "Sprite_RedExtraLifeBalloon.bin"
PAL_Sprite_RedExtraLifeBalloonEnd:
PAL_Sprite_GreenExtraLifeBalloon:
	db "Sprite_GreenExtraLifeBalloon.bin"
PAL_Sprite_GreenExtraLifeBalloonEnd:
PAL_Sprite_BlueExtraLifeBalloon:
	db "Sprite_BlueExtraLifeBalloon.bin"
PAL_Sprite_BlueExtraLifeBalloonEnd:
PAL_Sprite_PinkFlag:
	db "Sprite_PinkFlag.bin"
PAL_Sprite_PinkFlagEnd:
PAL_Sprite_PurpleFlag:
	db "Sprite_PurpleFlag.bin"
PAL_Sprite_PurpleFlagEnd:
PAL_Sprite_BlueFlag:
	db "Sprite_BlueFlag.bin"
PAL_Sprite_BlueFlagEnd:
PAL_Sprite_GreenFlag:
	db "Sprite_GreenFlag.bin"
PAL_Sprite_GreenFlagEnd:
PAL_Sprite_LevelEndFlagpole:
	db "Sprite_LevelEndFlagpole.bin"
PAL_Sprite_LevelEndFlagpoleEnd:
PAL_Sprite_WhiteFlag:
	db "Sprite_WhiteFlag.bin"
PAL_Sprite_WhiteFlagEnd:
PAL_Sprite_WaterfallBarrel:
	db "Sprite_WaterfallBarrel.bin"
PAL_Sprite_WaterfallBarrelEnd:
PAL_Sprite_Barrel:
	db "Sprite_Barrel.bin"
PAL_Sprite_BarrelEnd:
PAL_Sprite_SteelKeg:
	db "Sprite_SteelKeg.bin"
PAL_Sprite_SteelKegEnd:
PAL_Sprite_Rocket:
	db "Sprite_Rocket.bin"
PAL_Sprite_RocketEnd:
PAL_Sprite_RocketFire:
	db "Sprite_RocketFire.bin"
PAL_Sprite_RocketFireEnd:
PAL_Sprite_RoastedBuzz:
	db "Sprite_RoastedBuzz.bin"
PAL_Sprite_RoastedBuzzEnd:
PAL_Sprite_FuelTank:
	db "Sprite_FuelTank.bin"
PAL_Sprite_FuelTankEnd:
PAL_Sprite_FireAndExplosions:
	db "Sprite_FireAndExplosions.bin"
PAL_Sprite_FireAndExplosionsEnd:
PAL_Sprite_GoldCoins:
	db "Sprite_GoldCoins.bin"
PAL_Sprite_GoldCoinsEnd:
PAL_Sprite_BearCoin:
	db "Sprite_BearCoin.bin"
PAL_Sprite_BearCoinEnd:
PAL_Sprite_SaveScreenBonusBCoin:
	db "Sprite_SaveScreenBonusBCoin.bin"
PAL_Sprite_SaveScreenBonusBCoinEnd:
PAL_Sprite_WaterSplash:
	db "Sprite_WaterSplash.bin"
PAL_Sprite_WaterSplashEnd:
PAL_Sprite_Klasp:
	db "Sprite_Klasp.bin"
PAL_Sprite_KlaspEnd:
PAL_Sprite_KuffNKlout:
	db "Sprite_KuffNKlout.bin"
PAL_Sprite_KuffNKloutEnd:
PAL_Sprite_Bleak:
	db "Sprite_Bleak.bin"
PAL_Sprite_BleakEnd:
PAL_Sprite_Lemguin:
	db "Sprite_Lemguin.bin"
PAL_Sprite_LemguinEnd:
PAL_Sprite_Kobble:
	db "Sprite_Kobble.bin"
PAL_Sprite_KobbleEnd:
PAL_Sprite_RedNibbla:
	db "Sprite_RedNibbla.bin"
PAL_Sprite_RedNibblaEnd:
PAL_Sprite_Minkey:
	db "Sprite_Minkey.bin"
PAL_Sprite_MinkeyEnd:
PAL_Sprite_Skidda:
	db "Sprite_Skidda.bin"
PAL_Sprite_SkiddaEnd:
PAL_Sprite_BananaBirds:
	db "Sprite_BananaBirds.bin"
PAL_Sprite_BananaBirdsEnd:
PAL_Sprite_Knocka:
	db "Sprite_Knocka.bin"
PAL_Sprite_KnockaEnd:
PAL_Sprite_Kracka:
	db "Sprite_Kracka.bin"
PAL_Sprite_KrackaEnd:
PAL_Sprite_GreenBarrel:
	db "Sprite_GreenBarrel.bin"
PAL_Sprite_GreenBarrelEnd:
PAL_Sprite_RedTNTBarrel:
	db "Sprite_RedTNTBarrel.bin"
PAL_Sprite_RedTNTBarrelEnd:
PAL_Sprite_Krimp:
	db "Sprite_Krimp.bin"
PAL_Sprite_KrimpEnd:
PAL_Sprite_BarbosEyesAndMouth:
	db "Sprite_BarbosEyesAndMouth.bin"
PAL_Sprite_BarbosEyesAndMouthEnd:
PAL_Sprite_Bristles:
	db "Sprite_Bristles.bin"
PAL_Sprite_BristlesEnd:
PAL_Sprite_BarbosSpikeProjectiles:
	db "Sprite_BarbosSpikeProjectiles.bin"
PAL_Sprite_BarbosSpikeProjectilesEnd:
PAL_Sprite_Krumple:
	db "Sprite_Krumple.bin"
PAL_Sprite_KrumpleEnd:
PAL_Sprite_PurpleSeashellMissle:
	db "Sprite_PurpleSeashellMissle.bin"
PAL_Sprite_PurpleSeashellMissleEnd:
PAL_Sprite_Swoopy:
	db "Sprite_Swoopy.bin"
PAL_Sprite_SwoopyEnd:
PAL_Sprite_Kuchuka:
	db "Sprite_Kuchuka.bin"
PAL_Sprite_KuchukaEnd:
PAL_Sprite_Bazza:
	db "Sprite_Bazza.bin"
PAL_Sprite_BazzaEnd:
PAL_Sprite_PurpleBarrel:
	db "Sprite_PurpleBarrel.bin"
PAL_Sprite_PurpleBarrelEnd:
PAL_Sprite_KarbinesFireball:
	db "Sprite_KarbinesFireball.bin"
PAL_Sprite_KarbinesFireballEnd:
PAL_Sprite_YellowNid:
	db "Sprite_YellowNid.bin"
PAL_Sprite_YellowNidEnd:
PAL_Sprite_Karbine:
	db "Sprite_Karbine.bin"
PAL_Sprite_KarbineEnd:
PAL_Sprite_Koindozer:
	db "Sprite_Koindozer.bin"
PAL_Sprite_KoindozerEnd:
PAL_Sprite_KRool:
	db "Sprite_KRool.bin"
PAL_Sprite_KRoolEnd:
PAL_Sprite_ElectricNode:
	db "Sprite_ElectricNode.bin"
PAL_Sprite_ElectricNodeEnd:
PAL_Sprite_CraneThatCarriesKAOS:
	db "Sprite_CraneThatCarriesKAOS.bin"
PAL_Sprite_CraneThatCarriesKAOSEnd:
PAL_Sprite_KnautilusFireballShooter:
	db "Sprite_KnautilusFireballShooter.bin"
PAL_Sprite_KnautilusFireballShooterEnd:
PAL_Sprite_KastleKaosBGElements:
	db "Sprite_KastleKaosBGElements.bin"
PAL_Sprite_KastleKaosBGElementsEnd:
PAL_Sprite_KRoolCurtain:
	db "Sprite_KRoolCurtain.bin"
PAL_Sprite_KRoolCurtainEnd:
PAL_Sprite_ElectricSparkBall:
	db "Sprite_ElectricSparkBall.bin"
PAL_Sprite_ElectricSparkBallEnd:
PAL_Sprite_SquirtsEyelids:
	db "Sprite_SquirtsEyelids.bin"
PAL_Sprite_SquirtsEyelidsEnd:
PAL_Sprite_SquirtsMouth:
	db "Sprite_SquirtsMouth.bin"
PAL_Sprite_SquirtsMouthEnd:
PAL_Sprite_SquirtsEyeballs:
	db "Sprite_SquirtsEyeballs.bin"
PAL_Sprite_SquirtsEyeballsEnd:
PAL_Sprite_YellowSeashellMissle:
	db "Sprite_YellowSeashellMissle.bin"
PAL_Sprite_YellowSeashellMissleEnd:
PAL_Sprite_BlueNibbla:
	db "Sprite_BlueNibbla.bin"
PAL_Sprite_BlueNibblaEnd:
PAL_Sprite_BluishPurpleNibbla:
	db "Sprite_BluishPurpleNibbla.bin"
PAL_Sprite_BluishPurpleNibblaEnd:
PAL_Sprite_ReddishPurpleNibbla:
	db "Sprite_ReddishPurpleNibbla.bin"
PAL_Sprite_ReddishPurpleNibblaEnd:
PAL_Sprite_BrightRedNibbla:
	db "Sprite_BrightRedNibbla.bin"
PAL_Sprite_BrightRedNibblaEnd:
PAL_Sprite_FunkyKong:
	db "Sprite_FunkyKong.bin"
PAL_Sprite_FunkyKongEnd:
PAL_Sprite_SwankyKong:
	db "Sprite_SwankyKong.bin"
PAL_Sprite_SwankyKongEnd:
PAL_Sprite_FunkysKongsBandanaAndBelt:
	db "Sprite_FunkysKongsBandanaAndBelt.bin"
PAL_Sprite_FunkysKongsBandanaAndBeltEnd:
PAL_Sprite_WrinklyKong:
	db "Sprite_WrinklyKong.bin"
PAL_Sprite_WrinklyKongEnd:
PAL_Sprite_SittingWrinklyKong:
	db "Sprite_SittingWrinklyKong.bin"
PAL_Sprite_SittingWrinklyKongEnd:
PAL_Sprite_CrankyKong:
	db "Sprite_CrankyKong.bin"
PAL_Sprite_CrankyKongEnd:
PAL_Sprite_SwankyKongsBarrelInEnding:
	db "Sprite_SwankyKongsBarrelInEnding.bin"
PAL_Sprite_SwankyKongsBarrelInEndingEnd:
PAL_Sprite_KAOSPurpleText:
	db "Sprite_KAOSPurpleText.bin"
PAL_Sprite_KAOSPurpleTextEnd:
PAL_Sprite_DixieYellowText:
	db "Sprite_DixieYellowText.bin"
PAL_Sprite_DixieYellowTextEnd:
PAL_Sprite_DonkeyKongLightOrangeText:
	db "Sprite_DonkeyKongLightOrangeText.bin"
PAL_Sprite_DonkeyKongLightOrangeTextEnd:
PAL_Sprite_DiddyKongOrangeText:
	db "Sprite_DiddyKongOrangeText.bin"
PAL_Sprite_DiddyKongOrangeTextEnd:
PAL_Sprite_CrankyKongWhiteText:
	db "Sprite_CrankyKongWhiteText.bin"
PAL_Sprite_CrankyKongWhiteTextEnd:
PAL_Sprite_Unknown1:
	db "Sprite_Unknown1.bin"
PAL_Sprite_Unknown1End:
PAL_Sprite_Unknown2:
	db "Sprite_Unknown2.bin"
PAL_Sprite_Unknown2End:
PAL_Sprite_Unknown3:
	db "Sprite_Unknown3.bin"
PAL_Sprite_Unknown3End:
PAL_Sprite_GhostBarrel:
	db "Sprite_GhostBarrel.bin"
PAL_Sprite_GhostBarrelEnd:
PAL_Sprite_Kiddy_TargetShoot:
	db "Sprite_Kiddy_TargetShoot.bin"
PAL_Sprite_Kiddy_TargetShootEnd:
PAL_Sprite_Kiddy_P2TargetShoot:
	db "Sprite_Kiddy_P2TargetShoot.bin"
PAL_Sprite_Kiddy_P2TargetShootEnd:
PAL_Sprite_Dixie_TargetShoot:
	db "Sprite_Dixie_TargetShoot.bin"
PAL_Sprite_Dixie_TargetShootEnd:
PAL_Sprite_Dixie_P2TargetShoot:
	db "Sprite_Dixie_P2TargetShoot.bin"
PAL_Sprite_Dixie_P2TargetShootEnd:
PAL_Sprite_MapDixieAndKiddy_P1:
	db "Sprite_MapDixieAndKiddy_P1.bin"
PAL_Sprite_MapDixieAndKiddy_P1End:
PAL_Sprite_MapDixieAndKiddy_P2:
	db "Sprite_MapDixieAndKiddy_P2.bin"
PAL_Sprite_MapDixieAndKiddy_P2End:
PAL_Sprite_PinkAndBlueMapFlags:
	db "Sprite_PinkAndBlueMapFlags.bin"
PAL_Sprite_PinkAndBlueMapFlagsEnd:
PAL_Sprite_PurpleAndGreenMapFlags:
	db "Sprite_PurpleAndGreenMapFlags.bin"
PAL_Sprite_PurpleAndGreenMapFlagsEnd:
PAL_Sprite_Toboggan:
	db "Sprite_Toboggan.bin"
PAL_Sprite_TobogganEnd:
PAL_Sprite_LargePipe:
	db "Sprite_LargePipe.bin"
PAL_Sprite_LargePipeEnd:
PAL_Sprite_HeadToHeadDots:
	db "Sprite_HeadToHeadDots.bin"
PAL_Sprite_HeadToHeadDotsEnd:
PAL_Sprite_Unknown4:
	db "Sprite_Unknown4.bin"
PAL_Sprite_Unknown4End:
PAL_Sprite_TargetShootTargets:
	db "Sprite_TargetShootTargets.bin"
PAL_Sprite_TargetShootTargetsEnd:
PAL_Sprite_Unknown5:
	db "Sprite_Unknown5.bin"
PAL_Sprite_Unknown5End:
PAL_Sprite_PinkTimerNumbers:
	db "Sprite_PinkTimerNumbers.bin"
PAL_Sprite_PinkTimerNumbersEnd:
PAL_Sprite_Unknown6:
	db "Sprite_Unknown6.bin"
PAL_Sprite_Unknown6End:
PAL_Sprite_RedText:
	db "Sprite_RedText.bin"
PAL_Sprite_RedTextEnd:
PAL_Sprite_BlueText:
	db "Sprite_BlueText.bin"
PAL_Sprite_BlueTextEnd:
PAL_Sprite_SneekWheel:
	db "Sprite_SneekWheel.bin"
PAL_Sprite_SneekWheelEnd:
PAL_Sprite_RightWallMetalDoor:
	db "Sprite_RightWallMetalDoor.bin"
PAL_Sprite_RightWallMetalDoorEnd:
PAL_Sprite_LeftWallMetalDoor:
	db "Sprite_LeftWallMetalDoor.bin"
PAL_Sprite_LeftWallMetalDoorEnd:
PAL_Sprite_ArichLegs:
	db "Sprite_ArichLegs.bin"
PAL_Sprite_ArichLegsEnd:
PAL_Sprite_ArichFace:
	db "Sprite_ArichFace.bin"
PAL_Sprite_ArichFaceEnd:
PAL_Sprite_ArichBouncingSpit:
	db "Sprite_ArichBouncingSpit.bin"
PAL_Sprite_ArichBouncingSpitEnd:
PAL_Sprite_Unknown7:
	db "Sprite_Unknown7.bin"
PAL_Sprite_Unknown7End:
PAL_Sprite_BelchasTeeth:
	db "Sprite_BelchasTeeth.bin"
PAL_Sprite_BelchasTeethEnd:
PAL_Sprite_SideOfBelchasMouth:
	db "Sprite_SideOfBelchasMouth.bin"
PAL_Sprite_SideOfBelchasMouthEnd:
PAL_Sprite_BelchasEye:
	db "Sprite_BelchasEye.bin"
PAL_Sprite_BelchasEyeEnd:
PAL_Sprite_SquirtsWaterStream:
	db "Sprite_SquirtsWaterStream.bin"
PAL_Sprite_SquirtsWaterStreamEnd:
PAL_Sprite_BuzzSwarm:
	db "Sprite_BuzzSwarm.bin"
PAL_Sprite_BuzzSwarmEnd:
PAL_Sprite_KAOSLaserHead:
	db "Sprite_KAOSLaserHead.bin"
PAL_Sprite_KAOSLaserHeadEnd:
PAL_Sprite_KAOSSkullHead:
	db "Sprite_KAOSSkullHead.bin"
PAL_Sprite_KAOSSkullHeadEnd:
PAL_Sprite_KAOSCylinderHead:
	db "Sprite_KAOSCylinderHead.bin"
PAL_Sprite_KAOSCylinderHeadEnd:
PAL_Sprite_KAOSBoxingGlove:
	db "Sprite_KAOSBoxingGlove.bin"
PAL_Sprite_KAOSBoxingGloveEnd:
PAL_Sprite_HeadToHeadCharacterHeads:
	db "Sprite_HeadToHeadCharacterHeads.bin"
PAL_Sprite_HeadToHeadCharacterHeadsEnd:
PAL_Sprite_BarrelShield:
	db "Sprite_BarrelShield.bin"
PAL_Sprite_BarrelShieldEnd:
PAL_Sprite_RotatingCylinderPegs:
	db "Sprite_RotatingCylinderPegs.bin"
PAL_Sprite_RotatingCylinderPegsEnd:
PAL_Sprite_RotatingCylinderBlueKeys:
	db "Sprite_RotatingCylinderBlueKeys.bin"
PAL_Sprite_RotatingCylinderBlueKeysEnd:
PAL_Sprite_RotatingCylinderGreenKeys:
	db "Sprite_RotatingCylinderGreenKeys.bin"
PAL_Sprite_RotatingCylinderGreenKeysEnd:
PAL_Sprite_RotatingCylinderRedKeys:
	db "Sprite_RotatingCylinderRedKeys.bin"
PAL_Sprite_RotatingCylinderRedKeysEnd:
PAL_Sprite_RotatingCylinderYellowKeys:
	db "Sprite_RotatingCylinderYellowKeys.bin"
PAL_Sprite_RotatingCylinderYellowKeysEnd:
PAL_Sprite_RotatingCylinderCrank:
	db "Sprite_RotatingCylinderCrank.bin"
PAL_Sprite_RotatingCylinderCrankEnd:
PAL_Sprite_RareLogo:
	db "Sprite_RareLogo.bin"
PAL_Sprite_RareLogoEnd:
PAL_Sprite_DKC2MapDiddyDixieTextAndLevelIcons:
	db "Sprite_DKC2MapDiddyDixieTextAndLevelIcons.bin"
PAL_Sprite_DKC2MapDiddyDixieTextAndLevelIconsEnd:
PAL_Sprite_Unknown8:
	db "Sprite_Unknown8.bin"
PAL_Sprite_Unknown8End:
PAL_Sprite_FunkysRentalsPool:
	db "Sprite_FunkysRentalsPool.bin"
PAL_Sprite_FunkysRentalsPoolEnd:
PAL_Sprite_MotorBoat:
	db "Sprite_MotorBoat.bin"
PAL_Sprite_MotorBoatEnd:
PAL_Sprite_Hovercraft:
	db "Sprite_Hovercraft.bin"
PAL_Sprite_HovercraftEnd:
PAL_Sprite_BleaksHouseFace:
	db "Sprite_BleaksHouseFace.bin"
PAL_Sprite_BleaksHouseFaceEnd:
PAL_Sprite_CottonTopCoveWaterfalls:
	db "Sprite_CottonTopCoveWaterfalls.bin"
PAL_Sprite_CottonTopCoveWaterfallsEnd:
PAL_Sprite_GlacialGrottoCover:
	db "Sprite_GlacialGrottoCover.bin"
PAL_Sprite_GlacialGrottoCoverEnd:
PAL_Sprite_SmugglersCoveCover:
	db "Sprite_SmugglersCoveCover.bin"
PAL_Sprite_SmugglersCoveCoverEnd:
PAL_Sprite_KMapFlags:
	db "Sprite_KMapFlags.bin"
PAL_Sprite_KMapFlagsEnd:
PAL_Sprite_WrinklysSaveCave:
	db "Sprite_WrinklysSaveCave.bin"
PAL_Sprite_WrinklysSaveCaveEnd:
PAL_Sprite_ArichAmbushFace:
	db "Sprite_ArichAmbushFace.bin"
PAL_Sprite_ArichAmbushFaceEnd:
PAL_Sprite_BrashsCabinSmoke:
	db "Sprite_BrashsCabinSmoke.bin"
PAL_Sprite_BrashsCabinSmokeEnd:
PAL_Sprite_ArichsHoardCover:
	db "Sprite_ArichsHoardCover.bin"
PAL_Sprite_ArichsHoardCoverEnd:
PAL_Sprite_DoubleTroubleSign:
	db "Sprite_DoubleTroubleSign.bin"
PAL_Sprite_DoubleTroubleSignEnd:
PAL_Sprite_Bazaar:
	db "Sprite_Bazaar.bin"
PAL_Sprite_BazaarEnd:
PAL_Sprite_BazaarsAccessories:
	db "Sprite_BazaarsAccessories.bin"
PAL_Sprite_BazaarsAccessoriesEnd:
PAL_Sprite_Bramble:
	db "Sprite_Bramble.bin"
PAL_Sprite_BrambleEnd:
PAL_Sprite_BramblesAccessories:
	db "Sprite_BramblesAccessories.bin"
PAL_Sprite_BramblesAccessoriesEnd:
PAL_Sprite_Brash:
	db "Sprite_Brash.bin"
PAL_Sprite_BrashEnd:
PAL_Sprite_Blunder:
	db "Sprite_Blunder.bin"
PAL_Sprite_BlunderEnd:
PAL_Sprite_BlizzardsAccessories:
	db "Sprite_BlizzardsAccessories.bin"
PAL_Sprite_BlizzardsAccessoriesEnd:
PAL_Sprite_BrashsAccessories:
	db "Sprite_BrashsAccessories.bin"
PAL_Sprite_BrashsAccessoriesEnd:
PAL_Sprite_BlundersAccessories:
	db "Sprite_BlundersAccessories.bin"
PAL_Sprite_BlundersAccessoriesEnd:
PAL_Sprite_Bazooka:
	db "Sprite_Bazooka.bin"
PAL_Sprite_BazookaEnd:
PAL_Sprite_Boomer:
	db "Sprite_Boomer.bin"
PAL_Sprite_BoomerEnd:
PAL_Sprite_Baffle:
	db "Sprite_Baffle.bin"
PAL_Sprite_BaffleEnd:
PAL_Sprite_Barnacle:
	db "Sprite_Barnacle.bin"
PAL_Sprite_BarnacleEnd:
PAL_Sprite_Barter:
	db "Sprite_Barter.bin"
PAL_Sprite_BarterEnd:
PAL_Sprite_Benny:
	db "Sprite_Benny.bin"
PAL_Sprite_BennyEnd:
PAL_Sprite_Bjorn:
	db "Sprite_Bjorn.bin"
PAL_Sprite_BjornEnd:
PAL_Sprite_Blue:
	db "Sprite_Blue.bin"
PAL_Sprite_BlueEnd:
PAL_Sprite_Blizzard:
	db "Sprite_Blizzard.bin"
PAL_Sprite_BlizzardEnd:
PAL_Sprite_BazookasAccessories:
	db "Sprite_BazookasAccessories.bin"
PAL_Sprite_BazookasAccessoriesEnd:
PAL_Sprite_BoomersAccessories:
	db "Sprite_BoomersAccessories.bin"
PAL_Sprite_BoomersAccessoriesEnd:
PAL_Sprite_BafflesAccessories:
	db "Sprite_BafflesAccessories.bin"
PAL_Sprite_BafflesAccessoriesEnd:
PAL_Sprite_BarnaclesAccessories:
	db "Sprite_BarnaclesAccessories.bin"
PAL_Sprite_BarnaclesAccessoriesEnd:
PAL_Sprite_BartersAccessories:
	db "Sprite_BartersAccessories.bin"
PAL_Sprite_BartersAccessoriesEnd:
PAL_Sprite_BennysAccessories:
	db "Sprite_BennysAccessories.bin"
PAL_Sprite_BennysAccessoriesEnd:
PAL_Sprite_BjornsAccessories:
	db "Sprite_BjornsAccessories.bin"
PAL_Sprite_BjornsAccessoriesEnd:
PAL_Sprite_BoomersFan:
	db "Sprite_BoomersFan.bin"
PAL_Sprite_BoomersFanEnd:
PAL_Sprite_Unknown9:
	db "Sprite_Unknown9.bin"
PAL_Sprite_Unknown9End:
PAL_Sprite_FileSelectOptionsText:
	db "Sprite_FileSelectOptionsText.bin"
PAL_Sprite_FileSelectOptionsTextEnd:
PAL_Sprite_FileSelectDigitalDisplayText:
	db "Sprite_FileSelectDigitalDisplayText.bin"
PAL_Sprite_FileSelectDigitalDisplayTextEnd:
PAL_Sprite_BrashesCabinDigitalDisplay:
	db "Sprite_BrashesCabinDigitalDisplay.bin"
PAL_Sprite_BrashesCabinDigitalDisplayEnd:
PAL_Sprite_MainMapWaterFallByCottonTopCove:
	db "Sprite_MainMapWaterFallByCottonTopCove.bin"
PAL_Sprite_MainMapWaterFallByCottonTopCoveEnd:
PAL_Sprite_MainMapWideWaterfalls:
	db "Sprite_MainMapWideWaterfalls.bin"
PAL_Sprite_MainMapWideWaterfallsEnd:
PAL_Sprite_Nintendo64:
	db "Sprite_Nintendo64.bin"
PAL_Sprite_Nintendo64End:
PAL_Sprite_GameOverBlocks_G:
	db "Sprite_GameOverBlocks_G.bin"
PAL_Sprite_GameOverBlocks_GEnd:
PAL_Sprite_GameOverBlocks_AM:
	db "Sprite_GameOverBlocks_AM.bin"
PAL_Sprite_GameOverBlocks_AMEnd:
PAL_Sprite_GameOverBlocks_E:
	db "Sprite_GameOverBlocks_E.bin"
PAL_Sprite_GameOverBlocks_EEnd:
PAL_Sprite_GameOverBlocks_O:
	db "Sprite_GameOverBlocks_O.bin"
PAL_Sprite_GameOverBlocks_OEnd:
PAL_Sprite_GameOverBlocks_V:
	db "Sprite_GameOverBlocks_V.bin"
PAL_Sprite_GameOverBlocks_VEnd:
PAL_Sprite_GameOverBlocks_ER:
	db "Sprite_GameOverBlocks_ER.bin"
PAL_Sprite_GameOverBlocks_EREnd:
PAL_Sprite_Unknown10:
	db "Sprite_Unknown10.bin"
PAL_Sprite_Unknown10End:
PAL_Sprite_Unknown11:
	db "Sprite_Unknown11.bin"
PAL_Sprite_Unknown11End:
PAL_Sprite_BramblesVase:
	db "Sprite_BramblesVase.bin"
PAL_Sprite_BramblesVaseEnd:
PAL_Sprite_AreaNameFont:
	db "Sprite_AreaNameFont.bin"
PAL_Sprite_AreaNameFontEnd:
PAL_Sprite_UsedInventoryItems1:
	db "Sprite_UsedInventoryItems1.bin"
PAL_Sprite_UsedInventoryItems1End:
PAL_Sprite_UsedInventoryItems2:
	db "Sprite_UsedInventoryItems2.bin"
PAL_Sprite_UsedInventoryItems2End:
PAL_Sprite_MainMapRocksAndWaterTrails:
	db "Sprite_MainMapRocksAndWaterTrails.bin"
PAL_Sprite_MainMapRocksAndWaterTrailsEnd:
PAL_Sprite_Gyrocopter:
	db "Sprite_Gyrocopter.bin"
PAL_Sprite_GyrocopterEnd:
PAL_Sprite_TurboSki:
	db "Sprite_TurboSki.bin"
PAL_Sprite_TurboSkiEnd:
PAL_Sprite_P2AreaNameFont:
	db "Sprite_P2AreaNameFont.bin"
PAL_Sprite_P2AreaNameFontEnd:
PAL_Sprite_BlueCrystal:
	db "Sprite_BlueCrystal.bin"
PAL_Sprite_BlueCrystalEnd:
PAL_Sprite_GreenCrystal:
	db "Sprite_GreenCrystal.bin"
PAL_Sprite_GreenCrystalEnd:
PAL_Sprite_RedCrystal:
	db "Sprite_RedCrystal.bin"
PAL_Sprite_RedCrystalEnd:
PAL_Sprite_YellowCrystal:
	db "Sprite_YellowCrystal.bin"
PAL_Sprite_YellowCrystalEnd:
PAL_Sprite_GlowingBlueCrystal:
	db "Sprite_GlowingBlueCrystal.bin"
PAL_Sprite_GlowingBlueCrystalEnd:
PAL_Sprite_GlowingGreenCrystal:
	db "Sprite_GlowingGreenCrystal.bin"
PAL_Sprite_GlowingGreenCrystalEnd:
PAL_Sprite_GlowingRedCrystal:
	db "Sprite_GlowingRedCrystal.bin"
PAL_Sprite_GlowingRedCrystalEnd:
PAL_Sprite_GlowingYellowCrystal:
	db "Sprite_GlowingYellowCrystal.bin"
PAL_Sprite_GlowingYellowCrystalEnd:
PAL_Sprite_MusicTestNotes:
	db "Sprite_MusicTestNotes.bin"
PAL_Sprite_MusicTestNotesEnd:
PAL_Sprite_Unknown12:
	db "Sprite_Unknown12.bin"
PAL_Sprite_Unknown12End:
PAL_Sprite_MusicTestSign:
	db "Sprite_MusicTestSign.bin"
PAL_Sprite_MusicTestSignEnd:
PAL_Sprite_BountyBayCover:
	db "Sprite_BountyBayCover.bin"
PAL_Sprite_BountyBayCoverEnd:
PAL_Sprite_CrystalShards:
	db "Sprite_CrystalShards.bin"
PAL_Sprite_CrystalShardsEnd:
PAL_Sprite_KremwoodForestLog:
	db "Sprite_KremwoodForestLog.bin"
PAL_Sprite_KremwoodForestLogEnd:
PAL_Sprite_MapCannon:
	db "Sprite_MapCannon.bin"
PAL_Sprite_MapCannonEnd:
PAL_Sprite_Chairlifts:
	db "Sprite_Chairlifts.bin"
PAL_Sprite_ChairliftsEnd:
PAL_Sprite_BoomersFuse:
	db "Sprite_BoomersFuse.bin"
PAL_Sprite_BoomersFuseEnd:
PAL_Sprite_SewerStockpileCover:
	db "Sprite_SewerStockpileCover.bin"
PAL_Sprite_SewerStockpileCoverEnd:
PAL_Sprite_SkyHighSecretRock:
	db "Sprite_SkyHighSecretRock.bin"
PAL_Sprite_SkyHighSecretRockEnd:
PAL_Sprite_Rockpile:
	db "Sprite_Rockpile.bin"
PAL_Sprite_RockpileEnd:
PAL_Sprite_ClifftopCacheCover:
	db "Sprite_ClifftopCacheCover.bin"
PAL_Sprite_ClifftopCacheCoverEnd:
PAL_Sprite_RazorRidgePipeAndWhirlpool:
	db "Sprite_RazorRidgePipeAndWhirlpool.bin"
PAL_Sprite_RazorRidgePipeAndWhirlpoolEnd:
PAL_Sprite_Krosshair:
	db "Sprite_Krosshair.bin"
PAL_Sprite_KrosshairEnd:
PAL_Sprite_Knautilus:
	db "Sprite_Knautilus.bin"
PAL_Sprite_KnautilusEnd:
PAL_Sprite_KremtoaBridge:
	db "Sprite_KremtoaBridge.bin"
PAL_Sprite_KremtoaBridgeEnd:
PAL_Sprite_BananaBirdQueenHead:
	db "Sprite_BananaBirdQueenHead.bin"
PAL_Sprite_BananaBirdQueenHeadEnd:
PAL_Sprite_MapKRool:
	db "Sprite_MapKRool.bin"
PAL_Sprite_MapKRoolEnd:
PAL_Sprite_KRoolsEyes:
	db "Sprite_KRoolsEyes.bin"
PAL_Sprite_KRoolsEyesEnd:
PAL_Sprite_GiantBananaBirdQueenEgg:
	db "Sprite_GiantBananaBirdQueenEgg.bin"
PAL_Sprite_GiantBananaBirdQueenEggEnd:
PAL_Sprite_RedGemInBananaBirdQueenBarrier:
	db "Sprite_RedGemInBananaBirdQueenBarrier.bin"
PAL_Sprite_RedGemInBananaBirdQueenBarrierEnd:
PAL_Sprite_LightsOnBananaBirdQueenBarrier:
	db "Sprite_LightsOnBananaBirdQueenBarrier.bin"
PAL_Sprite_LightsOnBananaBirdQueenBarrierEnd:
PAL_Sprite_KRoolHead:
	db "Sprite_KRoolHead.bin"
PAL_Sprite_KRoolHeadEnd:
PAL_Sprite_MapBananaBirdQueen:
	db "Sprite_MapBananaBirdQueen.bin"
PAL_Sprite_MapBananaBirdQueenEnd:
PAL_Sprite_FunkyKongDrivingBoat:
	db "Sprite_FunkyKongDrivingBoat.bin"
PAL_Sprite_FunkyKongDrivingBoatEnd:
PAL_Sprite_KarateCrankyTrophy:
	db "Sprite_KarateCrankyTrophy.bin"
PAL_Sprite_KarateCrankyTrophyEnd:
PAL_Sprite_PhotoEdges:
	db "Sprite_PhotoEdges.bin"
PAL_Sprite_PhotoEdgesEnd:
PAL_Sprite_PhotoAlbumSectionNames:
	db "Sprite_PhotoAlbumSectionNames.bin"
PAL_Sprite_PhotoAlbumSectionNamesEnd:
PAL_Sprite_Unknown13:
	db "Sprite_Unknown13.bin"
PAL_Sprite_Unknown13End:
PAL_Sprite_KongFusedCliffsFire:
	db "Sprite_KongFusedCliffsFire.bin"
PAL_Sprite_KongFusedCliffsFireEnd:
PAL_Sprite_LavaSmoke:
	db "Sprite_LavaSmoke.bin"
PAL_Sprite_LavaSmokeEnd:
PAL_Sprite_Unknown14:
	db "Sprite_Unknown14.bin"
PAL_Sprite_Unknown14End:
PAL_Layer3_ErrorScreenText:
	db "Layer3_ErrorScreenText.bin"
PAL_Layer3_ErrorScreenTextEnd:
PAL_FGBG_LakesideLimbo:
	db "FGBG_LakesideLimbo.bin"
PAL_FGBG_LakesideLimboEnd:
PAL_FGBG_RocketBarrelRide:
	db "FGBG_RocketBarrelRide.bin"
PAL_FGBG_RocketBarrelRideEnd:
PAL_FGBG_BarrelDropBounce:
	db "FGBG_BarrelDropBounce.bin"
PAL_FGBG_BarrelDropBounceEnd:
PAL_FGBG_TrackerBarrelTrek:
	db "FGBG_TrackerBarrelTrek.bin"
PAL_FGBG_TrackerBarrelTrekEnd:
PAL_FGBG_SquirtsShowdown:
	db "FGBG_SquirtsShowdown.bin"
PAL_FGBG_SquirtsShowdownEnd:
PAL_FGBG_SwankysSideshowInTent:
	db "FGBG_SwankysSideshowInTent.bin"
PAL_FGBG_SwankysSideshowInTentEnd:
PAL_FGBG_Unknown1:
	db "FGBG_Unknown1.bin"
PAL_FGBG_Unknown1End:
PAL_FGBG_BarrelShieldBustUp:
	db "FGBG_BarrelShieldBustUp.bin"
PAL_FGBG_BarrelShieldBustUpEnd:
PAL_FGBG_SwoopySalvo_Volcanic:
	db "FGBG_SwoopySalvo_Volcanic.bin"
PAL_FGBG_SwoopySalvo_VolcanicEnd:
PAL_FGBG_ArichsAmbush:
	db "FGBG_ArichsAmbush.bin"
PAL_FGBG_ArichsAmbushEnd:
PAL_Layer1_ArichBody:
	db "Layer1_ArichBody.bin"
PAL_Layer1_ArichBodyEnd:
PAL_FGBG_SkiddasRow:
	db "FGBG_SkiddasRow.bin"
PAL_FGBG_SkiddasRowEnd:
PAL_FGBG_SquealsOnWheels:
	db "FGBG_SquealsOnWheels.bin"
PAL_FGBG_SquealsOnWheelsEnd:
PAL_FGBG_DoorstopDash:
	db "FGBG_DoorstopDash.bin"
PAL_FGBG_DoorstopDashEnd:
PAL_Layer2_Belcha:
	db "Layer2_Belcha.bin"
PAL_Layer2_BelchaEnd:
PAL_FGBG_BelchasBarn:
	db "FGBG_BelchasBarn.bin"
PAL_FGBG_BelchasBarnEnd:
PAL_FGBG_WrinklysSaveCave1:
	db "FGBG_WrinklysSaveCave1.bin"
PAL_FGBG_WrinklysSaveCave1End:
PAL_FGBG_WrinklysSaveCave2:
	db "FGBG_WrinklysSaveCave2.bin"
PAL_FGBG_WrinklysSaveCave2End:
PAL_FGBG_WrinklysSaveCave3:
	db "FGBG_WrinklysSaveCave3.bin"
PAL_FGBG_WrinklysSaveCave3End:
PAL_FGBG_WrinklysSaveCave4:
	db "FGBG_WrinklysSaveCave4.bin"
PAL_FGBG_WrinklysSaveCave4End:
PAL_FGBG_KremwoodForest:
	db "FGBG_KremwoodForest.bin"
PAL_FGBG_KremwoodForestEnd:
PAL_FGBG_MurkyMill:
	db "FGBG_MurkyMill.bin"
PAL_FGBG_MurkyMillEnd:
PAL_FGBG_BazaarsGeneralStore:
	db "FGBG_BazaarsGeneralStore.bin"
PAL_FGBG_BazaarsGeneralStoreEnd:
PAL_FGBG_K3:
	db "FGBG_K3.bin"
PAL_FGBG_K3End:
PAL_FGBG_BlizzardsBaseCamp:
	db "FGBG_BlizzardsBaseCamp.bin"
PAL_FGBG_BlizzardsBaseCampEnd:
PAL_FGBG_BlundersBooth:
	db "FGBG_BlundersBooth.bin"
PAL_FGBG_BlundersBoothEnd:
PAL_FGBG_BramblesBungalow:
	db "FGBG_BramblesBungalow.bin"
PAL_FGBG_BramblesBungalowEnd:
PAL_FGBG_BarnaclesIsland:
	db "FGBG_BarnaclesIsland.bin"
PAL_FGBG_BarnaclesIslandEnd:
PAL_FGBG_BrashsCabin:
	db "FGBG_BrashsCabin.bin"
PAL_FGBG_BrashsCabinEnd:
PAL_FGBG_BluesBeachHut:
	db "FGBG_BluesBeachHut.bin"
PAL_FGBG_BluesBeachHutEnd:
PAL_FGBG_BennysChairlifts:
	db "FGBG_BennysChairlifts.bin"
PAL_FGBG_BennysChairliftsEnd:
PAL_FGBG_BoomersBombShelter_Volcanic:
	db "FGBG_BoomersBombShelter_Volcanic.bin"
PAL_FGBG_BoomersBombShelter_VolcanicEnd:
PAL_FGBG_MainMapLargeClouds:
	db "FGBG_MainMapLargeClouds.bin"
PAL_FGBG_MainMapLargeCloudsEnd:
PAL_FGBG_MainMap:
	db "FGBG_MainMap.bin"
PAL_FGBG_MainMapEnd:
PAL_FGBG_GameOverScreen:
	db "FGBG_GameOverScreen.bin"
PAL_FGBG_GameOverScreenEnd:
PAL_FGBG_RareLogo:
	db "FGBG_RareLogo.bin"
PAL_FGBG_RareLogoEnd:
PAL_Layer3_Credits:
	db "Layer3_Credits.bin"
PAL_Layer3_CreditsEnd:
PAL_FGBG_NintendoPresentsScreen:
	db "FGBG_NintendoPresentsScreen.bin"
PAL_FGBG_NintendoPresentsScreenEnd:
PAL_FGBG_JapaneseTitleScreenLogo:
	db "FGBG_JapaneseTitleScreenLogo.bin"
PAL_FGBG_JapaneseTitleScreenLogoEnd:
PAL_FGBG_TitleScreen:
	db "FGBG_TitleScreen.bin"
PAL_FGBG_TitleScreenEnd:
PAL_FGBG_BleaksHouse:
	db "FGBG_BleaksHouse.bin"
PAL_FGBG_BleaksHouseEnd:
PAL_FGBG_CopyrightScreen:
	db "FGBG_CopyrightScreen.bin"
PAL_FGBG_CopyrightScreenEnd:
PAL_FGBG_RiversideRace:
	db "FGBG_RiversideRace.bin"
PAL_FGBG_RiversideRaceEnd:
PAL_FGBG_LightningLookOut_Normal:
	db "FGBG_LightningLookOut_Normal.bin"
PAL_FGBG_LightningLookOut_NormalEnd:
PAL_FGBG_BobbingBarrelBrawl:
	db "FGBG_BobbingBarrelBrawl.bin"
PAL_FGBG_BobbingBarrelBrawlEnd:
PAL_FGBG_LightningLookOut_LightningFlash:
	db "FGBG_LightningLookOut_LightningFlash.bin"
PAL_FGBG_LightningLookOut_LightningFlashEnd:
PAL_FGBG_Unknown2:
	db "FGBG_Unknown2.bin"
PAL_FGBG_Unknown2End:
PAL_FGBG_LakeOrangatanga:
	db "FGBG_LakeOrangatanga.bin"
PAL_FGBG_LakeOrangatangaEnd:
PAL_Layer3_BelchasBarn:
	db "Layer3_BelchasBarn.bin"
PAL_Layer3_BelchasBarnEnd:
PAL_FGBG_DemolitionDrainPipe:
	db "FGBG_DemolitionDrainPipe.bin"
PAL_FGBG_DemolitionDrainPipeEnd:
PAL_FGBG_LowGLabyrinth:
	db "FGBG_LowGLabyrinth.bin"
PAL_FGBG_LowGLabyrinthEnd:
PAL_FGBG_PoisonousPipeline:
	db "FGBG_PoisonousPipeline.bin"
PAL_FGBG_PoisonousPipelineEnd:
PAL_FGBG_BazzasBlockade:
	db "FGBG_BazzasBlockade.bin"
PAL_FGBG_BazzasBlockadeEnd:
PAL_FGBG_FloodlitFish:
	db "FGBG_FloodlitFish.bin"
PAL_FGBG_FloodlitFishEnd:
PAL_FGBG_TVScreen:
	db "FGBG_TVScreen.bin"
PAL_FGBG_TVScreenEnd:
PAL_FGBG_SwankysSideshowOutside:
	db "FGBG_SwankysSideshowOutside.bin"
PAL_FGBG_SwankysSideshowOutsideEnd:
PAL_FGBG_FunkysRentals:
	db "FGBG_FunkysRentals.bin"
PAL_FGBG_FunkysRentalsEnd:
PAL_FGBG_FileSelectScreen:
	db "FGBG_FileSelectScreen.bin"
PAL_FGBG_FileSelectScreenEnd:
PAL_FGBG_BananaBirdCave:
	db "FGBG_BananaBirdCave.bin"
PAL_FGBG_BananaBirdCaveEnd:
PAL_Layer2_BonusRoomIntroScreen:
	db "Layer2_BonusRoomIntroScreen.bin"
PAL_Layer2_BonusRoomIntroScreenEnd:
PAL_Layer1_Player1CollectXXStarsScreen:
	db "Layer1_Player1CollectXXStarsScreen.bin"
PAL_Layer1_Player1CollectXXStarsScreenEnd:
PAL_Layer1_Player1BashTheBaddiesScreen:
	db "Layer1_Player1BashTheBaddiesScreen.bin"
PAL_Layer1_Player1BashTheBaddiesScreenEnd:
PAL_Layer1_Player1GrabXXBananasScreen:
	db "Layer1_Player1GrabXXBananasScreen.bin"
PAL_Layer1_Player1GrabXXBananasScreenEnd:
PAL_Layer1_Player1FindTheCoinScreen:
	db "Layer1_Player1FindTheCoinScreen.bin"
PAL_Layer1_Player1FindTheCoinScreenEnd:
PAL_FGBG_CottonTopCove:
	db "FGBG_CottonTopCove.bin"
PAL_FGBG_CottonTopCoveEnd:
PAL_FGBG_Mekanos:
	db "FGBG_Mekanos.bin"
PAL_FGBG_MekanosEnd:
PAL_FGBG_RazorRidge:
	db "FGBG_RazorRidge.bin"
PAL_FGBG_RazorRidgeEnd:
PAL_FGBG_KAOSKore:
	db "FGBG_KAOSKore.bin"
PAL_FGBG_KAOSKoreEnd:
PAL_FGBG_AnimatedKAOSKoreColors:
	db "FGBG_AnimatedKAOSKoreColors.bin"
PAL_FGBG_AnimatedKAOSKoreColorsEnd:
PAL_FGBG_Kremtoa_Normal:
	db "FGBG_Kremtoa_Normal.bin"
PAL_FGBG_Kremtoa_NormalEnd:
PAL_FGBG_Kremtoa_Volcanic:
	db "FGBG_Kremtoa_Volcanic.bin"
PAL_FGBG_Kremtoa_VolcanicEnd:
PAL_FGBG_KongFusedCliffs:
	db "FGBG_KongFusedCliffs.bin"
PAL_FGBG_KongFusedCliffsEnd:
PAL_FGBG_CrissKrossCliffs_Volcanic:
	db "FGBG_CrissKrossCliffs_Volcanic.bin"
PAL_FGBG_CrissKrossCliffs_VolcanicEnd:
PAL_FGBG_RopeyRumpus:
	db "FGBG_RopeyRumpus.bin"
PAL_FGBG_RopeyRumpusEnd:
PAL_FGBG_KreviceKreepers:
	db "FGBG_KreviceKreepers.bin"
PAL_FGBG_KreviceKreepersEnd:
PAL_FGBG_CrissKrossCliffs_Normal:
	db "FGBG_CrissKrossCliffs_Normal.bin"
PAL_FGBG_CrissKrossCliffs_NormalEnd:
PAL_FGBG_RocketRush_Normal:
	db "FGBG_RocketRush_Normal.bin"
PAL_FGBG_RocketRush_NormalEnd:
PAL_FGBG_KastleKAOS:
	db "FGBG_KastleKAOS.bin"
PAL_FGBG_KastleKAOSEnd:
PAL_Layer1_KAOS:
	db "Layer1_KAOS.bin"
PAL_Layer1_KAOSEnd:
PAL_FGBG_Knautilus:
	db "FGBG_Knautilus.bin"
PAL_FGBG_KnautilusEnd:
PAL_FGBG_StampedeSprint_Normal:
	db "FGBG_StampedeSprint_Normal.bin"
PAL_FGBG_StampedeSprint_NormalEnd:
PAL_FGBG_KoindozerKlamber:
	db "FGBG_KoindozerKlamber.bin"
PAL_FGBG_KoindozerKlamberEnd:
PAL_FGBG_KonveyorRopeKlash:
	db "FGBG_KonveyorRopeKlash.bin"
PAL_FGBG_KonveyorRopeKlashEnd:
PAL_FGBG_StampedeSprint_Volcanic:
	db "FGBG_StampedeSprint_Volcanic.bin"
PAL_FGBG_StampedeSprint_VolcanicEnd:
PAL_FGBG_FireballFrenzy:
	db "FGBG_FireballFrenzy.bin"
PAL_FGBG_FireballFrenzyEnd:
PAL_FGBG_KrackshotKroc:
	db "FGBG_KrackshotKroc.bin"
PAL_FGBG_KrackshotKrocEnd:
PAL_FGBG_BlazingBazukas:
	db "FGBG_BlazingBazukas.bin"
PAL_FGBG_BlazingBazukasEnd:
PAL_FGBG_KAOSKarnage:
	db "FGBG_KAOSKarnage.bin"
PAL_FGBG_KAOSKarnageEnd:
PAL_FGBG_BananaBirdQueenScreen:
	db "FGBG_BananaBirdQueenScreen.bin"
PAL_FGBG_BananaBirdQueenScreenEnd:
PAL_FGBG_TyrantTwinTussle_Normal:
	db "FGBG_TyrantTwinTussle_Normal.bin"
PAL_FGBG_TyrantTwinTussle_NormalEnd:
PAL_FGBG_BuzzerBarrage:
	db "FGBG_BuzzerBarrage.bin"
PAL_FGBG_BuzzerBarrageEnd:
PAL_FGBG_PotHolePanic:
	db "FGBG_PotHolePanic.bin"
PAL_FGBG_PotHolePanicEnd:
PAL_FGBG_CreepyCaverns:
	db "FGBG_CreepyCaverns.bin"
PAL_FGBG_CreepyCavernsEnd:
PAL_FGBG_TyrantTwinTussle_Volcanic:
	db "FGBG_TyrantTwinTussle_Volcanic.bin"
PAL_FGBG_TyrantTwinTussle_VolcanicEnd:
PAL_FGBG_PhotoAlbumCover:
	db "FGBG_PhotoAlbumCover.bin"
PAL_FGBG_PhotoAlbumCoverEnd:
PAL_FGBG_PhotoAlbumSection:
	db "FGBG_PhotoAlbumSection.bin"
PAL_FGBG_PhotoAlbumSectionEnd:
PAL_Layer2_BaffleAndBoomerPhotos:
	db "Layer2_BaffleAndBoomerPhotos.bin"
PAL_Layer2_BaffleAndBoomerPhotosEnd:
PAL_Layer2_BazaarAndBarnaclePhotos:
	db "Layer2_BazaarAndBarnaclePhotos.bin"
PAL_Layer2_BazaarAndBarnaclePhotosEnd:
PAL_Layer2_BlizzardAndBramblePhotos:
	db "Layer2_BlizzardAndBramblePhotos.bin"
PAL_Layer2_BlizzardAndBramblePhotosEnd:
PAL_Layer2_BlueAndBazookaPhotos:
	db "Layer2_BlueAndBazookaPhotos.bin"
PAL_Layer2_BlueAndBazookaPhotosEnd:
PAL_Layer2_BrashAndBlunderPhotos:
	db "Layer2_BrashAndBlunderPhotos.bin"
PAL_Layer2_BrashAndBlunderPhotosEnd:
PAL_Layer2_BennyBjornAndBarterPhotos:
	db "Layer2_BennyBjornAndBarterPhotos.bin"
PAL_Layer2_BennyBjornAndBarterPhotosEnd:
PAL_Layer1_Player2BashTheBaddiesScreen:
	db "Layer1_Player2BashTheBaddiesScreen.bin"
PAL_Layer1_Player2BashTheBaddiesScreenEnd:
PAL_Layer1_Player2CollectXXStarsScreen:
	db "Layer1_Player2CollectXXStarsScreen.bin"
PAL_Layer1_Player2CollectXXStarsScreenEnd:
PAL_Layer1_Player2GrabXXBananasScreen:
	db "Layer1_Player2GrabXXBananasScreen.bin"
PAL_Layer1_Player2GrabXXBananasScreenEnd:
PAL_Layer2_BelchaPhoto:
	db "Layer2_BelchaPhoto.bin"
PAL_Layer2_BelchaPhotoEnd:
PAL_Layer2_ArichPhoto:
	db "Layer2_ArichPhoto.bin"
PAL_Layer2_ArichPhotoEnd:
PAL_Layer2_SquirtPhoto:
	db "Layer2_SquirtPhoto.bin"
PAL_Layer2_SquirtPhotoEnd:
PAL_Layer2_KAOSPhoto:
	db "Layer2_KAOSPhoto.bin"
PAL_Layer2_KAOSPhotoEnd:
PAL_Layer2_BleakPhoto:
	db "Layer2_BleakPhoto.bin"
PAL_Layer2_BleakPhotoEnd:
PAL_Layer2_BarbosPhoto:
	db "Layer2_BarbosPhoto.bin"
PAL_Layer2_BarbosPhotoEnd:
PAL_Layer2_KRoolInHovercraft:
	db "Layer2_KRoolInHovercraft.bin"
PAL_Layer2_KRoolInHovercraftEnd:
PAL_FGBG_BarbossBarrier:
	db "FGBG_BarbossBarrier.bin"
PAL_FGBG_BarbossBarrierEnd:
PAL_FGBG_FishFoodFrenzy:
	db "FGBG_FishFoodFrenzy.bin"
PAL_FGBG_FishFoodFrenzyEnd:
PAL_FGBG_KreepingKlasps:
	db "FGBG_KreepingKlasps.bin"
PAL_FGBG_KreepingKlaspsEnd:
PAL_FGBG_TidalTrouble:
	db "FGBG_TidalTrouble.bin"
PAL_FGBG_TidalTroubleEnd:
PAL_FGBG_LemguinLunge:
	db "FGBG_LemguinLunge.bin"
PAL_FGBG_LemguinLungeEnd:
PAL_FGBG_TearawayToboggan:
	db "FGBG_TearawayToboggan.bin"
PAL_FGBG_TearawayTobogganEnd:
PAL_FGBG_SpringinSpiders:
	db "FGBG_SpringinSpiders.bin"
PAL_FGBG_SpringinSpidersEnd:
PAL_FGBG_RipsawRage:
	db "FGBG_RipsawRage.bin"
PAL_FGBG_RipsawRageEnd:
PAL_FGBG_SwoopySalvo_Normal:
	db "FGBG_SwoopySalvo_Normal.bin"
PAL_FGBG_SwoopySalvo_NormalEnd:
PAL_FGBG_P1WinsScreen:
	db "FGBG_P1WinsScreen.bin"
PAL_FGBG_P1WinsScreenEnd:
PAL_FGBG_P2WinsScreen:
	db "FGBG_P2WinsScreen.bin"
PAL_FGBG_P2WinsScreenEnd:

;--------------------------------------------------------------------

TB1_SwankyKong:
	db "SwankyKong.bin"
TB1_SwankyKongEnd:
TB1_WrinklyKong:
	db "WrinklyKong.bin"
TB1_WrinklyKongEnd:
TB1_FunkyKong:
	db "FunkyKong.bin"
TB1_FunkyKongEnd:
TB1_CrankyKong:
	db "CrankyKong.bin"
TB1_CrankyKongEnd:
TB1_MiscText:
	db "MiscText.bin"
TB1_MiscTextEnd:
TB1_AreaNames:
	db "AreaNames.bin"
TB1_AreaNamesEnd:
TB1_Bazaar:
	db "Bazaar.bin"
TB1_BazaarEnd:
TB1_Blunder:
	db "Blunder.bin"
TB1_BlunderEnd:
TB1_Bramble:
	db "Bramble.bin"
TB1_BrambleEnd:
TB1_Barter:
	db "Barter.bin"
TB1_BarterEnd:
TB1_Barnacle:
	db "Barnacle.bin"
TB1_BarnacleEnd:
TB1_Brash:
	db "Brash.bin"
TB1_BrashEnd:
TB1_Blue:
	db "Blue.bin"
TB1_BlueEnd:
TB1_Bazooka:
	db "Bazooka.bin"
TB1_BazookaEnd:
TB1_Blizzard:
	db "Blizzard.bin"
TB1_BlizzardEnd:
TB1_BennyAndBjorn:
	db "BennyAndBjorn.bin"
TB1_BennyAndBjornEnd:
TB1_Baffle:
	db "Baffle.bin"
TB1_BaffleEnd:
TB1_Boomer:
	db "Boomer.bin"
TB1_BoomerEnd:
TB1_KAOSAndKRool:
	db "KAOSAndKRool.bin"
TB1_KAOSAndKRoolEnd:
TB1_BananaBirdQueen:
	db "BananaBirdQueen.bin"
TB1_BananaBirdQueenEnd:

;--------------------------------------------------------------------

OC_MainMap1:
	db "MainMap1.bin"
OC_MainMap1End:
OC_LakeOrangatanga:
	db "LakeOrangatanga.bin"
OC_LakeOrangatangaEnd:
OC_CottonTopCove:
	db "CottonTopCove.bin"
OC_CottonTopCoveEnd:
OC_RazorRidge:
	db "RazorRidge.bin"
OC_RazorRidgeEnd:
OC_KAOSKore:
	db "KAOSKore.bin"
OC_KAOSKoreEnd:
OC_MainMap2:
	db "MainMap2.bin"
OC_MainMap2End:

;--------------------------------------------------------------------

DATA_80CB99:
	db "DATA_80CB99.bin"
DATA_80CB99End:
DKC2_DATA_C9FFA7:
	db "DKC2_DATA_C9FFA7.bin"
DKC2_DATA_C9FFA7End:
DATA_ECA89B:
	db "DATA_ECA89B.bin"
DATA_ECA89BEnd:
DKC2_DATA_ECADB4:
	db "DKC2_DATA_ECADB4.bin"
DKC2_DATA_ECADB4End:
DKC2_DATA_ECB29D:
	db "DKC2_DATA_ECB29D.bin"
DKC2_DATA_ECB29DEnd:
DKC2_DATA_ECF77F:
	db "DKC2_DATA_ECF77F.bin"
DKC2_DATA_ECF77FEnd:
DKC2_DATA_EE09D9:
	db "DKC2_DATA_EE09D9.bin"
DKC2_DATA_EE09D9End:
DATA_EE0A80:
	db "DATA_EE0A80.bin"
DATA_EE0A80End:
DKC2_DATA_F1EC35:
	db "DKC2_DATA_F1EC35.bin"
DKC2_DATA_F1EC35End:
DATA_F27C7E:
	db "DATA_F27C7E.bin"
DATA_F27C7EEnd:
DATA_B2FEAA:
	db "DATA_B2FEAA.bin"
DATA_B2FEAAEnd:
DKC2_DATA_F37633:
	db "DKC2_DATA_F37633.bin"
DKC2_DATA_F37633End:
DKC1_DATA_F37EE8:
	db "DKC1_DATA_F37EE8.bin"
DKC1_DATA_F37EE8End:
DATA_F3F957:
	db "DATA_F3F957.bin"
DATA_F3F957End:
DATA_F4FEA2:
	db "DATA_F4FEA2.bin"
DATA_F4FEA2End:
DKC2_DATA_F57E4C:
	db "DKC2_DATA_F57E4C.bin"
DKC2_DATA_F57E4CEnd:
DKC1_DATA_F57F53:
	db "DKC1_DATA_F57F53.bin"
DKC1_DATA_F57F53End:
DKC2_DATA_F67D5B:
	db "DKC2_DATA_F67D5B.bin"
DKC2_DATA_F67D5BEnd:
DATA_B6FF93:
	db "DATA_B6FF93.bin"
DATA_B6FF93End:
DKC1_DATA_B7FDCE:
	db "DKC1_DATA_B7FDCE.bin"
DKC1_DATA_B7FDCEEnd:
DATA_B7FF0A:
	db "DATA_B7FF0A.bin"
DATA_B7FF0AEnd:
DKC2_DATA_F87D95:
	db "DKC2_DATA_F87D95.bin"
DKC2_DATA_F87D95End:
DATA_F87E05:
	db "DATA_F87E05.bin"
DATA_F87E05End:
DATA_B8FA52:
	db "DATA_B8FA52.bin"
DATA_B8FA52End:
DKC2_DATA_F97E02:
	db "DKC2_DATA_F97E02.bin"
DKC2_DATA_F97E02End:
DKC2_DATA_F98000:
	db "DKC2_DATA_F98000.bin"
DKC2_DATA_F98000End:
DKC2_DATA_F99400:
	db "DKC2_DATA_F99400.bin"
DKC2_DATA_F99400End:
DKC2_DATA_F9C087:
	db "DKC2_DATA_F9C087.bin"
DKC2_DATA_F9C087End:
DKC1_DATA_F9CD0C:
	db "DKC1_DATA_F9CD0C.bin"
DKC1_DATA_F9CD0CEnd:
DATA_B9F907:
	db "DATA_B9F907.bin"
DATA_B9F907End:
DATA_FAA1B6:
	db "DATA_FAA1B6.bin"
DATA_FAA1B6End:
DKC2_DATA_FB7967:
	db "DKC2_DATA_FB7967.bin"
DKC2_DATA_FB7967End:
DKC1_DATA_BBDF6F:
	db "DKC1_DATA_BBDF6F.bin"
DKC1_DATA_BBDF6FEnd:
DKC2_DATA_BBE800:
	db "DKC2_DATA_BBE800.bin"
DKC2_DATA_BBE800End:
DKC2_DATA_FC6240:
	db "DKC2_DATA_FC6240.bin"
DKC2_DATA_FC6240End:
DATA_BCE93E:
	db "DATA_BCE93E.bin"
DATA_BCE93EEnd:
DATA_BCFA44:
	db "DATA_BCFA44.bin"
DATA_BCFA44End:
DATA_FDE815:
	db "DATA_FDE815.bin"
DATA_FDE815End:
DATA_FDF501:
	db "DATA_FDF501.bin"
DATA_FDF501End:
DATA_FE9406:
	db "DATA_FE9406.bin"
DATA_FE9406End:
DATA_BEFB8B:
	db "DATA_BEFB8B.bin"
DATA_BEFB8BEnd:
DATA_FFBE22:
	db "DATA_FFBE22.bin"
DATA_FFBE22End:
DATA_FFF2FC:
	db "DATA_FFF2FC.bin"
DATA_FFF2FCEnd:

;--------------------------------------------------------------------

Music_None:
	db "None.bin"
Music_NoneEnd:
Music_BonusTime:
	db "BonusTime.bin"
Music_BonusTimeEnd:
Music_CrazyCalypso:
	db "CrazyCalypso.bin"
Music_CrazyCalypsoEnd:
Music_BrothersBear:
	db "BrothersBear.bin"
Music_BrothersBearEnd:
Music_WrinklyKongSongs:
	db "WrinklyKongSongs.bin"
Music_WrinklyKongSongsEnd:
Music_WaterWorld:
	db "WaterWorld.bin"
Music_WaterWorldEnd:
Music_HotPursuit:
	db "HotPursuit.bin"
Music_HotPursuitEnd:
Music_NutsAndBolts:
	db "NutsAndBolts.bin"
Music_NutsAndBoltsEnd:
Music_SwankysSideshow:
	db "SwankysSideshow.bin"
Music_SwankysSideshowEnd:
Music_CascadeCapers:
	db "CascadeCapers.bin"
Music_CascadeCapersEnd:
Music_TreetopTumble:
	db "TreetopTumble.bin"
Music_TreetopTumbleEnd:
Music_BossBoogie:
	db "BossBoogie.bin"
Music_BossBoogieEnd:
Music_JangleBells:
	db "JangleBells.bin"
Music_JangleBellsEnd:
Music_MillFever:
	db "MillFever.bin"
Music_MillFeverEnd:
Music_StiltVillage:
	db "StiltVillage.bin"
Music_StiltVillageEnd:
Music_EnchantedRiverbank:
	db "EnchantedRiverbank.bin"
Music_EnchantedRiverbankEnd:
Music_SubmapShuffle:
	db "SubmapShuffle.bin"
Music_SubmapShuffleEnd:
Music_KremtoaKoncerto:
	db "KremtoaKoncerto.bin"
Music_KremtoaKoncertoEnd:
Music_NorthernKremisphere:
	db "NorthernKremisphere.bin"
Music_NorthernKremisphereEnd:
Music_GameOver:
	db "GameOver.bin"
Music_GameOverEnd:
Music_HanginAtFunkys:
	db "HanginAtFunkys.bin"
Music_HanginAtFunkysEnd:
Music_Fanfare:
	db "Fanfare.bin"
Music_FanfareEnd:
Music_FrostyFrolics:
	db "FrostyFrolics.bin"
Music_FrostyFrolicsEnd:
Music_DixieBeat:
	db "DixieBeat.bin"
Music_DixieBeatEnd:
Music_PokeyPipes:
	db "PokeyPipes.bin"
Music_PokeyPipesEnd:
Music_BigBossBlues:
	db "BigBossBlues.bin"
Music_BigBossBluesEnd:
Music_CrystalChasm:
	db "CrystalChasm.bin"
Music_CrystalChasmEnd:
Music_RocketRun:
	db "RocketRun.bin"
Music_RocketRunEnd:
Music_JungleJitter:
	db "JungleJitter.bin"
Music_JungleJitterEnd:
Music_CavernCaprise:
	db "CavernCaprise.bin"
Music_CavernCapriseEnd:
Music_DefeatedBoss:
	db "DefeatedBoss.bin"
Music_DefeatedBossEnd:
Music_BaddiesOnParade:
	db "BaddiesOnParade.bin"
Music_BaddiesOnParadeEnd:
Music_RockfaceRumble:
	db "RockfaceRumble.bin"
Music_RockfaceRumbleEnd:
Music_MamaBird:
	db "MamaBird.bin"
Music_MamaBirdEnd:
Music_BananaBirdQueenChase:
	db "BananaBirdQueenChase.bin"
Music_BananaBirdQueenChaseEnd:

;--------------------------------------------------------------------

GlobalSoundEffects:
	db "GlobalSoundEffects.bin"
GlobalSoundEffectsEnd:
DATA_F1C05F:
	db "DATA_F1C05F.bin"
DATA_F1C05FEnd:
DATA_F1C068:
	db "DATA_F1C068.bin"
DATA_F1C068End:
DATA_F1C2D0:
	db "DATA_F1C2D0.bin"
DATA_F1C2D0End:
DATA_F1C51A:
	db "DATA_F1C51A.bin"
DATA_F1C51AEnd:
DATA_F1C6AE:
	db "DATA_F1C6AE.bin"
DATA_F1C6AEEnd:
DATA_F1C7D7:
	db "DATA_F1C7D7.bin"
DATA_F1C7D7End:
DATA_F1C9B1:
	db "DATA_F1C9B1.bin"
DATA_F1C9B1End:
DATA_F1CA7B:
	db "DATA_F1CA7B.bin"
DATA_F1CA7BEnd:
DATA_F1CB85:
	db "DATA_F1CB85.bin"
DATA_F1CB85End:
DATA_F1CD07:
	db "DATA_F1CD07.bin"
DATA_F1CD07End:
DATA_F1CDCE:
	db "DATA_F1CDCE.bin"
DATA_F1CDCEEnd:
DATA_F1CFB1:
	db "DATA_F1CFB1.bin"
DATA_F1CFB1End:
DATA_F1D109:
	db "DATA_F1D109.bin"
DATA_F1D109End:
DATA_F1D2F8:
	db "DATA_F1D2F8.bin"
DATA_F1D2F8End:
DATA_F1D4D7:
	db "DATA_F1D4D7.bin"
DATA_F1D4D7End:
DATA_F1D5FF:
	db "DATA_F1D5FF.bin"
DATA_F1D5FFEnd:
DATA_F1D69E:
	db "DATA_F1D69E.bin"
DATA_F1D69EEnd:
DATA_F1D89E:
	db "DATA_F1D89E.bin"
DATA_F1D89EEnd:
DATA_F1D967:
	db "DATA_F1D967.bin"
DATA_F1D967End:
DATA_F1D9E0:
	db "DATA_F1D9E0.bin"
DATA_F1D9E0End:
DATA_F1DAFE:
	db "DATA_F1DAFE.bin"
DATA_F1DAFEEnd:
DATA_F1DCCA:
	db "DATA_F1DCCA.bin"
DATA_F1DCCAEnd:
DATA_F1DF30:
	db "DATA_F1DF30.bin"
DATA_F1DF30End:
DATA_F1E180:
	db "DATA_F1E180.bin"
DATA_F1E180End:
DATA_F1E35C:
	db "DATA_F1E35C.bin"
DATA_F1E35CEnd:
DATA_F1E481:
	db "DATA_F1E481.bin"
DATA_F1E481End:
DATA_F1E652:
	db "DATA_F1E652.bin"
DATA_F1E652End:
DATA_F1E8BC:
	db "DATA_F1E8BC.bin"
DATA_F1E8BCEnd:
DATA_F1EA41:
	db "DATA_F1EA41.bin"
DATA_F1EA41End:

;--------------------------------------------------------------------

BRRFile00:
	db "00.brr"
BRRFile00End:
BRRFile01:
	db "01.brr"
BRRFile01End:
BRRFile02:
	db "02.brr"
BRRFile02End:
BRRFile03:
	db "03.brr"
BRRFile03End:
BRRFile04:
	db "04.brr"
BRRFile04End:
BRRFile05:
	db "05.brr"
BRRFile05End:
BRRFile06:
	db "06.brr"
BRRFile06End:
BRRFile07:
	db "07.brr"
BRRFile07End:
BRRFile08:
	db "08.brr"
BRRFile08End:
BRRFile09:
	db "09.brr"
BRRFile09End:
BRRFile0A:
	db "0A.brr"
BRRFile0AEnd:
BRRFile0B:
	db "0B.brr"
BRRFile0BEnd:
BRRFile0C:
	db "0C.brr"
BRRFile0CEnd:
BRRFile0D:
	db "0D.brr"
BRRFile0DEnd:
BRRFile0E:
	db "0E.brr"
BRRFile0EEnd:
BRRFile0F:
	db "0F.brr"
BRRFile0FEnd:
BRRFile10:
	db "10.brr"
BRRFile10End:
BRRFile11:
	db "11.brr"
BRRFile11End:
BRRFile12:
	db "12.brr"
BRRFile12End:
BRRFile13:
	db "13.brr"
BRRFile13End:
BRRFile14:
	db "14.brr"
BRRFile14End:
BRRFile15:
	db "15.brr"
BRRFile15End:
BRRFile16:
	db "16.brr"
BRRFile16End:
BRRFile17:
	db "17.brr"
BRRFile17End:
BRRFile18:
	db "18.brr"
BRRFile18End:
BRRFile19:
	db "19.brr"
BRRFile19End:
BRRFile1A:
	db "1A.brr"
BRRFile1AEnd:
BRRFile1B:
	db "1B.brr"
BRRFile1BEnd:
BRRFile1C:
	db "1C.brr"
BRRFile1CEnd:
BRRFile1D:
	db "1D.brr"
BRRFile1DEnd:
BRRFile1E:
	db "1E.brr"
BRRFile1EEnd:
BRRFile1F:
	db "1F.brr"
BRRFile1FEnd:
BRRFile20:
	db "20.brr"
BRRFile20End:
BRRFile21:
	db "21.brr"
BRRFile21End:
BRRFile22:
	db "22.brr"
BRRFile22End:
BRRFile23:
	db "23.brr"
BRRFile23End:
BRRFile24:
	db "24.brr"
BRRFile24End:
BRRFile25:
	db "25.brr"
BRRFile25End:
BRRFile26:
	db "26.brr"
BRRFile26End:
BRRFile27:
	db "27.brr"
BRRFile27End:
BRRFile28:
	db "28.brr"
BRRFile28End:
BRRFile29:
	db "29.brr"
BRRFile29End:
BRRFile2A:
	db "2A.brr"
BRRFile2AEnd:
BRRFile2B:
	db "2B.brr"
BRRFile2BEnd:
BRRFile2C:
	db "2C.brr"
BRRFile2CEnd:
BRRFile2D:
	db "2D.brr"
BRRFile2DEnd:
BRRFile2E:
	db "2E.brr"
BRRFile2EEnd:
BRRFile2F:
	db "2F.brr"
BRRFile2FEnd:
BRRFile30:
	db "30.brr"
BRRFile30End:
BRRFile31:
	db "31.brr"
BRRFile31End:
BRRFile32:
	db "32.brr"
BRRFile32End:
BRRFile33:
	db "33.brr"
BRRFile33End:
BRRFile34:
	db "34.brr"
BRRFile34End:
BRRFile35:
	db "35.brr"
BRRFile35End:
BRRFile36:
	db "36.brr"
BRRFile36End:
BRRFile37:
	db "37.brr"
BRRFile37End:
BRRFile38:
	db "38.brr"
BRRFile38End:
BRRFile39:
	db "39.brr"
BRRFile39End:
BRRFile3A:
	db "3A.brr"
BRRFile3AEnd:
BRRFile3B:
	db "3B.brr"
BRRFile3BEnd:
BRRFile3C:
	db "3C.brr"
BRRFile3CEnd:
BRRFile3D:
	db "3D.brr"
BRRFile3DEnd:
BRRFile3E:
	db "3E.brr"
BRRFile3EEnd:
BRRFile3F:
	db "3F.brr"
BRRFile3FEnd:
BRRFile40:
	db "40.brr"
BRRFile40End:
BRRFile41:
	db "41.brr"
BRRFile41End:
BRRFile42:
	db "42.brr"
BRRFile42End:
BRRFile43:
	db "43.brr"
BRRFile43End:
BRRFile44:
	db "44.brr"
BRRFile44End:
BRRFile45:
	db "45.brr"
BRRFile45End:
BRRFile46:
	db "46.brr"
BRRFile46End:
BRRFile47:
	db "47.brr"
BRRFile47End:
BRRFile48:
	db "48.brr"
BRRFile48End:
BRRFile49:
	db "49.brr"
BRRFile49End:
BRRFile4A:
	db "4A.brr"
BRRFile4AEnd:
BRRFile4B:
	db "4B.brr"
BRRFile4BEnd:
BRRFile4C:
	db "4C.brr"
BRRFile4CEnd:
BRRFile4D:
	db "4D.brr"
BRRFile4DEnd:
BRRFile4E:
	db "4E.brr"
BRRFile4EEnd:
BRRFile4F:
	db "4F.brr"
BRRFile4FEnd:
BRRFile50:
	db "50.brr"
BRRFile50End:
BRRFile51:
	db "51.brr"
BRRFile51End:
BRRFile52:
	db "52.brr"
BRRFile52End:
BRRFile53:
	db "53.brr"
BRRFile53End:
BRRFile54:
	db "54.brr"
BRRFile54End:
BRRFile55:
	db "55.brr"
BRRFile55End:
BRRFile56:
	db "56.brr"
BRRFile56End:
BRRFile57:
	db "57.brr"
BRRFile57End:
BRRFile58:
	db "58.brr"
BRRFile58End:
BRRFile59:
	db "59.brr"
BRRFile59End:
BRRFile5A:
	db "5A.brr"
BRRFile5AEnd:
BRRFile5B:
	db "5B.brr"
BRRFile5BEnd:
BRRFile5C:
	db "5C.brr"
BRRFile5CEnd:
BRRFile5D:
	db "5D.brr"
BRRFile5DEnd:
BRRFile5E:
	db "5E.brr"
BRRFile5EEnd:
BRRFile5F:
	db "5F.brr"
BRRFile5FEnd:
BRRFile60:
	db "60.brr"
BRRFile60End:
BRRFile61:
	db "61.brr"
BRRFile61End:
BRRFile62:
	db "62.brr"
BRRFile62End:
BRRFile63:
	db "63.brr"
BRRFile63End:
BRRFile64:
	db "64.brr"
BRRFile64End:
BRRFile65:
	db "65.brr"
BRRFile65End:
BRRFile66:
	db "66.brr"
BRRFile66End:
BRRFile67:
	db "67.brr"
BRRFile67End:
BRRFile68:
	db "68.brr"
BRRFile68End:
BRRFile69:
	db "69.brr"
BRRFile69End:
BRRFile6A:
	db "6A.brr"
BRRFile6AEnd:
BRRFile6B:
	db "6B.brr"
BRRFile6BEnd:
BRRFile6C:
	db "6C.brr"
BRRFile6CEnd:
BRRFile6D:
	db "6D.brr"
BRRFile6DEnd:
BRRFile6E:
	db "6E.brr"
BRRFile6EEnd:
BRRFile6F:
	db "6F.brr"
BRRFile6FEnd:
BRRFile70:
	db "70.brr"
BRRFile70End:
BRRFile71:
	db "71.brr"
BRRFile71End:
BRRFile72:
	db "72.brr"
BRRFile72End:
BRRFile73:
	db "73.brr"
BRRFile73End:
BRRFile74:
	db "74.brr"
BRRFile74End:
BRRFile75:
	db "75.brr"
BRRFile75End:
BRRFile76:
	db "76.brr"
BRRFile76End:
BRRFile77:
	db "77.brr"
BRRFile77End:
BRRFile78:
	db "78.brr"
BRRFile78End:
BRRFile79:
	db "79.brr"
BRRFile79End:
BRRFile7A:
	db "7A.brr"
BRRFile7AEnd:
BRRFile7B:
	db "7B.brr"
BRRFile7BEnd:
BRRFile7C:
	db "7C.brr"
BRRFile7CEnd:
BRRFile7D:
	db "7D.brr"
BRRFile7DEnd:
BRRFile7E:
	db "7E.brr"
BRRFile7EEnd:
BRRFile7F:
	db "7F.brr"
BRRFile7FEnd:
BRRFile80:
	db "80.brr"
BRRFile80End:
BRRFile81:
	db "81.brr"
BRRFile81End:
BRRFile82:
	db "82.brr"
BRRFile82End:
BRRFile83:
	db "83.brr"
BRRFile83End:
BRRFile84:
	db "84.brr"
BRRFile84End:
BRRFile85:
	db "85.brr"
BRRFile85End:
BRRFile86:
	db "86.brr"
BRRFile86End:
BRRFile87:
	db "87.brr"
BRRFile87End:
BRRFile88:
	db "88.brr"
BRRFile88End:
BRRFile89:
	db "89.brr"
BRRFile89End:
BRRFile8A:
	db "8A.brr"
BRRFile8AEnd:
BRRFile8B:
	db "8B.brr"
BRRFile8BEnd:
BRRFile8C:
	db "8C.brr"
BRRFile8CEnd:
BRRFile8D:
	db "8D.brr"
BRRFile8DEnd:
BRRFile8E:
	db "8E.brr"
BRRFile8EEnd:
BRRFile8F:
	db "8F.brr"
BRRFile8FEnd:
BRRFile90:
	db "90.brr"
BRRFile90End:
BRRFile91:
	db "91.brr"
BRRFile91End:
BRRFile92:
	db "92.brr"
BRRFile92End:
BRRFile93:
	db "93.brr"
BRRFile93End:
BRRFile94:
	db "94.brr"
BRRFile94End:
BRRFile95:
	db "95.brr"
BRRFile95End:
BRRFile96:
	db "96.brr"
BRRFile96End:
BRRFile97:
	db "97.brr"
BRRFile97End:
BRRFile98:
	db "98.brr"
BRRFile98End:
BRRFile99:
	db "99.brr"
BRRFile99End:
BRRFile9A:
	db "9A.brr"
BRRFile9AEnd:
BRRFile9B:
	db "9B.brr"
BRRFile9BEnd:
BRRFile9C:
	db "9C.brr"
BRRFile9CEnd:
BRRFile9D:
	db "9D.brr"
BRRFile9DEnd:
BRRFile9E:
	db "9E.brr"
BRRFile9EEnd:
BRRFile9F:
	db "9F.brr"
BRRFile9FEnd:
BRRFileA0:
	db "A0.brr"
BRRFileA0End:
BRRFileA1:
	db "A1.brr"
BRRFileA1End:
BRRFileA2:
	db "A2.brr"
BRRFileA2End:
BRRFileA3:
	db "A3.brr"
BRRFileA3End:
BRRFileA4:
	db "A4.brr"
BRRFileA4End:
BRRFileA5:
	db "A5.brr"
BRRFileA5End:
BRRFileA6:
	db "A6.brr"
BRRFileA6End:
BRRFileA7:
	db "A7.brr"
BRRFileA7End:
BRRFileA8:
	db "A8.brr"
BRRFileA8End:
BRRFileA9:
	db "A9.brr"
BRRFileA9End:
BRRFileAA:
	db "AA.brr"
BRRFileAAEnd:
BRRFileAB:
	db "AB.brr"
BRRFileABEnd:
BRRFileAC:
	db "AC.brr"
BRRFileACEnd:
BRRFileAD:
	db "AD.brr"
BRRFileADEnd:
BRRFileAE:
	db "AE.brr"
BRRFileAEEnd:
BRRFileAF:
	db "AF.brr"
BRRFileAFEnd:
BRRFileB0:
	db "B0.brr"
BRRFileB0End:
BRRFileB1:
	db "B1.brr"
BRRFileB1End:
BRRFileB2:
	db "B2.brr"
BRRFileB2End:
BRRFileB3:
	db "B3.brr"
BRRFileB3End:
BRRFileB4:
	db "B4.brr"
BRRFileB4End:
BRRFileB5:
	db "B5.brr"
BRRFileB5End:
BRRFileB6:
	db "B6.brr"
BRRFileB6End:
BRRFileB7:
	db "B7.brr"
BRRFileB7End:
BRRFileB8:
	db "B8.brr"
BRRFileB8End:
BRRFileB9:
	db "B9.brr"
BRRFileB9End:
BRRFileBA:
	db "BA.brr"
BRRFileBAEnd:
BRRFileBB:
	db "BB.brr"
BRRFileBBEnd:
BRRFileBC:
	db "BC.brr"
BRRFileBCEnd:
BRRFileBD:
	db "BD.brr"
BRRFileBDEnd:
BRRFileBE:
	db "BE.brr"
BRRFileBEEnd:
BRRFileBF:
	db "BF.brr"
BRRFileBFEnd:
BRRFileC0:
	db "C0.brr"
BRRFileC0End:
BRRFileC1:
	db "C1.brr"
BRRFileC1End:
BRRFileC2:
	db "C2.brr"
BRRFileC2End:
BRRFileC3:
	db "C3.brr"
BRRFileC3End:

;--------------------------------------------------------------------
