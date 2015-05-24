#include <macro.h>
/*
	File: fn_craftCfg.sqf
	Author: EdgeKiller

	Description:
	Master configuration file for the crafting menu.

*/
private["_craft","_return"];
_craft = [_this,0,"",[""]] call BIS_fnc_param;
if(_craft == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_craft) do
{
	case "weapon":
	{
		_return = [
			["hgun_P07_F", 
				[
					"life_inv_ironr",4,
					"life_inv_copperr",2
				]
			],
			["hgun_Rook40_F", 
				[
					"life_inv_ironr",5,
					"life_inv_copperr",2
				]
			],
			["hgun_ACPC2_F", 
				[
					"life_inv_ironr",3,
					"life_inv_copperr",5
				]
			],
			["hgun_Pistol_heavy_02_F", 
				[
					"life_inv_ironr",8,
					"life_inv_copperr",2
				]
			],
			["hgun_Pistol_Signal_F", 
				[
					"life_inv_ironr",4,
					"life_inv_copperr",2
				]
			],
			["hgun_PDW2000_F", 
				[
					"life_inv_ironr",16,
					"life_inv_copperr",6
				]
			],
			["SMG_01_F", 
				[
					"life_inv_ironr",22,
					"life_inv_copperr",4
				]
			],
			["arifle_SDAR_F", 
				[
					"life_inv_ironr",24,
					"life_inv_copperr",8
				]
			],
			["optic_MRCO", 
				[
					"life_inv_ironr",8,
					"life_inv_glass",6
				]
			],
			["optic_Holosight", 
				[
					"life_inv_ironr",6,
					"life_inv_glass",5
				]
			]
		];
	};

	case "uniform":
	{
		_return = [
			["U_C_HunterBody_grn", 
				[
					"life_inv_cotton",30
				]
			],
			["U_Competitor", 
				[
					"life_inv_cotton",29
				]
			],
			["U_NikosAgedBody", 
				[
					"life_inv_cotton",28
				]
			],
			["U_Marshal", 
				[
					"life_inv_cotton",26
				]
			]
		];
	};

	case "backpack":
	{
		_return = [
			["B_Carryall_khk", 
				[
					"life_inv_cotton",30
				]
			],
			["B_FieldPack_blk", 
				[
					"life_inv_cotton",24
				]
			],
			["B_Kitbag_cbr", 
				[
					"life_inv_cotton",18
				]
			],
			["B_TacticalPack_ocamo", 
				[
					"life_inv_cotton",22
				]
			]
		];
	};

	case "item":
	{
		_return = [
			["life_inv_pickaxe", 
				[
					"life_inv_ironr",6,
					"life_inv_boltcutter",1
				]
			],
			["life_inv_lockpick", 
				[
					"life_inv_ironr",3
				]
			],
			["life_inv_spikeStrip", 
				[
					"life_inv_ironr",18,
					"life_inv_copperr",6
				]
			]
		];
	};
};

_return; 