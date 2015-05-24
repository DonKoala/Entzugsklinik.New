/*

    File: fn_clearVehicleAmmo.sqf
	Autor: TheTotenkopf™
	
	Description: Entfernt alle Waffen/Flaires und Repairiert sie noch einmal falls beim Spawnen etwas zerstört wurde.

*/
private["_veh","_classname","_vehicle"];

_veh = _this select 0;
_vehicle = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
_classname = typeOf _veh;

switch (_classname) do
{	
	//Jet A-10
	case "RHS_UH60M":
	{
		//Remove ammo and Flaires
		_veh setVehicleAmmo 0;
		_veh setDamage 0;
		_veh allowDamage true;
        systemChat "Waffen entfernt und Repariert";
    };
	
	//FÜR CONVOY!!
	case "RHS_CH_47F_light":
	{
		//Remove ammo and Flaires
		_veh setVehicleAmmo 0;
		_veh setDamage 0;
		_veh allowDamage true;
        systemChat "Waffen entfernt und Repariert";
    };
	
	//GhostHawk (Black)
    case "B_Heli_Transport_01_F":
    {
        //Remove ammo and Flaires
		_veh setVehicleAmmo 0;
		_veh setDamage 0;
		_veh allowDamage true;
        systemChat "Waffen entfernt und Repariert";
    };

	//GhostHawk (Camo)
	case "B_Heli_Transport_01_camo_F":
    {
        //Remove ammo and Flaires
        _veh setVehicleAmmo 0;
		_veh setDamage 0;
		_veh allowDamage true;
        systemChat "Waffen entfernt und Repariert";
    };

	




	
	//MiniGun Boat
	case "B_Boat_Armed_01_minigun_F":
	{
		//Remove ammo and Flaires
		_veh setVehicleAmmo 0;
		_veh setDamage 0;
		_veh allowDamage true;
	};

	

	
	//Blackfoot
	case "B_Heli_Attack_01_F":
	{
		//Remove ammo and Flaires
		_veh setVehicleAmmo 0;
		_veh setDamage 0;
		_veh allowDamage true;
		systemChat "Waffen entfernt und Repariert";
	};
};

clearWeaponCargoGlobal _vehicle;
clearMagazineCargoGlobal _vehicle;
clearItemCargoGlobal _vehicle;