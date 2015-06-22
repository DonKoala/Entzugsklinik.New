waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["trenner00","———————"];
player createDiarySubject ["alh","Entzugsklink"];
player createDiarySubject ["trenner0","———————"];
player createDiarySubject ["info","Infos"];
player createDiarySubject ["trenner1","———————"];
player createDiarySubject ["controls","Steuerung"];
player createDiarySubject ["trenner2","———————"];

/*  Example
	player createDiaryRecord ["", //Container
		[
			"", //Subsection
				"
				TEXT HERE<br/><br/>
				"
		]
	];
*/
$
	

	player createDiaryRecord ["info",
		[
			"Teamspeak",
				"
				Unser Teamspeakserver:<br/><br/>
				146.0.32.117<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["info",
		[
			"Infos",
				"
				<font color='#F4FA58'>Unser Team besteht derzeit aus folgenden Personen:</font><br/>
				Developer / Scripter: Dieter Nantz<br/>
				Developer / Mapper: Uschi Nantz <br/>
				Designer / Künstler: Uschi Nantz ,Michael Nantz, John Krüger<br/>
				Server-Projektleitung:<br/>
				   Uschi Nantz,<br/>
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
	
	
	player createDiaryRecord ["info",
		[
			"Regeln / Bußgeldkatalog",
				"
				!! Unbedingt die Regeln im Forum beachten !! <br/><br/>
				Hier die Grundlegenden Regeln. Die Ausführlichen aktuellen Regeln sind in unserem Forum zu finden.<br/><br/>
				- Die New-Life Regel gilt für ALLE Spieler. Das heißt, dass ihr nach eurem tot 15 Min warten müsst bis ihr wieder teilnehmen dürft.<br/>
				- RDM und VRDM sind verboten <br/>
				- Am Marktplatz dürfen keine Fahrzeuge via Dietrich geklaut werden.<br/>
				- Das Schießen auf andere ohne RP-Hintergrund und ohne Ankündigung ist Verboten. <br/>
				- Cops dürfen nicht dauerhaft verfolgt, angeschrieben oder mit der selben RP-Geschichte genervt werden (dies kann zu einem Kick/Ban führen)<br/>
				- Das Ausnutzen von Bugs ist verboten und kann mit einem Kick/Ban bestraft werden. <br/>
				
				<br/>

				
				<br/>
				-------------------------------------------------------------- <br/>
				- Die Flughöhe über Städten beträgt 150m. <br/>
				- Fremde Fahrezuge dürfen nicht via Haken geklaut etc werden. <br/>
				- Man darf keine LKWs via Haken zum Farmen transportieren. <br/>
				
				<br/>
				-------------------------------------------------------------- <br/>
				Safezones: <br/>
				- Alle Garagen, Bankautomaten (ATMs), Shops (Markt, Zubehör, etc) im Umkreis von 20 m. <br/>
				
				<br/>
				-------------------------------------------------------------- <br/>
				Illegale Güter/Fahrzeuge etc: <br/>
				- Ghili; alle Waffen ausser die Waffen die es beim Waffenhändler gibt; Alle Polizei Waffen, Kleidung, Items<br/>
				- in jeglichem Stadium der Verarbeitung/Ernte: Schildkröten; Kokain; Heroin; Marijuana; Meth; LSD; Uran<br/>
				
				<br/>
				-------------------------------------------------------------- <br/>
				- Angriffe auf das Polizei-HQ darf nur mit triftigem Grund durchgeführt werden und muss mittels SMS angekündigt werden. <br/>
				- Geiselnahmen sind erst ab 4 Cops zulässig. Das Lösegeld darf pro Geisel nicht mehr als 1.Mio betragen <br/>
				- Banküberfälle sind erst ab 5 Cops möglich. <br/>
				- Tankstellenüberfälle sind erst ab 2 Cops möglich.<br/>
				
	
				"
		]
	];	
	
	player createDiaryRecord ["info",
		[
			"Changelog",
				"
				Alle aktuellen Changelogs sind im Forum zu finden.<br/>
				Entzugsklinik-Gaming.de/<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["info",
		[
			"Restartzeiten",
				"
				0 Uhr<br/>
				6 Uhr<br/>
				12 Uhr<br/>
				18 Uhr<br/>
				"
		]
	];
	
// Controls Section

	player createDiaryRecord ["controls",
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