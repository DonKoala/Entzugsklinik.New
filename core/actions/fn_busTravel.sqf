#include <macro.h>
/*
    File: fn_busTravel.sqf
    Author: Blaster + Author: [midgetgrimm] edit adi

    Description:
    Travel by bus!
*/
private["_vendor","_dest", "_destPos", "_busCost"];

//check client
if(!alive player) exitWith {hint"du bist Tod";};
if(vehicle player != player) exitWith {hint "Bitte parke dein KFZ ein!";};

_vendor = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param; //get NCP (vendor) name
_dest = [_this,3,"",[""]] call BIS_fnc_param; //get dest. name
_destPos = [0,0,0]; //default position for error return
_busCost = 1000; //default price for bus teleport

//Error check
//if(isNull _vendor OR EQUAL(_dest,"") OR (player distance _vendor > 10)) exitWith { hint "Please select other dest."; };

switch (_vendor) do 
	{
	case kavalaBus : //NPC bus name
	{
		switch (_dest) do {
			case "athira" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_athira"; };
			case "pygros" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_pygros"; };
			case "sofia" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_sofia"; };
			case "airport" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_airport"; };
			case "bb" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_bb"; };
			case "boot" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_boot"; };
			case "molos" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_molos"; };
			case "rebel" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_rebel"; };
			case "zaros" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_zaros"; };
			default {[];};
		};
	};
	case athiraBus : 
	{
		switch (_dest) do {
			case "kavala" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_kavala"; };
			case "pygros" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_pygros"; };
			case "sofia" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_sofia"; };
			case "airport" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_airport"; };
			case "bb" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_bb"; };
			case "boot" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_bb"; };
			case "molos" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_molos"; };
			case "rebel" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_rebel"; };
			case "zaros" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_zaros"; };
			default {[];};
		};
	};
	case pygrosBus : 
	{
		switch (_dest) do {
			case "kavala" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_kavala"; };
			case "athira" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_athira"; };
			case "sofia" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_sofia"; };
			case "airport" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_airport"; };
			case "bb" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_bb"; };
			case "boot" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_boot"; };
			case "molos" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_molos"; };
			case "rebel" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_rebel"; };
			case "zaros" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_zaros"; };
			default {[];};
		};
	};
	case sofiaBus : 
	{
		switch (_dest) do {
			case "kavala" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_kavala"; };
			case "athira" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_athira"; };
			case "pygros" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_pygros"; };
			case "airport" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_airport"; };
			case "bb" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_bb"; };
			case "boot" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_boot"; };
			case "molos" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_molos"; };
			case "rebel" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_rebel"; };
			case "zaros" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_zaros"; };
			default {[];};
		};
	};
	case airportBus : 
	{
		switch (_dest) do {
			case "kavala" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_kavala"; };
			case "athira" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_athira"; };
			case "pygros" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_pygros"; };
			case "sofia" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_sofia"; };
			case "bb" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_bb"; };
			case "boot" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_boot"; };
			case "molos" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_molos"; };
			case "rebel" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_rebel"; };
			case "zaros" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_zaros"; };
			default {[];};
		};
	};
	case bbBus : 
	{
		switch (_dest) do {
			case "kavala" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_kavala"; };
			case "athira" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_athira"; };
			case "pygros" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_pygros"; };
			case "sofia" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_sofia"; };
			case "airport" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_airport"; };
			case "boot" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_boot"; };
			case "molos" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_molos"; };
			case "rebel" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_rebel"; };
			case "zaros" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_zaros"; };
			default {[];};			
		};
	};
	case bootBus : 
	{
		switch (_dest) do {
			case "kavala" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_kavala"; };
			case "athira" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_athira"; };
			case "pygros" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_pygros"; };
			case "sofia" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_sofia"; };
			case "airport" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_airport"; };
			case "bb" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_bb"; };
			case "molos" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_molos"; };
			case "rebel" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_rebel"; };
			case "zaros" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_zaros"; };

			default {[];};
		};
	};
	case molosBus : 
	{
		switch (_dest) do {
			case "kavala" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_kavala"; };
			case "athira" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_athira"; };
			case "pygros" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_pygros"; };
			case "sofia" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_sofia"; };
			case "airport" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_airport"; };
			case "bb" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_bb"; };
			case "boot" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_boot"; };
			case "rebel" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_rebel"; };
			case "zaros" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_zaros"; };
			default {[];};
		};
	};
		case rebelBus : 
	{
		switch (_dest) do {
			case "kavala" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_kavala"; };
			case "athira" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_athira"; };
			case "pygros" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_pygros"; };
			case "sofia" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_sofia"; };
			case "airport" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_airport"; };
			case "bb" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_bb"; };
			case "boot" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_boot"; };
			case "zaros" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_zaros"; };
			case "molos" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_molos"; };
			default {[];};
		};
	};
		case zarosBus : 
	{
		switch (_dest) do {
			case "kavala" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_kavala"; };
			case "athira" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_athira"; };
			case "pygros" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_pygros"; };
			case "sofia" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_sofia"; };
			case "airport" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_airport"; };
			case "bb" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_bb"; };
			case "boot" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_boot"; };
			case "rebel" : { _busCost = 1000; _destPos = getMarkerPos "MarkerBus_rebel"; };
			default {[];};
		};
	};
	default {[];};
};
//if(EQUAL(count _destPos,0)) exitWith {closeDialog 0;};
//if(CASH < _busCost) exitWith { hint format ["du hast nicht genug Geld dabei, Preis: %1", _busCost]; };
//if(life_cash < (_destInfo select 3)) exitWith {hint format[localize "STR_Bus_Cost",[_cost] call life_fnc_numberText];};
life_cash = life_cash - (_busCost);
disableUserInput true;
titleText ["Du bist im Bus eingeschlafen","BLACK",4];
sleep 10;
player setPos _destPos;
titleText ["du wachst auf und bist jetzt am Ziel","BLACK IN",6];
hint "Vielen Dank das Sie mit Altis Bus gefahren sind!";
disableUserInput false;