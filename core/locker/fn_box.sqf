/*
	Autor: Andre "Nokman" Kupfer
	Beschreibung: erstellen der Boxen nach Donator Level




	ALTER TABLE players ADD locker_civ TEXT;
	ALTER TABLE players ADD locker_reb TEXT;
	UPDATE players SET locker_civ='"[]"';
	UPDATE players SET locker_reb='"[]"';
*/
private ["_box","_marker","_temp","_item"];
waituntil {sleep 10; !isnil "life_donator" && count life_houses != 0};

if (isnil "nokwaffe") then {nokwaffe = [];};
_box = switch (call (life_donator)) do {
	case 0 :	{"Box_East_Grenades_F"}; //2000
	case 1 :	{"Box_FIA_Wps_F"}; //2500
	case 2 :	{"O_supplyCrate_F"}; //4000
	default	{"O_CargoNet_01_ammo_F"}; //22000
};
_marker = ["nok_itemfach1","nok_itemfach2","nok_itemfach3","nok_itemfach4","nok_itemfach5","nok_itemfach6"]; //markernamen wo die Kisten erstellt werden.
{
	_temp = nearestObject[getMarkerPos _x,"Land_i_Shed_Ind_F"];
	_item = _box createVehicleLocal getMarkerPos _x; //an marker erstellen und Ausräumen + EH beim öffnen adden
	_item setpos [(getMarkerPos _x) select 0,(getMarkerPos _x) select 1, (getPos _temp) select 2];
	clearItemCargo _item;
	clearBackpackCargo _item;
	clearMagazineCargo _item;
	clearWeaponCargo _item;
	_item addEventHandler ["ContainerOpened", "[_this select 0,_this select 1] spawn zero_fnc_open"];
	_item allowdamage false;
} foreach _marker;