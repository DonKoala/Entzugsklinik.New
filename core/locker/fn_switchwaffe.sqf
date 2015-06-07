/*
	Autor: Andre "Nokman" Kupfer
	Beschreibung: Waffentype Switch von Aufbau zu Standardwaffe
*/

_waffe = [_this,0,"",[""]] call BIS_fnc_param;
_displayn = (gettext (configFile >> "cfgweapons" >> _waffe >> "displayName")); // Erfassen des Namen der Waffenklasse

_waffe = switch (_displayn) do { //Switchen des Namen zur Oberklasse ohne Aufbau
	case (localize "STR_A3_CfgWeapons_hgun_Pistol_heavy_01_F0") : {"hgun_Pistol_heavy_01_F"};
	case (localize "STR_A3_CfgWeapons_hgun_ACPC2_F0") : {"hgun_ACPC2_F"};
	case (localize "STR_A3_CfgWeapons_srifle_GM60") : {"srifle_GM6_F"};
	case (localize "STR_A3_CfgWeapons_arifle_Katiba_F0") : {"arifle_Katiba_F"};
	case (localize "STR_A3_CfgWeapons_arifle_Katiba_C_F0") : {"arifle_Katiba_C_F"};
	case (localize "STR_A3_CfgWeapons_arifle_Katiba_GL_F0") : {"arifle_Katiba_GL_F"};
	case (localize "STR_A3_CfgWeapons_srifle_LRR0") : {"srifle_LRR_F"};
	case (localize "STR_A3_CfgWeapons_srifle_ABR0") : {"srifle_EBR_F"};
	case (localize "STR_A3_CfgWeapons_arifle_Mk200") : {"arifle_Mk20_plain_F"};
	case (localize "STR_A3_CFGWEAPONS_ARIFLE_MK20_CAMO") : {"arifle_Mk20_F"};
	case (localize "STR_A3_CfgWeapons_arifle_Mk20_GL0") : {"arifle_Mk20_GL_plain_F"};
	case (localize "STR_A3_CFGWEAPONS_AFRILE_MK20_GL_CAMO") : {"arifle_Mk20_GL_F"};
	//case "Mk200 6,5 mm" : {"FakeWeapon_moduleTracers_F"}; //name Fakewaffe ist gleich mit LMG MK200
	case (localize "STR_A3_CfgWeapons_LMG_Mk2000") : {"LMG_Mk200_F"};
	case (localize "STR_A3_CFGWEAPONS_ARIFLE_MK20C0") : {"arifle_Mk20C_plain_F"};
	case (localize "STR_A3_CFGWEAPONS_ARIFLE_MK20C_CAMO") : {"arifle_Mk20C_F"};
	case (localize "STR_A3_CfgWeapons_arifle_XMX_GL0") : {"arifle_MX_GL_F"};
	case (localize "STR_A3_CfgWeapons_arifle_MX_GL_Black_F0") : {"arifle_MX_GL_Black_F"};
	case (localize "STR_A3_CfgWeapons_arifle_XMX0") : {"arifle_MX_F"};
	case (localize "STR_A3_CfgWeapons_arifle_MX_Black_F0") : {"arifle_MX_Black_F"};
	case (localize "STR_A3_CfgWeapons_arifle_XM_LSW0") : {"arifle_MX_SW_F"};
	case (localize "STR_A3_CfgWeapons_arifle_MX_SW_Black_F0") : {"arifle_MX_SW_Black_F"};
	case (localize "STR_A3_CfgWeapons_arifle_XMC0") : {"arifle_MXC_F"};
	case (localize "STR_A3_CfgWeapons_arifle_MXM_Black_F0") : {"arifle_MXC_Black_F"};
	case (localize "STR_A3_CfgWeapons_arifle_XMM0") : {"arifle_MXM_F"};
	case (localize "STR_A3_CfgWeapons_arifle_MXM_Black_F0") : {"arifle_MXM_Black_F"};
	case (localize "STR_A3_CfgWeapons_hgun_P070") : {"hgun_P07_F"};
	case (localize "STR_A3_CFGWEAPONS_HGUN_PDW20000") : {"hgun_PDW2000_F"};
	case (localize "STR_A3_CfgWeapons_srifle_DMR_01_F0") : {"srifle_DMR_01_F"};
	case (localize "STR_CfgWeapons_hgun_Rook40_F0") : {"hgun_Rook40_F"};
	case (localize "STR_A3_CfgWeapons_arifle_SDAR0") : {"arifle_SDAR_F"};
	case (localize "STR_A3_CfgWeapons_hgun_Pistol_Signal_F0") : {"hgun_Pistol_Signal_F"};
	case (localize "STR_A3_CfgWeapons_SMG_020") : {"SMG_02_F"};
	case (localize "STR_A3_CfgWeapons_arifle_TRG200") : {"arifle_TRG20_F"};
	case (localize "STR_A3_CfgWeapons_arifle_TRG210") : {"arifle_TRG21_F"};
	case (localize "STR_A3_CfgWeapons_arifle_TRG21_GL0") : {"arifle_TRG21_GL_F"};
	case (localize "STR_A3_CfgWeapons_SMG_010") : {"SMG_01_F"};
	case (localize "STR_A3_CfgWeapons_LMG_Zafir_F0") : {"LMG_Zafir_F"};
	case (localize "STR_A3_CfgWeapons_hgun_Pistol_heavy_02_F0") : {"hgun_Pistol_heavy_02_F"};
	//marksman
	case (localize "STR_A3_CfgWeapons_srifle_DMR_04_F0")  : {"srifle_DMR_04_F"};
	case (localize "STR_A3_CfgWeapons_srifle_DMR_04_Tan_F0")  : {"srifle_DMR_04_tan_F"};
	case (localize "STR_A3_CfgWeapons_srifle_DMR_02_F0")  : {"srifle_DMR_02_F"};
	case (localize "STR_A3_CfgWeapons_srifle_DMR_02_camo_F0")  : {"srifle_DMR_02_camo_F"};
	case (localize "STR_A3_CfgWeapons_srifle_DMR_02_sniper_F0")  : {"srifle_DMR_02_sniper_F"};
	case (localize "STR_A3_CfgWeapons_srifle_DMR_03_F0")  : {"srifle_DMR_03_F"};
	case (localize "STR_A3_CfgWeapons_srifle_DMR_03_khaki_F0")  : {"srifle_DMR_03_khaki_F"};
	case (localize "STR_A3_CfgWeapons_srifle_DMR_03_tan_F0")  : {"srifle_DMR_03_tan_F"};
	case (localize "STR_A3_CfgWeapons_srifle_DMR_03_woodland_F0")  : {"srifle_DMR_03_woodland_F"};
	case (localize "STR_A3_CfgWeapons_srifle_DMR_03_multicam_F0")  : {"srifle_DMR_03_multicam_F"};
	case (localize "STR_A3_CfgWeapons_MMG_01_hex_F0")  : {"MMG_01_hex_F"};
	case (localize "STR_A3_CfgWeapons_MMG_01_tan_F0")  : {"MMG_01_tan_F"};
	case (localize "STR_A3_cfgWeapons_srifle_DMR_06_camo_F0")  : {"srifle_DMR_06_camo_F"};
	case (localize "STR_A3_cfgWeapons_srifle_DMR_06_olive_F0")  : {"srifle_DMR_06_olive_F"};
	case (localize "STR_A3_CfgWeapons_srifle_DMR_05_blk_F0")  : {"srifle_DMR_05_blk_F"};
	case (localize "STR_A3_CfgWeapons_srifle_DMR_05_tan_f0")  : {"srifle_DMR_05_tan_F"};
	case (localize "STR_A3_CfgWeapons_srifle_DMR_05_hex_F0")  : {"srifle_DMR_05_hex_F"};
	case (localize "STR_A3_CfgWeapons_MMG_02_black_F0")  : {"MMG_02_black_F"};
	case (localize "STR_A3_CfgWeapons_MMG_02_camo_F0")  : {"MMG_02_camo_F"};
	case (localize "STR_A3_CfgWeapons_MMG_02_sand_F0")  : {"MMG_02_sand_F"};
	default { _waffe };
};
_waffe; //rückgabe der Klasse