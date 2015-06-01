/*
    File: fn_servicefeeGive.sqf
    Author: Bryan "Tonic" Boardwine // Edited by Aphec & SaOk
    
    Description:
    Gives a service fee to the targeted player.
*/
private["_val"];
if(isNil {life_servicefee_unit}) exitWith {hint "Person ist nicht vorhanden"};
if(isNull life_servicefee_unit) exitWith {hint "Person existiert nicht."};
_val = ctrlText 2652;
if(!([_val] call fnc_isnumber)) exitWith {hint "Dies ist kein gültiges Zahlenformat."};
if((parseNumber _val) > 100000) exitWith {hint "Sie können nicht mehr als €100,000 als Service-Gebühr berechnen!"};
[[0,format["",name player,[(parseNumber _val)] call life_fnc_numberText,name life_servicefee_unit]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
[[player,(parseNumber _val)],"life_fnc_servicefeePrompt",life_servicefee_unit,false] spawn life_fnc_MP;
closeDialog 0;