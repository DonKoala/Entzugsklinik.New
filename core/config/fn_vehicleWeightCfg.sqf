/*
	File: fn_vehicleWeightCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle weight.
*/
private["_className"];
_className = [_this,0,"",[""]] call BIS_fnc_param;

switch (_className) do
{




	// NEU
	case "Jonzie_Ambulance": {30};
	case "RHS_UH60M_MEV2": {30};
	case "DAR_MK23": {100};
	case "DAR_MK23A": {180};
	case "DAR_MK23AD": {180};
	case "DAR_MK27": {275};
	case "DAR_MK27T": {300};
	case "DAR_4X4": {80};
	case "rhsusf_M1083A1P2_B_wd_fmtv_usarmy": {110};
	case "rhsusf_M1078A1P2_wd_fmtv_usarmy": {110};
	case "rhs_gaz66o_msv": {70};
	case "rhs_gaz66_msv": {90};
	case "rhs_gaz66_repair_msv": {110};
	case "RHS_Ural_Open_Civ_01": {200};
	case "RHS_Ural_Fuel_MSV_01": {175};
	case "RHS_Ural_Open_MSV_01": {200};
	case "RHS_Ural_MSV_01": {250};
	case "rhs_typhoon_vdv": {350};
	case "A3L_Dumptruck": {400};
	case "RHS_UAZ_MSV_01": {25};
	case "rhs_uaz_open_MSV_01": {25};
	case "cl3_suv_taxi": {30};
	case "cl3_lada_white": {40};
	case "A3L_Towtruck": {30};
	case "max_towtruck": {30};
	case "rhs_tigr_msv": {30};
	case "RHS_CH_47F_light" {275};
	case "cl3_defender_110_red": {30};
	case "cl3_defender_110_yellow": {30};
	
	//HMMWVS
	case "rhsusf_m998_w_s_2dr_fulltop": {30};
	case "rhsusf_m998_w_s_2dr": {30};
	case "rhsusf_m998_w_s_4dr_fulltop": {30};
	case "rhsusf_m998_w_s_4dr": {30};
	case "rhsusf_m1025_w_s": {30};	
	
	//COP CARS
	
	case "Bell412" {30};
	case "Cha_Mi17_Civilian" {250};
	case "RHS_Mi8AMT_vvs" {250};
	case "UH1N_Black" {30};
	
	case "A3L_TaurusFPBPDGM" {40};
	case "A3L_TaurusFPBLBPD" {40};
	case "A3L_TaurusFPBPD" {40};
	case "A3L_TaurusFPBLBCSO" {40};
	case "A3L_TaurusFPBCSO" {40};
	case "A3L_CVPIFPBLBFG" {40};
	case "A3L_CVPIFPBFG" {40};
	case "A3L_CVPIFPBLBSP" {40};
	case "A3L_CVPIFPBLBSP2" {40};
	case "A3L_CVPIFPBLBSM" {40};
	case "A3L_CVPIFPBSM" {40};
	case "A3L_CVPIFPBLBPD" {40};
	case "A3L_CVPIFPBPD" {40};
	case "A3L_CVPIFPBLBHP" {40};
	case "A3L_CVPIFPBHP" {40};
	case "A3L_CVPIFPBCSO" {40};
	case "A3L_CVPIFPBLBCSO" {40};
	
	
	case "A3L_Camaro": {20};
	case "A3L_Atom": {10};
	case "A3L_Flipcar": {10};
	case"UH1N_Slick": {30};
	
	
	//karts
	case "C_Kart_01_Blu_F": {0};
	case "C_Kart_01_Fuel_F": {0};
	case "C_Kart_01_Red_F": {0};
	case "C_Kart_01_Vrana_F": {0};
	
	//cars
	case "B_Quadbike_01_F": {25};
	case "C_Offroad_01_F": {30};
	case "B_G_Offroad_01_F": {30};
	case "B_G_Offroad_01_armed_F": {15};
	case "C_Offroad_01_repair_F": {30};
	case "C_SUV_01_F": {30};
	case "C_Hatchback_01_sport_F": {30};
	case "C_Hatchback_01_F": {30};
	case "B_MRAP_01_F": {140}; //hunter
	case "I_MRAP_03_F": {140}; //Strider
	case "O_MRAP_02_hmg_F": {140}; //ifrid hmg
	case "O_MRAP_02_F": {140}; // ifrid
	case "B_MRAP_01_gmg_F": {140}; //hunter gmg
	case "B_MRAP_01_hmg_F": {140}; //hunter hmg
	
	//HMMWV's
	case "EWK_HMMWV_Light": {140};
	case "EWK_HMMWV_Medevac": {150};
	case "EWK_M997A2_Ambulance_Tan": {180};

	//mini-cooper
	case "Jonzie_Mini_Cooper": {40};
	case "Jonzie_Mini_Cooper_R_spec": {40};
	
	//explorer
	case "DAR_ExplorerMedic": {30};
	case "DAR_ExplorerPolice": {30};
	case "DAR_ExplorerPoliceStealth": {30};
	
	//impala
	case "DAR_ImpalaPolice": {30};
	case "DAR_ImpalaPoliceSlick": {30};
	case "DAR_ImpalaPoliceDet": {30};
	
	//tahoe
	case "DAR_TahoeEMS": {30};
	case "DAR_TahoePolice": {30};
	case "DAR_TahoePoliceSlick": {30};
	case "DAR_TahoePoliceDet": {30};
	
	//firebird
	case "DAR_DAR_02FirebirdSSVPolice": {30};
	
	//Jail Bus
	case "A3L_jailBus": {30};
	
	
	//Insignia(Vauxhall)
		case "cl3_insignia_aqua": {15};
		case "cl3_insignia_babyblue": {15};
		case "cl3_insignia_babypink": {15};
		case "cl3_insignia_black": {15};
		case "cl3_insignia_blue": {15};
		case "cl3_insignia_burgundy": {15};
		case "cl3_insignia_camo": {15};
		case "cl3_insignia_cardinal": {15};
		case "cl3_insignia_dark_green": {15};
		case "cl3_insignia_gold": {15};
		case "cl3_insignia_green": {15};
		case "cl3_insignia_grey": {15};
		case "cl3_insignia_lavendar": {15};
		case "cl3_insignia_light_blue": {15};
		case "cl3_insignia_light_yellow": {15};
		case "cl3_insignia_lime": {15};
		case "cl3_insignia_marina_blue": {15};
		case "cl3_insignia_navy_blue": {15};
		case "cl3_insignia_orange": {15};
		case "cl3_insignia_purple": {15};
		case "cl3_insignia_red": {15};
		case "cl3_insignia_sand": {15};
		case "cl3_insignia_silver": {15};
		case "cl3_insignia_violet": {15};
		case "cl3_insignia_white": {15};
		case "cl3_insignia_yellow": {15};
	
	
	//audi r8
	case "cl3_r8_spyder_black": {15};
	case "cl3_r8_spyder_white": {15};
	case "cl3_r8_spyder_gold": {15};
	case "cl3_r8_spyder_violet": {15};
	case "cl3_r8_spyder_red": {15};
	case "cl3_r8_spyder_purple": {15};
	case "cl3_r8_spyder_orange": {15};
	case "cl3_r8_spyder_sand": {15};
	case "cl3_r8_spyder_blue": {15};
	case "cl3_r8_spyder_grey": {15};
	case "cl3_r8_spyder_silver": {15};
	case "cl3_r8_spyder_lime": {15};
	case "cl3_r8_spyder_lavender": {15};
	case "cl3_r8_spyder_light_blue": {15};
	case "cl3_r8_spyder_light_yellow": {15};
	case "cl3_r8_spyder_babyblue": {15};
	case "cl3_r8_spyder_babypink": {15};
	case "cl3_r8_spyder_burgundy": {15};
	case "cl3_r8_spyder_yellow": {15};
	case "cl3_r8_spyder_navy_blue": {15};
	case "cl3_r8_spyder_marina_blue": {15};
	case "cl3_r8_syder_cardinal": {15};
	case "cl3_r8_spyder_aqua": {15};
	case "cl3_r8_spyder_camo": {15};
	case "cl3_r8_spyder_camo_urban": {15};
	
	//audi q7
	case "cl3_q7_black": {30};
	case "cl3_q7_black": {30};
	case "cl3_q7_white": {30};
	case "cl3_q7_blue": {30};
	case "cl3_q7_babyblue": {30};
	case "cl3_q7_babypink": {30};
	case "cl3_q7_gold": {30};
	case "cl3_q7_violet": {30};
	case "cl3_q7_purple": {30};
	case "cl3_q7_red": {30};
	case "cl3_q7_grey": {30};
	case "cl3_q7_silver": {30};
	case "cl3_q7_lime": {30};
	case "cl3_q7_lavender": {30};
	case "cl3_q7_light_blue": {30};
	case "cl3_q7_light_yellow": {30};
	case "cl3_q7_burgundy": {30};
	case "cl3_q7_yellow": {30};
	case "cl3_q7_navy_blue": {30};
	case "cl3_q7_marina_blue": {30};
	case "cl3_q7_green": {30};
	case "cl3_q7_dark_green": {30};
	case "cl3_q7_cardinal": {30};
	case "cl3_q7_aqua": {30};
	case "cl3_q7_camo": {30};
	case "cl3_q7_camo_urban": {30};
	
	//bmw m3
	case "DAR_M3CivBlack": {20};
	case "DAR_M3CivGrey": {20};
	case "DAR_M3CivWhite": {20};
	
	//bmw m5
		case "cl3_e60_m5_babypink": {20};
		case "cl3_e60_m5_yellow": {20};
		case "cl3_e60_m5_white": {20};
		case "cl3_e60_m5_violet": {20};
		case "cl3_e60_m5_silver": {20};
		case "cl3_e60_m5_red": {20};
		case "cl3_e60_m5_purple": {20};
		case "cl3_e60_m5_orange": {20};
		case "cl3_e60_m5_navy_blue": {20};
		case "cl3_e60_m5_marina_blue": {20};
		case "cl3_e60_m5_lime": {20};
		case "cl3_e60_m5_light_yellow": {20};
		case "cl3_e60_m5_light_blue": {20};
		case "cl3_e60_m5_lavender": {20};
		case "cl3_e60_m5_grey": {20};
		case "cl3_e60_m5_green": {20};
		case "cl3_e60_m5_dark_green": {20};
		case "cl3_e60_m5_cardinal": {20};
		case "cl3_e60_m5_camo_urban": {20};
		case "cl3_e60_m5_camo": {20};
		case "cl3_e60_m5_burgundy": {20};
		case "cl3_e60_m5_blue": {20};
		case "cl3_e60_m5_babyblue": {20};
		case "cl3_e60_m5_aqua": {20};
		case "cl3_e60_m5_black": {20};
	
	
	
	
	//bmw z4
	case "cl3_z4_2008_black": {20};
	case "cl3_z4_2008_white": {20};
	case "cl3_z4_2008_blue": {20};
	case "cl3_z4_2008_babyblue": {20};
	case "cl3_z4_2008_babypink": {20};
	case "cl3_z4_2008_gold": {20};
	case "cl3_z4_2008_violet": {20};
	case "cl3_z4_2008_red": {20};
	case "cl3_z4_2008_purple": {20};
	case "cl3_z4_2008_orange": {20};
	case "cl3_z4_2008_sand": {20};
	case "cl3_z4_2008_grey": {20};
	case "cl3_z4_2008_silver": {20};
	case "cl3_z4_2008_lime": {20};
	case "cl3_z4_2008_lavender": {20};
	case "cl3_z4_2008_light_blue": {20};
	case "cl3_z4_2008_light_yellow": {20};
	case "cl3_z4_2008_burgundy": {20};
	case "cl3_z4_2008_yellow": {20};
	case "cl3_z4_2008_navy_blue": {20};
	case "cl3_z4_2008_marina_blue": {20};
	case "cl3_z4_2008_dark_green": {20};
	case "cl3_z4_2008_green": {20};
	case "cl3_z4_2008_cardinal": {20};
	case "cl3_z4_2008_aqua": {20};
	case "cl3_z4_2008_camo": {20};
	case "cl3_z4_2008_camo_urban": {20};
	
	//bmw m3 GTR
	case "max_BMW_M3_GTR4": {68};
	case "max_BMW_M3_GTR": {68};
	case "max_BMW_M3_GTR3": {68};
	case "max_BMW_M3_GTR1": {68};
	case "max_BMW_M3_GTR2": {68};
	
	//dodge charger
	case "A3L_ChargerBlack": {25};
	case "A3L_ChargerBlue": {25};
	case "A3L_Charger": {25};
	case "A3L_ChargerRed": {25};
	case "A3L_ChargerWhite": {25};
	case "DAR_ChargerPolice": {30};
	case "DAR_ChargerPoliceState": {30};
	case "DAR_ChargerPoliceStateSlick": {30};
	
	//jonzie_viper
	case "Jonzie_Viper": {15};
	
	//ford f350
	case "A3L_F350Black": {50};
	
	//Fordka
	case "A3L_FordKaBlack": {25};
	case "A3L_FordKaGrey": {25};
	case "A3L_FordKaRed": {25};
	case "A3L_FordKaWhite": {25};
	case "A3L_FordKaBlue": {25};
	
	//ford taurus
	case "DAR_TaurusCivBlack": {75};
	case "DAR_TaurusCivBlue": {75};
	case "DAR_TaurusCiv": {75};
	case "DAR_TaurusPolice": {30};
	
	//cvpi
	case "DAR_CVPIPolice": {30};
	case "A3L_CVPILBFD": {30};
	
	//Burnes LCAC
	case "Burnes_LCAC_1": {535};
	
	//cl3 taurus
	case "cl3_taurus_black": {25};
	case "cl3_taurus_white": {25};
	case "cl3_taurus_aqua": {25};
	case "cl3_taurus_red": {25};
	case "cl3_taurus_babyblue": {25};
	case "cl3_taurus_babypink": {25};
	case "cl3_taurus_blue": {25};
	case "cl3_taurus_orange": {25};
	case "cl3_taurus_lime": {25};
	case "cl3_taurus_silver": {25};
	case "cl3_taurus_grey": {25};
	case "cl3_taurus_sand": {25};
	case "cl3_taurus_purple": {25};
	case "cl3_taurus_lavender": {25};
	case "cl3_taurus_light_blue": {25};
	case "cl3_taurus_light_yellow": {25};
	case "cl3_taurus_burgundy": {25};
	case "cl3_taurus_gold": {25};
	case "cl3_taurus_violet": {25};
	case "cl3_taurus_yellow": {25};
	case "cl3_taurus_navy_blue": {25};
	case "cl3_taurus_marina_blue": {25};
	case "cl3_taurus_cardinal": {25};
	case "cl3_taurus_burgundy": {25};
	case "cl3_taurus_camo": {25};
	case "cl3_taurus_camo_urban": {25};
	
	//fiat
	case "A3L_PuntoBlack": {30};
	case "A3L_PuntoBlue": {30};
	case "A3L_PuntoGrey": {30};
	case "A3L_PuntoRed": {30};
	case "A3L_PuntoWhite": {30};
	
	//vw golf GTI
	case "A3L_VolksWagenGolfGTiblack": {30};
	case "A3L_VolksWagenGolfGTiblue": {30};
	case "A3L_VolksWagenGolfGTired": {30};
	case "A3L_VolksWagenGolfGTiwhite": {30};
	
	//vw polo gti
	case "cl3_polo_gti_black": {20};
	case "cl3_polo_gti_white": {20};
	case "cl3_polo_gti_aqua": {20};
	case "cl3_polo_gti_blue": {20};
	case "cl3_polo_gto_babypink": {20};
	case "cl3_polo_gti_purple": {20};
	case "cl3_polo_gti_red": {20};
	case "cl3_polo_gti_orange": {20};
	case "cl3_polo_gti_sand": {20};
	case "cl3_polo_gti_burgundy": {20};
	case "cl3_polo_gti_navy_blue": {20};
	case "cl3_polo_gti_marina_blue": {20};
	case "cl3_polo_gti_lime": {20};
	case "cl3_polo_gti_silver": {20};
	case "cl3_polo_gti_grey": {20};
	case "cl3_polo_gti_lavender": {20};
	case "cl3_polo_gti_light_blue": {20};
	case "cl3_polo_gti_light_yellow": {20};
	case "cl3_polo_gti_cardinal": {20};
	case "cl3_polo_gti_dark_green": {20};
	case "cl3_polo_gti_yellow": {20};
	case "cl3_polo_gti_green": {20};
	case "cl3_polo_gti_gold": {20};
	case "cl3_polo_gti_violet": {20};
	case "cl3_polo_gti_camo": {20};
	case "cl3_polo_gti_camo_urban": {20};
	
	//skyline
	case "S_Skyline_Black": {20};
	case "S_Skyline_Blue": {20};
	case "S_Skyline_Purple": {20};
	case "S_Skyline_Red": {20};
	case "S_Skyline_White": {20};
	case "S_Skyline_Yellow": {20};
	
	//mclaren p1
	case "S_McLarenP1_Black": {15};
	case "S_McLarenP1_Blue": {15};
	case "S_McLarenP1_Orange": {15};
	case "S_McLarenP1_Silver": {15};
	case "S_McLarenP1_White": {15};
	case "S_McLarenP1_Yellow": {15};
	
	//mclaren mf1
	case "DAR_MF1Silver": {75};
	case "DAR_MF1Red": {75};
	case "DAR_MF1Orange": {75};
	case "DAR_MF1Burgundy": {75};
	case "DAR_MF1Civ": {75};
	
	//porsche 
	case "S_PorscheRS_Black": {15};
	case "S_PorscheRS_White": {15};
	case "S_PorscheRS_Yellow": {15};
	
		case "cl3_carrera_gt_aqua": {15};
		case "cl3_carrera_gt_babyblue": {15};
		case "cl3_carrera_gt_babypink": {15};
		case "cl3_carrera_gt_black": {15};
		case "cl3_carrera_gt_blue": {15};
		case "cl3_carrera_gt_burgundy": {15};
		case "cl3_carrera_gt_camo_urban": {15};
		case "cl3_carrera_gt_cardinal": {15};
		case "cl3_carrera_gt_dark_green": {15};
		case "cl3_carrera_gt_gold": {15};
		case "cl3_carrera_gt_green": {15};
		case "cl3_carrera_gt_grey": {15};
		case "cl3_carrera_gt_lavender": {15};
		case "cl3_carrera_gt_light_blue": {15};
		case "cl3_carrera_gt_light_yellow": {15};
		case "cl3_carrera_gt_lime": {15};
		case "cl3_carrera_gt_marina_blue": {15};
		case "cl3_carrera_gt_navy_blue": {15};
		case "cl3_carrera_gt_orange": {15};
		case "cl3_carrera_gt_purple": {15};
		case "cl3_carrera_gt_red": {15};
		case "cl3_carrera_gt_silver": {15};
		case "cl3_carrera_gt_sand": {15};
		case "cl3_carrera_gt_violet": {15};
		case "cl3_carrera_gt_white": {15};
		case "cl3_carrera_gt_yellow": {15};
	
	//ships
	case "B_Boat_Transport_01_F": {135};
	case "C_Boat_Civil_01_police_F": {125};
	case "B_Boat_Armed_01_minigun_F": {85};
	case "B_SDV_01_F": {65};
	case "C_Rubberboat": {75};
	case "C_Boat_Civil_01_F": {85};
	case "D41_Trawler": {485};
	case "Sab_sea_An2": {130};
	case "Sab_sea2_An2": {130};
	case "Sab_sea3_An2": {130};
	case "Sab_sea4_An2": {130};
	case "Sab_Amphi_An2": {130};
	
	
	//Vanilla helicopters
	case "B_Heli_Light_01_F": {30};
	case "O_Heli_Light_02_v2_F": {75};
	case "C_Heli_Light_01_civil_F": {30};
	case "I_Heli_light_03_unarmed_F": {165};
	case "B_Heli_Transport_01_F": {165};
	case "O_Heli_Light_02_unarmed_F": {175};
	case "I_Heli_Transport_02_F": {275};
	case "O_Heli_Attack_02_black_F": {165};
	case "B_Heli_Attack_01_F": {165};
	case "B_Heli_Transport_03_unarmed_F": {335};
	case "B_Heli_Transport_03_F": {335};
	case "O_Heli_Transport_04_F": {125};
	case "O_Heli_Transport_04_medevac_F": {225};
	case "O_Heli_Transport_04_covered_F": {295};
	case "O_Heli_Transport_04_fuel_F": {130};
	case "O_Heli_Transport_04_repair_F": {130};
	
	//bell
	case "dezkit_b206_ems": {30};
	case "dezkit_b206_rescue": {30};
	case "dezkit_b206_fl": {30};
	case "dezkit_b206_hs": {30};
	case "dezkit_b206_ls": {30};
	case "dezkit_b206_news": {30};
	case "dezkit_b206_police": {30};
	case "dezkit_b206_fbi": {30};
	
	//texan
	case "bwi_a3_t6a_6": {30};
	case "bwi_a3_t6a_nta": {30};
	case "bwi_a3_t6a_7": {30};
	case "bwi_a3_t6a_9": {30};
	case "bwi_a3_t6a_3": {30};
	case "bwi_a3_t6a_4": {30};
	case "bwi_a3_t6a_1": {30};
	case "bwi_a3_t6a": {30};
	case "bwi_a3_t6a_8": {30};
	case "bwi_a3_t6a_2": {30};
	case "bwi_a3_t6c": {30};
	
	//An-2
	case "sab_cz_An2": {30};
	case "Sab_ee_An2": {30};
	case "Sab_ru_An2": {30};
	case "Sab_yel_An2": {30};
	case "Sab_fd_An2": {30};
	case "Sab_ana_An2": {30};
	case "sab_ca_An2": {30};
	case "Sab_Snow_An2": {30};
	case "Sab_Snow_An2": {30};
	case "Sab_Snow3_An2": {30};
	case "Sab_af_An2": {30};
	case "Sab_tk_An2": {30};
	case "Sab_A2_An2": {30};
	case "sab_BI_An2": {30};
	case "sab_AH_An2": {30};

	//rangerover
	case "S_Rangerover_Black": {25};
	case "S_Rangerover_Blue": {25};
	case "S_Rangerover_Green": {25};
	case "S_Rangerover_Grey": {25};
	case "S_Rangerover_Orange": {25};
	case "S_Rangerover_Purple": {25};
	case "S_Rangerover_Red": {25};
	case "S_Rangerover_White": {25};
	
	//astonmartin dbs volante
	case "cl3_dbs_volante_black": {15};
	case "cl3_dbs_volante_white": {15};
	case "cl3_dbs_volante_blue": {15};
	case "cl3_dbs_volante_babyblue": {15};
	case "cl3_dbs_volante_babypink": {15};
	case "cl3_dbs_volante_gold": {15};
	case "cl3_dbs_volante_violet": {15};
	case "cl3_dbs_volante_purple": {15};
	case "cl3_dbs_volante_red": {15};
	case "cl3_dbs_volante_orange": {15};
	case "cl3_dbs_volante_sand": {15};
	case "cl3_dbs_volante_grey": {15};
	case "cl3_dbs_volante_silver": {15};
	case "cl3_dbs_volante_lime": {15};
	case "cl3_dbs_volante_lavender": {15};
	case "cl3_dbs_volante_light_blue": {15};
	case "cl3_dbs_volante_light_yellow": {15};
	case "cl3_dbs_volante_burgundy": {15};
	case "cl3_dbs_volante_yellow": {15};
	case "cl3_dbs_volante_navy_blue": {15};
	case "cl3_dbs_volante_marina_blue": {15};
	case "cl3_dbs_volante_green": {15};
	case "cl3_dbs_volante_dark_green": {15};
	case "cl3_dbs_volante_cardinal": {15};
	case "cl3_dbs_volante_aqua": {15};
	case "cl3_dbs_volante_camo": {15};
	case "cl3_dbs_volante_camo_urban": {15};
	
	//astonmartin S Vantage
	case "S_Vantage_Black": {15};
	case "S_Vantage_Blue": {15};
	case "S_Vantage_LightBlue": {15};
	case "S_Vantage_Purple": {15};
	case "S_Vantage_Red": {15};
	case "S_Vantage_White": {15};
	case "S_Vantage_Black": {15};
	case "S_Vantage_Yellow": {15};
	
	//ferrari 458 A3L
	case "A3L_Ferrari458black": {15};
	case "A3L_Ferrari458white": {15};
	case "A3L_Ferrari458red": {15};
	case "A3L_Ferrari458blue": {15};
	case "A3L_Ferrari458black": {15};
	
	//ferrari 458 cl3
	case "cl3_458_black": {15};
	case "cl3_458_white": {15};
	case "cl3_458_blue": {15};
	case "cl3_458_babyblue": {15};
	case "cl3_458_babypink": {15};
	case "cl3_458_gold": {15};
	case "cl3_458_violet": {15};
	case "cl3_458_red": {15};
	case "cl3_458_purple": {15};
	case "cl3_458_orange": {15};
	case "cl3_458_sand": {15};
	case "cl3_458_grey": {15};
	case "cl3_458_lime": {15};
	case "cl3_458_silver": {15};
	case "cl3_458_lavender": {15};
	case "cl3_458_burgundy": {15};
	case "cl3_458_yellow": {15};
	case "cl3_458_navy_blue": {15};
	case "cl3_458_marina_blue": {15};
	case "cl3_458_dark_green": {15};
	case "cl3_458_green": {15};
	case "cl3_458_cardinal": {15};
	case "cl3_458_aqua": {15};
	case "cl3_458_camo": {15};
	case "cl3_458_camo_urban": {15};
	
	//Mercedes AMG e63
	case "cl3_e63_amg_black": {20};
	case "cl3_e63_amg_white": {20};
	case "cl3_e63_amg_babyblue": {20};
	case "cl3_e63_amg_babypink": {20};
	case "cl3_e63_amg_gold": {20};
	case "cl3_e63_amg_violet": {20};
	case "cl3_e63_amg_red": {20};
	case "cl3_e63_amg_grey": {20};
	case "cl3_e63_amg_purple": {20};
	case "cl3_e63_amg_lime": {20};
	case "cl3_e63_amg_silver": {20};
	case "cl3_e63_amg_sand": {20};
	case "cl3_e63_amg_lavender": {20};
	case "cl3_e63_amg_light_blue": {20};
	case "cl3_e63_amg_light_yellow": {20};
	case "cl3_e63_amg_burgundy": {20};
	case "cl3_e63_amg_yellow": {20};
	case "cl3_e63_amg_navy_blue": {20};
	case "cl3_e63_amg_marina_blue": {20};
	case "cl3_e63_amg_dark_green": {20};
	case "cl3_e63_amg_green": {20};
	case "cl3_e63_amg_cardinal": {20};
	case "cl3_e63_amg_aqua": {20};
	case "cl3_e63_amg_camo": {20};
	case "cl3_e63_amg_camo_urban": {20};
	
	//Lamborghini 
	case "cl3_reventon_2tone1": {15};
	case "cl3_reventon_2tone2": {15};
	case "cl3_reventon_2tone3": {15};
	case "cl3_reventon_2tone4": {15};
	case "cl3_reventon_2tone5": {15};
	case "cl3_reventon_aqua": {15};
	case "cl3_reventon_babyblue": {15};
	case "cl3_reventon_babypink": {15};
	case "cl3_reventon_black": {15};
	case "cl3_reventon_blue": {15};
	case "cl3_reventon_burgundy": {15};
	case "cl3_reventon_camo": {15};
	case "cl3_reventon_cardinal": {15};
	case "cl3_reventon_dark_green": {15};
	case "cl3_reventon_flame": {15};
	case "cl3_reventon_flame1": {15};
	case "cl3_reventon_flame2": {15};
	case "cl3_reventon_gold": {15};
	case "cl3_reventon_green": {15};
	case "cl3_reventon_grey": {15};
	case "cl3_reventon_lavender": {15};
	case "cl3_reventon_light_blue": {15};
	case "cl3_reventon_light_yellow": {15};
	case "cl3_reventon_lime": {15};
	case "cl3_reventon_marina_blue": {15};
	case "cl3_reventon_navy_blue": {15};
	case "cl3_reventon_orange": {15};
	case "cl3_reventon_purple": {15};
	case "cl3_reventon_red": {15};
	case "cl3_reventon_sand": {15};
	case "cl3_reventon_silver": {15};
	case "cl3_reventon_violet": {15};
	case "cl3_reventon_white": {15};
	case "cl3_reventon_yellow": {15};
	
	
		case "cl3_lamborghini_gt1_2tone1": {15};
		case "cl3_lamborghini_gt1_2tone2": {15};
		case "cl3_lamborghini_gt1_2tone3": {15};
		case "cl3_lamborghini_gt1_2tone4": {15};
		case "cl3_lamborghini_gt1_2tone5": {15};
		case "cl3_lamborghini_gt1_aqua": {15};
		case "cl3_lamborghini_gt1_babyblue": {15};
		case "cl3_lamborghini_gt1_babypink": {15};
		case "cl3_lamborghini_gt1_black": {15};
		case "cl3_lamborghini_gt1_blue": {15};
		case "cl3_lamborghini_gt1_burgundy": {15};
		case "cl3_lamborghini_gt1_camo_urban": {15};
		case "cl3_lamborghini_gt1_cardinal": {15};
		case "cl3_lamborghini_gt1_dark_green": {15};
		case "cl3_lamborghini_gt1_flame": {15};
		case "cl3_lamborghini_gt1_flame2": {15};
		case "cl3_lamborghini_gt1_gold": {15};
		case "cl3_lamborghini_gt1_green": {15};
		case "cl3_lamborghini_gt1_grey": {15};
		case "cl3_lamborghini_gt1_lavender": {15};
		case "cl3_lamborghini_gt1_light_blue": {15};
		case "cl3_lamborghini_gt1_light_yellow": {15};
		case "cl3_lamborghini_gt1_lime": {15};
		case "cl3_lamborghini_gt1_marina_blue": {15};
		case "cl3_lamborghini_gt1_navy_blue": {15};
		case "cl3_lamborghini_gt1_orange": {15};
		case "cl3_lamborghini_gt1_purple": {15};
		case "cl3_lamborghini_gt1_red": {15};
		case "cl3_lamborghini_gt1_sand": {15};
		case "cl3_lamborghini_gt1_silver": {15};
		case "cl3_lamborghini_gt1_violet": {15};
		case "cl3_lamborghini_gt1_white": {15};
		case "cl3_lamborghini_gt1_yellow": {15};
		
		case "cl3_murcielago_2tone1": {15};
		case "cl3_murcielago_2tone2": {15};
		case "cl3_murcielago_2tone3": {15};
		case "cl3_murcielago_2tone4": {15};
		case "cl3_murcielago_2tone5": {15};
		case "cl3_murcielago_aqua": {15};
		case "cl3_murcielago_babyblue": {15};
		case "cl3_murcielago_babypink": {15};
		case "cl3_murcielago_black": {15};
		case "cl3_murcielago_blue": {15};
		case "cl3_murcielago_burgundy": {15};
		case "cl3_murcielago_camo_urban": {15};
		case "cl3_murcielago_cardinal": {15};
		case "cl3_murcielago_dark_green": {15};
		case "cl3_murcielago_flame": {15};
		case "cl3_murcielago_flame2": {15};
		case "cl3_murcielago_gold": {15};
		case "cl3_murcielago_green": {15};
		case "cl3_murcielago_grey": {15};
		case "cl3_murcielago_lavender": {15};
		case "cl3_murcielago_light_blue": {15};
		case "cl3_murcielago_light_yellow": {15};
		case "cl3_murcielago_lime": {15};
		case "cl3_murcielago_marina_blue": {15};
		case "cl3_murcielago_navy_blue": {15};
		case "cl3_murcielago_orange": {15};
		case "cl3_murcielago_purple": {15};
		case "cl3_murcielago_red": {15};
		case "cl3_murcielago_sand": {15};
		case "cl3_murcielago_silver": {15};
		case "cl3_murcielago_violet": {15};
		case "cl3_murcielago_white": {15};
		case "cl3_murcielago_yellow": {15};
	
	//bugatti b206
	case "cl3_veyron_wht_lwht": {15};
	case "cl3_veyron_red_red": {15};
	case "cl3_veyron_brn_blk": {15};
	case "cl3_veyron_lblue_lblue": {15};
	case "cl3_veyron_lblue_dblue": {15};
	case "cl3_veyron_blk_wht": {15};
	case "cl3_veyron_black": {15};
		
	//jets
	case "B_Plane_CAS_01_F": {0};
	case "O_Plane_CAS_02_F": {0};
	case "I_Plane_Fighter_03_CAS_F": {0};
	case "I_Plane_Fighter_03_AA_F": {0};
	
	//Trucks 
	case "C_Van_01_transport_F": {80};
	case "B_G_Van_01_fuel_F": {100};
	case "C_Van_01_box_F": {120};
	case "B_Truck_01_mover_F": {195};
	case "O_Truck_02_fuel_F": {200};
	case "I_Truck_02_transport_F": {180};
	case "I_Truck_02_covered_F": {180};
	case "O_Truck_03_transport_F": {425};
	case "O_Truck_03_covered_F": {435};
	case "B_Truck_01_transport_F": {435};
	case "B_Truck_01_covered_F": {785};
	case "B_Truck_01_medical_F": {900};
	case "O_Truck_03_device_F": {930};
	case "B_Truck_01_fuel_F": {940};
	case "O_Truck_03_ammo_F": {950};
	case "B_Truck_01_ammo_F": {950};
	case "B_Truck_01_box_F": {1100};

	//House
	case "Land_CargoBox_V1_F": {5000};
	case "Box_IND_Grenades_F": {850};
	case "B_supplyCrate_F": {1700};
	
	//Wrecks
	case "Land_Wreck_Traw_F": {10000000};
	case "Land_Wreck_Traw2_F": {10000000};
	
	default {-1};

};