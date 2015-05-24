// by M4rc3lloX

private["_source"];
_source = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _source) exitWith {};

if(player distance _source < 10) then {
	_source say3D ["harvest", 0.2];
	_source say3D ["harvest", 0.2];
	sleep 2;
};