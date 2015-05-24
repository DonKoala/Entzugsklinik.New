//////////////////
//Author: Toto/////
//abetterworld.de//
//////////////////
[[0,format["%1 der Feigling wird nun elendlich an Zyankali verenden!",player getVariable["realname",name player]]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;// globale nachricht an alle spieler

		enableCamShake true;// kamera gewackle 
		addCamShake [10, 45, 10];	

		player setFatigue 1;// erschöpfung bei 100% ... sprich der rennt erstma nirgends hin
		player setDamage (0.1 + (damage player));//+10 schaden
		sleep 3;
		player setDamage (0.1 + (damage player));   
		sleep 3;
		player setDamage (0.1 + (damage player));
		sleep 3;
		player setDamage (0.1 + (damage player));
		sleep 3;
		player setDamage (0.1 + (damage player));
		sleep 3;
		player setDamage (0.1 + (damage player));
		sleep 3;
		player setDamage (0.1 + (damage player));
		sleep 3;
		player setDamage (0.1 + (damage player));
		sleep 3;
		player setDamage (0.1 + (damage player));
		sleep 3;
		player setDamage (0.1 + (damage player));// das 10. mal +10 schaden ... 100% also Exitus
		sleep 3;
		resetCamShake;// weil tod muss hier auch nichts mehr wackeln
		player setFatigue 0;// damit er nicht ohne ausdauer spawned