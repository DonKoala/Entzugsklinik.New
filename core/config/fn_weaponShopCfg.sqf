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
						["muzzle_snds_acp","Tazeraufsatz",1000],
						["rhs_weap_M590_8RD",nil,1000], 
						["rhsusf_8Rnd_00Buck",nil,300],
						["rhs_weap_m16a4_carryhandle_grip_pmag",nil,3000],
						["30Rnd_556x45_Stanag",nil,300],
						["rhsusf_acc_anpeq15",nil,300],
						["rhsusf_acc_anpeq15_light",nil,300],							
						["rhsusf_acc_compm4",nil,300],
						["rhsusf_acc_eotech_552",nil,300],
						["rhsusf_acc_ACOG",nil,300]
						["arifle_mas_hk416",nil,30000],
						["arifle_mas_hk416c",nil,30000],
						["30Rnd_mas_556x45_Stanag",nil,300],
						["optic_mas_acog_eo",nil,300],	
						["acc_mas_pointer_IR_b",nil,300]							
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
						["muzzle_snds_acp","Tazeraufsatz",1000],
						["rhs_weap_M590_8RD",nil,1000], 
						["rhsusf_8Rnd_00Buck",nil,300],
						["rhs_weap_m16a4_carryhandle_grip_pmag",nil,3000],
						["30Rnd_556x45_Stanag",nil,300],
						["rhsusf_acc_anpeq15",nil,300],
						["rhsusf_acc_anpeq15_light",nil,300],							
						["rhsusf_acc_compm4",nil,300],
						["rhsusf_acc_eotech_552",nil,300],
						["rhsusf_acc_ACOG",nil,300],
						["arifle_mas_hk416",nil,30000],
						["arifle_mas_hk416c",nil,30000],
						["30Rnd_mas_556x45_Stanag",nil,300],
						["optic_mas_acog_eo",nil,300],	
						["acc_mas_pointer_IR_b",nil,300]	
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
						["muzzle_snds_acp","Tazeraufsatz",1000],
						["rhs_weap_M590_8RD",nil,1000], 
						["rhsusf_8Rnd_00Buck",nil,300],
						["rhs_weap_m16a4_carryhandle_grip_pmag",nil,3000],
						["30Rnd_556x45_Stanag",nil,300],
						["rhs_weap_sr25_ec",nil,30000],
						["rhsusf_20Rnd_762x51_m118_special_Mag",nil,5000]	
						["rhsusf_acc_anpeq15",nil,300],
						["rhsusf_acc_anpeq15_light",nil,300],						
						["rhsusf_acc_harris_bipod",nil,300],						
						["rhsusf_acc_compm4",nil,300],
						["rhsusf_acc_eotech_552",nil,300],
						["rhsusf_acc_ACOG",nil,300],
						["rhsusf_acc_LEUPOLDMK4",nil,300],
						["rhsusf_acc_LEUPOLDMK4_2",nil,300],						
						["arifle_mas_hk416",nil,30000],
						["arifle_mas_hk416c",nil,30000],
						["30Rnd_mas_556x45_Stanag",nil,300],
						["srifle_mas_hk417",nil,30000],
						["arifle_mas_hk417c",nil,30000],
						["20Rnd_mas_762x51_Stanag",nil,300],
						["optic_mas_zeiss_eo",nil,300],
						["optic_mas_acog_eo",nil,300],	
						["acc_mas_pointer_IR_b",nil,300]	
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
						["muzzle_snds_acp","Tazeraufsatz",1000],									
						["rhs_weap_m16a4_carryhandle_grip_pmag",nil,30000],
						["rhs_weap_m4a1_carryhandle_grip",nil,30000],
					    ["30Rnd_556x45_Stanag",nil,300],						
						["rhs_weap_M590_8RD",nil,30000],
						["rhsusf_8Rnd_00Buck",nil,300],						
					    ["rhs_weap_sr25_ec",nil,30000],					   
						["rhsusf_20Rnd_762x51_m118_special_Mag",nil,300],	
						["rhsusf_acc_anpeq15",nil,300],
						["rhsusf_acc_anpeq15_light",nil,300],						
						["rhsusf_acc_harris_bipod",nil,300],	
						["rhsusf_acc_compm4",nil,300],
						["rhsusf_acc_eotech_552",nil,300],
						["rhsusf_acc_ACOG",nil,300],
						["rhsusf_acc_LEUPOLDMK4",nil,300],
						["rhsusf_acc_LEUPOLDMK4_2",nil,300],
						["arifle_mas_hk416",nil,30000],
						["arifle_mas_hk416c",nil,30000],
						["30Rnd_mas_556x45_Stanag",nil,300],
						["srifle_mas_hk417",nil,30000],
						["arifle_mas_hk417c",nil,30000],
						["20Rnd_mas_762x51_Stanag",nil,300],
						["optic_mas_zeiss_eo",nil,300],
						["optic_mas_acog_eo",nil,300],	
						["acc_mas_pointer_IR_b",nil,300]	
						["BWA3_G27",nil,30000],
						["BWA3_G28_Assault",nil,30000],							
						["BWA3_20Rnd_762x51_G28",nil,300],
						["BWA3_G28_Standard",nil,30000],
						["BWA3_10Rnd_762x51_G28",nil,300],	
						["BWA3_10Rnd_762x51_G28_LR",nil,300],		
						["BWA3_optic_Aimpoint",nil,300],
						["BWA3_optic_Shortdot",nil,300],
						["BWA3_optic_20x50",nil,300],
						["BWA3_optic_RSAS",nil,300],
						["BWA3_optic_ZO4x30",nil,300],
						["BWA3_optic_NSV600",nil,300],					
						["BWA3_acc_LLM01_flash",nil,300]						
		
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
						["HandGrenade_Stone","Blendgranate",700],
						["SmokeShellBlue","Tränengas",200],
						["hgun_Pistol_heavy_01_F","Tazerpistole",2000],
						["11Rnd_45ACP_Mag","Tazermunition",50],
						["optic_MRD","Tazeroptic",nil,2000],
						["muzzle_snds_acp","Tazeraufsatz",1000],									
						["rhs_weap_m16a4_carryhandle_grip_pmag",nil,30000],
						["rhs_weap_m4a1_carryhandle_grip",nil,30000],
					    ["30Rnd_556x45_Stanag",nil,300],						
						["rhs_weap_M590_8RD",nil,30000],
						["rhsusf_8Rnd_00Buck",nil,300],						
					    ["rhs_weap_sr25_ec",nil,30000],					   
						["rhsusf_20Rnd_762x51_m118_special_Mag",nil,300],	
						["rhsusf_acc_anpeq15",nil,300],
						["rhsusf_acc_anpeq15_light",nil,300],						
						["rhsusf_acc_harris_bipod",nil,300],	
						["rhsusf_acc_compm4",nil,300],
						["rhsusf_acc_eotech_552",nil,300],
						["rhsusf_acc_ACOG",nil,300],
						["rhsusf_acc_LEUPOLDMK4",nil,300],
						["rhsusf_acc_LEUPOLDMK4_2",nil,300],
						["arifle_mas_hk416",nil,30000],
						["arifle_mas_hk416c",nil,30000],
						["30Rnd_mas_556x45_Stanag",nil,300],
						["srifle_mas_hk417",nil,30000],
						["arifle_mas_hk417c",nil,30000],
						["20Rnd_mas_762x51_Stanag",nil,300],
						["optic_mas_zeiss_eo",nil,300],
						["optic_mas_acog_eo",nil,300],	
						["acc_mas_pointer_IR_b",nil,300]	
						["BWA3_G27",nil,30000],
						["BWA3_G28_Assault",nil,30000],							
						["BWA3_20Rnd_762x51_G28",nil,300],
						["BWA3_G28_Standard",nil,30000],
						["BWA3_10Rnd_762x51_G28",nil,300],	
						["BWA3_10Rnd_762x51_G28_LR",nil,300],		
						["BWA3_optic_Aimpoint",nil,300],
						["BWA3_optic_Shortdot",nil,300],
						["BWA3_optic_20x50",nil,300],
						["BWA3_optic_RSAS",nil,300],
						["BWA3_optic_ZO4x30",nil,300],
						["BWA3_optic_NSV600",nil,300],					
						["BWA3_acc_LLM01_flash",nil,300]
					]
				];
			};
			
			
			
		};
	};
	
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"Du bist weder Rot noch steht über deiner Rübe Sanitäter oder ADAC!"};
			default {
				["Sanitäter Allzweckladen",
					[
						["Binocular",nil,100],
						["Rangefinder",nil,200],
						["ItemGPS",nil,800],
						["ItemMap",nil,800],
						["ItemWatch",nil,800],
						["ItemCompass",nil,800],
						["tf_ex8550","Altis Mobile S6",100],
						["Medikit",nil,100],
						["FirstAidKit",nil,50],
						["ToolKit",nil,2000],
						["NVGoggles_OPFOR",nil,500],
						["Chemlight_red",nil,200],
						["Chemlight_yellow",nil,200],
						["Chemlight_green",nil,200],
						["Chemlight_blue",nil,200],
						["emt_uni1","Rettungssanitäter",600],
						["fire_uni1","Feuerwehr Kleidung",600],
						["Item_Medic","Rettungssanitäter Overall",600],
						["emsoff_uni",nil,600],
						["EMTRM_uni",nil,600],
						["A3L_Worker_Outfit","ADAC Overall",600],
						["U_C_Scientist","Strahlenanzug",600],
						["B_Kitbag_cbr",nil,100],
						["V_Rangemaster_belt",nil,100],
						["tf_rt1523g_big_rhs",nil,100],
						["GER_Beret_Sanitaeter",nil,100],
						["GER_Beret_Panzer",nil,100],
						["GER_Beret_Jaeger",nil,100],
						["GER_Beret_Pionier",nil,100],
						["GER_Beret_Artillerist",nil,100],
						["GER_Beret_Panzergrenadier",nil,100],
						["GER_Beret_Heeresflieger",nil,100],
						["GER_Beret_Fallschirmjaeger",nil,100],
						["GER_Beret_Wach",nil,100],
						["GER_Beret_Aufklaerer",nil,100],
						["A3L_russianhat",nil,100],
						["Kio_Santa_Hat",nil,100],
						["A3L_longhairbrown",nil,100],
						["A3L_longhairblond",nil,100],
						["A3L_longhairblack",nil,100]
																																		
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
		["Gang Waffenkammer",
			[
						[""arifle_MX_SW_Black_F";",nil,650000],
						[""100Rnd_65x39_caseless_mag";",nil,7000],
						[""arifle_MXM_Black_F";",nil,600000],						
						[""arifle_MX_Black_F";",nil,550000],
						[""arifle_MXC_Black_F";",nil,500000],
						[""30Rnd_65x39_caseless_mag";",nil,5500]						
						[""arifle_Katiba_F";",nil,550000],
						[""arifle_Katiba_C_F";",nil,500000],
						[""30Rnd_65x39_caseless_green";",nil,5000],		
						[""muzzle_snds_H";",nil,10000],							
						[""arifle_Mk20_plain_F";",nil,550000],
						[""arifle_Mk20C_plain_F";",nil,500000],		
						[""arifle_TRG21_F";",nil,550000],
						[""arifle_TRG20_F";",nil,500000],
						[""30Rnd_556x45_Stanag";",nil,5000],	
                        [""muzzle_snds_M";",nil,10000],							
						[""srifle_DMR_05_blk_F";",nil,900000],
						[""10Rnd_93x64_DMR_05_Mag";",nil,9000],		
						[""muzzle_snds_93mmg";",nil,10000],						
						[""srifle_DMR_02_F";",nil,1000000],
						[""10Rnd_338_Mag";",nil,10000],
						[""muzzle_snds_338_black";",nil,10000],						
						[""srifle_DMR_03_F";",nil,750000],						
						[""srifle_DMR_06_olive_F";",nil,750000],										
						[""srifle_EBR_F";",nil,750000],
						[""20Rnd_762x51_Mag";",nil,5000],											
						[""srifle_DMR_01_F";",nil,800000],
						[""10Rnd_762x54_Mag";",nil,5000],	
						[""muzzle_snds_B";",nil,10000],												
						[""optic_ACO_grn";",nil,10000],
						[""optic_Aco";",nil,10000],
						[""optic_ACO_grn_smg";",nil,10000],
						[""optic_Aco_smg";",nil,10000],
						[""optic_AMS";",nil,10000],
						[""optic_Arco";",nil,10000],
						[""optic_DMS";",nil,10000],
						[""optic_Holosight";",nil,10000],
						[""optic_KHS_blk";",nil,10000],
						[""optic_Holosight_smg";",nil,10000],
						[""optic_MRCO";",nil,10000],
						[""optic_Hamr";",nil,10000],
						[""optic_SOS";",nil,10000],	
						[""acc_pointer_IR";",nil,10000],
						[""acc_flashlight";",nil,10000],
						[""bipod_01_F_blk";",nil,10000],
						[""bipod_02_F_blk";",nil,10000],
						[""bipod_03_F_blk";",nil,10000],	
						[""hgun_Pistol_heavy_01_F";",nil,20000],
						[""optic_MRD";",nil,1000],
						[""muzzle_snds_acp";",nil,1000],	
						[""11Rnd_45ACP_Mag";",nil,500],
						[""hgun_ACPC2_F";",nil,20000],
						[""muzzle_snds_acp";",nil,1000],	
						[""9Rnd_45ACP_Mag";",nil,500],
						[""hgun_P07_F";",nil,20000],
						[""muzzle_snds_L";",nil,1000],	
						[""16Rnd_9x21_Mag";",nil,500],						
						[""hgun_Rook40_F";",nil,20000],
						[""muzzle_snds_L";",nil,1000],	
						[""16Rnd_9x21_Mag";",nil,500],						
						[""hgun_Pistol_heavy_02_F";",nil,20000],
						[""optic_Yorris";",nil,1000],		
						[""6Rnd_45ACP_Cylinder";",nil,500]					
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
				["Rebellen Waffenkammer",
					[	
						["Trixie_XM8_Carbine",nil,250000],
						["Trixie_XM8_Carbine_HG",nil,300000],	
						["Trixie_XM8_Compact",nil,200000],	
						["Trixie_XM8_DMR_NB",nil,3300000],	
						["Trixie_XM8_DMR",nil,350000],	
                		["Trixie_XM8_30Rnd",nil,2000],						
						["Trixie_XM8_SAW_NB",nil,380000],	
						["Trixie_XM8_SAW",nil,40000],	
                		["Trixie_XM8_100Rnd",nil,4000],						
						["Trixie_xm8dot",nil,8000],
                		["Trixie_XM8ACOG",nil,8000],	
                		["muzzle_snds_M",nil,8000],	
						["hlc_rifle_falosw",nil,500000],	
                		["hlc_20Rnd_762x51_B_fal",nil,5000],						
						["hlc_muzzle_snds_fal",nil,10000],		
						["hlc_rifle_g3a3ris",nil,500000],								
						["hlc_rifle_g3ka4",nil,500000],	
                		["hlc_20rnd_762x51_b_G3",nil,5000],						
						["hlc_muzzle_snds_g3",nil,10000],			
						["hlc_smg_mp5a2",nil,150000],								
						["hlc_smg_mp5a3",nil,150000],							
						["hlc_muzzle_Agendasix",nil,1000],	
						["hlc_smg_mp5k_PDW",nil,120000],						
						["hlc_muzzle_Tundra",nil,1200],
						["hlc_smg_mp5sd5",nil,180000],								
						["hlc_smg_mp5sd6",nil,180000],	
                		["hlc_30Rnd_9x19_B_MP5",nil,1500],	
						["hlc_rifle_psg1",nil,900000],	
                		["hlc_20rnd_762x51_b_G3",nil,9000]	
						["hlc_rifle_ak12",nil,320000],									
						["hlc_rifle_aku12",nil,320000],									
						["hlc_30Rnd_545x39_B_AK",nil,5000],
						["hlc_rifle_RPK12",nil,560000],									
						["hlc_45Rnd_545x39_t_rpk",nil,5000],	
						["hlc_muzzle_545SUP_AK",nil,220000],							
						["hlc_rifle_M4",nil,320000],									
						["hlc_30rnd_556x45_EPR",nil,5000],
						["hlc_rifle_CQBR",nil,300000],									
						["hlc_30rnd_556x45_EPR",nil,5000],	
						["hlc_muzzle_556NATO_KAC",nil,5000],							
						["hlc_rifle_auga1_b",nil,360000],									
						["hlc_rifle_auga2_b",nil,380000],										
						["hlc_rifle_auga3_b",nil,400000],									
						["hlc_30Rnd_556x45_B_AUG",nil,6000],							
						["hlc_muzzle_snds_AUG",nil,10000],		
						["hlc_rifle_ak47",nil,280000],
						["hlc_rifle_akm",nil,280000],						
						["hlc_30Rnd_762x39_b_ak",nil,2800],
						["hlc_rifle_rpk",nil,560000],						
						["hlc_45Rnd_762x39_m_rpk",nil,5600],
						["hlc_75Rnd_762x39_m_rpk",nil,8400],
						["hlc_muzzle_762SUP_AK",nil,10000],
						["hlc_rifle_aek971",nil,320000],
						["hlc_rifle_ak74",nil,320000],
						["hlc_rifle_aks74",nil,300000],	
						["hlc_rifle_aks74u",nil,280000],									
						["hlc_30Rnd_545x39_B_AK",nil,5000],
						["hlc_rifle_rpk74n",nil,560000],									
						["hlc_45Rnd_545x39_t_rpk",nil,5600],						
						["hlc_muzzle_545SUP_AK",nil,10000],	
						["hlc_rifle_saiga12k",nil,560000],									
						["hlc_10rnd_12g_slug_S12",nil,5600],							
						["hlc_optic_kobra",nil,10000],
						["HLC_Optic_PSO1",nil,10000],
						["hlc_rifle_bcmjack",nil,320000],							
						["hlc_rifle_RU556",nil,320000],
						["hlc_muzzle_556NATO_KAC",nil,10000],							
						["hlc_30rnd_556x45_EPR",nil,5000],	
						["hlc_rifle_m14dmr",nil,320000],
						["hlc_optic_LRT_m14",nil,10000],	
						["hlc_muzzle_snds_M14",nil,10000],							
						["hlc_20Rnd_762x51_B_M14",nil,5000],							
						["BWA3_G27",nil,600000],
						["BWA3_G28_Assault",nil,700000],							
						["BWA3_20Rnd_762x51_G28",nil,6500],
						["BWA3_G28_Standard",nil,800000],
						["BWA3_10Rnd_762x51_G28",nil,8000],	
						["BWA3_10Rnd_762x51_G28_LR",nil,10000],		
						["BWA3_optic_Aimpoint",nil,10000],
						["BWA3_optic_Shortdot",nil,10000],
						["BWA3_optic_20x50",nil,10000],
						["BWA3_optic_RSAS",nil,10000],
						["BWA3_optic_ZO4x30",nil,10000],
						["BWA3_optic_NSV600",nil,10000],					
						["BWA3_acc_LLM01_flash",nil,10000],
						["BWA3_muzzle_snds_G28",nil,10000],	
						["BWA3_G36K",nil,360000],
						["BWA3_G36",nil,400000],							
						["BWA3_30Rnd_556x45_G36",nil,5000],
						["BWA3_G36_LMG",nil,560000],
						["BWA3_100Rnd_556x45_G36",nil,10000],
						["hlc_smg_mp5k",nil,90000],
						["optic_Aco_smg",nil,5000],						
						["hlc_muzzle_Tundra",nil,5000],												
						["hlc_30Rnd_9x19_B_MP5",nil,5000]					
						
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
				["Russische Import Waren",
					[
						["rhs_weap_ak103_npz",nil,280000],					
						["rhs_30Rnd_762x39mm",nil,2800],
						["rhs_weap_ak74m_npz",nil,300000],						
						["rhs_weap_ak74m_2mag_npz",nil,320000],
						["rhs_weap_ak74m_plummag_npz",nil,280000],						
						["rhs_30Rnd_545x39_AK",nil,3000],	
						["rhs_acc_ak5",nil,10000],
						["rhs_acc_pbs1",nil,10000],							
						["rhs_weap_svdp_npz",nil,560000],
						["rhs_weap_svds_npz",nil,560000],
						["rhs_10Rnd_762x54mmR_7N1",nil,10000],								
						["rhs_acc_tgpv",nil,10000],		
						["rhs_weap_makarov_pmm",nil,15000],
						["rhs_mag_9x18_12_57N181S",nil,500]							
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
