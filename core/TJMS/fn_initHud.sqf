/*
	Idea by Arma 3 Life improvements 
*/

waitUntil {!(isNull (findDisplay 46))};
disableSerialization;
_rscLayer = "tjmsStatusbar" call BIS_fnc_rscLayer;
_rscLayer cutRsc["tjmsStatusbar","PLAIN"];

[] spawn {
	while {true} do
	{	
		sleep 1;
		
		// set some basic variables
		_getHealth = getdammage player;
		_getStamina = getfatigue player;
		_getHunger = life_hunger;
		_getThirst = life_thirst;
		
		// why to dooo dat??? :)
		_health = ["ERROR", "ERROR"];
		_stamina = ["ERROR", "ERROR"];
		_hunger = ["ERROR", "ERROR"];
		_thirst = ["ERROR", "ERROR"];
		
		// prepare the health
		switch(true) do {
			case (_getHealth < 0.10): {_health = ["#00FF4C", parseText format["Sehr Gesund"]];};
			case (_getHealth < 0.20): {_health = ["#1AFF00", parseText format["Ein paar Kratzer"]];};
			case (_getHealth < 0.30): {_health = ["#7BFF00", parseText format["Leicht verletzt"]];};
			case (_getHealth < 0.40): {_health = ["#BFFF00", parseText format["Fühle mich nicht gut"]];};
			case (_getHealth < 0.50): {_health = ["#EAFF00", parseText format["Leichte Schmerzen"]];};
			case (_getHealth < 0.60): {_health = ["#FFBF00", parseText format["Mir geht es gar nicht gut"]];};
			case (_getHealth < 0.70): {_health = ["#FF8400", parseText format["Etwas ist gebrochen"]];};
			case (_getHealth < 0.80): {_health = ["#FF4000", parseText format["Ich habe schwere Verletzungen"]];};
			case (_getHealth < 0.90): {_health = ["#FF3500", parseText format["Es brennt in mir wie Feuer"]];};
			case (_getHealth < 1): {_health = ["#FF0000", parseText format["Ich bin am verrecken"]];};
			case (_getHealth == 1): {_health = ["#C10000", parseText format["Du bist gestorben"]];};
			default {_health = ["#000000", parseText format["ERROR"]];};
		};
		
		// prepare hunger
		switch(true) do {
			case (_getHunger > 90): {_hunger = ["#00FF4C", parseText format["Ich bin nicht hungrig"]];};
			case (_getHunger > 80): {_hunger = ["#1AFF00", parseText format["Bekomme Appetit"]];};
			case (_getHunger > 70): {_hunger = ["#7BFF00", parseText format["Könnte was essen"]];};
			case (_getHunger > 60): {_hunger = ["#BFFF00", parseText format["Bräuchte demnächst etwas"]];};
			case (_getHunger > 50): {_hunger = ["#EAFF00", parseText format["Magen fühlt sich leer an"]];};
			case (_getHunger > 40): {_hunger = ["#FFBF00", parseText format["Ich sollte etwas essen"]];};
			case (_getHunger > 30): {_hunger = ["#FF8400", parseText format["Mein Magen knurrt"]];};
			case (_getHunger > 20): {_hunger = ["#FF4000", parseText format["Ich muss jetzt Etwas essen"]];};
			case (_getHunger > 10): {_hunger = ["#FF3500", parseText format["Fange an zu verhungern"]];};
			case (_getHunger > 0): {_hunger = ["#FF0000", parseText format["Ich verhungere"]];};
			case (_getHunger == 0): {_hunger = ["#C10000", parseText format["Du bist gestorben"]];};
			default {_hunger = ["#000000", parseText format["ERROR"]];};
		};
		
		// prepare thirst
		switch(true) do {
			case (_getThirst > 90): {_thirst = ["#00FF4C", parseText format["Nicht durstig"]];};
			case (_getThirst > 80): {_thirst = ["#1AFF00", parseText format["Wasser wäre nicht falsch"]];};
			case (_getThirst > 70): {_thirst = ["#7BFF00", parseText format["Sollte demnächst trinken"]];};
			case (_getThirst > 60): {_thirst = ["#BFFF00", parseText format["Rachen ist etwas trocken"]];};
			case (_getThirst > 50): {_thirst = ["#EAFF00", parseText format["Ich sollte bald trinken"]];};
			case (_getThirst > 40): {_thirst = ["#FFBF00", parseText format["Mein Rachen ist trocken"]];};
			case (_getThirst > 30): {_thirst = ["#FF8400", parseText format["Ich sollte jetzt trinken"]];};
			case (_getThirst > 20): {_thirst = ["#FF4000", parseText format["Brauche etwas Flüssiges"]];};
			case (_getThirst > 10): {_thirst = ["#FF3500", parseText format["Fange an zu dehydrierung"]];};
			case (_getThirst > 0): {_thirst = ["#FF0000", parseText format["Ich dehydriere"]];};
			case (_getThirst == 0): {_thirst = ["#C10000", parseText format["Du bist gestorben"]];};
			default {_thirst = ["#000000", parseText format["ERROR"]];};
		};
		
		// prepare stamina
		switch(true) do {
			case (_getStamina < 0.10): {_stamina = ["#00FF4C", parseText format["Energiegeladen"]];};
			case (_getStamina < 0.20): {_stamina = ["#1AFF00", parseText format["Ich könnte für immer rennen"]];};
			case (_getStamina < 0.30): {_stamina = ["#7BFF00", parseText format["Fühle mich etwas schlapp"]];};
			case (_getStamina < 0.40): {_stamina = ["#BFFF00", parseText format["Ich brauche eine Pause"]];};
			case (_getStamina < 0.50): {_stamina = ["#EAFF00", parseText format["Sollte jetzt wirklich pausieren"]];};
			case (_getStamina < 0.60): {_stamina = ["#FFBF00", parseText format["Ich bin erschöpft"]];};
			case (_getStamina > 0.59): {_stamina = ["#FF8400", parseText format["Habe starkes Seitenstechen"]];};
			default {_stamina = ["#000000", parseText format["ERROR"]];};
		};
		
		// build it together
		_final = parseText format[
			"<t font='EtelkaNarrowMediumPro' color='#ffffff' size='1.3' align='right'>%1</t><t font='EtelkaNarrowMediumPro' color='#ffffff' size='1.0' align='right'><br/><t color='%2'>%3</t> | <t color='%4'>%5</t> | <t color='%6'>%7</t> | <t color='%8'>%9</t>", 
			(name player),
			_health select 0, _health select 1,
			_stamina select 0, _stamina select 1, 
			_hunger select 0, _hunger select 1, 
			_thirst select 0, _thirst select 1
		];
		
		// show it when ready
		if(!tjms_IntroOn) then {
			((uiNamespace getVariable "tjmsStatusbar")displayCtrl 1000)ctrlSetStructuredText _final;
		} else {
			_final = parseText format[""];
			((uiNamespace getVariable "tjmsStatusbar")displayCtrl 1000)ctrlSetStructuredText _final;
		};
	}; 
};