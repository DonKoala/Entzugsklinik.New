#include <macro.h>
/*
	File: fn_spawnPointCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for available spawn points depending on the units side.
	
	Return:
	[Spawn Marker,Spawn Name,Image Path]
*/
private["_side","_return"];
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;

//Spawn Marker, Spawn Name, PathToImage
switch (_side) do
{
	case west:
	{
		_return = [
			["cop_spawn_1","Polizeipräsidium","\a3\ui_f\data\map\Markers\NATO\b_air.paa"],
			["cop_spawn_2","JVA","\a3\ui_f\data\map\Markers\NATO\b_air.paa"]
		];
	};
	
	case civilian:
	{
		_return = [
			["civ_spawn_1","Sofia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
		];
		
		if(__GETC__(life_donator) > 0) then {
			_return set[count _return,["don_spawn_1","Donator Unterschlupf","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
		};
		
		if(license_civ_aan) then {
			_return set[count _return,["aan_spawn_1","AAN Nachrichten","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
		};
		
		if(license_civ_adac) then {
			_return set[count _return,["adac_spawn_1","ADAC Hauptsitz","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
		};
		
		if(license_civ_rebel) then {
			_return set[count _return,["reb_spawn_1","Rebellenversteck","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
		};
		
		if(count life_houses > 0) then {
			{
				_pos = call compile format["%1",_x select 0];
				_house = nearestBuilding _pos;
				_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
				
				_return set[count _return,[format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"]];
			} foreach life_houses;
		};	
	};
	
	case independent: {
		_return = [
			["medic_spawn_1","Med. Einrichtung","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["adac_spawn_1","ADAC Hauptsitz","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
		];
	};
};

_return;