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
ctrlSetText[3103,"AAN Reporterkleidung"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_C_Journalist",nil,1000]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Cap_press",nil,400]
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
			["V_Press_F",nil,2000]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
		];
	};
};