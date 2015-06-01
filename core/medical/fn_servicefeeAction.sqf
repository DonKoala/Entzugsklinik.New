/*
 File: fn_ticketAction.sqf
 Author: Bryan "Tonic" Boardwine // Edited by Aphec & SaOk
 
 Description:
 Starts the Service Fee process.
*/
private["_unit"];
_unit = cursorTarget;
disableSerialization;
if(!(createDialog "life_servicefee_give")) exitWith {hint "Es konnte das Gebühren-Interface nicht geöffnet werden"};
if(isNull _unit OR !isPlayer _unit) exitwith {};
ctrlSetText[2651,format["Service-Gebühr an %1",name _unit]];
life_servicefee_unit = _unit;