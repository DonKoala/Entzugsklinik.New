#include <macro.h>

/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/

private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
ctrlSetText[3103,"Polizei Kleidungsladen"];

_ret = [];
switch (_filter) do
{
	case 0:
	{
		switch(__GETC__(life_coplevel)) do
		{
			case 1: {_ret set[count _ret,["Item_AgenteScelto",nil,1000]];};
			case 2: {_ret set[count _ret,["Item_AgenteScelto",nil,1000]];};
			case 3: {_ret set[count _ret,["Item_AgenteScelto",nil,1000]];};
			case 4: {_ret set[count _ret,["Item_AgenteScelto",nil,1000]];};
			case 5: {_ret set[count _ret,["Item_AgenteScelto",nil,1000]];};
			case 6: {_ret set[count _ret,["Item_ViceCommissario",nil,1100]];};
			case 7: {_ret set[count _ret,["Item_Commissario",nil,1200]];};
			case 8: {_ret set[count _ret,["Item_CommissarioCapo",nil,1200]];};
			case 9: {_ret set[count _ret,["Item_PrimoDirigente",nil,1300]];};
			case 10:{_ret set[count _ret,["Item_CapoDellaPolizia",nil,1400]];};
			default {_ret set[count _ret,["Item_AgenteScelto",nil,1500]];};
		};
			_ret set[count _ret,["Item_Zoll",nil,1000]];
			_ret set[count _ret,["Item_PrimoDirigente",nil,1000]];			
			_ret set[count _ret,["A3L_Prisoner_Outfit",nil,1000]];
			_ret set[count _ret,["TRYK_U_B_PCUHsW2","Strahlenanzug",600]];
			
		
		
		
	};
	
	case 1:
	{
		_ret set[count _ret,["Cap_PoliceBlue",nil,200]];
		_ret set[count _ret,["Cap_PoliceBlack",nil,200]];
		_ret set[count _ret,["Beret_PoliceBlack",nil,200]];
		_ret set[count _ret,["NBeret_PoliceBlack",nil,200]];
		_ret set[count _ret,["NBeret_PoliceBlue",nil,200]];
		_ret set[count _ret,["A3L_sargehat",nil,200]];
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["H_CrewHelmetHeli_B",nil,2500]];
		};
	};

	case 2:
	{
		_ret set[count _ret,["G_Shades_Black",nil,25]];
		_ret set[count _ret,["G_Shades_Blue",nil,20]];
		_ret set[count _ret,["G_Sport_Blackred",nil,20]];
		_ret set[count _ret,["G_Sport_Checkered",nil,20]];
		_ret set[count _ret,["G_Sport_Blackyellow",nil,20]];
		_ret set[count _ret,["G_Sport_BlackWhite",nil,20]];
		_ret set[count _ret,["G_Aviator",nil,75]];
		_ret set[count _ret,["G_Squares",nil,10]];
	};

	case 3:
	{
		_ret set[count _ret,["Vest_PoliceYellow",nil,2000]];
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["V_TacVest_blk_POLICE",nil,2500]];		
			_ret set[count _ret,["Vest_PoliceBlue",nil,2500]];
			_ret set[count _ret,["Vest_PoliceBlack",nil,2500]];
			_ret set[count _ret,["TRYK_V_tacv1LP_BK",nil,2500]];
			_ret set[count _ret,["TRYK_V_tacv1LSRF_BK",nil,2500]];
			_ret set[count _ret,["TRYK_V_Sheriff_BA_OD",nil,2500]];
			_ret set[count _ret,["TRYK_V_tacv1LC_P_BK",nil,2500]];
			_ret set[count _ret,["TRYK_V_tacv1LC_SRF_BK",nil,2500]];
			_ret set[count _ret,["TRYK_V_tacv1LC_SRF_OD",nil,2500]];			
		}; 
	};
	
	//Backpacks
	case 4:
	{
		
		
		_ret set[count _ret,["tf_rt1523g_big_rhs",nil,1000]];
		_ret set[count _ret,["B_AssaultPack_blk",nil,1000]];
		_ret set[count _ret,["B_FieldPack_blk",nil,1100]];
		_ret set[count _ret,["B_Bergen_blk",nil,1200]];
	};
};

_ret;