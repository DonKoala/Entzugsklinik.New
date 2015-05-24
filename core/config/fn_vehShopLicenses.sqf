/*
	File: fn_vehShopLicenses.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Checks what shop it is and sometimes the vehicle to determine whether or not they have the license.
	
	Returns:
	TRUE if they have the license or are allowed to get that specific vehicle without having that license.
	FALSE if they don't have the license or are not allowed to obtain that vehicle.
*/
private["_veh","_ret"];
_veh = _this select 0;
_ret = false;

if(_veh == "B_Quadbike_01_F") exitWith {true}; //ATV's don't need to require a license anymore.

switch (life_veh_shop select 0) do
{
	case "kart_shop": {_ret = license_civ_driver;};
	case "civ_car": {_ret = true;};
	case "civ_ship": {_ret = license_civ_boat;};
	case "med_air": {_ret = true;};
	case "med_shop": {_ret = true;};
	case "civ_air": {_ret = license_civ_air;};
	case "civ_truck":	{_ret = license_civ_truck;};
	case "reb_car": {_ret = license_civ_rebel;};
	case "cop_car": {_ret = true;};
	case "cop_air": {_ret = true;};
	case "adac_car": {_ret = license_civ_driver;};
	case "logistic": {_ret = license_civ_logistic;};
	case "cop_ship": {_ret = true;};
	case "civ_audi": {_ret = true;};
	case "civ_bmw": {_ret = true;};
	case "civ_dodge": {_ret = true;};
	case "civ_ford": {_ret = true;};
	case "civ_fiat": {_ret = true;};
	case "civ_vw": {_ret = true;};
	case "civ_skyline": {_ret = true;};
	case "civ_mclaren": {_ret = true;};
	case "civ_porsche": {_ret = true;};
	case "civ_rangerover": {_ret = true;};
	case "civ_astonmartin": {_ret = true;};
	case "civ_ferrari": {_ret = true;};
	case "civ_skate": {_ret = true;};
	case "civ_mercedes": {_ret = true;};
	case "civ_lamborghini": {_ret = true;};
	case "civ_bugatti": {_ret = true;};
	case "sek_air": {_ret = true;};
	case "sek_car": {_ret = true;};
	case "donator_1": {_ret = true;};
	case "donator_2": {_ret = true;};
	default {_ret = true;}; // PLEASE.. THANK YOU!
};

_ret;