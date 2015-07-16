#include <macro.h>

/*


					

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
			["fire_uni1","Feuerwehr Kleidung",600],
			["Item_Medic","Rettungssanitäter Overall",600],
			["emsoff_uni",nil,600],
			["EMTRM_uni",nil,600],
			["emt_Uni1",nil,600],
			["emt_Uni3",nil,600],
			["A3L_Worker_Outfit","ADAC Overall",600],
			["TRYK_U_B_PCUHsW2","Strahlenanzug",600]
		
		];
	};
	
	//Hats
	case 1:
	{
		[
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
			["A3L_longhairblack",nil,100],																																		
			["A3L_longhairblack",nil,100],
			["A3L_medic_helmet","Medichelm",100]
		];
	};
	
	//Glasses
	case 2:
	{
		[
		["G_Shades_Black",nil,25],
		["G_Shades_Blue",nil,20],
		["G_Sport_Blackred",nil,20],
		["G_Sport_Checkered",nil,20],
		["G_Sport_Blackyellow",nil,20],
		["G_Sport_BlackWhite",nil,20],
		["G_Sport_Red",nil,55],
		["G_Squares",nil,10],
		["G_Aviator",nil,100],
		["G_Lady_Mirror",nil,150],
		["G_Lady_Dark",nil,150],
		["G_Lady_Blue",nil,150],
		["G_Lowprofile",nil,30],
		["G_Shades_Blue",nil,55],
		["G_Shades_Green",nil,55],
		["G_Shades_Red",nil,55],
		["G_Shades_Black",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		[
		["V_Rangemaster_belt",nil,100]			
			
			
			
			
		];
	};
	
	//Backpacks
	case 4:
	{
		[
		["B_Kitbag_cbr",nil,100],
		["tf_rt1523g_big_rhs",nil,100]
		];
	};
};