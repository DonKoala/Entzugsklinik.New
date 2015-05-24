/*
    File: fn_packupmauer.sqf
    Author: Bryan "Tonic" Boardwine
    Edited by: OLLI aka Hauklotz

    Description:
    Packs up a deployed wall.
*/
private["_barrier"];
_barrier = nearestObjects[getPos player,["RoadBarrier_F"],8] select 0;
if(isNil "_barrier") exitWith {};

if(([true,"barrier",1] call life_fnc_handleInv)) then
{
    titleText["Du hast die Barriere aufgehoben.","PLAIN"];
    player removeAction life_action_barrierPickup;
    life_action_barrierPickup = nil;
    deleteVehicle _barrier;
};