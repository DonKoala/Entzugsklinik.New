#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"Computer sagt nein. Kein Polizist!"};
			case (__GETC__(life_coplevel) > 0):
			{
				["SEK Allzweckladen",
					[
						["Binocular",nil,10000],
						["Rangefinder",nil,20000],
						["ItemGPS",nil,800],
						["ItemMap",nil,800],
						["ItemWatch",nil,800],
						["ItemCompass",nil,800],
						["tf_ex8550","Altis Mobile S6",100],
						["Medikit",nil,5000],
						["FirstAidKit",nil,500],
						["ToolKit",nil,5000],
						["NVGoggles_OPFOR",nil,5000],
						["Chemlight_red",nil,200],
						["Chemlight_yellow",nil,200],
						["Chemlight_green",nil,200],
						["Chemlight_blue",nil,200]
					]
				];
			};
			default {
				["Polizei Allzweckladen",
					[
						["Binocular",nil,10000],
						["ItemGPS",nil,800],
						["ItemMap",nil,800],
						["ItemWatch",nil,800],
						["ItemCompass",nil,800],
						["tf_ex8550","Altis Mobile S6",100],
						["Medikit",nil,5000],
						["FirstAidKit",nil,500],
						["ToolKit",nil,5000],
						["NVGoggles_OPFOR",nil,5000],
						["Chemlight_red",nil,200],
						["Chemlight_yellow",nil,200],
						["Chemlight_green",nil,200],
						["Chemlight_blue",nil,200]
					]
				];
			};
		};
	};
	
	case "cop":
	{
		switch(true) do
		{
			case (playerSide != west): {"Diese Waffen sind nur für die blauen Zwerge!"};
			case (__GETC__(life_coplevel) == 1):
			{
				["Polizei Waffenladen - Polizeineuling",
					[
						["hgun_Pistol_heavy_01_F","Tazerpistole",2000],
						["11Rnd_45ACP_Mag","Tazermunition",50],
						["optic_MRD","Tazeroptic",2000],
						["muzzle_snds_acp","Tazeraufsatz",1000]
					]
				];
			};
			case (__GETC__(life_coplevel) == 2):
			{
				["Polizei Waffenladen - Polizeianwärter",
					[
						["hgun_Pistol_heavy_01_F","Tazerpistole",2000],
						["11Rnd_45ACP_Mag","Tazermunition",50],
						["optic_MRD","Tazeroptic",nil,2000],
						["optic_Yorris",nil,1500],
						["optic_Holosight_smg",nil,1500],
						["optic_Holosight",nil,1500],
						["optic_MRCO",nil,100],
						["muzzle_snds_acp","Tazeraufsatz",1000],
						["rhs_weap_M590_8RD",nil,1000], 
						["rhsusf_8Rnd_00Buck",nil,300]
					]
				];
			};
			case (__GETC__(life_coplevel) == 3):
			{
				["Polizei Waffenladen - Polizeimeister",
					[
						["hgun_Pistol_heavy_01_F","Tazerpistole",2000],
						["11Rnd_45ACP_Mag","Tazermunition",50],
						["optic_MRD","Tazeroptic",nil,2000],
						["optic_Yorris",nil,1500],
						["optic_Holosight_smg",nil,1500],
						["optic_Holosight",nil,1500],
						["optic_MRCO",nil,1000],
						["acc_flashlight",nil,1750],
						["acc_pointer_IR",nil,1500],
						["muzzle_snds_acp","Tazeraufsatz",1000],
						["rhs_weap_M590_8RD",nil,1000], 
						["rhsusf_8Rnd_00Buck",nil,300],
						["rhs_weap_m16a4_carryhandle_grip_pmag",nil,3000],
						["30Rnd_556x45_Stanag",nil,300],
						["rhsusf_acc_compm4",nil,300],
						["rhsusf_acc_eotech_552",nil,300],
						["rhsusf_acc_ACOG",nil,300]
					]
				];
			};
			case (__GETC__(life_coplevel) == 4):
			{
				["Polizei Waffenladen -Polizeihauptmeister",
					[
						["hgun_Pistol_heavy_01_F","Tazerpistole",2000],
						["11Rnd_45ACP_Mag","Tazermunition",50],
						["optic_MRD","Tazeroptic",nil,2000],
						["optic_Yorris",nil,1500],
						["optic_Holosight_smg",nil,1500],
						["optic_Holosight",nil,1500],
						["optic_MRCO",nil,1000],
						["acc_flashlight",nil,1750],
						["acc_pointer_IR",nil,1500],
						["muzzle_snds_acp","Tazeraufsatz",1000],
						["rhs_weap_M590_8RD",nil,1000], 
						["rhsusf_8Rnd_00Buck",nil,300],
						["rhs_weap_m16a4_carryhandle_grip_pmag",nil,3000],
						["30Rnd_556x45_Stanag",nil,300],
						["rhsusf_acc_compm4",nil,300],
						["rhsusf_acc_eotech_552",nil,300],
						["rhsusf_acc_ACOG",nil,300],
						["gign_shield","Schild",5000]
					]
				];
			};
			case (__GETC__(life_coplevel) == 5):
			{
				["Polizei Waffenladen - Polizeikomissar",
					[
						["hgun_Pistol_heavy_01_F","Tazerpistole",2000],
						["11Rnd_45ACP_Mag","Tazermunition",50],
						["optic_MRD","Tazeroptic",nil,2000],
						["optic_Yorris",nil,1500],
						["optic_Holosight_smg",nil,1500],
						["optic_Holosight",nil,1500],
						["optic_MRCO",nil,1000],
						["acc_flashlight",nil,1750],
						["acc_pointer_IR",nil,1500],
						["muzzle_snds_acp","Tazeraufsatz",1000],
						["rhs_weap_M590_8RD",nil,1000], 
						["rhsusf_8Rnd_00Buck",nil,300],
						["rhs_weap_m16a4_carryhandle_grip_pmag",nil,3000],
						["30Rnd_556x45_Stanag",nil,300],
						["rhsusf_acc_compm4",nil,300],
						["rhsusf_acc_eotech_552",nil,300],
						["rhsusf_acc_ACOG",nil,300],
						["gign_shield","Schild",5000],
						["rhs_weap_sr25_ec",nil,30000],
						["rhsusf_20Rnd_762x51_m118_special_Mag",nil,5000]
					]
				];
			};
			case (__GETC__(life_coplevel) > 5):
			{
				["Polizei Waffenladen - Polizeihauptkomissar",
					[
						["hgun_Pistol_heavy_01_F","Tazerpistole",2000],
						["11Rnd_45ACP_Mag","Tazermunition",50],
						["optic_MRD","Tazeroptic",nil,2000],
						["optic_Yorris",nil,1500],
						["optic_Holosight_smg",nil,1500],
						["optic_Holosight",nil,1500],
						["optic_ACO",nil,1500],
						["optic_ACO_grn",nil,1500],
						["optic_Aco_smg",nil,1500],
						["optic_ACO_grn_smg",nil,1500],
						["optic_MRCO",nil,1500],
						["optic_Hamr",nil,1500],
						["optic_SOS",nil,5500],
						["optic_DMS",nil,15000],
						["optic_Arco",nil,1500],
						["acc_flashlight",nil,1750],
						["acc_pointer_IR",nil,1500],
						["muzzle_snds_acp","Tazeraufsatz",1000],
						["muzzle_snds_H",nil,3000],
						["rhs_weap_m14ebrri",nil,30000],
						["rhs_weap_m14ebrri",nil,300],						
						["rhs_weap_XM2010",nil,30000],
						["rhsusf_5Rnd_300winmag_xm2010",nil,300],						
						["rhs_weap_m16a4_carryhandle_grip_pmag",nil,30000],
						["rhs_weap_m4a1_carryhandle_grip",nil,30000],
					    ["rhs_weap_m4a1_carryhandle_m203",nil,30000],
					    ["30Rnd_556x45_Stanag",nil,300],						
						["rhs_weap_M590_8RD",nil,30000],
						["rhsusf_8Rnd_00Buck",nil,300],						
					    ["rhs_weap_sr25_ec",nil,30000],					   
						["rhsusf_20Rnd_762x51_m118_special_Mag",nil,300],			
						["gign_shield","Schild",5000],
						["1Rnd_SmokeYellow_Grenade_shell",nil,300],
						["rhsusf_acc_LEUPOLDMK4",nil,300],
						["rhsusf_acc_LEUPOLDMK4_2",nil,300],
						["rhsusf_acc_harris_bipod",nil,300],	
						["rhsusf_acc_ACOG",nil,300],
						["rhsusf_acc_compm4",nil,300],	
						["rhsusf_acc_eotech_552",nil,300],
						["BWA3_G27",nil,30000],
						["BWA3_20Rnd_762x51_G28",nil,300],
						["BWA3_optic_Aimpoint",nil,300],
						["BWA3_optic_Shortdot",nil,300],
						["BWA3_optic_ZO4x30",nil,300],
						["BWA3_acc_LLM01_flash",nil,300],
						["rhs_weap_m249_pip",nil,30000],
						["rhsusf_100Rnd_556x45_soft_pouch",nil,300],
						["BWA3_optic_20x50",nil,300],
						["BWA3_optic_NSV600",nil,300]

													
						







					]
				];
			};
		};
	};
	
	case "sek":
	{
		switch(true) do
		{
			case (playerSide != west): {"Diese Waffen sind nur für die blauen Zwerge!"};
			case (__GETC__(life_coplevel) > 5):
			{
				["Polizei Waffenladen - SEK",
					[	
						["SatchelCharge_Remote_Mag","Panzerfreund Satchii",10000],
						["gign_shield","Schild",5000],
						["hgun_Pistol_heavy_01_F","Tazerpistole",2000],
						["11Rnd_45ACP_Mag","Tazermunition",50],
						["optic_MRD","Tazeroptic",2000],
						["optic_MRD","Tazeroptic",nil,2000],
						["optic_Yorris",nil,1500],
						["optic_Holosight_smg",nil,1500],
						["optic_Aco",nil,1500],
						["optic_Holosight",nil,1500],
						["optic_MRCO",nil,1500],
						["optic_Hamr",nil,1500],
						["optic_SOS",nil,5500],
						["optic_Arco",nil,1100],
						["optic_ACO_grn",nil,1100],
						["optic_Aco_smg",nil,1100],
						["optic_ACO_grn_smg",nil,1100],
						["muzzle_snds_acp","Tazeraufsatz",1000],
						["HandGrenade_Stone","Blendgranate",700],
						["SmokeShellBlue","Tränengas",200],
						["BWA3_G27",nil,30000],
						["BWA3_20Rnd_762x51_G28",nil,300],
						["BWA3_optic_Aimpoint",nil,300],
						["BWA3_optic_Shortdot",nil,300],
						["BWA3_optic_ZO4x30",nil,300],
						["BWA3_acc_LLM01_flash",nil,300],
						["rhs_weap_m249_pip",nil,30000],
						["rhsusf_100Rnd_556x45_soft_pouch",nil,300],
						["BWA3_optic_20x50",nil,300],
						["BWA3_optic_NSV600",nil,300]
					]
				];
			};
			case (__GETC__(life_coplevel) > 5):
			{
				["Polizei Waffenladen - Appuntato",
					[
						["gign_shield","Schild",5000],
						["hgun_Pistol_heavy_01_F","Tazerpistole",2000],
						["11Rnd_45ACP_Mag","Tazermunition",50],
						["optic_MRD","Tazeroptic",nil,2000],
						["optic_Yorris",nil,1500],
						["optic_Holosight_smg",nil,1500],
						["optic_Aco",nil,1500],
						["optic_Holosight",nil,1500],
						["optic_MRCO",nil,1500],
						["optic_Hamr",nil,1500],
						["optic_SOS",nil,5500],
						["optic_Arco",nil,1100],
						["optic_ACO_grn",nil,1100],
						["optic_Aco_smg",nil,1100],
						["optic_ACO_grn_smg",nil,1100],
						["muzzle_snds_acp","Tazeraufsatz",1000],
						["HandGrenade_Stone","Blendgranate",700],
						["SmokeShellBlue","Tränengas",200],
						["BWA3_G27",nil,30000],
						["BWA3_20Rnd_762x51_G28",nil,300],
						["BWA3_optic_Aimpoint",nil,300],
						["BWA3_optic_Shortdot",nil,300],
						["BWA3_optic_ZO4x30",nil,300],
						["BWA3_acc_LLM01_flash",nil,300],
						["rhs_weap_m249_pip",nil,30000],
						["rhsusf_100Rnd_556x45_soft_pouch",nil,300],
						["BWA3_optic_20x50",nil,300],
						["BWA3_optic_NSV600",nil,300]
					]
				];
			};
			case (__GETC__(life_coplevel) > 5):
			{
				["Polizei Waffenladen - Brigadiere Capo",
					[
						["gign_shield","Schild",5000],
						["hgun_Pistol_heavy_01_F","Tazerpistole",2000],
						["11Rnd_45ACP_Mag","Tazermunition",50],
						["srifle_DMR_05_blk_F",nil,62000],
						["10Rnd_93x64_DMR_05_Mag",nil,100],
						["muzzle_snds_93mmg",nil,1100],
						["optic_MRD","Tazeroptic",nil,2000],
						["optic_Yorris",nil,1500],
						["optic_Holosight_smg",nil,1500],
						["optic_Aco",nil,1500],
						["optic_Holosight",nil,1500],
						["optic_MRCO",nil,1500],
						["optic_Hamr",nil,1500],
						["optic_SOS",nil,5500],
						["optic_Arco",nil,1100],
						["optic_ACO_grn",nil,1100],
						["optic_Aco_smg",nil,1100],
						["optic_ACO_grn_smg",nil,1100],
						["optic_DMS",nil,12000],
						["optic_AMS",nil,1200],
						["optic_KHS_blk",nil,1200],
						["bipod_03_F_oli",nil,1000],
						["bipod_03_F_blk",nil,1000],
						["bipod_02_F_blk",nil,1000],
						["bipod_01_F_blk",nil,1000],
						["muzzle_snds_acp","Tazeraufsatz",1000],
						["HandGrenade_Stone","Blendgranate",700],
						["SmokeShellBlue","Tränengas",2000],
						["1Rnd_Smoke_Grenade_shell",nil,1450],
						["1Rnd_SmokeRed_Grenade_shell",nil,1450],
						["1Rnd_SmokeGreen_Grenade_shell",nil,1450],
						["1Rnd_SmokeYellow_Grenade_shell",nil,1450],
						["1Rnd_SmokePurple_Grenade_shell",nil,1450],
						["1Rnd_SmokeOrange_Grenade_shell",nil,1450],
						["BWA3_G27",nil,30000],
						["BWA3_20Rnd_762x51_G28",nil,300],
						["BWA3_optic_Aimpoint",nil,300],
						["BWA3_optic_Shortdot",nil,300],
						["BWA3_optic_ZO4x30",nil,300],
						["BWA3_acc_LLM01_flash",nil,300],
						["rhs_weap_m249_pip",nil,30000],
						["rhsusf_100Rnd_556x45_soft_pouch",nil,300],
						["BWA3_optic_20x50",nil,300],
						["BWA3_optic_NSV600",nil,300]
					]
				];
			};
			case (__GETC__(life_coplevel) > 5):
			{
				["Polizei Waffenladen - Maresciallo",
					[
						["gign_shield","Schild",5000],
						["hgun_Pistol_heavy_01_F","Tazerpistole",2000],
						["11Rnd_45ACP_Mag","Tazermunition",50],
						["srifle_DMR_03_F",nil,82000],
						["20Rnd_762x51_Mag",nil,100],
						["srifle_DMR_05_blk_F",nil,62000],
						["10Rnd_93x64_DMR_05_Mag",nil,100],
						["optic_MRD","Tazeroptic",nil,2000],
						["optic_Yorris",nil,1500],
						["optic_Holosight_smg",nil,1500],
						["optic_Aco",nil,1500],
						["optic_Holosight",nil,1500],
						["optic_MRCO",nil,1500],
						["optic_Hamr",nil,1500],
						["optic_SOS",nil,5500],
						["optic_Arco",nil,1100],
						["optic_ACO_grn",nil,1100],
						["optic_Aco_smg",nil,1100],
						["optic_ACO_grn_smg",nil,1100],
						["optic_DMS",nil,12000],
						["optic_AMS",nil,1200],
						["optic_KHS_blk",nil,1200],
						["bipod_03_F_oli",nil,1000],
						["bipod_03_F_blk",nil,1000],
						["bipod_02_F_blk",nil,1000],
						["bipod_01_F_blk",nil,1000],
						["muzzle_snds_B",nil,1100],
						["muzzle_snds_93mmg",nil,1100],
						["muzzle_snds_acp","Tazeraufsatz",1000],
						["HandGrenade_Stone","Blendgranate",700],
						["SmokeShellBlue","Tränengas",2000],
						["1Rnd_Smoke_Grenade_shell",nil,1450],
						["1Rnd_SmokeRed_Grenade_shell",nil,1450],
						["1Rnd_SmokeGreen_Grenade_shell",nil,1450],
						["1Rnd_SmokeYellow_Grenade_shell",nil,1450],
						["1Rnd_SmokePurple_Grenade_shell",nil,1450],
						["1Rnd_SmokeOrange_Grenade_shell",nil,1450],
						["BWA3_G27",nil,30000],
						["BWA3_20Rnd_762x51_G28",nil,300],
						["BWA3_optic_Aimpoint",nil,300],
						["BWA3_optic_Shortdot",nil,300],
						["BWA3_optic_ZO4x30",nil,300],
						["BWA3_acc_LLM01_flash",nil,300],
						["rhs_weap_m249_pip",nil,30000],
						["rhsusf_100Rnd_556x45_soft_pouch",nil,300],
						["BWA3_optic_20x50",nil,300],
						["BWA3_optic_NSV600",nil,300]
					]
				];
			};
			case (__GETC__(life_coplevel) > 5):
			{
				["Polizei Waffenladen - Maresciallo Capo",
					[
						["gign_shield","Schild",5000],
						["hgun_Pistol_heavy_01_F","Tazerpistole",2000],
						["11Rnd_45ACP_Mag","Tazermunition",50],
						["srifle_DMR_03_F",nil,82000],
						["20Rnd_762x51_Mag",nil,100],
						["srifle_DMR_05_blk_F",nil,62000],
						["10Rnd_93x64_DMR_05_Mag",nil,100],
						["optic_MRD","Tazeroptic",nil,2000],
						["optic_Yorris",nil,1500],
						["optic_Holosight_smg",nil,1500],
						["optic_Aco",nil,1500],
						["optic_Holosight",nil,1500],
						["optic_MRCO",nil,1500],
						["optic_Hamr",nil,1500],
						["optic_SOS",nil,5500],
						["optic_Arco",nil,1100],
						["optic_ACO_grn",nil,1100],
						["optic_Aco_smg",nil,1100],
						["optic_ACO_grn_smg",nil,1100],
						["optic_DMS",nil,12000],
						["optic_AMS",nil,1200],
						["optic_KHS_blk",nil,1200],
						["bipod_03_F_oli",nil,1000],
						["bipod_03_F_blk",nil,1000],
						["bipod_02_F_blk",nil,1000],
						["bipod_01_F_blk",nil,1000],
						["muzzle_snds_B",nil,1100],
						["muzzle_snds_93mmg",nil,1100],
						["muzzle_snds_acp","Tazeraufsatz",1000],
						["HandGrenade_Stone","Blendgranate",700],
						["SmokeShellBlue","Tränengas",2000],
						["1Rnd_Smoke_Grenade_shell",nil,1450],
						["1Rnd_SmokeRed_Grenade_shell",nil,1450],
						["1Rnd_SmokeGreen_Grenade_shell",nil,1450],
						["1Rnd_SmokeYellow_Grenade_shell",nil,1450],
						["1Rnd_SmokePurple_Grenade_shell",nil,1450],
						["1Rnd_SmokeOrange_Grenade_shell",nil,1450],
						["BWA3_G27",nil,30000],
						["BWA3_20Rnd_762x51_G28",nil,300],
						["BWA3_optic_Aimpoint",nil,300],
						["BWA3_optic_Shortdot",nil,300],
						["BWA3_optic_ZO4x30",nil,300],
						["BWA3_acc_LLM01_flash",nil,300],
						["rhs_weap_m249_pip",nil,30000],
						["rhsusf_100Rnd_556x45_soft_pouch",nil,300],
						["BWA3_optic_20x50",nil,300],
						["BWA3_optic_NSV600",nil,300]
					]
				];
			};
			case (__GETC__(life_coplevel) > 5):
			{
				["Polizei Waffenladen - Capitano",
					[
						["gign_shield","Schild",5000],
						["hgun_Pistol_heavy_01_F","Tazerpistole",2000],
						["11Rnd_45ACP_Mag","Tazermunition",50],
						["srifle_DMR_06_olive_F",nil,57000],
						["20Rnd_762x51_Mag",nil,100],
						["srifle_DMR_03_F",nil,82000],
						["20Rnd_762x51_Mag",nil,100],
						["srifle_DMR_05_blk_F",nil,62000],
						["10Rnd_93x64_DMR_05_Mag",nil,100],
						["optic_MRD","Tazeroptic",nil,2000],
						["optic_Yorris",nil,1500],
						["optic_Holosight_smg",nil,1500],
						["optic_Aco",nil,1500],
						["optic_Holosight",nil,1500],
						["optic_MRCO",nil,1500],
						["optic_Hamr",nil,1500],
						["optic_SOS",nil,5500],
						["optic_Arco",nil,1100],
						["optic_ACO_grn",nil,1100],
						["optic_Aco_smg",nil,1100],
						["optic_ACO_grn_smg",nil,1100],
						["optic_DMS",nil,12000],
						["optic_AMS",nil,1200],
						["optic_KHS_blk",nil,1200],
						["optic_AMS_khk",nil,5000],
						["acc_flashlight",nil,1750],
						["acc_pointer_IR",nil,1500],
						["bipod_03_F_oli",nil,1000],
						["bipod_03_F_blk",nil,1000],
						["bipod_02_F_blk",nil,1000],
						["bipod_01_F_blk",nil,1000],
						["muzzle_snds_B",nil,1100],
						["muzzle_snds_93mmg",nil,1100],
						["muzzle_snds_acp","Tazeraufsatz",1000],
						["HandGrenade_Stone","Blendgranate",700],
						["SmokeShellBlue","Tränengas",2000],
						["1Rnd_Smoke_Grenade_shell",nil,1450],
						["1Rnd_SmokeRed_Grenade_shell",nil,1450],
						["1Rnd_SmokeGreen_Grenade_shell",nil,1450],
						["1Rnd_SmokeYellow_Grenade_shell",nil,1450],
						["1Rnd_SmokePurple_Grenade_shell",nil,1450],
						["1Rnd_SmokeOrange_Grenade_shell",nil,1450],
						["BWA3_G27",nil,30000],
						["BWA3_20Rnd_762x51_G28",nil,300],
						["BWA3_optic_Aimpoint",nil,300],
						["BWA3_optic_Shortdot",nil,300],
						["BWA3_optic_ZO4x30",nil,300],
						["BWA3_acc_LLM01_flash",nil,300],
						["rhs_weap_m249_pip",nil,30000],
						["rhsusf_100Rnd_556x45_soft_pouch",nil,300],
						["BWA3_optic_20x50",nil,300],
						["BWA3_optic_NSV600",nil,300]
						
						
						
						
					

													
					]
				];
			};
			case (__GETC__(life_coplevel) > 5):
			{
				["Polizei Waffenladen - Colonnello",
					[
						["gign_shield","Schild",5000],
						["hgun_Pistol_heavy_01_F","Tazerpistole",2000],
						["11Rnd_45ACP_Mag","Tazermunition",50],
						["srifle_DMR_06_olive_F",nil,57000],
						["20Rnd_762x51_Mag",nil,100],
						["srifle_DMR_03_F",nil,82000],
						["20Rnd_762x51_Mag",nil,100],
						["srifle_DMR_05_blk_F",nil,62000],
						["10Rnd_93x64_DMR_05_Mag",nil,100],
						["optic_MRD","Tazeroptic",nil,2000],
						["optic_Yorris",nil,1500],
						["optic_Holosight_smg",nil,1500],
						["optic_Aco",nil,1500],
						["optic_Holosight",nil,1500],
						["optic_MRCO",nil,1500],
						["optic_Hamr",nil,1500],
						["optic_SOS",nil,5500],
						["optic_Arco",nil,1100],
						["optic_ACO_grn",nil,1100],
						["optic_Aco_smg",nil,1100],
						["optic_ACO_grn_smg",nil,1100],
						["optic_DMS",nil,12000],
						["optic_AMS",nil,1200],
						["optic_KHS_blk",nil,1200],
						["optic_AMS_khk",nil,5000],
						["acc_flashlight",nil,1750],
						["acc_pointer_IR",nil,1500],
						["bipod_03_F_oli",nil,1000],
						["bipod_03_F_blk",nil,1000],
						["bipod_02_F_blk",nil,1000],
						["bipod_01_F_blk",nil,1000],
						["muzzle_snds_B",nil,1100],
						["muzzle_snds_93mmg",nil,1100],
						["muzzle_snds_acp","Tazeraufsatz",1000],
						["HandGrenade_Stone","Blendgranate",700],
						["SmokeShellBlue","Tränengas",2000],
						["1Rnd_Smoke_Grenade_shell",nil,1450],
						["1Rnd_SmokeRed_Grenade_shell",nil,1450],
						["1Rnd_SmokeGreen_Grenade_shell",nil,1450],
						["1Rnd_SmokeYellow_Grenade_shell",nil,1450],
						["1Rnd_SmokePurple_Grenade_shell",nil,1450],
						["1Rnd_SmokeOrange_Grenade_shell",nil,1450]
					]
				];
			};
			case (__GETC__(life_coplevel) > 5):
			{
				["Polizei Waffenladen - Generale di Brigata",
					[
						["gign_shield","Schild",5000],
						["hgun_Pistol_heavy_01_F","Tazerpistole",2000],
						["11Rnd_45ACP_Mag","Tazermunition",50],
						["srifle_DMR_06_olive_F",nil,57000],
						["20Rnd_762x51_Mag",nil,100],
						["srifle_DMR_03_F",nil,82000],
						["20Rnd_762x51_Mag",nil,100],
						["srifle_DMR_05_blk_F",nil,62000],
						["10Rnd_93x64_DMR_05_Mag",nil,100],
						["optic_MRD","Tazeroptic",nil,2000],
						["optic_Yorris",nil,1500],
						["optic_Holosight_smg",nil,1500],
						["optic_Aco",nil,1500],
						["optic_Holosight",nil,1500],
						["optic_MRCO",nil,1500],
						["optic_Hamr",nil,1500],
						["optic_SOS",nil,5500],
						["optic_Arco",nil,1100],
						["optic_ACO_grn",nil,1100],
						["optic_Aco_smg",nil,1100],
						["optic_ACO_grn_smg",nil,1100],
						["optic_DMS",nil,12000],
						["optic_AMS",nil,1200],
						["optic_KHS_blk",nil,1200],
						["optic_AMS_khk",nil,5000],
						["acc_flashlight",nil,1750],
						["acc_pointer_IR",nil,1500],
						["bipod_03_F_oli",nil,1000],
						["bipod_03_F_blk",nil,1000],
						["bipod_02_F_blk",nil,1000],
						["bipod_01_F_blk",nil,1000],
						["muzzle_snds_B",nil,1100],
						["muzzle_snds_93mmg",nil,1100],
						["muzzle_snds_acp","Tazeraufsatz",1000],
						["HandGrenade_Stone","Blendgranate",700],
						["SmokeShellBlue","Tränengas",2000],
						["1Rnd_Smoke_Grenade_shell",nil,1450],
						["1Rnd_SmokeRed_Grenade_shell",nil,1450],
						["1Rnd_SmokeGreen_Grenade_shell",nil,1450],
						["1Rnd_SmokeYellow_Grenade_shell",nil,1450],
						["1Rnd_SmokePurple_Grenade_shell",nil,1450],
						["1Rnd_SmokeOrange_Grenade_shell",nil,1450]
					]
				];
			};
			case (__GETC__(life_coplevel) > 5):
			{
				["Polizei Waffenladen - Generale di Divisione",
					[
						["gign_shield","Schild",5000],
						["hgun_Pistol_heavy_01_F","Tazerpistole",2000],
						["11Rnd_45ACP_Mag","Tazermunition",50],
						["srifle_DMR_06_olive_F",nil,57000],
						["20Rnd_762x51_Mag",nil,100],
						["srifle_DMR_03_F",nil,82000],
						["20Rnd_762x51_Mag",nil,100],
						["srifle_DMR_05_blk_F",nil,62000],
						["10Rnd_93x64_DMR_05_Mag",nil,100],
						["optic_MRD","Tazeroptic",nil,2000],
						["optic_Yorris",nil,1500],
						["optic_Holosight_smg",nil,1500],
						["optic_Aco",nil,1500],
						["optic_Holosight",nil,1500],
						["optic_MRCO",nil,1500],
						["optic_Hamr",nil,1500],
						["optic_SOS",nil,5500],
						["optic_Arco",nil,1100],
						["optic_ACO_grn",nil,1100],
						["optic_Aco_smg",nil,1100],
						["optic_ACO_grn_smg",nil,1100],
						["optic_DMS",nil,12000],
						["optic_AMS",nil,1200],
						["optic_KHS_blk",nil,1200],
						["optic_AMS_khk",nil,5000],
						["acc_flashlight",nil,1750],
						["acc_pointer_IR",nil,1500],
						["bipod_03_F_oli",nil,1000],
						["bipod_03_F_blk",nil,1000],
						["bipod_02_F_blk",nil,1000],
						["bipod_01_F_blk",nil,1000],
						["muzzle_snds_B",nil,1100],
						["muzzle_snds_93mmg",nil,1100],
						["muzzle_snds_acp","Tazeraufsatz",1000],
						["HandGrenade_Stone","Blendgranate",700],
						["SmokeShellBlue","Tränengas",2000],
						["1Rnd_Smoke_Grenade_shell",nil,1450],
						["1Rnd_SmokeRed_Grenade_shell",nil,1450],
						["1Rnd_SmokeGreen_Grenade_shell",nil,1450],
						["1Rnd_SmokeYellow_Grenade_shell",nil,1450],
						["1Rnd_SmokePurple_Grenade_shell",nil,1450],
						["1Rnd_SmokeOrange_Grenade_shell",nil,1450]
					]
				];
			};
			case (__GETC__(life_coplevel) > 5):
			{
				["Polizei Waffenladen - Generale di Corpo d’Armata",
					[
						["SatchelCharge_Remote_Mag","Panzerfreund Satchii",10000],
						["gign_shield","Schild",5000],
						["hgun_Pistol_heavy_01_F","Tazerpistole",2000],
						["11Rnd_45ACP_Mag","Tazermunition",50],
						["srifle_DMR_06_olive_F",nil,57000],
						["20Rnd_762x51_Mag",nil,100],
						["srifle_DMR_03_F",nil,82000],
						["20Rnd_762x51_Mag",nil,100],
						["srifle_DMR_05_blk_F",nil,62000],
						["10Rnd_93x64_DMR_05_Mag",nil,100],
						["optic_MRD","Tazeroptic",nil,2000],
						["optic_Yorris",nil,1500],
						["optic_Holosight_smg",nil,1500],
						["optic_Aco",nil,1500],
						["optic_Holosight",nil,1500],
						["optic_MRCO",nil,1500],
						["optic_Hamr",nil,1500],
						["optic_SOS",nil,5500],
						["optic_Arco",nil,1100],
						["optic_ACO_grn",nil,1100],
						["optic_Aco_smg",nil,1100],
						["optic_ACO_grn_smg",nil,1100],
						["optic_DMS",nil,12000],
						["optic_AMS",nil,1200],
						["optic_KHS_blk",nil,1200],
						["optic_AMS_khk",nil,5000],
						["acc_flashlight",nil,1750],
						["acc_pointer_IR",nil,1500],
						["bipod_03_F_oli",nil,1000],
						["bipod_03_F_blk",nil,1000],
						["bipod_02_F_blk",nil,1000],
						["bipod_01_F_blk",nil,1000],
						["muzzle_snds_B",nil,1100],
						["muzzle_snds_93mmg",nil,1100],
						["muzzle_snds_acp","Tazeraufsatz",1000],
						["HandGrenade_Stone","Blendgranate",700],
						["SmokeShellBlue","Tränengas",2000],
						["1Rnd_Smoke_Grenade_shell",nil,1450],
						["1Rnd_SmokeRed_Grenade_shell",nil,1450],
						["1Rnd_SmokeGreen_Grenade_shell",nil,1450],
						["1Rnd_SmokeYellow_Grenade_shell",nil,1450],
						["1Rnd_SmokePurple_Grenade_shell",nil,1450],
						["1Rnd_SmokeOrange_Grenade_shell",nil,1450]
					]
				];
			};
		};
	};
	
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"Du bist weder Rot noch steht über deiner Rübe Sanitäter!"};
			default {
				["Sanitäter Allzweckladen",
					[
						["Binocular",nil,10000],
						["Rangefinder",nil,20000],
						["ItemGPS",nil,800],
						["ItemMap",nil,800],
						["ItemWatch",nil,800],
						["ItemCompass",nil,800],
						["tf_ex8550","Altis Mobile S6",100],
						["Medikit",nil,5000],
						["FirstAidKit",nil,500],
						["ToolKit",nil,5000],
						["NVGoggles_OPFOR",nil,5000],
						["Chemlight_red",nil,200],
						["Chemlight_yellow",nil,200],
						["Chemlight_green",nil,200],
						["Chemlight_blue",nil,200],
						["emt_uni1","Rettungssanitäter",600],
						["fire_uni1","Feuerwehr Kleidung",600],
						["Item_Medic","Rettungssanitäter Overall",600],
						["U_C_Scientist","Arztkittel",600],
						["B_Kitbag_cbr",nil,1500],
						["V_Rangemaster_belt",nil,1300],
						["tf_rt1523g_big_rhs",nil,1000]
					]
				];
			};
		};
	};
	
	case "adac":
	{
		switch(true) do
		{
			case (!license_civ_adac): {"Nur für ADAC-Mitglieder!"};
			case (license_civ_adac): 
			{
				["ADAC Allzweckladen",
					[	
						["Binocular",nil,10000],
						["ItemGPS",nil,800],
						["ItemMap",nil,820],
						["ItemWatch",nil,800],
						["ItemCompass",nil,800],
						["tf_ex8550","Altis Mobile S6",100],
						["FirstAidKit",nil,500],
						["ToolKit",nil,5000],
						["NVGoggles",nil,5000],
						["Chemlight_red",nil,10],
						["Chemlight_yellow",nil,10],
						["Chemlight_green",nil,10],
						["Chemlight_blue",nil,10]
					]
				];
			};
		};
	};
	
	case "aan":
	{
		switch(true) do
		{
			case (!license_civ_aan): {"Du bist kein Reporter!"};
			case (license_civ_aan):
			{
				["Allzweckladen",
					[	
						["Tv_Camera",nil,5000],
						["Binocular",nil,10000],
						["ItemGPS",nil,800],
						["ItemMap",nil,820],
						["ItemWatch",nil,800],
						["ItemCompass",nil,800],
						["tf_ex8550","Altis Mobile S6",100],
						["FirstAidKit",nil,500],
						["ToolKit",nil,5000],
						["NVGoggles",nil,5000],
						["Chemlight_red",nil,10],
						["Chemlight_yellow",nil,10],
						["Chemlight_green",nil,10],
						["Chemlight_blue",nil,10]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		switch(true) do
		{
			case (!license_civ_rebel):
			{
				["Allzweckladen",
					[	
						["Binocular",nil,10000],
						["ItemGPS",nil,800],
						["ItemMap",nil,820],
						["ItemWatch",nil,800],
						["ItemCompass",nil,800],
						["tf_ex8550","Altis Mobile S6",100],
						["FirstAidKit",nil,500],
						["ToolKit",nil,5000],
						["NVGoggles",nil,5000],
						["Chemlight_red",nil,10],
						["Chemlight_yellow",nil,10],
						["Chemlight_green",nil,10],
						["Chemlight_blue",nil,10]
					]
				];
			};
			case (license_civ_rebel): 
			{
				["Allzweckladen",
					[	
						["Rangefinder",nil,20000],
						["Binocular",nil,10000],
						["ItemGPS",nil,800],
						["ItemMap",nil,820],
						["ItemWatch",nil,800],
						["ItemCompass",nil,800],
						["tf_ex8550","Altis Mobile S6",100],
						["FirstAidKit",nil,500],
						["ToolKit",nil,5000],
						["NVGoggles",nil,5000],
						["NVGoggles_INDEP",nil,5500],
						["NVGoggles_OPFOR",nil,5500],
						["Chemlight_red",nil,10],
						["Chemlight_yellow",nil,10],
						["Chemlight_green",nil,10],
						["Chemlight_blue",nil,10]
					]
				];
			};
		};
	};
	
	case "gang":
	{
		["Mohammed's Premium Waffenkammer",
			[
						["BWA3_MG4",nil,1000000],
						["BWA3_200Rnd_556x45",nil,1000],
						["BWA3_MG5_Tan",nil,1500000],
						["BWA3_120Rnd_762x51",nil,1000],
						["BWA3_1200Rnd_762x51",nil,50000],
						["BWA3_G27",nil,400000],
						["BWA3_G27_AG",nil,420000],
						["BWA3_G28_Standard",nil,550000],
						["BWA3_G28_Assault",nil,570000],
						["BWA3_20Rnd_762x51_G28",nil,300],
						["BWA3_20Rnd_762x51_G28_Tracer",nil,350],
						["BWA3_20Rnd_762x51_G28_Tracer_Dim",nil,350],
						["BWA3_20Rnd_762x51_G28_SD",nil,350],
						["BWA3_20Rnd_762x51_G28_AP",nil,350],
						["BWA3_10Rnd_762x51_G28_LR",nil,350],
						["Trixie_FNFAL_Rail",nil,580000],
						["Trixie_FNFAL_Mag",nil,500],
						["Trixie_FNFAL_Mag_T",nil,550],
						["LMG_Zafir_F",nil,900000],
						["150Rnd_762x54_Box",nil,500],
						["150Rnd_762x54_Box_Tracer",nil,500],
						["LMG_Mk200_F",nil,900000],
						["200Rnd_65x39_cased_Box",nil,600],
						["200Rnd_65x39_cased_Box_Tracer",nil,650],
						["arifle_MX_SW_F",nil,260000],
						["arifle_MX_SW_Black_F",nil,260000],
						["100Rnd_65x39_caseless_mag",nil,350],
						["100Rnd_65x39_caseless_mag_Tracer",nil,350],
						["srifle_DMR_05_tan_f",nil,760000],
						["srifle_DMR_05_hex_F",nil,760000],
						["10Rnd_93x64_DMR_05_Mag",nil,100],
						["srifle_DMR_03_multicam_F",nil,590000],
						["srifle_DMR_03_khaki_F",nil,590000],
						["srifle_DMR_03_tan_F",nil,590000],
						["srifle_DMR_03_woodland_F",nil,590000],
						["20Rnd_762x51_Mag",nil,100],
						["srifle_DMR_06_camo_F",nil,180000],
						["20Rnd_762x51_Mag",nil,100],
						//["srifle_GM6_F",nil,785000],
						//["5Rnd_127x108_Mag",nil,5000],
						//["5Rnd_127x108_APDS_Mag",nil,5000],
						//["srifle_LRR_F",nil,815000],
						//["7Rnd_408_Mag",nil,500],
						["srifle_EBR_F",nil,700000],
						["20Rnd_762x51_Mag",nil,500],
						["arifle_Katiba_F",nil,120000],
						["arifle_Katiba_C_F",nil,120000],
						["arifle_Katiba_GL_F",nil,125000],
						["30Rnd_65x39_caseless_greens",nil,100],
						["30Rnd_65x39_caseless_green_mag_Tracer",nil,100],
						["arifle_MXC_F",nil,145000],
						["arifle_MXC_Black_F",nil,145000],
						["arifle_MX_F",nil,150000],
						["arifle_MX_Black_F",nil,150000],
						["arifle_MX_GL_F",nil,150000],
						["arifle_MX_GL_Black_F",nil,150000],
						["arifle_MXM_F",nil,160000],
						["arifle_MXM_Black_F",nil,160000],
						["30Rnd_65x39_caseless_mag",nil,100],
						["30Rnd_65x39_caseless_mag_Tracer",nil,100],
						["arifle_SDAR_F",nil,63000],
						["arifle_TRG21_F",nil,100000],
						["arifle_TRG20_F",nil,100000],
						["arifle_TRG21_GL_F",nil,100000],
						["arifle_Mk20_F",nil,140000],
						["arifle_Mk20_plain_F",nil,140000],
						["arifle_Mk20C_F",nil,145000],
						["arifle_Mk20C_plain_F",nil,145000],
						["arifle_Mk20_GL_F",nil,150000],
						["arifle_Mk20_GL_plain_F",nil,150000],
						["30Rnd_556x45_Stanag",nil,100],
						["30Rnd_556x45_Stanag_Tracer_Red",nil,100],
						["30Rnd_556x45_Stanag_Tracer_Green",nil,100],
						["30Rnd_556x45_Stanag_Tracer_Yellow",nil,100],
						["srifle_DMR_01_F",nil,650000],
						["10Rnd_762x54_Mag",nil,500],
						["SMG_01_F",nil,47000],
						["30Rnd_45ACP_Mag_SMG_01",nil,100],
						["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,100],
						["SMG_02_F",nil,55000],
						["hgun_PDW2000_F",nil,30000],
						["30Rnd_9x21_Mag",nil,100],
						["RH_tec9",nil,20000],
						["RH_32Rnd_9x19_tec",nil,100],
						["RH_muzi",nil,15000],
						["RH_30Rnd_9x19_UZI",nil,150],
						["BWA3_optic_Aimpoint",nil,3000],
						["BWA3_optic_20x50",nil,3800],
						["BWA3_optic_NSA80",nil,10000],
						["optic_Aco",nil,3000],
						["optic_ACO_grn",nil,2000],
						["optic_Aco_smg",nil,2000],
						["optic_ACO_grn_smg",nil,2000],
						["optic_Holosight_smg",nil,2000],
						["optic_Holosight",nil,2000],
						["optic_MRCO",nil,4000],
						["optic_Arco",nil,6500],
						["optic_Hamr",nil,5500],
						["optic_SOS",nil,20000],
						["optic_DMS",nil,20000],
						["optic_LRPS",nil,70000],
						["optic_AMS_khk",nil,70000],
						["optic_AMS_snd",nil,70000],
						["optic_KHS_old",nil,70000],
						["optic_KHS_tan",nil,70000],
						["optic_KHS_hex",nil,70000],
						["acc_flashlight",nil,750],
						["acc_pointer_IR",nil,1000],
						["bipod_02_F_tan",nil,1000],
						["bipod_02_F_hex",nil,1000],
						["bipod_01_F_mtp",nil,1000],
						["bipod_01_F_snd",nil,1000],
						["bipod_03_F_oli",nil,1000],
						["muzzle_snds_H",nil,2700],
						["muzzle_snds_H_MG",nil,2900],
						["HandGrenade",nil,380000],
						["1Rnd_Smoke_Grenade_shell",nil,1450],
						["1Rnd_SmokeRed_Grenade_shell",nil,1450],
						["1Rnd_SmokeGreen_Grenade_shell",nil,1450],
						["1Rnd_SmokeYellow_Grenade_shell",nil,1450],
						["1Rnd_SmokePurple_Grenade_shell",nil,1450],
						["1Rnd_SmokeOrange_Grenade_shell",nil,1450],
						["UGL_FlareWhite_F",nil,300],
						["UGL_FlareGreen_F",nil,300],
						["UGL_FlareRed_F",nil,300],
						["UGL_FlareYellow_F",nil,300],
						["UGL_FlareCIR_F",nil,300],
						["hlc_rifle_ak47",nil,200000],
						["hlc_30Rnd_762x39_b_ak",nil,200],
						["hlc_30Rnd_762x39_t_ak",nil,200],
						["hlc_45Rnd_762x39_m_rpk",nil,200],
						["hlc_45Rnd_762x39_t_rpk",nil,200],
						["hlc_30rnd_762x39_s_ak",nil,200],
						["hlc_rifle_rpk",nil,200000],
						["hlc_75Rnd_762x39_m_rpk",nil,200],
						["hlc_45Rnd_762x39_m_rpk",nil,200],
						["hlc_45Rnd_762x39_t_rpk",nil,200],
						["hlc_30Rnd_762x39_b_ak",nil,200],
						["hlc_30Rnd_762x39_t_ak",nil,200],
						["hlc_30rnd_762x39_s_ak",nil,200],
						["hlc_rifle_ak74",nil,200000],
						["hlc_rifle_aks74",nil,200000],
						["hlc_rifle_aks74u",nil,200000],
						["hlc_rifle_aks74_GL",nil,200000],
						["hlc_rifle_aek971",nil,200000],
						["hlc_rifle_ak12",nil,200000],
						["hlc_rifle_ak12GL",nil,200000],
						["hlc_rifle_aku12",nil,200000],
						["hlc_30Rnd_545x39_B_AK",nil,200],
						["hlc_30Rnd_545x39_S_AK",nil,200],
						["hlc_45Rnd_545x39_t_rpk",nil,200],
						["hlc_30Rnd_545x39_t_ak",nil,200],
						["hlc_30Rnd_545x39_EP_ak",nil,200],
						["hlc_rifle_akm",nil,250000],
						["hlc_rifle_akmgl",nil,250000],
						["hlc_30Rnd_762x39_b_ak",nil,200],
						["hlc_30Rnd_762x39_t_ak",nil,200],
						["hlc_45Rnd_762x39_m_rpk",nil,200],
						["hlc_45Rnd_762x39_t_rpk",nil,200],
						["hlc_30rnd_762x39_s_ak",nil,200],
						["hlc_rifle_saiga12k",nil,250000],
						["hlc_10rnd_12g_buck_S12",nil,300],
						["hlc_10rnd_12g_slug_S12",nil,300],
						["HLC_Optic_PSO1",nil,30000],
						["HLC_Optic_1p29",nil,32000],
						["hlc_muzzle_545SUP_AK",nil,6300],
						["hlc_muzzle_762SUP_AK",nil,6300],
						["hlc_optic_kobra",nil,5200],
						["hlc_GRD_White",nil,400],
						["hlc_GRD_red",nil,400],
						["hlc_GRD_green",nil,400],
						["hlc_GRD_blue",nil,400],
						["hlc_GRD_orange",nil,400],
						["hlc_GRD_purple",nil,400]
			]
		];
	};
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Hier kommen nur Zivilisten an die Kasse!"};
			case (!license_civ_rebel): {"Ohne Lizenz kommst du hier nicht rein!"};
			case (license_civ_rebel):
			{
				["Koala's Waffenhandel",
					[	
						["BWA3_G36",nil,280000],
						["BWA3_30Rnd_556x45_G36_Tracer_Dim",nil,5000],					
						["BWA3_G28_Standard",nil,800000],		
						["BWA3_10Rnd_762x51_G28_LR",nil,90000],
						["BWA3_MG4",nil,1200000],						
						["BWA3_200Rnd_556x45",nil,400],							
						["BWA3_optic_ZO4x30",nil,80000],
						["BWA3_optic_20x50",nil,80000],
						["rhs_weap_rshg2",nil,2800000],
						["rhs_rshg2_mag",nil,500000],						
						["rhs_weap_ak103",nil,200000],		
						["rhs_weap_ak103_npz",nil,250000],
						["rhs_acc_pbs1",nil,5000],						
						["rhs_30Rnd_762x39mm",nil,400],							
						["rhs_weap_ak74m",nil,200000],	
						["rhs_weap_ak74m_2mag",nil,200000],							
						["rhs_weap_ak74m_npz",nil,200000],	
						["rhs_weap_ak74m_2mag_npz",nil,200000],	
						["rhs_weap_ak74m_folded",nil,200000],
						["rhs_30Rnd_545x39_AK",nil,200],	
						["rhs_weap_akm",nil,200000],	
						["rhs_weap_akms",nil,200000],
						["rhs_30Rnd_762x39mm",nil,200],	
						["rhs_acc_tgpa",nil,5000],						
						["rhs_weap_svdp",nil,350000],	
						["rhs_weap_svdp_npz",nil,380000],
						["rhs_weap_svds",nil,350000],	
						["rhs_weap_svds_npz",nil,380000],
						["rhs_acc_tgpv",nil,5000],						
						["rhs_10Rnd_762x54mmR_7N1",nil,2000],
						["rhs_acc_1p29",nil,5000],
						["rhs_acc_1p63",nil,5000],
						["rhs_acc_1p78",nil,5000],	
						["rhs_acc_ekp1",nil,5000],
						["rhs_acc_pgo7v",nil,5000],
						["rhs_acc_pkas",nil,5000],	
						["rhs_acc_pso1m2",nil,5000],	
						["arifle_Mk20_plain_F",nil,150000],
						["arifle_Mk20_F",nil,150000],
						["arifle_Mk20C_plain_F",nil,150000],	
						["arifle_Mk20C_F",nil,150000],
						["muzzle_snds_M",nil,1000],						
						["srifle_EBR_F",nil,750000],
						["20Rnd_762x51_Mag",nil,800],
						["muzzle_snds_B",nil,1000],						
						["arifle_MXC_Black_F",nil,170000],
						["arifle_MX_Black_F",nil,170000],	
						["arifle_MXM_Black_F",nil,190000],
						["30Rnd_65x39_caseless_mag",nil,500],	
						["arifle_MX_SW_Black_F",nil,300000],	
						["100Rnd_65x39_caseless_mag",nil,500],	
						["muzzle_snds_H",nil,1000],						
						["arifle_Katiba_C_F",nil,150000],	
						["arifle_Katiba_F",nil,150000],	
						["30Rnd_65x39_caseless_green",nil,500],	
						["srifle_DMR_01_F",nil,700000],	
						["10Rnd_762x54_Mag",nil,800],
						["arifle_TRG20_F",nil,120000],	
						["arifle_TRG21_F",nil,120000],	
						["30Rnd_556x45_Stanag",nil,500],	
						["muzzle_snds_M",nil,1000],						
						["srifle_DMR_06_olive_F",nil,210000],	
						["20Rnd_762x51_Mag",nil,500],	
						["LMG_Mk200_F",nil,950000],	
						["200Rnd_65x39_cased_Box",nil,500],
						["muzzle_snds_H_MG",nil,1000],							
						["srifle_DMR_05_blk_F",nil,800000],	
						["10Rnd_93x64_DMR_05_Mag",nil,500],		
						["srifle_DMR_02_F",nil,620000],	
						["10Rnd_338_Mag",nil,500],
						["srifle_DMR_03_F",nil,620000],	
						["20Rnd_762x51_Mag",nil,500],	
						["optic_ACO_grn",nil,1000],	
						["optic_Aco",nil,1000],	
						["optic_AMS",nil,1000],	
						["optic_Arco",nil,1000],	
						["optic_DMS",nil,1000],	
						["optic_Holosight",nil,1000],	
						["optic_KHS_blk",nil,1000],		
						["optic_MRCO",nil,1000],	
						["optic_Hamr",nil,1000],	
						["optic_SOS",nil,1000],	
						["acc_pointer_IR",nil,1000],	
						["acc_flashlight",nil,1000],	
						["bipod_03_F_oli",nil,1000],	
						["bipod_01_F_snd",nil,1000],	
						["bipod_03_F_blk",nil,1000],	
						["bipod_02_F_blk",nil,1000],	
						["bipod_01_F_blk",nil,1000],
						["BWA3_optic_NSV600",nil,1000]
						
					]
				];
			};
		};
	};
	
	case "rebel_ak":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Hier kommen nur Zivilisten an die Kasse!"};
			case (!license_civ_rebel): {"Ohne Lizenz kommst du hier nicht rein!"};
			case (license_civ_rebel):
			{
				["Sumsi's Kalaschnikows",
					[
						["hlc_rifle_ak47",nil,220000],
						["hlc_30Rnd_762x39_b_ak",nil,200],
						["hlc_30Rnd_762x39_t_ak",nil,200],
						["hlc_45Rnd_762x39_m_rpk",nil,200],
						["hlc_45Rnd_762x39_t_rpk",nil,200],
						["hlc_30rnd_762x39_s_ak",nil,200],
						["hlc_rifle_rpk",nil,220000],
						["hlc_75Rnd_762x39_m_rpk",nil,200],
						["hlc_45Rnd_762x39_m_rpk",nil,200],
						["hlc_45Rnd_762x39_t_rpk",nil,200],
						["hlc_30Rnd_762x39_b_ak",nil,200],
						["hlc_30Rnd_762x39_t_ak",nil,200],
						["hlc_30rnd_762x39_s_ak",nil,200],
						["hlc_rifle_ak74",nil,220000],
						["hlc_rifle_aks74",nil,220000],
						["hlc_rifle_aks74u",nil,220000],
						["hlc_rifle_aks74_GL",nil,220000],
						["hlc_rifle_aek971",nil,220000],
						["hlc_rifle_ak12",nil,220000],
						["hlc_rifle_ak12GL",nil,220000],
						["hlc_rifle_aku12",nil,220000],
						["hlc_30Rnd_545x39_B_AK",nil,200],
						["hlc_30Rnd_545x39_S_AK",nil,200],
						["hlc_45Rnd_545x39_t_rpk",nil,200],
						["hlc_30Rnd_545x39_t_ak",nil,200],
						["hlc_30Rnd_545x39_EP_ak",nil,200],
						["hlc_rifle_akm",nil,270000],
						["hlc_rifle_akmgl",nil,270000],
						["hlc_30Rnd_762x39_b_ak",nil,200],
						["hlc_30Rnd_762x39_t_ak",nil,200],
						["hlc_45Rnd_762x39_m_rpk",nil,200],
						["hlc_45Rnd_762x39_t_rpk",nil,200],
						["hlc_30rnd_762x39_s_ak",nil,200],
						["hlc_rifle_saiga12k",nil,126000],
						["hlc_10rnd_12g_buck_S12",nil,300],
						["hlc_10rnd_12g_slug_S12",nil,300],
						["HLC_Optic_PSO1",nil,3000],
						["HLC_Optic_1p29",nil,3200],
						["hlc_muzzle_545SUP_AK",nil,6300],
						["hlc_muzzle_762SUP_AK",nil,6300],
						["hlc_optic_kobra",nil,5200],
						["hlc_GRD_White",nil,400],
						["hlc_GRD_red",nil,400],
						["hlc_GRD_green",nil,400],
						["hlc_GRD_blue",nil,400],
						["hlc_GRD_orange",nil,400],
						["hlc_GRD_purple",nil,400]
					]
				];
			};
		};
	};
	
	case "donator":
		{
		switch(true) do
		{
			case (__GETC__(life_donator) == 0): {"Du bist kein Donator :( "};
			case (__GETC__(life_donator) == 1):
			{
				["STS ViP Shop Tier 1",
					[
						["hgun_Rook40_F",nil,6500],
						["hgun_PDW2000_F",nil,15000]
					]
				];
			};

			case (__GETC__(life_donator) == 2):
			{
				["STS ViP Shop Tier 2",
					[
						["hgun_Rook40_F",nil,4500],
						["hgun_PDW2000_F",nil,10000]
					]
				];
			};

			case (__GETC__(life_donator) >= 3):
			{
				["STS ViP Shop Tier 3",
					[
						["hgun_Rook40_F",nil,2500],
						["hgun_PDW2000_F",nil,5000]
					]
				];
			};
		};
	};

	
		case "uranium":
    {
        switch(true) do
        {
            case (playerSide != civilian): {"Du bist kein Zivilist"};
            case (!license_civ_uranium): {"Du benötigst eine Uran-Lizenz"};
            default
            {
                ["Uran Verkäufer",
                    [
             
                        ["U_C_Scientist","Anti-Strahlungs Anzug",100000]
                    ]
                ];
            };
        };
    };
	
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Also du siehst jetzt nicht wirklich wie ein Zivilist aus!"};
			case (!license_civ_gun): {"Also den Waffenschein würde ich dann doch nochmal gerne sehen!"};
			case (license_civ_gun):
			{
				["Billy Joe's Premium Bleispucker",
					[
						["RH_mk2",nil,15000],
                        ["RH_10Rnd_22LR_mk2",nil,500],
						["RH_deagle",nil,25000], 	
						["RH_deagleg",nil,50000],	
						["RH_deagles",nil,25000],		
						["RH_deaglem",nil,25000],		
						["RH_7Rnd_50_AE",nil,500],	
						["RH_m1911",nil,5000],
						["RH_kimber",nil,5200],
						["RH_kimber_nw",nil,5300],
						["RH_7Rnd_45cal_m1911",nil,200],
						["RH_cz75",nil,15000],	
						["RH_16Rnd_9x19_cz",nil,500], 		
						["RH_sw659",nil,17500],				
						["RH_14Rnd_9x19_sw",nil,500],		
						["RH_usp",nil,16500],			
						["RH_12Rnd_45cal_usp",nil,500],		
						["RH_mak",nil,10000],				
						["RH_8Rnd_9x18_Mak",nil,500],	
						["RH_uspm",nil,18500],				
						["RH_16Rnd_40cal_usp",nil,500],		
						["RH_m9",nil,19000],			
						["RH_15Rnd_9x19_M9",nil,500],
						["RH_g18",nil,35000],
                        ["RH_33Rnd_9x19_g18",nil,500],
						["RH_m9c",nil,15500],				
						["RH_tt33",nil,15500],				
						["RH_8Rnd_762_tt33",nil,50],         
						["RH_mk2",nil,11500],				
						["RH_10Rnd_22LR_mk2",nil,500],         
						["RH_p226",nil,18000],				
						["RH_15Rnd_9x19_SIG",nil,500],      
						["RH_p226s",nil,15500],				
						["RH_mateba",nil,50000],            
						["RH_6Rnd_44_Mag",nil,500],        
						["RH_python",nil,19000],           
						["RH_6Rnd_357_Mag",nil,500],           
						["RH_mp412",nil,17500],            
						["RH_bull",nil,50000],				
						["RH_6Rnd_454_Mag",nil,500],
						["RH_g17",nil,500],
                        ["RH_g19",nil,500],
                        ["RH_g19t",nil,550],
						["RH_17Rnd_9x19_g17",nil,50],
						["RH_X300",nil,150],
                        ["RH_usp",nil,650],
                        ["RH_12Rnd_45cal_usp",nil,75],
						["RH_X300",nil,150],
						["RH_bullb",nil,50000],            
						["RH_ttracker",nil,50000],   
						["RH_ttracker_g",nil,50000], 
						["RH_6Rnd_45ACP_Mag",nil,500], 
						["RH_vz61",nil,3500], 
						["RH_20Rnd_32cal_vz61",nil,100], 
						["RH_vp70",nil,6200], 
						["RH_18Rnd_9x19_VP",nil,100], 
						["RH_fnp45",nil,19500],           
						["RH_15Rnd_45cal_fnp",nil,500],    
						["RH_fnp45t",nil,18500],           
						["RH_fn57",nil,16500], 				
						["RH_20Rnd_57x28_FN",nil,500],     
						["RH_fn57_g",nil,21000],          
						["RH_fn57_t",nil,21000],           	
						["RH_gsh18",nil,18000],             
						["RH_18Rnd_9x19_gsh",nil,500],	
						["Trixie_CZ550_Rail",nil,79000],
						["Trixie_CZ550_Mag",nil,600],
						["Trixie_Enfield_Rail",nil,83000],
						["Trixie_Enfield_Mag",nil,400],
						["hgun_P07_F",nil,5000],
						["hgun_Rook40_F",nil,5000],
						["30Rnd_9x21_Mag",nil,100],
						["16Rnd_9x21_Mag",nil,50],
						["hgun_ACPC2_F",nil,5000],
						["9Rnd_45ACP_Mag",nil,50],
						["hgun_Pistol_heavy_02_F",nil,15000],
						["6Rnd_45ACP_Cylinder",nil,50],
						["hgun_Pistol_Signal_F",nil,15000],
						["6Rnd_GreenSignal_F",nil,50],
						["6Rnd_RedSignal_F",nil,50],
						["optic_Yorris",nil,2000],
						["optic_Holosight_smg",nil,2000],
						["optic_SOS",nil,9000],
						["optic_DMS",nil,10000],
						["optic_MRCO",nil,10000],
						["muzzle_snds_L",nil,5000],
						["muzzle_snds_acp",nil,5000],
						["RH_gemtech9",nil,6000],
						["RH_m9qd",nil,6000]
					]
				];
			};
		};
	};
};
