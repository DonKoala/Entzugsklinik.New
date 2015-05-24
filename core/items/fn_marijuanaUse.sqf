/*
	File: fn_fn_marijuanaUse.sqf
	Author: #Hank
	
	Description: Marijuana effects
*/

private["_OBJ","_PS"];
_OBJ = player;
_PS = "#particlesource" createVehicle getpos _OBJ;
[[_PS,_OBJ],"life_fnc_smokeWeed",true] spawn life_fnc_MP;

"colorCorrections" ppEffectEnable true;
"colorCorrections" ppEffectAdjust [1, 1, 0, [0,0,0,0.5], [random 5 - random 5,random 5 - random 5,random 5 - random 5,random 1], [random 5 - random 5,random 5 - random 5,random 5 - random 5, random 1]];
"colorCorrections" ppEffectCommit 1;
"chromAberration" ppEffectEnable true;
"chromAberration" ppEffectAdjust [0.01,0.01,true];
"chromAberration" ppEffectCommit 1;
sleep 2.25;

private["_force"];
for "_i" from 0 to 20 do {
"colorCorrections" ppEffectEnable true;
"colorCorrections" ppEffectAdjust [1, 1, 0, [0,0,0,0.5], [random 5 - random 5,random 5 - random 5,random 5 - random 5,random 1], [random 5 - random 5,random 5 - random 5,random 5 - random 5, random 1]];
"colorCorrections" ppEffectCommit 1;
sleep 2.25;
};

"chromAberration" ppEffectEnable false;
"colorCorrections" ppEffectEnable false;
deleteVehicle _PS;