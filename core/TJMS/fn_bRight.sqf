/*
	Author: M4rc3lloX / Marcel
	Right side of those blinking Lights! o.0
*/
private ["_vehicle","_lightFront","_lightBack","_changeBrightness","_brightness","_attach"];
_vehicle = _this select 0;
if (isNil "_vehicle" || isNull _vehicle || !(_vehicle getVariable "bRight")) exitWith {};

switch (typeOf _vehicle) do {
	case "C_SUV_01_F": { _attach = [[0.8, 2.1, -0.45], [0.8, -3.0, -0.25]]; };
	case "C_Hatchback_01_F": { _attach = [[0.8, 1.75, -0.45], [0.75, -2.35, -0.25]]; };
	case "C_Hatchback_01_sport_F": { _attach = [[0.8, 1.75, -0.45], [0.75, -2.35, -0.25]]; };
	case "C_Offroad_01_F": { _attach = [[0.8, 2.3, -0.35], [0.8, -3.0, -0.25]]; };
	case "B_G_Offroad_01_F": { _attach = [[0.8, 2.3, -0.35], [0.8, -3.0, -0.25]]; };
	case "B_G_Offroad_01_armed_F": { _attach = [[0.8, 2.3, -0.35], [0.8, -3.0, -0.25]]; };
	case "C_Offroad_01_repair_F": { _attach = [[0.8, 2.3, -0.35], [0.8, -3.0, -0.25]]; };
	case "B_Quadbike_01_F": { _attach = [[0.3, 0.99, -0.70], [0.4, -1.2, -0.55]]; };
	case "B_MRAP_01_F": { _attach = [[1.1, 1.5, -0.6], [0.8, -4.2, -0.7]]; };
	case "B_MRAP_01_gmg_F": { _attach = [[1.1, 1.5, -0.6], [0.8, -4.2, -0.7]]; };
	case "B_MRAP_01_hmg_F": { _attach = [[1.1, 1.5, -0.6], [0.8, -4.2, -0.7]]; };
	
	case "C_Van_01_transport_F": { _attach = [[0.8, 1.9, -0.4], [0.72, -3.2, -0.85]]; };
	case "B_G_Van_01_fuel_F": { _attach = [[0.8, 1.9, -0.4], [0.72, -3.2, -0.85]]; };
	case "C_Van_01_box_F": { _attach = [[0.8, 1.9, -0.4], [0.72, -3.2, -0.85]]; };
	
	case "O_MRAP_02_F": { _attach = [[0.8, 1.6, -0.96], [0.65, -4.55, -1.25]]; };
	case "O_MRAP_02_hmg_F": { _attach = [[0.8, 1.6, -0.96], [0.65, -4.55, -1.25]]; };
	case "O_MRAP_02_gmg_F": { _attach = [[0.8, 1.6, -0.96], [0.65, -4.55, -1.25]]; };
	
	case "I_MRAP_03_F": { _attach = [[1.1, 2.35, -0.32], [1.05, -3.26, 0.02]]; };
	case "I_MRAP_03_hmg_F": { _attach = [[1.1, 2.35, -0.32], [1.05, -3.26, 0.02]]; };
	case "I_MRAP_03_gmg_F": { _attach = [[1.1, 2.35, -0.32], [1.05, -3.26, 0.02]]; };
	
	case "I_Truck_02_transport_F": { _attach = [[0.89, 4.13, -1.2], [0.85, -3.46, -1.22]]; };
	case "I_Truck_02_covered_F": { _attach = [[0.89, 4.13, -1.2], [0.84, -3.46, -1.22]]; };
	case "O_Truck_02_fuel_F": { _attach = [[0.83, 2.78, -1.22], [0.77, -4.74, -1.22]]; };
	
	case "B_Truck_01_mover_F": { _attach = [[0.76, 4.69, -0.18], [0.38, -4.27, -0.52]]; };
	
	case "B_Truck_01_transport_F": { _attach = [[0.73, 5.15, -0.44], [1.1, -5.15, -0.66]]; };
	case "B_Truck_01_covered_F": { _attach = [[0.73, 5.15, -0.44], [1.08, -5.15, -0.66]]; };
	case "B_Truck_01_ammo_F": { _attach = [[0.73, 5.15, -0.18], [1.08, -4.6, -0.86]]; };
	case "B_Truck_01_medical_F": { _attach = [[0.62, 5.15, -0.46], [0.98, -5.15, -0.62]]; };
	case "B_Truck_01_fuel_F": { _attach = [[0.76, 4.99, -0.18], [0.92, -5.05, -0.58]]; };
	case "B_Truck_01_box_F": { _attach = [[0.76, 5.28, -0.56], [1.11, -4.52, -1.255]]; };
	
	case "O_Truck_03_transport_F": { _attach = [[0.87, 3.4, -1.05], [1.14, -4.8, -1.15]]; };
	case "O_Truck_03_covered_F": { _attach = [[0.9, 3.4, -1.05], [1.16, -4.8, -1.15]]; };
	case "O_Truck_03_device_F": { _attach = [[0.87, 3.1, -0.79], [1.13, -5.01, -0.92]]; };
	case "O_Truck_03_ammo_F": { _attach = [[0.87, 3.1, -0.79], [1.13, -5.01, -0.92]]; };
};

_lightFront = createVehicle ["#lightpoint", getPos _vehicle, [], 0, "CAN_COLLIDE"];
_lightBack = createVehicle ["#lightpoint", getPos _vehicle, [], 0, "CAN_COLLIDE"];

sleep 0.2;

_lightFront setLightColor [255, 85, 0];
_lightBack setLightColor [255, 85, 0];

_lightFront setLightBrightness 0;
_lightBack setLightBrightness 0;
_lightFront lightAttachObject [_vehicle, _attach select 0];
_lightBack lightAttachObject [_vehicle, _attach select 1];
_lightFront setLightAttenuation [0.181, 0, 1000, 130];
_lightBack setLightAttenuation [0.181, 0, 1000, 130];
_lightFront setLightIntensity 3;
_lightBack setLightIntensity 3;
_lightFront setLightFlareSize 0.5;
_lightBack setLightFlareSize 0.5;
_lightFront setLightFlareMaxDistance 0.02;
_lightBack setLightFlareMaxDistance 0.02;
_lightFront setLightUseFlare true;
_lightBack setLightUseFlare true;
_lightFront setLightDayLight true;
_lightBack setLightDayLight true;

if (sunOrMoon < 1) then {
	_brightness = 0.5; // Nacht
} else {
	_brightness = 3; // Tag
};

_changeBrightness = true;  
while {(alive _vehicle)} do { 
	if (!(_vehicle getVariable "bRight")) exitWith {};
	m4rc_blinkerR = true;
	if (_changeBrightness) then {  
		_changeBrightness = false;  
		_lightBack setLightBrightness 0; 
		_lightFront setLightBrightness 0; 
		sleep 0.05;
		 
	} else {  
		_changeBrightness = true;  
		_lightBack setLightBrightness _brightness;  
		_lightFront setLightBrightness _brightness; 
		sleep 0.05; 
	};
	if(m4rc_blinkerR) then {
		if(m4rc_blinkerR && m4rc_blinkerL) then {
			m4rc_blinkerR = false;
		}else {
			//_vehicle say3D "blinker";
		};
	};
	if(m4rc_blinkerR) then {
		m4rc_blinkerR = false;
	};
	sleep 0.39;    
};  
deleteVehicle _lightFront;
deleteVehicle _lightBack;