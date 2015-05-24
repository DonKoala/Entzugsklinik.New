#include <macro.h>
/*
	File: fn_copLoadout.sqf
	Author: Bryan "Tonic" Boardwine
	Edited: Itsyuka
	
	Description:
	Loads the cops out with the default gear.
*/
private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

switch(__GETC__(life_coplevel)) do
{
	case 1: {player addUniform "Item_AgenteScelto";};
	case 2: {player addUniform "Item_AgenteScelto";};
	case 3: {player addUniform "Item_AgenteScelto";};
	case 4: {player addUniform "Item_AgenteScelto";};
	case 5: {player addUniform "Item_AgenteScelto";};
	case 6: {player addUniform "Item_ViceCommissario";};
	case 7: {player addUniform "Item_Commissario";};
	case 8: {player addUniform "Item_CommissarioCapo";};
	case 9: {player addUniform "Item_PrimoDirigente";};
	case 10:{player addUniform "Item_CapoDellaPolizia";};
	default {player addUniform "Item_AgenteScelto";};
};

player addVest "Vest_PoliceYellow";
player addHeadgear "NBeret_PoliceBlack";

player addWeapon "Rangefinder";
player addWeapon "hgun_Pistol_heavy_01_snds_F";
player addHandgunItem "optic_MRD";
player addMagazine "11Rnd_45ACP_Mag";
player addMagazine "11Rnd_45ACP_Mag";
player addMagazine "11Rnd_45ACP_Mag";
player addMagazine "11Rnd_45ACP_Mag";
player addMagazine "11Rnd_45ACP_Mag";
player addMagazine "11Rnd_45ACP_Mag";

player addItem "FirstAidKit";
player addItem "FirstAidKit";

player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";
player addItem "ItemGPS";
player assignItem "ItemGPS";
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "tf_ex8550";
player assignItem "tf_ex8550";
player addItem "NVGoggles_OPFOR";
player assignItem "NVGoggles_OPFOR";

[] call life_fnc_saveGear;