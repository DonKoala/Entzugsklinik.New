//script made by spll3r hersteller fia'n brenna

if(life_inv_brenn > 2) then
{ 
hint "Du kannst nicht mehr als 3 Brennkessel herstellen!";
} else {
		if(life_inv_bauma > 19) then
		{
			hint "Dein Brennkessel ist in wenigen Sekunden fertig!";
			life_inv_bauma =  life_inv_bauma - 20;
			life_carryWeight = life_carryWeight - 40;
			sleep 10;
			life_inv_brenn = life_inv_brenn + 1;
			life_carryWeight = life_carryWeight + 10;
			hint "Bitte sehr!";
			sleep 4;
			hint "TIPP: Bau deine Anlage auf ebener Flaeche auf. Es Duerfen keine Haeuser, Baeume, Straßen, etc in unmittelbarer Umgebung sein!";
		} else { hint "Du brauchst mindestens 20 Baumaterialien!";
		       };
};

























