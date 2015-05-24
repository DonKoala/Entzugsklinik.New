//fps HUD by M4rc3lloX
/* KILL IT FOR NOW
[] spawn {
	private["_ui","_fps"];
	disableSerialization;
	while {true} do {
		_ui = uiNameSpace getVariable ["playerHUD",displayNull];
		_fps = _ui displayCtrl 23495;
		
		//Update FPS
		_fps ctrlSetPosition [safeZoneX+safeZoneW-0.090,safeZoneY+safeZoneH-0.594-0.500];
		_fps ctrlSetText format["%1", round diag_fps];					
		_fps ctrlCommit 0;
	};
	sleep 1.5;//safe some cpu
};