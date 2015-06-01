/*
    File: fn_servicefeePay.sqf
    Author: Bryan "Tonic" Boardwine // Edited by Aphec & SaOk
    
    Description:
    Pays the servicefee.
*/
if(isnil {life_servicefee_val} OR isNil {life_servicefee_mechanic}) exitWith {};

if(life_cash < life_servicefee_val) exitWith
{
    if(life_atmcash < life_servicefee_val) exitWith 
    {
        hint "Sie haben nicht genügend Geld um die Service-Gebühr zu bezahlen!";
        [[1,format["%1 kann die Gebühr nicht bezahlen, da er kein Geld mehr hat.",name player]],"life_fnc_broadcast",life_servicefee_mechanic,false] spawn life_fnc_MP;
        closeDialog 0;
    };
    hint format["Sie haben die Service-Gebühr von $%1 bezahlt!",[life_servicefee_val] call life_fnc_numberText];
    life_atmcash = life_atmcash - life_servicefee_val;
    life_servicefee_paid = true;
    [[0,format["%1 hat die Service-Gebühr von $%2 bezahlt",name player,[life_servicefee_val] call life_fnc_numberText]],"life_fnc_broadcast",east,false] spawn life_fnc_MP;
    closeDialog 0;
};
    //SAOK 
    life_cash = life_cash - life_servicefee_val;
    life_servicefee_paid = true;
closeDialog 0;
[[1,format["%1 hat die Service-Gebühr bezahlt.",name player]],"life_fnc_broadcast",life_servicefee_mechanic,false] spawn life_fnc_MP;