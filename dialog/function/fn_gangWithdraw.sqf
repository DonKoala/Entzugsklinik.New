#include <macro.h>
/*
	Author: ME
	
	Description:
	Geld vom Gangkonto abheben
*/
private["_value"];
_value = parseNumber(ctrlText 2702);
__SUB__(_gFund,_value);
_gFund = grpPlayer getVariable ["gang_bank",0];

if(_value > 999999) exitWith {hint localize "STR_ATM_GreaterThan";};
if(_value < 0) exitWith {};
if(!([str(_value)] call life_fnc_isnumeric)) exitWith {hint localize "STR_AIM_notnumeric"};
if(_value > _gFund) exitWith {hint "Es ist nicht genug Geld auf dem Gang Konto vorhanden."};

life_cash = life_cash + _value;
_gFund = _gFund - _value;
grpPlayer setVariable ["gang_bank",_gFund,true];

hint format["Du hast %1€ von deinem Gangkonto abgehoben.",[_value] call life_fnc_numberText];
[] call life_fnc_atmMenu;
[0] call SOCK_fnc_updatePartial;
[[1,grpPlayer],"TON_fnc_updateGang",false,false] spawn life_fnc_MP;