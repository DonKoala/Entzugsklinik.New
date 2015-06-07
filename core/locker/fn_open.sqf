/*
	Autor: Andre "Nokman" Kupfer
	Beschreibung: Befüllen der Kiste
*/
_item = _this select 0;
_player = _this select 1;

_item removeAllEventHandlers "ContainerOpened"; // Remove open EH
if (!isnil "nokwaffe" && {count nokwaffe != 0} ) then { //temp speicherung

	{
	_item addItemCargo [_x, 1];
	}foreach (nokwaffe select 0);
	{
	if (_x == "B_FieldPack_cbr_LAT") then {_x = "B_FieldPack_ocamo"};
	if (_x == "B_AssaultPack_mcamo_AAR") then {_x = "B_TacticalPack_mcamo"};
	if (_x == "B_AssaultPack_rgr_ReconExp") then {_x = "B_Kitbag_rgr"};
	_item addBackpackCargo [_x, 1];
	}foreach (nokwaffe select 1);
	if ((nokwaffe select 2) isEqualTo [""]) then { } else {
		{
			if (_x isEqualTo "") then { } else {
				_x pushback (_x select 1);
				_x set [1,1];
				_item addMagazineAmmoCargo _x;
			};
		}foreach (nokwaffe select 2);
	};
	{
	_waffe = [_x] call zero_fnc_switchwaffe; // Waffen Check damit es keine mit Anbau zugefügt werden
	_item addWeaponCargo [_waffe, 1];
	}foreach (nokwaffe select 3);
};
titleRsc ["introtext","PLAIN"];_display = (((uiNamespace getVariable "nok_introdisplay") displayCtrl 5501) ctrlSetText "Lade Schliessfach Bitte Warten");
disableUserInput true;
sleep 1;
player action ['Gear', _item]; true; //neuladen der kiste nach befüllung
sleep 1;
_item addEventHandler ["ContainerClosed", "[_this select 0,_this select 1] call zero_fnc_close;"];
disableUserInput false;
titleRsc ["introtext","PLAIN"];_display = (((uiNamespace getVariable "nok_introdisplay") displayCtrl 5501) ctrlSetText "Schliesfach Geladen");
