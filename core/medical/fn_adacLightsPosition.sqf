/*
	Author: M4rc3lloX / Marcel
*/
private ["_vehicle","_lightleft","_lightright","_changeBrightness","_brightness","_attach"];
_vehicle = _this select 0;
if (isNil "_vehicle" || isNull _vehicle || !(_vehicle getVariable "ADAClights")) exitWith {};

switch (typeOf _vehicle) do {
	case "C_Offroad_01_repair_F": { _attach = [[-0.37, 0.0, 0.56], [0.37, 0.0, 0.56]]; };
};

_lightleft = createVehicle ["#lightpoint", getPos _vehicle, [], 0, "CAN_COLLIDE"];
_lightright = createVehicle ["#lightpoint", getPos _vehicle, [], 0, "CAN_COLLIDE"];

sleep 0.2;

_lightleft setLightColor [255, 85, 0];
_lightright setLightColor [255, 85, 0];

_lightleft setLightBrightness 0;
_lightright setLightBrightness 0;
_lightleft lightAttachObject [_vehicle, _attach select 0];
_lightright lightAttachObject [_vehicle, _attach select 1];
_lightleft setLightAttenuation [0.181, 0, 1000, 130];
_lightright setLightAttenuation [0.181, 0, 1000, 130];
_lightleft setLightIntensity 3;
_lightright setLightIntensity 3;
_lightleft setLightFlareSize 0.5;
_lightright setLightFlareSize 0.5;
_lightleft setLightFlareMaxDistance 0.02;
_lightright setLightFlareMaxDistance 0.02;
_lightleft setLightUseFlare true;
_lightright setLightUseFlare true;
_lightleft setLightDayLight true;
_lightright setLightDayLight true;

if (sunOrMoon < 1) then {
	_brightness = 0.5;
} else {
	_brightness = 3;
};

_changeBrightness = true;  
while {(alive _vehicle)} do { 
	if (!(_vehicle getVariable "ADAClights")) exitWith {};
	if (_changeBrightness) then {  
		_changeBrightness = false;  
		_lightright setLightBrightness 0;  
		sleep 0.05;
		_lightleft setLightBrightness _brightness;  
	} else {  
		_changeBrightness = true;  
		_lightleft setLightBrightness 0;  
		sleep 0.05;
		_lightright setLightBrightness _brightness;  
	};
	sleep 0.22;  
};  

deleteVehicle _lightleft;
deleteVehicle _lightright;