/*
	File: fn_speedBomb.sqf
	Author: Fuzz
	
	Description:
	Attaches a speed bomb to a vehicle.
*/
private["_unit"];
_unit = cursorTarget;
 
if((!(_unit isKindOf "LandVehicle"))&&(!(_unit getVariable ["restrained",false]))) exitWith {hint "Hier kannst du die Bombe nicht anbringen!"};
if(player distance _unit > 7) exitWith {hint "Du musst innerhalb von 7 Metern bleiben!"};
if(!([false,"speedbomb",1] call life_fnc_handleInv)) exitWith {};
closeDialog 0;
 
life_action_inUse = true;
 
player playMove "AinvPknlMstpSnonWnonDnon_medic_1";
sleep 1.5;
waitUntil {animationState player != "ainvpknlmstpsnonwnondnon_medic_1"};
 
life_action_inUse = false;
if(player distance _unit > 7) exitWith {titleText["Du bist nicht in Reichweite!","PLAIN"];};
 
titleText["Du hast die Geschwindigkeitsbombe an- und scharf gemacht!","PLAIN"];

 
[_unit] spawn
{
	_veh = _this select 0;
	waitUntil {(speed _veh) > 70};
	[[_veh, "bombarm",10],"life_fnc_playSound",true,false] spawn BIS_fnc_MP;
	hint "Die Geschwindigkeitsbombe welche von dir angebracht wurde, wurde aktiviert!";
	{ [[2,"Ohoh.. An deinem Fahrzeug wurde eine Geschwindigkeitsbombe angebracht! Werde nicht langsamer als 50km/h und wähle wenn möglich den Notruf!"],"life_fnc_broadcast",_x,false] spawn life_fnc_MP; } foreach (crew _veh);
	waitUntil {(speed _veh) < 50};
	serv_killed = [player,"1090"];
	publicVariableServer "serv_killed";
	_test = "Bo_Mk82" createVehicle [0,0,9999];
	_test setPos (getPos _veh);
	_test setVelocity [100,0,0];
	hint "Deine Bombe ist detoniert! Ausgezeichnet.. Rambo!";
};