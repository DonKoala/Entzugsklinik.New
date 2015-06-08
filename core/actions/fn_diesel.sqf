//moonshinescript made by spll3r
if(safe) exitWith {}; 			
safe = true; 			
/*_gather = "diesel"; 
_val = 3;
_diff = [_gather,_val,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(_diff == 0) exitWith {hint localize "STR_NOTF_InvFull"};
	*/	
			hint "Du stellst Diesel her!.";
			player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
			sleep 7;
			
			/*life_inv_diesel = life_inv_diesel + 3;
			life_carryWeight = life_carryWeight + 9;
			*/
			[true,"diesel",3] call life_fnc_handleInv;
			safe = false;
			
				
