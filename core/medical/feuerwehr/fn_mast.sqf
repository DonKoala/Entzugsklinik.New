/*
+Copyright by Manuel_Raven
+
+Website: Manuel-rabenmüller.de
+
+editing for zoggaz by Jonas
+
*/
//if(life_lampe != objNull)exitWith{hint "Du hast bereits eine Lampe ausgefahren!"};
_veh = vehicle player;
_objlist = attachedObjects _veh;
_objs = [];
{
_objs pushBack (typeOf _x);
}forEach _objlist;

if ("Land_LampHalogen_F" in _objs)then {
	life_lampe = nearestObject [_veh, "Land_LampHalogen_F"];
}else{
	_lamp1="Land_LampHalogen_F" createVehicle (getPos _veh);
	_lamp1 attachTo [_veh,[-0.5,1.5,-6]];
	_lamp1 setDir 90;
	_lamp1 hideObject false;
	_lamp1 setDamage 0.99; 
	life_lampe = _lamp1;
};

player removeAction life_action_lamp;
life_veh_action0 = _veh addAction ["Mast ausfahren",{[0]call life_fnc_updatelamp}];
life_veh_action1 =_veh addAction ["Mast einfahren",{[1]call life_fnc_updatelamp}];
life_veh_action2 =_veh addAction ["Mast um 90° drehen",{_dir = getDir life_lampe; _dir = _dir + 90; life_lampe setDir _dir;}];
life_veh_action3 =_veh addAction ["Mastlichter an",{[3]call life_fnc_updatelamp}];
life_veh_action4 =_veh addAction ["Mastlichter aus",{[4]call life_fnc_updatelamp}];

[4]call life_fnc_updatelamp;

