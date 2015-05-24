/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Des Juwelier's Schmuck"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[

		];
	};
	
	//Hats
	case 1:
	{
		[
			["A3L_Crown","Crown",3000]
		];
	};
	
	//Glasses
	case 2:
	{
		[

		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_Rangemaster_belt",nil,1000]
		];
	};
	
	//Backpacks
	case 4:
	{
		[

		];
	};
};