/*
 File: fn_disableSnakes.sqf
 Author: ColinM
 Description: Remove ambient snakes.
 Credits: Lala14
*/

[] spawn {
	while {true} do {
	{
		if ((agent _x isKindOf "Snake_random_F","ButterFly_random","Bird","Cicada","DragonFly","HoneyBee","HouseFly","Insect","Kestrel_Random_F","Mosquito","SeaGull")) then { deleteVehicle agent _x; };
		}forEach agents;
		sleep 2;
	};
};











