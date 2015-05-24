/*
	Author: M4rc3lloX / Marcel
*/
private["_vehicle"];
_vehicle = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _vehicle) exitWith {}; //Bad entry!
if(!(typeOf _vehicle in [
	"C_SUV_01_F",
	"C_Hatchback_01_F",
	"C_Hatchback_01_sport_F",
	"C_Offroad_01_F",
	"B_G_Offroad_01_F",
	"B_G_Offroad_01_armed_F",
	"C_Offroad_01_repair_F",
	"B_Quadbike_01_F",
	"B_MRAP_01_F",
	"B_MRAP_01_gmg_F",
	"B_MRAP_01_hmg_F",
	"C_Van_01_transport_F",
	"B_G_Van_01_fuel_F",
	"C_Van_01_box_F",
	"O_MRAP_02_F",
	"O_MRAP_02_hmg_F",
	"O_MRAP_02_gmg_F",
	"I_MRAP_03_F",
	"I_MRAP_03_hmg_F",
	"I_MRAP_03_gmg_F",
	"I_Truck_02_transport_F",
	"I_Truck_02_covered_F",
	"O_Truck_02_fuel_F",
	"B_Truck_01_mover_F",
	"B_Truck_01_transport_F",
	"B_Truck_01_covered_F",
	"B_Truck_01_ammo_F",
	"B_Truck_01_medical_F",
	"B_Truck_01_fuel_F",
	"B_Truck_01_box_F",
	"O_Truck_03_transport_F",
	"O_Truck_03_covered_F",
	"O_Truck_03_device_F",
	"O_Truck_03_ammo_F"
])) exitWith {}; //Last chance check to prevent something from defying humanity and creating a monster.

_trueorfalse = _vehicle getVariable["bRight",FALSE];

if(_trueorfalse) then {
	_vehicle setVariable["bRight",FALSE,TRUE];
} else {
	_vehicle setVariable["bRight",TRUE,TRUE];
	[[_vehicle,0.22],"life_fnc_bRight",true,false] call life_fnc_MP;
};