/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine
	edited by M4rc3lloX
	
	Description:
	Master configuration file for AAN Cothing.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Rockerwesten"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[	
			["TRYK_U_denim_jersey_blu",nil,500],
			["TRYK_U_denim_hood_nc",nil,500],
			["TRYK_U_denim_hood_blk",nil,500],
			["TRYK_U_B_PCUODHs",nil,500],
			["TRYK_U_B_PCUHs",nil,500]
		
		];
	};
	
	//Hats
	case 1:
	{
		[
			["gear_Bandana_BK_01",nil,400],
			["gear_Bandana_BK_02",nil,400]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Bandanna_aviator",nil,500],
			["G_Bandanna_shades",nil,500],
			["G_Bandanna_sport",nil,500],
			["G_mas_wpn_shemag_gog",nil,500]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["k_cut_2",nil,2000],
			["k_cut_5",nil,2000],
			["k_cut_4",nil,2000],
			["k_cut_3",nil,2000],
			["k_cut_1",nil,2000],
			["k_cut_6",nil,2000],
			["k_cut_11",nil,2000],
			["k_cut_7",nil,2000],
			["k_cut_8",nil,2000],
			["k_cut_9",nil,2000],
			["k_cut_10",nil,2000]
			
			
			
			
			
			
			
			
			
			
			
			
		];
	};
	
	//Backpacks
	case 4:
	{
		[
		];
	};
};