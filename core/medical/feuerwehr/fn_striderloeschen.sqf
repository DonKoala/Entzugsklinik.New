
_veh = vehicle player;
_feuer = cursorTarget;

{
	if (_x distance _veh < 30)then{
	[[_veh],"life_fnc_watereff",_x,true] spawn life_fnc_MP;
	};
} forEach playableUnits;

[] spawn life_fnc_loescheruse;



/*
life_action_fireloeschen = player addAction["Feuerlöschen",life_fnc_striderloeschen,"",-1,false,false,"",'(typeOf vehicle player) == "I_MRAP_03_gmg_F"'];
*/

