
macro DKC3_GameSpecificAssemblySettings()
	!ROM_DKC3_U = $0001							;\ These defines assign each ROM version with a different bit so version difference checks will work. Do not touch them!
	!ROM_DKC3_E = $0002							;|
	!ROM_DKC3_J1 = $0004							;|
	!ROM_DKC3_J2 = $0008							;/

!Define_DKC3_Global_DisableCopyDetection = !FALSE

	%SetROMToAssembleForHack(DKC3_U, !ROMID)
endmacro

macro DKC3_LoadGameSpecificMainSNESFiles()
	incsrc ../Misc_Defines_DKC3.asm
	incsrc ../RAM_Map_DKC3.asm
	incsrc ../Routine_Macros_DKC3.asm
	incsrc ../SNES_Macros_DKC3.asm
	%LoadExtraRAMFile("SRAM_Map_DKC3.asm", !ROMID, DKC3)
endmacro

macro DKC3_LoadGameSpecificMainSPC700Files()
	incsrc ../SPC700/ARAM_Map_DKC3.asm
	incsrc ../Misc_Defines_DKC3.asm
	incsrc ../SPC700/SPC700_Macros_DKC3.asm
endmacro

macro DKC3_LoadGameSpecificMainExtraHardwareFiles()
endmacro

macro DKC3_LoadGameSpecificMSU1Files()
endmacro

macro DKC3_GlobalAssemblySettings()
	!Define_Global_ApplyAsarPatches = !FALSE
	!Define_Global_ApplyDefaultPatches = !TRUE
	!Define_Global_InsertRATSTags = !TRUE
	!Define_Global_IgnoreCodeAlignments = !FALSE
	!Define_Global_IgnoreOriginalFreespace = !FALSE
	!Define_Global_CompatibleControllers = !Controller_StandardJoypad
	!Define_Global_DisableROMMirroring = !FALSE
	!Define_Global_CartridgeHeaderVersion = $02
	!Define_Global_FixIncorrectChecksumHack = !FALSE
	!Define_Global_ROMFrameworkVer = 1
	!Define_Global_ROMFrameworkSubVer = 1
	!Define_Global_ROMFrameworkSubSubVer = 3
	!Define_Global_AsarChecksum = $0000
	!Define_Global_LicenseeName = "Nintendo"
	!Define_Global_DeveloperName = "Rare"
	!Define_Global_ReleaseDate = "November 18, 1996"
	!Define_Global_BaseROMMD5Hash = "120abf304f0c40fe059f6a192ed4f947"

	!Define_Global_MakerCode = "01"
	!Define_Global_GameCode = "A3CE"
	!Define_Global_ReservedSpace = $00,$00,$00,$00,$00,$00
	!Define_Global_ExpansionFlashSize = !ExpansionMemorySize_0KB
	!Define_Global_ExpansionRAMSize = !ExpansionMemorySize_0KB
	!Define_Global_IsSpecialVersion = $00
	!Define_Global_InternalName = "DONKEY KONG COUNTRY 3"
	!Define_Global_ROMLayout = !ROMLayout_HiROM_FastROM
	!Define_Global_ROMType = !ROMType_ROM_RAM_SRAM
	!Define_Global_CustomChip = !Chip_None
	!Define_Global_ROMSize1 = !ROMSize_4MB
	!Define_Global_ROMSize2 = !ROMSize_0KB
	!Define_Global_SRAMSize = !SRAMSize_2KB
	!Define_Global_Region = !Region_NorthAmerica
	!Define_Global_LicenseeID = $33
	!Define_Global_VersionNumber = $00
	!Define_Global_ChecksumCompliment = !Define_Global_Checksum^$FFFF
	!Define_Global_Checksum = $B28C
	!UnusedNativeModeVector1 = $4944							;\ Note: "DIXIE "
	!UnusedNativeModeVector2 = $4958							;|
	!NativeModeCOPVector = $2045									;/
	!NativeModeBRKVector = $5003
	!NativeModeAbortVector = $0000
	!NativeModeNMIVector = CODE_80CA45
	!NativeModeResetVector = $0000
	!NativeModeIRQVector = CODE_80CA6E
	!UnusedEmulationModeVector1 = $2020							;\ Note: No "KIDDY KONG" easter egg in the header similar to what DKC1 and 2 did? Lame.
	!UnusedEmulationModeVector2 = $2020							;|
	!EmulationModeCOPVector = $2020								;|
	!EmulationModeBRKVector = $2020								;|
	!EmulationModeAbortVector = $2020							;/
	!EmulationModeNMIVector = $F800
	!EmulationModeResetVector = CODE_8080C4
	!EmulationModeIRQVector = $5000
