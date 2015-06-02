/*
    File: fn_mauer.sqf
    Author: OLLI aka Hauklotz
    
    Description:
    Holt das Item aus dem Inventar und setzt es auf der Map.
*/
private["_position","_barriersmall"];
_barriersmall = "RoadBarrier_small_F" createVehicle [0,0,0];
_barriersmall attachTo[player,[0,5.5,0.2]];
_barriersmall setDir 90;
_barriersmall setVariable["item","barriersmallDeployed",true];
life_action_barriersmallDeploy = player addAction["<t color='#00FF00'>Barriere Klein aufstellen</t>",{if(!isNull life_barriersmall) then {detach life_barriersmall; life_barriersmall = ObjNull;}; player removeAction life_action_barriersmallDeploy; life_action_barriersmallDeploy = nil;},"",999,false,false,"",'!isNull life_barriersmall'];
life_barriersmall = _barriersmall;
waitUntil {isNull life_barriersmall};
if(!isNil "life_action_barriersmallDeploy") then {player removeAction life_action_barriersmallDeploy;};
if(isNull _barriersmall) exitWith {life_barriersmall = ObjNull;};
_barriersmall setPos [(getPos _barriersmall select 0),(getPos _barriersmall select 1),0];
_barriersmall allowDamage false;