/*
	Autor: Andre "Nokman" Kupfer
	Beschreibung: Auslessen der kiste und Säuberung
*/
private ["_item","_items","_ruck","_mag","_waffe","_waffen"];
_item = _this select 0;
_player = _this select 1;
_item removeEventHandler ["ContainerClosed",0]; //Eventhändler löschen und Open Einfügen
_item addEventHandler ["ContainerOpened", "[_this select 0,_this select 1] spawn zero_fnc_open"];
// Auslesen der Items Veste Helm Map Waffen zubehör
_items = itemCargo _item;
clearItemCargo _item;

// Auslesen der Rucksäcke
_ruck = backpackCargo _item;
clearBackpackCargo _item;

// Auslesen von Magazinen mit Restinhalt
_mag = magazinesAmmoCargo _item;
clearMagazineCargo _item;

// Auslesen von Waffen + Items + Geladener Munition
_waffe = weaponsItemsCargo _item;
clearWeaponCargo _item;
_waffen = [];
// Aufspalten der Waffen in Items Munition
{
switch (count _x) do {
	case 4 : {
		_waffen pushback (_x select 0);
		if (_x select 1 != "") then {_items pushback (_x select 1)};
		if (_x select 2 != "") then {_items pushback (_x select 2)};
		if (_x select 3 != "") then {_items pushback (_x select 3)};
	};
	case 5 : {
		_waffen pushback (_x select 0);
		if (_x select 1 != "") then {_items pushback (_x select 1)};
		if (_x select 2 != "") then {_items pushback (_x select 2)};
		if (_x select 3 != "") then {_items pushback (_x select 3)};
		if (_x select 4 isequalto "") then {} else {if (typename (_x select 4) == typename []) then {_mag pushback (_x select 4) } else {_items pushback (_x select 4)}};
	};

	case 6 : {
		_waffen pushback (_x select 0);
		if (_x select 1 != "") then {_items pushback (_x select 1)};
		if (_x select 2 != "") then {_items pushback (_x select 2)};
		if (_x select 3 != "") then {_items pushback (_x select 3)};
		if (_x select 4 isequalto "") then {} else {if (typename (_x select 4) == typename []) then {_mag pushback (_x select 4) } else {_items pushback (_x select 4)}};
		if (_x select 5 isequalto "") then {} else {if (typename (_x select 5) == typename []) then {_mag pushback (_x select 5) } else {_items pushback (_x select 5)}};
	};
	case 7 : {
		_waffen pushback (_x select 0);
		if (_x select 1 != "") then {_items pushback (_x select 1)};
		if (_x select 2 != "") then {_items pushback (_x select 2)};
		if (_x select 3 != "") then {_items pushback (_x select 3)};
		if (_x select 4 isequalto "") then {} else {if (typename (_x select 4) == typename []) then {_mag pushback (_x select 4) } else {_items pushback (_x select 4)}};
		if (_x select 5 isequalto "") then {} else {if (typename (_x select 5) == typename []) then {_mag pushback (_x select 5) } else {_items pushback (_x select 5)}};
		if (_x select 6 isequalto "") then {} else {if (typename (_x select 6) == typename []) then {_mag pushback (_x select 6) } else {_items pushback (_x select 6)}};
	};
};

}foreach _waffe;

nokwaffe = [_items,_ruck,_mag,_waffen]; //temp speicherung
[] call zero_fnc_saveGear;