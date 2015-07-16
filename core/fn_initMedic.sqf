#include <macro.h>
/*
	File: fn_initMedic.sqf
	Author: Bryan "Tonic" Boardwine
	edited by Koala
	
	Description: Initializes the medic..
*/
private["_end"];
player addRating 99999999;
waitUntil {!(isNull (findDisplay 46))};

if((__GETC__(life_medicLevel)) < 1) exitWith {
	["Notwhitelisted",FALSE,TRUE] call BIS_fnc_endMission;
	sleep 35;
};

[] call life_fnc_medicLoadout;
player setVariable["medlevel", __GETC__(life_medicLevel), true];
[] call life_fnc_spawnMenu;

// Money, Money, Money 
switch(__GETC__(life_medicLevel)) do
{
	case 1: {life_paycheck = life_paycheck + 5000;};
	case 2: {life_paycheck = life_paycheck + 8000;};
	case 3: {life_paycheck = life_paycheck + 11000;};
	case 4: {life_paycheck = life_paycheck + 15000;};
	case 5: {life_paycheck = life_paycheck + 20000;};
};

_igiload = execVM "core\IgiLoad\IgiLoadInit.sqf";
hint "IgiLoad lädt. Warte bitte einen Moment bevor du dieses Feature benutzt!";

waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.