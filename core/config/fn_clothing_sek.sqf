#include <macro.h>

/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/

private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
ctrlSetText[3103,"Carabinieri Kleidungsladen"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		switch(__GETC__(life_coplevel)) do
		{
			case 1: {_ret set[count _ret,["Item_Carabinieri",nil,1000]];};
			case 2: {_ret set[count _ret,["Item_Carabinieri",nil,1000]];};
			case 3: {_ret set[count _ret,["Item_Carabinieri",nil,1000]];};
			case 4: {_ret set[count _ret,["Item_Maresciallo",nil,1000]];};
			case 5: {_ret set[count _ret,["Item_MarescialloCapo",nil,1000]];};
			case 6: {_ret set[count _ret,["Item_Capitano",nil,1100]];};
			case 7: {_ret set[count _ret,["Item_Colonnello",nil,1200]];};
			case 8: {_ret set[count _ret,["Item_GeneraleDiBrigata",nil,1200]];};
			case 9: {_ret set[count _ret,["Item_GeneraleDiDivisione",nil,1300]];};
			case 10:{_ret set[count _ret,["Item_GeneraleDiCorpoArmata",nil,1400]];};
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret set[count _ret,["Item_Carabinieri",nil,1000]];
			_ret set[count _ret,["Item_CarabinieriFormal",nil,1200]];
		};
		if(__GETC__(life_coplevel) > 0) then
		{
			_ret set[count _ret,["U_B_Wetsuit",nil,2400]];
		};
		if(__GETC__(life_coplevel) > 8) then
		{
			_ret set[count _ret,["U_I_FullGhillie_ard",nil,22000]];
			_ret set[count _ret,["U_O_FullGhillie_ard",nil,22000]];
			_ret set[count _ret,["U_B_FullGhillie_ard",nil,22000]];
			_ret set[count _ret,["U_I_FullGhillie_lsh",nil,22000]];
			_ret set[count _ret,["U_B_FullGhillie_lsh",nil,22000]];
			_ret set[count _ret,["U_O_FullGhillie_lsh",nil,22000]];
			_ret set[count _ret,["U_I_FullGhillie_sard",nil,22000]];
			_ret set[count _ret,["U_O_FullGhillie_sard",nil,22000]];
			_ret set[count _ret,["U_B_FullGhillie_sard",nil,22000]];
		};
	};
	
	//Hats
	case 1:
	{
		if(__GETC__(life_coplevel) > 0) then
		{
			_ret set[count _ret,["Beret_Carabinieri",nil,300]];
			_ret set[count _ret,["NBeret_Carabinieri",nil,300]];
			_ret set[count _ret,["police_swat_cap",nil,500]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret set[count _ret,["gign_Balaclava",nil,1000]];
			_ret set[count _ret,["gign_helm",nil,1100]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret set[count _ret,["gign_helm3",nil,1300]];
			_ret set[count _ret,["gign_helm4",nil,1320]];
		};
	};
	
	//Glasses
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
		_ret set[count _ret,["G_Diving",nil,200]];
		_ret set[count _ret,["G_Tactical_Clear",nil,200]];
		_ret set[count _ret,["G_Tactical_Black",nil,200]];
	};
	
	//Vest
	case 3:
	{
		if(__GETC__(life_coplevel) > 0) then
		{
			_ret set[count _ret,["V_RebreatherB",nil,2000]];
			_ret set[count _ret,["Vest_Carabinieri",nil,1900]];
		};
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["Vest_Carabinieri1",nil,2100]];
			_ret set[count _ret,["Vest_Carabinieri2",nil,2200]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret set[count _ret,["gign_HeavyVest",nil,2600]];
			_ret set[count _ret,["gign_BlackVest",nil,2700]];
			_ret set[count _ret,["V_BandollierB_blk",nil,1200]];
			_ret set[count _ret,["V_PlateCarrier1_blk",nil,2000]];
			_ret set[count _ret,["V_Chestrig_blk",nil,2500]];
			_ret set[count _ret,["V_TacVest_blk",nil,2500]];
			_ret set[count _ret,["V_TacVestIR_blk",nil,2500]];
		};
	};
	
	//Backpacks
	case 4:
	{
		if(__GETC__(life_coplevel) > 0) then
		{
			_ret set[count _ret,["B_AssaultPack_blk",nil,1000]];
			_ret set[count _ret,["B_FieldPack_blk",nil,1100]];
			_ret set[count _ret,["B_Bergen_blk",nil,1200]];
		};
	};
};

_ret;