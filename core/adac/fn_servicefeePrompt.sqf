/*
    File: fn_ticketPrompt
    Author: Bryan "Tonic" Boardwine // Edited by Aphec & SaOk
    
    Description:
    Prompts the player that he is being ticketed.
*/
private["_mechanic","_val","_display","_control"];
if(!isNull (findDisplay 2600)) exitwith {}; //Already at the ticket menu, block for abuse?
_mechanic = _this select 0;
if(isNull _mechanic) exitWith {};
_val = _this select 1;

createDialog "life_servicefee_pay";
disableSerialization;
waitUntil {!isnull (findDisplay 2600)};
_display = findDisplay 2600;
_control = _display displayCtrl 2601;
life_servicefee_paid = false;
life_servicefee_val = _val;
life_servicefee_mechanic = _mechanic;
_control ctrlSetStructuredText parseText format["<t align='center'><t size='.8px'>%1 hat Ihnen eine Service-Gebühr in Höhe von $%2 in Rechnung gestellt",name _mechanic,_val];

[] spawn
{
    disableSerialization;
    waitUntil {life_servicefee_paid OR (isNull (findDisplay 2600))};
    if(isNull (findDisplay 2600) && !life_servicefee_paid) then
    {
        [[0,format["%1 verweigert die Service-Gebühr.",name player]],"life_fnc_broadcast",east,false] spawn life_fnc_MP;
        [[1,format["%1 verweigert die Service-Gebühr.",name player]],"life_fnc_broadcast",life_servicefee_mechanic,false] spawn life_fnc_MP;
    } 
    else
    {
    [[[life_servicefee_val],{life_atmcash = life_atmcash + (_this select 0);}],"BIS_fnc_call",life_servicefee_mechanic,false] spawn life_fnc_MP;  
    };
};