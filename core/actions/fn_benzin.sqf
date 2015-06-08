// script made by spll3r
if(safe) exitWith {};
safe = true;
//_gather = "benzin"; 
//_val = 3;
//_diff = [_gather,_val,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
//_gather = 
//if(_diff == 0) exitWith {hint localize "STR_NOTF_InvFull"};


			hint "Du stellst Benzin her!.";
			player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
			sleep 7;
			player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
			sleep 7;
			/*
			life_inv_benzin = life_inv_benzin + 3;
			life_carryWeight = life_carryWeight + 9;
			*/
			[true,"benzin",3] call life_fnc_handleInv;

			safe = false;
	
			//gather check??
//if(vehicle player != player) exitWith {/*hint localize "STR_NOTF_GatherVeh";*/};





