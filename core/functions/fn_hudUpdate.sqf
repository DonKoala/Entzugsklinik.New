/*
	File: fn_hudUpdate.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Updates the HUD when it needs to.
*/
private["_ui","_food","_water","_health","_money","_cash"];
disableSerialization;

/* KILL IT FOR NOW
_ui = uiNameSpace getVariable ["playerHUD",displayNull];
if(isNull _ui) then {[] call life_fnc_hudSetup;};
_food = _ui displayCtrl 23500;
_water = _ui displayCtrl 23510;
_health = _ui displayCtrl 23515;
_money = _ui displayCtrl 23520;

_cash = life_cash+life_atmcash;

//Update food
_food ctrlSetPosition [safeZoneX+safeZoneW-0.090,safeZoneY+safeZoneH-0.548-0.500];
_food ctrlSetText format["%1", life_hunger];
_food ctrlCommit 0;
//Update Water
_water ctrlSetPosition [safeZoneX+safeZoneW-0.090,safeZoneY+safeZoneH-0.502-0.500];
_water ctrlSetText format["%1", life_thirst];
_water ctrlCommit 0;
//Update Health
_health ctrlSetPosition [safeZoneX+safeZoneW-0.090,safeZoneY+safeZoneH-0.456-0.500];
_health ctrlSetText format["%1", round((1 - (damage player)) * 100)];
_health ctrlCommit 0;
//Update Money
_money ctrlSetPosition [safeZoneX+safeZoneW-0.090,safeZoneY+safeZoneH-0.410-0.500];
//Shorten Money to prevent overflow
if(_cash >= 1000 && _cash < 1000000) then {
	_cash = round(_cash / 1000);
	_money ctrlSetText format["%1", format["%1K",_cash]];
} else {
	_money ctrlSetText format["%1", format["%1",_cash]];
};
if(_cash >= 1000000) then {
	_cash = round(_cash / 1000000);
	_money ctrlSetText format["%1", format["%1M",_cash]];
};

_money ctrlCommit 0;