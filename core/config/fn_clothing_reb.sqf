#include <macro.h>
/*
	File: fn_clothing_reb.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Reb shop.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Rebellen Kleiderkammer"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret set[count _ret,["U_I_CombatUniform",nil,3000]];
		_ret set[count _ret,["U_I_CombatUniform_tshirt",nil,3000]];
		_ret set[count _ret,["U_I_CombatUniform_shortsleeve",nil,5000]];
		_ret set[count _ret,["U_I_pilotCoveralls",nil,10000]];
		_ret set[count _ret,["U_I_HeliPilotCoveralls",nil,10000]];
		_ret set[count _ret,["U_I_GhillieSuit",nil,50000]];
		_ret set[count _ret,["U_I_OfficerUniform",nil,5000]];
		_ret set[count _ret,["U_I_Wetsuit",nil,1000]];				
		_ret set[count _ret,["rhs_uniform_emr_patchless",nil,15000]];	
		_ret set[count _ret,["rhs_uniform_flora_patchless",nil,15000]];	
		_ret set[count _ret,["rhs_uniform_flora_patchless_alt",nil,15000]];	
		_ret set[count _ret,["rhs_uniform_mflora_patchless",nil,15000]];			
	};
	
	//Hats
	case 1:
	{
		_ret set[count _ret,["H_Booniehat_dgtl",nil,500]];
		_ret set[count _ret,["H_PilotHelmetHeli_I",nil,10000]];
		_ret set[count _ret,["H_CrewHelmetHeli_I",nil,10000]];
		_ret set[count _ret,["H_Cap_blk_Raven",nil,500]];
		_ret set[count _ret,["H_HelmetIA",nil,10000]];
		_ret set[count _ret,["H_MilCap_dgtl",nil,10000]];	
		_ret set[count _ret,["rhs_6b26_ess_green",nil,1000]];
		_ret set[count _ret,["rhs_6b26_ess",nil,500]];
		_ret set[count _ret,["rhs_6b27m_green_ess",nil,500]];
		_ret set[count _ret,["rhs_6b27m_digi_ess",nil,500]];
		_ret set[count _ret,["rhs_6b27m_ess",nil,500]];
		_ret set[count _ret,["rhs_6b27m_ml_ess",nil,500]];
		_ret set[count _ret,["rhs_6b28_green_ess",nil,500]];
		_ret set[count _ret,["rhs_6b28_ess",nil,500]];
		_ret set[count _ret,["rhs_6b28_flora_ess",nil,500]];
		_ret set[count _ret,["BWA3_M92_Fleck",nil,500]];	
	};
	
	//Glasses
	case 2:
	{
		_ret set[count _ret,["G_Balaclava_oli",nil,25]];
		_ret set[count _ret,["rhs_balaclava",nil,25]];	
	    _ret set[count _ret,["G_Shades_Black",nil,25]];
		_ret set[count _ret,["G_Shades_Blue",nil,20]];
		_ret set[count _ret,["G_Sport_Blackred",nil,20]];
		_ret set[count _ret,["G_Sport_Checkered",nil,20]];
		_ret set[count _ret,["G_Sport_Blackyellow",nil,20]];
		_ret set[count _ret,["G_Sport_BlackWhite",nil,20]];
		_ret set[count _ret,["G_Sport_Red",nil,55]];
		_ret set[count _ret,["G_Squares",nil,10]];
		_ret set[count _ret,["G_Aviator",nil,100]];
		_ret set[count _ret,["G_Balaclava_oli",nil,150]];
		_ret set[count _ret,["G_Lowprofile",nil,300]];
		_ret set[count _ret,["G_Shades_Blue",nil,550]];
		_ret set[count _ret,["G_Shades_Green",nil,550]];
		_ret set[count _ret,["G_Shades_Red",nil,550]];
		_ret set[count _ret,["G_Shades_Black",nil,550]];
		_ret set[count _ret,["G_Combat",nil,550]];
		_ret set[count _ret,["BWA3_G_Combat_Clear",nil,500]];
		_ret set[count _ret,["BWA3_G_Combat_Orange",nil,500]];
		_ret set[count _ret,["BWA3_G_Combat_Black",nil,500]];
	};
	
	//Vest
	case 3:
	{
		_ret set[count _ret,["V_PlateCarrierIA1_dgtl",nil,10000]];
		_ret set[count _ret,["V_PlateCarrierIA2_dgtl",nil,10000]];
		_ret set[count _ret,["V_PlateCarrierIAGL_dgtl",nil,10000]];
		_ret set[count _ret,["rhs_6b13_Flora_6sh92",nil,10000]];
		_ret set[count _ret,["rhs_6b13_6sh92",nil,10000]];
		_ret set[count _ret,["rhs_6b23_6sh92",nil,10000]];
		_ret set[count _ret,["rhs_6b23_digi_6sh92",nil,10000]];
		_ret set[count _ret,["rhs_6b23_ML_6sh92",nil,10000]];
		_ret set[count _ret,["rhs_6sh46",nil,10000]];
		_ret set[count _ret,["BWA3_Vest_Grenadier_Fleck",nil,10000]];	
	};
	
	//Backpacks
	case 4:
	{
		_ret set[count _ret,["tf_rt1523g_big_rhs",nil,1000]];
		_ret set[count _ret,["B_AssaultPack_dgtl",nil,2000]];
		_ret set[count _ret,["rhs_rpg_empty",nil,2000]];		
		_ret set[count _ret,["rhs_sidor",nil,2000]];		
		_ret set[count _ret,["rhs_assault_umbts",nil,2000]];		
	    _ret set[count _ret,["B_AssaultPack_blk",nil,2000]];
		_ret set[count _ret,["B_AssaultPack_cbr",nil,2000]];
		_ret set[count _ret,["B_AssaultPack_khk",nil,2000]];
		_ret set[count _ret,["B_AssaultPack_mcamo",nil,2000]];
		_ret set[count _ret,["B_AssaultPack_ocamo",nil,2000]];
		_ret set[count _ret,["B_AssaultPack_rgr",nil,2000]];
		_ret set[count _ret,["B_AssaultPack_sgg",nil,2000]];
		_ret set[count _ret,["B_Carryall_cbr",nil,5500]];
		_ret set[count _ret,["B_Carryall_khk",nil,5500]];
		_ret set[count _ret,["B_Carryall_mcamo",nil,5500]];
		_ret set[count _ret,["B_Carryall_ocamo",nil,5500]];
		_ret set[count _ret,["B_Carryall_oli",nil,5500]];
		_ret set[count _ret,["B_Carryall_oucamo",nil,5500]];
		_ret set[count _ret,["B_FieldPack_blk",nil,1000]];
		_ret set[count _ret,["B_FieldPack_cbr",nil,1000]];
		_ret set[count _ret,["B_FieldPack_khk",nil,1000]];
		_ret set[count _ret,["B_FieldPack_ocamo",nil,1000]];
		_ret set[count _ret,["B_FieldPack_oli",nil,1000]];
		_ret set[count _ret,["B_FieldPack_oucamo",nil,1000]];
		_ret set[count _ret,["B_Kitbag_cbr",nil,4500]];
		_ret set[count _ret,["B_Kitbag_mcamo",nil,4500]];
		_ret set[count _ret,["B_Kitbag_rgr",nil,4500]];
		_ret set[count _ret,["B_Kitbag_sgg",nil,4500]];
		_ret set[count _ret,["B_TacticalPack_blk",nil,4000]];
		_ret set[count _ret,["B_TacticalPack_mcamo",nil,4000]];
		_ret set[count _ret,["B_TacticalPack_ocamo",nil,4000]];
		_ret set[count _ret,["B_TacticalPack_oli",nil,4000]];
		_ret set[count _ret,["B_TacticalPack_rgr",nil,4000]];
	};
};
_ret;