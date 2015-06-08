/*
	File: fn_vInteractionMenu.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Replaces the mass addactions for various vehicle actions
*/
#define Btn1 37450
#define Btn2 37451
#define Btn3 37452
#define Btn4 37453
#define Btn5 37454
#define Btn6 37455
#define Title 37401

private["_display","_curTarget","_Btn1","_Btn2","_Btn3","_Btn4","_Btn5","_Btn6"];

if(!dialog) then {
	createDialog "vInteraction_Menu";
};

disableSerialization;

_curTarget = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _curTarget) exitWith {closeDialog 0;};
_isVehicle = if((_curTarget isKindOf "landVehicle") OR (_curTarget isKindOf "Ship") OR (_curTarget isKindOf "Air")) then {true} else {false};
if(!_isVehicle) exitWith {closeDialog 0;};

_display = findDisplay 37400;
_Btn1 = _display displayCtrl Btn1;
_Btn2 = _display displayCtrl Btn2;
_Btn3 = _display displayCtrl Btn3;
_Btn4 = _display displayCtrl Btn4;
_Btn5 = _display displayCtrl Btn5;
_Btn6 = _display displayCtrl Btn6;

life_vInact_curTarget = _curTarget;

//Button 1 - Set vehicle repair action
_Btn1 ctrlSetText localize "STR_vInAct_Repair";
_Btn1 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_repairTruck;";

if("ToolKit" in (items player) && (damage _curTarget < 1)) then 
{
    _Btn1 ctrlEnable true;
} else {
    _Btn1 ctrlEnable false;
};

//Button 2 - Set pullout action
_Btn2 ctrlSetText localize "STR_vInAct_PullOut";
_Btn2 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_pulloutAction; closeDialog 0;";

if(count crew _curTarget == 0) then 
{
    _Btn4 ctrlEnable false;
} else {
    _Btn4 ctrlEnable true;
};

//Button 3 - Set impound vehicle action
_Btn3 ctrlSetText localize "STR_vInAct_Impound";
_Btn3 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_impoundAction; closeDialog 0;";


//Button 4 - undefined
_Btn4 ctrlShow false;
//Button 5 - undefined
_Btn5 ctrlShow false;
//Button 6 - undefined
_Btn6 ctrlShow false; 

