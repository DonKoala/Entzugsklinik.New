#include <macro.h>
/*
	File: fn_initCop.sqf
	Author: Bryan "Tonic" Boardwine
	edited by Koala
	
	Description:
	Cop Initialization file.
*/
private["_end"];
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;

if(life_blacklisted) exitWith
{
	["Blacklisted",false,true] call BIS_fnc_endMission;
	sleep 30;
};

if((__GETC__(life_copLevel)) < 1) exitWith {
	["Notwhitelisted",FALSE,TRUE] call BIS_fnc_endMission;
	sleep 35;
};

[] call life_fnc_spawnMenu;
player setVariable["coplevel", __GETC__(life_coplevel), true];


// different paychecks
switch(__GETC__(life_coplevel)) do
{
	case 1: {life_paycheck = life_paycheck + 2000;};
	case 2: {life_paycheck = life_paycheck + 3000;};
	case 3: {life_paycheck = life_paycheck + 4000;};
	case 4: {life_paycheck = life_paycheck + 5000;};
	case 5: {life_paycheck = life_paycheck + 6000;};
	case 6: {life_paycheck = life_paycheck + 7000;};
	case 7: {life_paycheck = life_paycheck + 8000;};
	case 8: {life_paycheck = life_paycheck + 9000;};
	case 9: {life_paycheck = life_paycheck + 10000;};
	case 10: {life_paycheck = life_paycheck + 11000;};
};



_igiload = execVM "core\IgiLoad\IgiLoadInit.sqf";
hint "IgiLoad lädt. Warte bitte einen Moment bevor du dieses Feature benutzt!";

waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.