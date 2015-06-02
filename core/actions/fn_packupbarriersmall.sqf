/*
    File: fn_packupmauer.sqf
    Author: Bryan "Tonic" Boardwine
    Edited by: OLLI aka Hauklotz
    Description:
    Packs up a deployed wall.
*/
private["_barriersmall"];
_barriersmall = nearestObjects[getPos player,["RoadBarrier_small_F"],8] select 0;
if(isNil "_barriersmall") exitWith {};

if(([true,"barriersmall",1] call life_fnc_handleInv)) then
{
    titleText["Du hast die Barriere aufgehoben.","PLAIN"];
    deleteVehicle _barriersmall;
};
