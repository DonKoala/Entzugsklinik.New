/*
	File: fn_introGTA.sqf
	Author: M4rc3lloX
	For: Sesselfurzer Life RPG!
*/

tjms_IntroOn = true;
showCinemaBorder false;
camUseNVG false;
titleText ["", "BLACK IN",0.2];

_x = (position player select 0);
_y = (position player select 1);
_z = (position player select 2);

"colorCorrections" ppEffectAdjust [1, 1, 0, [0.0, 0.0, 0.0, 0.0], [0.6, 0.6, 8.8, 0.7],  [0.199, 0.687, 0.114, 0.0]];  
"colorCorrections" ppEffectCommit 1;  
"colorCorrections" ppEffectEnable true;

// 1. Introcam with text
playMusic "music_gta";
_cam = "camera" camCreate [_x, _y, _z + 150];  
_cam camSetTarget vehicle player;  
_cam cameraEffect ["internal","back"];
_cam camCommit 0;     
_cam camSetPos [_x, _y, _z + 120];  
_cam camCommit 1.7; 

sleep 1.7;

"colorCorrections" ppEffectAdjust [1, 1, 0, [0.0, 0.0, 0.0, 0.0], [0.6, 0.6, 8.8, 0.7],  [0.199, 0.287, 0.114, 0.0]];  
"colorCorrections" ppEffectCommit 1; 
playMusic "music_gta";
_cam = "camera" camCreate [_x, _y, _z + 100];  
_cam camSetTarget vehicle player;  
_cam cameraEffect ["internal", "BACK"];  
_cam camCommit 0;     
_cam camSetPos [_x, _y, _z + 70];  
_cam camCommit 1.7;

sleep 1.7;

"colorCorrections" ppEffectAdjust [1, 1, 0, [0.0, 0.0, 0.0, 0.0], [0.6, 0.6, 4.8, 0.7],  [0.199, 0.987, 0.114, 0.0]];  
"colorCorrections" ppEffectCommit 1; 
playMusic "music_gta";
_cam = "camera" camCreate [_x, _y, _z + 50];  
_cam camSetTarget vehicle player;  
_cam cameraEffect ["internal", "BACK"];  
_cam camCommit 0;     
_cam camSetPos [_x, _y, _z + 1];  
_cam camCommit 1.7;  

sleep 1.5;

titleText ["", "BLACK OUT",0.1];
"colorCorrections" ppEffectEnable false;
sleep 0.2;
titleText ["", "BLACK IN",0.1];

_cam cameraEffect ["terminate","back"];
camDestroy _cam;
tjms_IntroOn = false;