if ((player distance prisondoor) < 10) then {
	if ((side player) == west) exitwith {
		prisondoor animate ['maindoor1', 0]; 
		prisondoor animate ['maindoor2', 0]; 
	};
	if(!([false,"blastingcharge",1] call life_fnc_handleInv)) exitWith {hint "Du brauchst eine Sprengladung um das zu tun!"};
	[] spawn {
		playSound "bombe";
		hint "Die Sprengladung ist nun scharf. Du hast 30 Sekunden um in Deckung zu gehen!";
		sleep 25;
		hint "Sprengladung geht hoch in: 5";
		sleep 1;
		hint "Sprengladung geht hoch in: 4";
		sleep 1;
		hint "Sprengladung geht hoch in: 3";
		sleep 1;
		hint "Sprengladung geht hoch in: 2";
		sleep 1;
		hint "Sprengladung geht hoch in: 1";
		sleep 1;
		_bomb = "Bo_GBU12_LGB_MI10" createVehicle [getPosATL prisondoor select 0, getPosATL prisondoor select 1, (getPosATL prisondoor select 2)+0.5];
		prisondoor animate ['maindoor1', 1.6]; 
		prisondoor animate ['maindoor2', -1.6];
		
	};
};