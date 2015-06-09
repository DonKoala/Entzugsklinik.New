//moonshinescript made by spll3r

			 
if(life_inv_oilu > 0 ) then
	{		
			mdone = true;
			hint "Du stellst Diesel aus Rohoel her.";
			player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
			sleep 7;
			
			life_inv_oilu = life_inv_oilu - 1;
			life_carryWeight = life_carryWeight - 6;

			sleep 2;
			[true,"diesel",2] call life_fnc_handleInv;
			/*
			life_inv_diesel = life_inv_diesel + 2;
			life_carryWeight = life_carryWeight + 4;
			*/
			hint "Der Durchlauf ist fertig!";
			//life_inv_l = 2
						
			} else { hint "Du benoetigst 1x Rohoel";
	 };