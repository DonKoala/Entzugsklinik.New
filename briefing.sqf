waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["info","Informationen"];
player createDiarySubject ["steuerung","Steuerung"];
	
	// Informationen
	player createDiaryRecord ["info",
	[
		"2 - Bewerbung Polizei/Sanitäter",
			"
				<font color='#F4FA58'>> Wie bewerbe ich mich eigentlich bei euch?<br/></font>
				Einfach auf dem Ts3 melden und freundlich die<br/>
				Polizeileitung bzw. den Chefarzt, den Support<br/>
				oder den Community Manager fragen.<br/><br/>
				
				<font color='#F4FA58'>> Wie geht es dann mit mir weiter?<br/></font>
				Es werden nun einige Fragen auf dich zukommen die <br/>
				allgemein Entzugsklinik Life aber auch nur die<br/> 
				Polizei oder den Rettungsdienst betreffen können.<br/><br/>
				
				<font color='#F4FA58'>> Unser Praktikum für Dich..<br/></font>
				Solltest du das alles überlebt haben und immernoch <br/>
				überzeugt sein solltest folgt ein Praktikum welches <br/>
				1 Stunde bis maximal 2-3 Tage gehen kann.<br/><br/>
				
				In dieser Zeit darfst du nur mit deinem/einem<br/>
				Vorgesetzten online kommen um dich zu beweisen, es<br/>
				folgen praktische Prüfungen.<br/><br/>
				
				Wenn das alles erfolgreich absolviert wurde<br/> 
				können wir Dich in unserem Team begrüßen :)<br/><br/>
				
				<font color='#F4FA58'>> Hast du Angst bekommen?<br/></font>
				keine Sorge.. wenn wir schnell überzeugt sind dann<br/>
				kannst Du dich sofort beweisen bzw. wirst du<br/>
				sofort Sanitäter/Polizist und<br/>
				hast keine direkten Prüfungen auf dem Buckel!<br/><br/>
				
				Viel Glück, euer Entzugsklinik Team!
			"
		]
	];
	
	player createDiaryRecord ["info",
	[
		"1 - Über Entzugsklinik Tschernobyl Life",
			"
				<font color='#F4FA58'>Unser Team besteht derzeit aus folgenden Personen:</font><br/>
				Developer / Scripter: Dieter Nantz<br/>
				Developer / Mapper: Petra Nantz <br/>
				Designer / Künstler: Petra Nantz ,Michael Nantz, John Krüger<br/>
				Server-Projektleitung:<br/>
				   Petra Nantz,<br/>
				   Dieter Nantz,<br/>
				   Vogti<br/>
				Ts3-Techniker: Michael Nantz ,Magnus Hilten,John Krüger <br/>
				Community Manager: Vogti Krüger ,Magnus Hilten, Vogti Krüger<br/><br/>
				
				<font color='#F4FA58'>Wo finde ich Was?</font><br/>
				Teamspeak3-Adresse: 146.0.32.117 <br/>
				Gameserver-Adresse: 146.0.32.117<br/>
				Regeln und Bußgeldkatalog: Im Forum ( www.Entzugsklinik-Gaming.de)<br/><br/>
				
				<font color='#F4FA58'>Über die Streamer und Youtuber:</font><br/>
				Auf unserem Server wird aufgenommen undgestreamt!<br/>
				Sollte Jemand dies nicht mögen solle Er<br/>
				doch bitte wo anders spielen :)<br/>
				Mit freundlichen Grüßen, Das Entzugsklinik-Team
			"
		]
	];

	// Steuerung
	player createDiaryRecord ["steuerung",
		[
			"Steuerung",
				"
					<font color='#F4FA58'>Z</font> Spielerinventar öffnen<br/>
					<font color='#F4FA58'>T</font> Fahrzeuginventar öffnen<br/>
					<font color='#F4FA58'>U</font> Autos und Häuser auf- und zuschließen<br/>
					<font color='#F4FA58'>C</font> Spitzhacke benutzen<br/>
					<font color='#F4FA58'>O</font> Polizeischranken Öffnen<br/>
					<font color='#F4FA58'>K</font> EMP-Menü für Polizei-Hummingbird<br/>
					<font color='#F4FA58'>Q</font> Blinker Links<br/>
					<font color='#F4FA58'>E</font> Blinker Rechts<br/>
					<font color='#F4FA58'>Left Shift + O</font> Ohrenstöpsel AN / AUS<br/>
					<font color='#F4FA58'>Left Shift + U</font> Auto + Türen auf<br/>
					<font color='#F4FA58'>Left Shift + NUM1</font> Anim. Kung Fu<br/>
					<font color='#F4FA58'>Left Shift + NUM2</font> Anim. Kniebeuge<br/>
					<font color='#F4FA58'>Left Shift + NUM3</font> Anim. Kniebeuge (schnell)<br/>
					<font color='#F4FA58'>Left Shift + NUM4</font> Anim. Liegestütze <br/>
					<font color='#F4FA58'>Left Shift + NUM5</font> Anim. Begrüßen <br/>
					<font color='#F4FA58'>Left Shift + NUM6</font> Anim. EPIC SPLIT <br/>
					<font color='#F4FA58'>Left Shift + Entf</font> Animationen Beenden <br/>
					<font color='#F4FA58'>Left Shift + F</font> Polizei / Sanitäter Sirene<br/>
					<font color='#F4FA58'>Left Shift + R</font> Festnehmen / Ausrauben <br/>
					<font color='#F4FA58'>Left Shift + G</font> Sich ergeben / Hände hoch <br/>
					<font color='#F4FA58'>Left Shift + L</font> Blaulicht / Gelblicht(ADAC) <br/>
					<font color='#F4FA58'>Left Strg + L</font> Rotlicht (Polizei) <br/>
					<font color='#F4FA58'>Left Shift/Strg + H</font> Zweitwaffe holstern / ziehen <br/><br/>
					
					<font color='#F4FA58'>Left Windows</font> Hauptinteraktionstaste: <br/>
					- für das Aufheben von Gegenständen und Geld muss T<br/>
					  gegebenfalls gedrückt werden<br/>
					- Sammeln / Farmen, Interaktion <br/>
					- mit Fahrzeugen und für die Polizei im <br/>
					  Umgang mit den Zivilisten <br/><br/>
					
					<font color='#F4FA58'>Wichtige Information:</font> <br/>
					Die Hauptinteraktionstaste kann unter ESC -> <br/>
					Konfigurieren / Configure -> <br/>
					Einstellungen / Controls -> <br/>
					Benutzerdefiniert / Custom -> <br/>
					Aktionstaste 10 / Use Action 10 <br/>
				"
		]
	];