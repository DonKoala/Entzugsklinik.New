//script made by spll3r hersteller fia brenner

if(life_inv_raff > 3) then
{ 
hint "Du kannst nicht mehr als 3 Raffinerien herstellen!";
} else {
		if(life_inv_bauma > 19) then
		{
			hint "Deine Raffinerie ist in wenigen Sekunden fertig!";
			life_inv_bauma = life_inv_bauma - 20;
			sleep 10;
			life_inv_raff = life_inv_raff + 1;
			life_carryWeight = life_carryWeight + 10;
			hint "Bitte sehr!";
			sleep 4;
			hint "TIPP: Bau deine Anlage auf ebener Flaeche auf. Es Duerfen keine Haeuser, Baeume, Straßen, etc in unmittelbarer Umgebung sein!";
		} else { hint "Du brauchst mindestens 20 Baumaterialien!";
		       };
};

























