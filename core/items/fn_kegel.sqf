/*
    File: fn_kegel.sqf
    Author: OLLI aka Hauklotz
    
    Description:
    Holt das Item aus dem Inventar und setzt es auf der Map.
*/
private["_position","_kegel"];
_kegel = "RoadCone_L_F" createVehicle [0,0,0];
_kegel attachTo[player,[0,5.5,0.2]];
_kegel setDir 90;
_kegel setVariable["item","kegelDeployed",true];

life_action_kegelDeploy = player addAction["<t color='#BDBDBD'>Kegel aufstellen</t>",{if(!isNull life_kegel) then {detach life_kegel; life_kegel = ObjNull;}; player removeAction life_action_kegelDeploy; life_action_kegelDeploy = nil;},"",999,false,false,"",'!isNull life_kegel'];
life_kegel = _kegel;
waitUntil {isNull life_kegel};
if(!isNil "life_action_kegelDeploy") then {player removeAction life_action_kegelDeploy;};
if(isNull _kegel) exitWith {life_kegel = ObjNull;};
_kegel setPos [(getPos _kegel select 0),(getPos _kegel select 1),0];
_kegel allowDamage false;