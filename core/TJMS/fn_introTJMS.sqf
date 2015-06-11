/*
	File: fn_introTJMS.sqf
	Author: M4rc3lloX
	For: Sesselfurzer Life RPG!
*/

tjms_IntroOn = true;
showCinemaBorder false;
camUseNVG false;

_tjmsIntroText_1 = "tjmsIntroText_1" call BIS_fnc_rscLayer;
_tjmsIntroText_1 cutRsc["tjmsIntroText_1","PLAIN"];
_tjmsIntroText_2 = "tjmsIntroText_2" call BIS_fnc_rscLayer;
_tjmsIntroText_2 cutRsc["tjmsIntroText_2","PLAIN"];
_tjmsIntroText_3 = "tjmsIntroText_3" call BIS_fnc_rscLayer;
_tjmsIntroText_3 cutRsc["tjmsIntroText_3","PLAIN"];
_tjmsIntroText_4 = "tjmsIntroText_4" call BIS_fnc_rscLayer;
_tjmsIntroText_4 cutRsc["tjmsIntroText_4","PLAIN"];
_tjmsIntroText_5 = "tjmsIntroText_5" call BIS_fnc_rscLayer;
_tjmsIntroText_5 cutRsc["tjmsIntroText_5","PLAIN"];

_IntroText1 = parseText format["<t font='EtelkaNarrowMediumPro' color='#40FF2E' size='2'>Willkommen auf Entzugsklinik Life RPG</t><br/><t font='EtelkaNarrowMediumPro' color='#ffffff' size='1.8'>Wir wünschen dir viel Spaß %1</t>", profileName];
_IntroText2 = parseText format["<t font='EtelkaNarrowMediumPro' color='#A22EFF' size='2'>Zeige dich von deiner besten Seite</t><br/><t font='EtelkaNarrowMediumPro' color='#ffffff' size='1.8'>Versuche stets und in jeder möglichen Situation dein Roleplay-Geschick anzuwenden.<br/>Du trägst auch zum Roleplay Anderer bei.</t>"];
_IntroText3 = parseText format["<t font='EtelkaNarrowMediumPro' color='#FF2E47' size='2'>Entzugsklinik Projektleitung</t><br/><t font='EtelkaNarrowMediumPro' color='#ffffff' size='1.8'>Don Koala [Projektleitung / Gründer]<br/>Donna Sumsi [Projektleitung / Gründer]<br/>Vogti Krüger [Projektleitung / Gründer]<br/>William Martinez [Grafiker]</t>"];
_IntroText4 = parseText format["<t font='EtelkaNarrowMediumPro' color='#2E63FF' size='2'>Unsere Entwickler / Developer</t><br/><t font='EtelkaNarrowMediumPro' color='#ffffff' size='1.8'>[Hauptscripter / Mapper] Don Koala <br/>[Hauptmapper / Scripter] Donna Sumsi<br/>[Designer / Texturierer] William Martinez</t>"];
_IntroText5 = parseText format["<t font='EtelkaNarrowMediumPro' color='#FF9B2E' size='2'>TaskForceRadio- und Teamspeakpflicht</t><br/><t font='EtelkaNarrowMediumPro' color='#ffffff' size='1.8'>Aus kommunikativen Gründen ist der Aufenthalt während des Spielverlaufes Pflicht!<br/>Unsere Teamspeak3 Adresse: <t color='#D8D8D8'>146.0.32.117</t></t>"];

_IntroClear = parseText format[""];

playMusic "music_intro";
titleText ["", "BLACK IN",0.2];

// 1. Introcam with text
((uiNamespace getVariable "tjmsIntroText_1")displayCtrl 1001)ctrlSetStructuredText _IntroText1;
_cam = "camera" camCreate [26874.3,24528.6,19.9779];  
_cam camSetTarget [26803.6,24541.1,1.376928];  
_cam cameraEffect ["internal", "BACK"];  
_cam camCommit 0;     
_cam camSetPos [26803.6,24541.1,4.376928];  
_cam camSetTarget [26803.6,24541.1,0.376928]; 
_cam camCommit 9; 

sleep 9;
titleText ["", "BLACK OUT",0.1];
((uiNamespace getVariable "tjmsIntroText_1")displayCtrl 1001)ctrlSetStructuredText _IntroClear;
sleep 0.2;
titleText ["", "BLACK IN",0.1];

// 2. Introcam with text
((uiNamespace getVariable "tjmsIntroText_2")displayCtrl 1002)ctrlSetStructuredText _IntroText2;
_cam = "camera" camCreate [26000.92,20803.35,13.92]; 
_cam camSetTarget [25220.9,21823,4.98322];  
_cam cameraEffect ["internal", "BACK"];  
_cam camCommit 0;     
_cam camSetPos [25288,21897.4,50.4882];  
_cam camCommit 8.5; 

sleep 6.5;
titleText ["", "BLACK OUT",0.1];
((uiNamespace getVariable "tjmsIntroText_2")displayCtrl 1002)ctrlSetStructuredText _IntroClear;
sleep 0.2;
titleText ["", "BLACK IN",0.1];

// 3. Introcam with text
((uiNamespace getVariable "tjmsIntroText_3")displayCtrl 1003)ctrlSetStructuredText _IntroText3;
_cam = "camera" camCreate [24007.4,15732,107.055]; 
_cam camSetTarget [23847.2,15966.7,15.5997];  
_cam cameraEffect ["internal", "BACK"];  
_cam camCommit 0;     
_cam camSetPos [23875.2,15937.7,14.8515];  
_cam camCommit 4; 

sleep 2;
titleText ["", "BLACK OUT",0.1];
((uiNamespace getVariable "tjmsIntroText_3")displayCtrl 1003)ctrlSetStructuredText _IntroClear;
sleep 0.2;
titleText ["", "BLACK IN",0.1];

// 4. Introcam with text
((uiNamespace getVariable "tjmsIntroText_4")displayCtrl 1004)ctrlSetStructuredText _IntroText4;
_cam = "camera" camCreate [21039.1,19442.3,57.4225]; 
_cam camSetTarget [20964.2,19272.5,4.80831];  
_cam cameraEffect ["internal", "BACK"];  
_cam camCommit 0;     
_cam camSetPos [21106.8,19177.7,59.9583];  
_cam camCommit 4;

sleep 2;
titleText ["", "BLACK OUT",0.1];
((uiNamespace getVariable "tjmsIntroText_4")displayCtrl 1004)ctrlSetStructuredText _IntroClear;
sleep 0.2;
titleText ["", "BLACK IN",0.1];

// 5. Introcam with text
((uiNamespace getVariable "tjmsIntroText_5")displayCtrl 1005)ctrlSetStructuredText _IntroText5;
_cam = "camera" camCreate [25820.3,21465.5,6.23088]; 
_cam camSetTarget [25932.4,21470.5,33.808];  
_cam cameraEffect ["internal", "BACK"];  
_cam camCommit 0;     
_cam camSetPos [25805.6,21607.4,32.6348];  
_cam camCommit 8.6;

sleep 6.6;
titleText ["", "BLACK OUT",0.4];
((uiNamespace getVariable "tjmsIntroText_5")displayCtrl 1005)ctrlSetStructuredText _IntroClear;
sleep 0.4;
titleText ["", "BLACK IN",1];
_cam cameraEffect ["terminate","back"];
camDestroy _cam;
tjms_IntroOn = false;

