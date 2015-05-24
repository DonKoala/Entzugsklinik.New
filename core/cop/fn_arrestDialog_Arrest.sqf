/*

	Player clicked arrest/ok

*/

private ["_time"];

if(playerSide != west) exitWith {};
if(isNil "life_pInact_curTarget") exitWith {hint "Invalid destination."};

//Get minutes
_time = ctrlText 1400;


if(! ([_time] call TON_fnc_isnumber)) exitWith
{
	hint "Du musst eine gültige Zeit eingeben.";
};

_time = parseNumber _time; //requested number
_time = round _time;

if(_time < 1 || _time > 120) exitWith { hint hint "Du kannst nur von 1-120 Minuten in das Gefängnis!"; };

closeDialog 0; 
[life_pInact_curTarget, _time] call life_fnc_arrestAction;