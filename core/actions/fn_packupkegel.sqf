/*
    File: fn_packupmauer.sqf
    Author: Bryan "Tonic" Boardwine
    Edited by: OLLI aka Hauklotz
    Description:
    Packs up a deployed wall.
*/
private["_kegel"];
_kegel = nearestObjects[getPos player,["RoadCone_L_F"],8] select 0;
if(isNil "_kegel") exitWith {};

if(([true,"kegel",1] call life_fnc_handleInv)) then
{
    titleText["Du hast den Kegel aufgehoben.","PLAIN"];
    player removeAction life_action_kegelPickup;
    life_action_kegelPickup = nil;
    deleteVehicle _kegel;
};