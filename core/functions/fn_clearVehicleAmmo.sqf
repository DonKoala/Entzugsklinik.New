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


	case "B_APC_Tracked_01_CRV_F":
	{
		//Remove ammo and Flaires
		_veh setVehicleAmmo 0;
		_veh setDamage 0;
		_veh allowDamage true;
        systemChat "Waffen entfernt und Repariert";
    };
	
	case "BW_Dingo_Des":
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
	/////////////////////////////
	//Blackfoot
	case "bwi_a3_t6a_6":
	{
		//Remove ammo and Flaires
		_veh setVehicleAmmo 0;
		_veh setDamage 0;
		_veh allowDamage true;
		systemChat "Repariert";
	};
	//Blackfoot
	case "bwi_a3_t6a_nta":
	{
		//Remove ammo and Flaires
		_veh setVehicleAmmo 0;
		_veh setDamage 0;
		_veh allowDamage true;
		systemChat "Repariert";
	};
	//Blackfoot
	case "bwi_a3_t6a_7":
	{
		//Remove ammo and Flaires
		_veh setVehicleAmmo 0;
		_veh setDamage 0;
		_veh allowDamage true;
		systemChat "Repariert";
	};
	//Blackfoot
	case "bwi_a3_t6a_9":
	{
		//Remove ammo and Flaires
		_veh setVehicleAmmo 0;
		_veh setDamage 0;
		_veh allowDamage true;
		systemChat "Repariert";
	};
	//Blackfoot
	case "bwi_a3_t6a_3":
	{
		//Remove ammo and Flaires
		_veh setVehicleAmmo 0;
		_veh setDamage 0;
		_veh allowDamage true;
		systemChat "Repariert";
	};
	//Blackfoot
	case "bwi_a3_t6a_4":
	{
		//Remove ammo and Flaires
		_veh setVehicleAmmo 0;
		_veh setDamage 0;
		_veh allowDamage true;
		systemChat "Repariert";
	};
	//Blackfoot
	case "bwi_a3_t6a_1":
	{
		//Remove ammo and Flaires
		_veh setVehicleAmmo 0;
		_veh setDamage 0;
		_veh allowDamage true;
		systemChat "Repariert";
	};
	//Blackfoot
	case "bwi_a3_t6a":
	{
		//Remove ammo and Flaires
		_veh setVehicleAmmo 0;
		_veh setDamage 0;
		_veh allowDamage true;
		systemChat "Repariert";
	};
	//Blackfoot
	case "bwi_a3_t6a_8":
	{
		//Remove ammo and Flaires
		_veh setVehicleAmmo 0;
		_veh setDamage 0;
		_veh allowDamage true;
		systemChat "Repariert";
	};
	//Blackfoot
	case "bwi_a3_t6a_2":
	{
		//Remove ammo and Flaires
		_veh setVehicleAmmo 0;
		_veh setDamage 0;
		_veh allowDamage true;
		systemChat "Repariert";
	};
	//Blackfoot
	case "bwi_a3_t6c":
	{
		//Remove ammo and Flaires
		_veh setVehicleAmmo 0;
		_veh setDamage 0;
		_veh allowDamage true;
		systemChat "Repariert";
	};
	//Blackfoot
	case "sab_cz_An2":
	{
		//Remove ammo and Flaires
		_veh setVehicleAmmo 0;
		_veh setDamage 0;
		_veh allowDamage true;
		systemChat "Repariert";
	};
	//Blackfoot
	case "Sab_ee_An2":
	{
		//Remove ammo and Flaires
		_veh setVehicleAmmo 0;
		_veh setDamage 0;
		_veh allowDamage true;
		systemChat "Repariert";
	};
	//Blackfoot
	case "Sab_ru_An2":
	{
		//Remove ammo and Flaires
		_veh setVehicleAmmo 0;
		_veh setDamage 0;
		_veh allowDamage true;
		systemChat "Repariert";
	};
	//Blackfoot
	case "Sab_yel_An2":
	{
		//Remove ammo and Flaires
		_veh setVehicleAmmo 0;
		_veh setDamage 0;
		_veh allowDamage true;
		systemChat "Repariert";
	};
	//Blackfoot
	case "Sab_fd_An2":
	{
		//Remove ammo and Flaires
		_veh setVehicleAmmo 0;
		_veh setDamage 0;
		_veh allowDamage true;
		systemChat "Repariert";
	};
	
	/////
	//Blackfoot
	case "Sab_ana_An2":
	{
		//Remove ammo and Flaires
		_veh setVehicleAmmo 0;
		_veh setDamage 0;
		_veh allowDamage true;
		systemChat "Repariert";
	};
	//Blackfoot
	case "sab_ca_An2":
	{
		//Remove ammo and Flaires
		_veh setVehicleAmmo 0;
		_veh setDamage 0;
		_veh allowDamage true;
		systemChat "Repariert";
	};
	//Blackfoot
	case "Sab_Snow_An2":
	{
		//Remove ammo and Flaires
		_veh setVehicleAmmo 0;
		_veh setDamage 0;
		_veh allowDamage true;
		systemChat "Repariert";
	};
	//Blackfoot
	case "Sab_Snow3_An2":
	{
		//Remove ammo and Flaires
		_veh setVehicleAmmo 0;
		_veh setDamage 0;
		_veh allowDamage true;
		systemChat "Repariert";
	};
	//Blackfoot
	case "Sab_af_An2":
	{
		//Remove ammo and Flaires
		_veh setVehicleAmmo 0;
		_veh setDamage 0;
		_veh allowDamage true;
		systemChat "Repariert";
	};
	
	//Blackfoot
	case "Sab_tk_An2":
	{
		//Remove ammo and Flaires
		_veh setVehicleAmmo 0;
		_veh setDamage 0;
		_veh allowDamage true;
		systemChat "Repariert";
	};
	//Blackfoot
	case "Sab_A2_An2":
	{
		//Remove ammo and Flaires
		_veh setVehicleAmmo 0;
		_veh setDamage 0;
		_veh allowDamage true;
		systemChat "Repariert";
	};
	//Blackfoot
	case "sab_BI_An2":
	{
		//Remove ammo and Flaires
		_veh setVehicleAmmo 0;
		_veh setDamage 0;
		_veh allowDamage true;
		systemChat "Repariert";
	};
	//Blackfoot
	case "sab_AH_An2":
	{
		//Remove ammo and Flaires
		_veh setVehicleAmmo 0;
		_veh setDamage 0;
		_veh allowDamage true;
		systemChat "Repariert";
	};
	//Blackfoot
	case "Sab_Amphi_An2":
	{
		//Remove ammo and Flaires
		_veh setVehicleAmmo 0;
		_veh setDamage 0;
		_veh allowDamage true;
		systemChat "Repariert";
	};
	//Blackfoot
	case "RHS_CH_47F_light":
	{
		//Remove ammo and Flaires
		_veh setVehicleAmmo 0;
		_veh setDamage 0;
		_veh allowDamage true;
		systemChat "Repariert";
	};
};

clearWeaponCargoGlobal _vehicle;
clearMagazineCargoGlobal _vehicle;
clearItemCargoGlobal _vehicle;