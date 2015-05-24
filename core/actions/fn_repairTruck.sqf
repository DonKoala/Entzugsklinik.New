/*
	File: fn_repairTruck.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main functionality for toolkits, to be revised in later version.
*/
private["_veh","_upp","_ui","_progress","_pgText","_cP","_displayName"];
_veh = cursorTarget;
life_interrupted = false;
life_countRepairs = life_countRepairs - 1;
if(isNull _veh) exitwith {};
if((_veh isKindOf "Car") OR (_veh isKindOf "Ship") OR (_veh isKindOf "Air")) then
{
	if("ToolKit" in (items player)) then
	{
		life_action_inUse = true;
		player say3D "repair";
		player say3D "repair";
		player say3D "repair";
		player say3D "repair";
		player say3D "repair";
		_displayName = getText(configFile >> "CfgVehicles" >> (typeOf _veh) >> "displayName");
		_upp = format[localize "STR_NOTF_Repairing",_displayName];
		//Setup our progress bar.
		disableSerialization;
		5 cutRsc ["life_progress","PLAIN"];
		_ui = uiNameSpace getVariable "life_progress";
		_progress = _ui displayCtrl 38201;
		_pgText = _ui displayCtrl 38202;
		_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
		_progress progressSetPosition 0.01;
		_cP = 0.01;
		
		while{true} do
		{
			if(animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then {
				[[player,"AinvPknlMstpSnonWnonDnon_medic_1"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
				player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
			};
			sleep 0.27;
			_cP = _cP + 0.01;
			_progress progressSetPosition _cP;
			_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
			if(_cP >= 1) exitWith {_ui = "tjmsStatusbar" call BIS_fnc_rscLayer;_ui cutRsc["tjmsStatusbar","PLAIN"];};
			if(!alive player) exitWith {_ui = "tjmsStatusbar" call BIS_fnc_rscLayer;_ui cutRsc["tjmsStatusbar","PLAIN"];};
			if(player != vehicle player) exitWith {_ui = "tjmsStatusbar" call BIS_fnc_rscLayer;_ui cutRsc["tjmsStatusbar","PLAIN"];};
			if(life_interrupted) exitWith {_ui = "tjmsStatusbar" call BIS_fnc_rscLayer;_ui cutRsc["tjmsStatusbar","PLAIN"];};
		};
		
		life_action_inUse = false;
		5 cutText ["","PLAIN"];
		player playActionNow "stop";
		if(life_interrupted) exitWith {life_interrupted = false; titleText["Action cancelled","PLAIN"]; life_action_inUse = false;_ui = "tjmsStatusbar" call BIS_fnc_rscLayer;_ui cutRsc["tjmsStatusbar","PLAIN"];};
		if(player != vehicle player) exitWith {titleText["You must be outside of the vehicle to fix it. Sorry that this prevents you from exploiting the system, well not really.","PLAIN"];_ui = "tjmsStatusbar" call BIS_fnc_rscLayer;_ui cutRsc["tjmsStatusbar","PLAIN"];};
		
		if(life_countRepairs == 0) then {
		player removeItem "Toolkit";
		life_countRepairs = 4;
		};
		_veh setDamage 0;
		titleText[localize "STR_NOTF_RepairedVehicle","PLAIN"];
		sleep 2;
		titleText[format["Du kannst dein Toolkit noch %1 mal benutzen",life_countRepairs],"PLAIN"];  
	};
};
_ui = "tjmsStatusbar" call BIS_fnc_rscLayer;_ui cutRsc["tjmsStatusbar","PLAIN"];