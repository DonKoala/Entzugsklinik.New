/*
	File: fn_copInteractionMenu.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Replaces the mass addactions for various actions towards another player.
*/
#define Btn1 37450
#define Btn2 37451
#define Btn3 37452
#define Title 37401

private["_display","_curTarget","_Btn1","_Btn2","_Btn3"];
if(!dialog) then {
	createDialog "pInteraction_Menu";
};
disableSerialization;
_curTarget = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _curTarget) exitWith {closeDialog 0;}; //Bad target
		
if(!isPlayer _curTarget && (_curTarget getVariable["restrained",false])) exitWith {closeDialog 0;}; //Bad side check?
_display = findDisplay 37400;
_Btn1 = _display displayCtrl Btn1;
_Btn2 = _display displayCtrl Btn2;
life_pInact_curTarget = _curTarget;

//Set Escort Button
if((_curTarget getVariable["Escorting",false])) then {
	_Btn1 ctrlSetText localize "STR_pInAct_StopEscort";
	_Btn1 buttonSetAction "[life_pInact_curTarget] call life_fnc_stopEscorting; [life_pInact_curTarget] call life_fnc_InteractionMenu;";
} else {
	_Btn1 ctrlSetText localize "STR_pInAct_Escort";
	_Btn1 buttonSetAction "[life_pInact_curTarget] call life_fnc_escortAction; closeDialog 0;";
};

//Set Unrestrain Button
if([false,"handcuffkeys",1] call life_fnc_handleInv) then
{
//Set Unrestrain Button
_Btn2 ctrlSetText localize "STR_pInAct_Unrestrain";
_Btn2 buttonSetAction "[life_pInact_curTarget] call life_fnc_unrestrain;[true,"handcuffs",1] call life_fnc_handleInv; closeDialog 0;";
}else{
_Btn2 ctrlSetText localize "STR_pInAct_Unrestrain";
_Btn2 buttonSetAction "[] spawn life_fnc_lockpick; closeDialog 0;";
if(life_inv_lockpick > 0) then {_Btn2 ctrlEnable true;} else {_Btn2 ctrlEnable false;};
};