endmacro

macro DKC3_LoadROMMap()
	%DKC3BankC0Macros(!BANK_00, !BANK_00)
	%DKC3BankC1Macros(!BANK_01, !BANK_01)
	%DKC3BankC2Macros(!BANK_02, !BANK_02)
	%DKC3BankC3Macros(!BANK_03, !BANK_03)
	%DKC3BankC4Macros(!BANK_04, !BANK_04)
	%DKC3BankC5Macros(!BANK_05, !BANK_05)
	%DKC3BankC6Macros(!BANK_06, !BANK_06)
	%DKC3BankC7Macros(!BANK_07, !BANK_07)
	%DKC3BankC8Macros(!BANK_08, !BANK_08)
	%DKC3BankC9Macros(!BANK_09, !BANK_09)
	%DKC3BankCAMacros(!BANK_0A, !BANK_0A)
	%DKC3BankCBMacros(!BANK_0B, !BANK_0B)
	%DKC3BankCCMacros(!BANK_0C, !BANK_0C)
	%DKC3BankCDMacros(!BANK_0D, !BANK_0D)
	%DKC3BankCEMacros(!BANK_0E, !BANK_0E)
	%DKC3BankCFMacros(!BANK_0F, !BANK_0F)
	%DKC3BankD0Macros(!BANK_10, !BANK_10)
	%DKC3BankD1Macros(!BANK_11, !BANK_11)
	%DKC3BankD2Macros(!BANK_12, !BANK_12)
	%DKC3BankD3Macros(!BANK_13, !BANK_13)
	%DKC3BankD4Macros(!BANK_14, !BANK_14)
	%DKC3BankD5Macros(!BANK_15, !BANK_15)
	%DKC3BankD6Macros(!BANK_16, !BANK_16)
	%DKC3BankD7Macros(!BANK_17, !BANK_17)
	%DKC3BankD8Macros(!BANK_18, !BANK_18)
	%DKC3BankD9Macros(!BANK_19, !BANK_19)
	%DKC3BankDAMacros(!BANK_1A, !BANK_1A)
	%DKC3BankDBMacros(!BANK_1B, !BANK_1B)
	%DKC3BankDCMacros(!BANK_1C, !BANK_1C)
	%DKC3BankDDMacros(!BANK_1D, !BANK_1D)
	%DKC3BankDEMacros(!BANK_1E, !BANK_1E)
	%DKC3BankDFMacros(!BANK_1F, !BANK_1F)
	%DKC3BankE0Macros(!BANK_20, !BANK_2B)
	%DKC3BankECMacros(!BANK_2C, !BANK_2C)
	%DKC3BankEDMacros(!BANK_2D, !BANK_31)
	%DKC3BankF2Macros(!BANK_32, !BANK_32)
	%DKC3BankF3Macros(!BANK_33, !BANK_33)
	%DKC3BankF4Macros(!BANK_34, !BANK_34)
	%DKC3BankF5Macros(!BANK_35, !BANK_35)
	%DKC3BankF6Macros(!BANK_36, !BANK_36)
	%DKC3BankF7Macros(!BANK_37, !BANK_37)
	%DKC3BankF8Macros(!BANK_38, !BANK_38)
	%DKC3BankF9Macros(!BANK_39, !BANK_39)
	%DKC3BankFAMacros(!BANK_3A, !BANK_3A)
	%DKC3BankFBMacros(!BANK_3B, !BANK_3B)
	%DKC3BankFCMacros(!BANK_3C, !BANK_3C)
	%DKC3BankFDMacros(!BANK_3D, !BANK_3D)
	%DKC3BankFEMacros(!BANK_3E, !BANK_3E)
	%DKC3BankFFMacros(!BANK_3F, !BANK_3F)
endmacro
