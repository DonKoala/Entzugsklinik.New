/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Turns on and displays a security cam like feed via PiP to the laptop display.
*/
_laptop = _this select 0;
_mode = _this select 3;

if(!isPiPEnabled) exitWith {hint localize "STR_Cop_EnablePiP";};
if(isNil "life_fed_scam") then {
	life_fed_scam = "camera" camCreate [0,0,0];
	life_fed_scam camSetFov 0.5;
	life_fed_scam camCommit 0;
	"rendertarget0" setPiPEffect [0];
	life_fed_scam cameraEffect ["INTERNAL", "BACK", "rendertarget0"];
	_laptop setObjectTexture [0,"#(argb,256,256,1)r2t(rendertarget0,1.0)"];
};

switch (_mode) do {
	case "front": {
		life_fed_scam camSetPos [2828.01,2333.43,18.68];
		life_fed_scam camSetTarget [-15058.98,61582.71,-78493.80];
		life_fed_scam camCommit 0;
	};
	
	case "lobby": {
		life_fed_scam camSetPos [2815.14,2337.30,3.95];
		life_fed_scam camSetTarget [40672.06,-82450.34,-37081.37];
		life_fed_scam camCommit 0;
	};
	
	case "back": {
		life_fed_scam camSetPos [2837.57,2315.18,4.55] ;
		life_fed_scam camSetTarget [-86732.63,-18413.50,-39299.80];
		life_fed_scam camCommit 0;
	};
	
	case "vault": {
		life_fed_scam camSetPos [2809.09,2323.49,3.59];
		life_fed_scam camSetTarget [84146.12,49052.59,-34612.07];
		life_fed_scam camCommit 0;
	};
	
	case "off" :{
		life_fed_scam cameraEffect ["terminate", "back"];
		camDestroy life_fed_scam;
		_laptop setObjectTexture [0,""];
		life_fed_scam = nil;
	};
};
