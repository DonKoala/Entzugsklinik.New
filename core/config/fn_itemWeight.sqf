/*
	File: fn_itemWeight.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gets the items weight and returns it.
*/
private["_item"];
_item = [_this,0,"",[""]] call BIS_fnc_param;
if(_item == "") exitWith {};

switch (_item) do
{
	case "oilu": {6};
	case "oilp": {3};
	case "heroinu": {7};
	case "heroinp": {3};
	case "cannabis": {7};
	case "marijuana": {3};
	case "apple": {1};
	case "water": {1};
	case "rabbit": {1};
	case "salema": {2};
	case "ornate": {2};
	case "mackerel": {4};
	case "tuna": {6};
	case "mullet": {4};
	case "catshark": {6};
	case "turtle": {6};
	case "fishing": {2};
	case "turtlesoup": {2};
	case "donuts": {1};
	case "coffee": {1};
	case "fuelE": {2};
	case "fuelF": {5};
	case "money": {0};
	case "pickaxe": {2};
	case "copperore": {6};
	case "ironore": {6};
	case "copper_r": {2};
	case "iron_r": {2};
	case "sand": {5};
	case "salt": {4};
	case "salt_r": {1};
	case "glass": {1};
	case "diamond": {5};
	case "diamondc": {2};
	case "cocaine": {7};
	case "cocainep": {3};
	case "spikeStrip": {15};
	case "goldbar": {12};
	case "blastingcharge": {15};
	case "boltcutter": {5};
	case "defusekit": {2};
	case "storagesmall": {5};
	case "storagebig": {10};
	
	//new items
	case "gpstracker": {1};
	case "speedbomb": {10};
	case "kidney": {4};
	case "scalpel": {1};
	case "kegel": {2};
	case "barrier": {2};
	case "barriersmall": {2};
	case "methu": {7};
	case "methp": {3};
	case "lsdu": {8};
	case "lsdp": {3};
	case "cotton": {2};
	case "cigarette": {1};
	case "henraw": {1};
    case "roosterraw": {1};
    case "goatraw": {1};
    case "sheepraw": {1};
    case "rabbitraw": {1};
	case "uwsl": {5};
	case "puranium": {4};
    case "ipuranium": {3};
    case "uranium1": {6};
    case "uranium2": {3};
    case "uranium3": {3};
    case "uranium4": {3};
    case "uranium": {2};
	case "handcuffs": {2};
    case "handcuffkeys": {1};
	default {1};
};
