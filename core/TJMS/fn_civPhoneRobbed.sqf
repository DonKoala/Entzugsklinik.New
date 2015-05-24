/*
	Author: M4rc3lloX / Marcel
*/

private["_msg"];
_msg = _this select 1;
hintSilent parseText _msg;

if("ItemGPS" in assignedItems player) then {
	player removeweapon "ItemGPS";
	_droppedGPS = "Item_ItemGPS" createVehicle (player modelToWorld[0,0,0]);
};

if("ItemMap" in assignedItems player) then {
	player removeweapon "ItemMap";
	_droppedMap = "Item_ItemMap" createVehicle (player modelToWorld[0,0,0]);
};