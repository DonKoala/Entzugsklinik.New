#include <macro.h>
/*
	File: fn_adminDebugCon.sqf
	Author: ColinM9991
	
	Description:
	Opens the Debug Console.
*/
if(__GETC__(life_adminlevel) < 1 && !((getPlayerUID player) in TJMS_ADMIN)) exitWith {closeDialog 0; hint "You have no business using this";};

createDialog "RscDisplayDebugPublic";
[[0,format["Admin %1 hat die Debug Konsole geöffnet.",profileName]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;