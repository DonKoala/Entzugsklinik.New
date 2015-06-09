//moonshinescript made by spll3r

			 
if(life_inv_oilu > 1 ) then
	{		
			mdone = true;
			hint "Du stellst Benzin aus dein Rohoel her.";
			player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
			sleep 7;
			
			life_inv_oilu = life_inv_oilu - 2;
			life_carryWeight = life_carryWeight - 12;

			sleep 2;
			[true,"benzin",4] call life_fnc_handleInv;
			/*
			life_inv_benzin = life_inv_benzin + 4;
			life_carryWeight = life_carryWeight + 3;
			*/
			hint "Der Durchlauf ist fertig!";
			//life_inv_l = 2
						
			} else { hint "Du benoetigst 2x Rohoel";
	 };



