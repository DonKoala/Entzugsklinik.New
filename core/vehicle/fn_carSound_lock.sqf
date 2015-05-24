/*
	File: fn_carSound_lock.sqf
*/
private["_source"];
_source = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _source) exitWith {};

if(player distance _source < 60) then {
	_source say3D ["car_lock", 0.2];
};

