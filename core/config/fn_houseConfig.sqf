/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for buyable houses?
*/
private["_house"];
_house = [_this,0,"",[""]] call BIS_fnc_param;
if(_house == "") exitWith {[]};

/*
	Return Format:
	[price,# of containers allowed]
*/
switch (true) do {
	case (_house in ["Land_Chapel_V1_F","Land_Chapel_V2_F"]): {[5000000,0]};				//Kapelle
	case (_house in ["Land_Chapel_Small_V1_F","Land_Chapel_Small_V2_F"]): {[1500000,0]};	//kleine Kapelle
	case (_house in ["Land_Church_01_V1_F"]): {[25000000,0]};								//große Kirche
	
	case (_house in ["Land_u_Addon_02_V1_F","Land_i_Addon_02_V1_F"]): {[500000,0]};		//Hausanbau
	case (_house in ["Land_i_Garage_V1_F","Land_i_Garage_V2_F"]): {[600000,0]};			//Garagen
	
	case (_house in ["Land_i_House_Big_01_V1_F","Land_i_House_Big_01_V2_F","Land_i_House_Big_01_V3_F"]): {[15000000,4]};	//Mega Haus
	case (_house in ["Land_i_House_Big_02_V1_F","Land_i_House_Big_02_V2_F","Land_i_House_Big_02_V3_F"]): {[10000000,3]};	//Großes Haus
	case (_house in ["Land_i_House_Small_01_V1_F","Land_i_House_Small_01_V2_F","Land_i_House_Small_01_V3_F","Land_i_House_Small_03_V1_F"]): {[5000000,2]};	//Mittleres Haus und Bungalow
	case (_house in ["Land_i_House_Small_02_V1_F","Land_i_House_Small_02_V2_F","Land_i_House_Small_02_V3_F"]): {[1200000,1]};	//kleines Haus
	case (_house in ["Land_i_Stone_HouseSmall_V1_F","Land_i_Stone_HouseSmall_V2_F","Land_i_Stone_HouseSmall_V3_F"]): {[4000000,2]};	//Altes Landhaus
		
	case (_house in ["Land_cargo_house_slum_F","Land_Slum_House01_F","Land_Slum_House03_F"]): {[500000,0]};	//Slum Buden
	
	default {[]};
};