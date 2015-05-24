/*
	File: fn_vehicleColorCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description: B_Truck_01_box_F
	Master configuration for vehicle colors.
*/
#include <macro.h>
private["_vehicle","_ret","_path"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
if(_vehicle == "") exitWith {[]};
_ret = [];

switch (_vehicle) do
{
	case "I_MRAP_03_F":
	{
		_ret = 
		[
			["#(ai,64,64,1)Fresnel(1.3,7)","sek"]
		];
	};
	
	case "C_Heli_Light_01_civil_F":
	{
		_ret =
		[
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_graywatcher_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_light_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_shadow_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sheriff_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wasp_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wave_co.paa","civ"]
		];
	};
	
	case "C_Hatchback_01_sport_F":
	{
		_path = "\a3\soft_f_gamma\Hatchback_01\data\";
		_ret =
		[
			[_path + "hatchback_01_ext_sport01_co.paa","civ"],
			[_path + "hatchback_01_ext_sport02_co.paa","civ"],
			[_path + "hatchback_01_ext_sport03_co.paa","civ"],
			[_path + "hatchback_01_ext_sport04_co.paa","civ"],
			[_path + "hatchback_01_ext_sport05_co.paa","civ"],
			[_path + "hatchback_01_ext_sport06_co.paa","civ"],
			["\textures\vehicle\med_hatchback.paa","med"],
			["\textures\vehicle\civ_hatchback_polygon.paa","civ"],
			["\textures\vehicle\civ_hatchback_nature.paa","civ"],
			["\textures\vehicle\civ_hatchback_monster.paa","civ"],
			["\textures\vehicle\civ_hatchback_redbull.paa","civ"],
			["\textures\vehicle\civ_hatchback_asiimov.paa","civ"]
		];
	};
	
	case "C_Hatchback_01_F":
	{
		_ret =
		[
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base01_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base02_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base03_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base04_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base06_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base07_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base08_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base09_co.paa","civ"],
			["\textures\vehicle\med_hatchback.paa","med"],
			["\textures\vehicle\civ_hatchback_polygon.paa","civ"],
			["\textures\vehicle\civ_hatchback_nature.paa","civ"],
			["\textures\vehicle\civ_hatchback_monster.paa","civ"],
			["\textures\vehicle\civ_hatchback_redbull.paa","civ"],
			["\textures\vehicle\civ_hatchback_asiimov.paa","civ"]
		];
	};
	
	case "C_SUV_01_F":
	{
		_ret =
		[
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_02_co.paa","civ"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_03_co.paa","civ"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_04_co.paa","civ"],
			["\textures\vehicle\med_suv.paa","med"],
			["\textures\vehicle\civ_suv_cube.paa","civ"],
			["\textures\vehicle\civ_suv_ferrari.paa","civ"],
			["\textures\vehicle\civ_suv_ghost.paa","civ"],
			["\textures\vehicle\civ_suv_comic.paa","civ"],
			["\textures\vehicle\civ_suv_nyan.paa","civ"],
			["\textures\vehicle\civ_suv_hellfire.paa","civ"],
			["\textures\vehicle\civ_suv_donut.paa","civ"]
		];
	};
	
	case "I_Plane_Fighter_03_CAS_F":
	{
		_ret = 
		[
			["\textures\vehicle\civ_buzzard_front.paa","civ","\textures\vehicle\civ_buzzard_back.paa"]
		];
	};
	
	case "C_Van_01_box_F":
	{
		_ret = 
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"],
			["\textures\vehicle\med_rtw_front.paa","med","\textures\vehicle\med_rtw_back.paa"],
			["\textures\vehicle\civ_van_front.paa","civ","\textures\vehicle\civ_van_back.paa"]
		];
	};
	
	case "B_G_Van_01_fuel_F":
	{
		_path = "\a3\soft_f_gamma\Van_01\Data\";
		_ret = 
		[
			[_path + "van_01_ext_co.paa","civ",_path + "van_01_tank_co.paa"],	//weis,grau
			[_path + "van_01_ext_co.paa","civ",_path + "van_01_tank_ig_co.paa"],	//weis,grün
			[_path + "van_01_ext_co.paa","civ",_path + "van_01_tank_red_co.paa"],	//weis,rot
			[_path + "van_01_ext_red_co.paa","civ",_path + "van_01_tank_co.paa"],	//rot,grau
			[_path + "van_01_ext_red_co.paa","civ",_path + "van_01_tank_ig_co.paa"],	//rot,grün
			[_path + "van_01_ext_red_co.paa","civ",_path + "van_01_tank_red_co.paa"]		//rot,rot
		];
	};
	
	case "O_Truck_02_fuel_F":
	{
		_path = "\a3\soft_f_beta\Truck_02\Data\";
		_ret = 
		[
			[_path + "truck_02_chassis_opfor_co.paa","reb",_path + "truck_02_fuel_opfor_co.paa"],	//Rebellenlook
			[_path + "truck_02_chassis_co.paa","reb",_path + "truck_02_fuel_co.paa"]	//Aral
		];
	};
	
	case "C_Van_01_transport_F":
	{
		_ret = 
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"]
		];
	};
	
	case "B_Quadbike_01_F":
	{
		_ret = 
		[
			["#(ai,64,64,1)Fresnel(1.3,7)","civ"],
			["\A3\Soft_F\Quadbike_01\Data\quadbike_01_opfor_co.paa","reb"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_black_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_blue_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_red_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_white_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_indp_co.paa","civ"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","civ"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","reb"]
		];
	};
	
	case "B_MRAP_01_F":
	{
		_ret = 
		[
			["#(ai,64,64,1)Fresnel(1.3,7)","sek"]
		];
	};
	
	case "B_Heli_Light_01_F":
	{
		_ret = 
		[
			["\textures\vehicle\cop_hummingbird.paa","cop"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_ion_co.paa","fed"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_blue_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_indp_co.paa","reb"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wave_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa","reb"],
			["\textures\vehicle\med_hummingbird.paa","med"],
			["#(ai,64,64,1)Fresnel(1.3,7)","sek"]
		];
	};
	
	case "I_Truck_02_covered_F":
	{
		_ret = 
		[
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","civ"]
		];
	};
	
	case "I_Truck_02_transport_F":
	{
		_ret = 
		[
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","civ"]
		];
	};
};

_ret;