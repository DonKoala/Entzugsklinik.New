#include <macro.h>
/*
	Master Life Configuration File
	This file is to setup variables for the client, there are still other configuration files in the system

*****************************
****** Backend Variables *****
*****************************
*/
life_query_time = time;
life_action_delay = time;
life_trunk_vehicle = Objnull;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_banana_active = false;
life_meemee_active = false;
life_benny_active = false;
life_mining_active = false;
life_gather_active = false;
life_clothing_filter = 0;
life_clothing_uniform = -1;
life_redgull_effect = time;
life_fatigue = 0.5; //Set the max fatigue limit (50%)
life_is_processing = false;
life_channel_send = true; //Channel AAN-NEWS
life_bail_paid = false;
life_impound_inuse = false;
life_action_inUse = false;
life_spikestrip = ObjNull;
life_barriersmall = ObjNull;
life_respawn_timer = 5; //Scaled in minutes
life_knockout = false;
life_interrupted = false;
life_respawned = false;
life_removeWanted = false;
life_god = false;
life_frozen = false;
life_markers = false;
nn_last_vehicles = [];
life_handcuffs = ObjNull;
life_handcuffkeys = ObjNull;
nn_empInUse = false;
mdone = false;
safe = false;
life_drink = 0;
life_drug = 0; 

//Persistent Saving
__CONST__(life_save_civ,TRUE); //Save weapons for civs?
__CONST__(life_save_yinv,TRUE); //Save Y-Inventory for players?

//Revive constant variables.
__CONST__(life_revive_cops,TRUE); //Set to false if you don't want cops to be able to revive downed players.
__CONST__(life_revive_fee,5000); //Fee for players to pay when revived.

//House Limit
__CONST__(life_houseLimit,5); //Maximum amount of houses a player can buy (TODO: Make Tiered licenses).

//Gang related stuff?
__CONST__(life_gangPrice,75000); //Price for creating a gang (They're all persistent so keep it high to avoid 345345345 gangs).
__CONST__(life_gangUpgradeBase,10000); //MASDASDASD
__CONST__(life_gangUpgradeMultipler,2.5); //BLAH

//Uniform price (0),Hat Price (1),Glasses Price (2),Vest Price (3),Backpack Price (4)
life_clothing_purchase = [-1,-1,-1,-1,-1];
/*
*****************************
****** Weight Variables *****
*****************************
*/
life_maxWeight = 24; //Identifies the max carrying weight (gets adjusted throughout game when wearing different types of clothing).
life_maxWeightT = 24; //Static variable representing the players max carrying weight on start.
life_carryWeight = 0; //Represents the players current inventory weight (MUST START AT 0).

/*
*****************************
****** Life Variables *******
*****************************
*/
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_bank_fail = false;
life_use_atm = true;
life_is_arrested = false;
life_delivery_in_progress = false;
life_action_in_use = false;
life_thirst = 100;
life_hunger = 100;
__CONST__(life_paycheck_period,5); //Five minutes
life_cash = 0;
__CONST__(life_impound_car,750);
__CONST__(life_impound_boat,1250);
__CONST__(life_impound_air,1750);
life_istazed = false;
life_my_gang = ObjNull;
life_sex_ill = 0;
life_checked = 0;
life_sitting = false;		
life_nlrtimer_stop = false;		// New Life Timer
life_nlrtimer_running = false;  // New Life Timer
life_smartphoneTarget = ObjNull;
life_fadeSound = false;

life_countRepairs = 4;  // Toolkit 3 mal verbrauchbar


life_vehicles = [];
bank_robber = [];
switch (playerSide) do
{
	case west: 
	{
		life_atmcash = 50000; //Starting Bank Money
		life_paycheck = 0; //Paycheck Amount
	};
	case civilian: 
	{
		life_atmcash = 50000;
		life_paycheck = 1050;
	};
	case independent: {
		life_atmcash = 50000;
		life_paycheck = 0;
	};
};

/*
	Master Array of items?
*/
life_vShop_rentalOnly = ["O_MRAP_02_hmg_F","B_G_Offroad_01_armed_F"];
__CONST__(life_vShop_rentalOnly,life_vShop_rentalOnly); //These vehicles can never be bought and only 'rented'. Used as a balancer & money sink. If you want your server to be chaotic then fine.. Remove it..

life_house =
[
        "xcam_i_House_Big_01_V1_F",
        "xcam_i_House_Big_02_V1_F"
 
];

life_inv_items = 
[
	"life_inv_oilu",
	"life_inv_oilp",
	"life_inv_heroinu",
	"life_inv_heroinp",
	"life_inv_cannabis",
	"life_inv_marijuana",
	"life_inv_apple",
	"life_inv_rabbit",
	"life_inv_salema",
	"life_inv_ornate",
	"life_inv_mackerel",
	"life_inv_tuna",
	"life_inv_mullet",
	"life_inv_catshark",
	"life_inv_turtle",
	"life_inv_fishingpoles",
	"life_inv_water",//
	"life_inv_donuts",//
	"life_inv_turtlesoup",//
	"life_inv_coffee",//
	"life_inv_fuelF",//
	"life_inv_fuelE",//
	"life_inv_pickaxe",//
	"life_inv_copperore",//
	"life_inv_ironore",//
	"life_inv_ironr",//
	"life_inv_copperr",//
	"life_inv_sand",//
	"life_inv_salt",//
	"life_inv_saltr",//
	"life_inv_glass",//
	"life_inv_tbacon",//
	"life_inv_lockpick",//
	"life_inv_redgull",//
	"life_inv_peach",//
	"life_inv_diamond",//
	"life_inv_coke",//
	"life_inv_cokep",//
	"life_inv_diamondr",//
	"life_inv_spikeStrip",//
	"life_inv_goldbar",//
	"life_inv_blastingcharge",//
	"life_inv_boltcutter",//
	"life_inv_defusekit",//
	"life_inv_storagesmall",//
	"life_inv_storagebig",//
	
	// new items
	"life_inv_gpstracker",//
	"life_inv_speedbomb",//
	"life_inv_kidney",//
	"life_inv_scalpel",//
	"life_inv_barrier",//
	"life_inv_barriersmall",//
	"life_inv_kegel",//
	"life_inv_methu",//
	"life_inv_methp",//
	"life_inv_lsdu",//
	"life_inv_lsdp",//
	"life_inv_cigarette",//
	"life_inv_cotton",//
	"life_inv_henraw",//
    "life_inv_roosterraw",//
    "life_inv_sheepraw",//
    "life_inv_goatraw",//
	"life_inv_rabbitraw",//
	"life_inv_uwsl",
	"life_inv_zyankali",
	"life_inv_puranium",
	"life_inv_ipuranium",
	"life_inv_uranium1",
	"life_inv_uranium2",
	"life_inv_uranium3",
	"life_inv_uranium4",
	"life_inv_uranium",
	"life_inv_handcuffs",
	"life_inv_handcuffkeys",
	"life_inv_brenn",
	"life_inv_raff",
	"life_inv_schnaps",
	"life_inv_benzin",
	"life_inv_diesel",
	"life_inv_bauma",
	"life_inv_zucker",
	"life_inv_mais",
	"life_inv_bottledwhiskey",
	"life_inv_goldschatz"
];

//Setup variable inv vars.
{missionNamespace setVariable[_x,0];} foreach life_inv_items;
//Licenses [license var, civ/cop]
life_licenses =
[
	["license_civ_driver","civ"], //
	["license_civ_air","civ"], //
	["license_civ_heroin","civ"], //
	["license_civ_marijuana","civ"], //
	["license_civ_boat","civ"],//
	["license_civ_oil","civ"],//
	["license_civ_dive","civ"],//
	["license_civ_truck","civ"],//
	["license_civ_gun","civ"],//
	["license_civ_rebel","civ"],//
	["license_civ_coke","civ"],//
	["license_civ_diamond","civ"],//
	["license_civ_copper","civ"],//
	["license_civ_iron","civ"],//
	["license_civ_sand","civ"],//
	["license_civ_salt","civ"],//
	["license_civ_home","civ"],//
	["license_civ_anwalt","civ"],//
	["license_civ_aan","civ"],//
	["license_civ_logistic","civ"],//
	["license_civ_meth","civ"],//
	["license_civ_adac","civ"],//
	["license_civ_lsd","civ"],//
	["license_civ_taxi","civ"],//
	["license_civ_uranium","civ"]
];

//Setup License Variables
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;

life_dp_points = ["dp_1","dp_2","dp_3"];
//[shortVar,reward]
life_illegal_items = [
	["heroinu",1200],
	["heroinp",3500],
	["cocaine",1500],
	["cocainep",3350],
	["marijuana",3600],
	["methu",400],
	["methp",3900],
	["lsdu",500],
	["lsdp",4150],
	["turtle",2300],
	["blastingcharge",10000],
	["boltcutter",5000],
	["goldbar",95000],
	["kidney",10000],
	["life_inv_cannabis",3000],
	["ipuranium",10000]

];


/*
	Sell / buy arrays
*/
sell_array = 
[
	["apple",25],//
	["peach",30],//
	["cotton",50],//
	["heroinu",1000],//
	["heroinp",3500],//
	["salema",60],//
	["ornate",75],//
	["mackerel",265],//
	["tuna",1050],//
	["mullet",375],//
	["catshark",450],//
	["rabbit",65],//
	["oilp",1600],//
	["turtle",30000],//
	["water",5],//
	["coffee",5],//
	["turtlesoup",1000],//
	["donuts",60],//
	["marijuana",3600],//
	["tbacon",25],//
	["lockpick",75],//
	["pickaxe",750],//
	["redgull",200],//
	["cocaine",1000],//
	["cocainep",3350],//
	["diamond",750],//
	["diamondc",1600],//
	["iron_r",1250],//
	["copper_r",1350],//
	["salt_r",650],//
	["glass",950],//
	["fuelF",500],//
	["spikeStrip",1200],//
	["goldbar",13000],//
	["blastingcharge",15000],//
	["boltcutter",3500],//
	["defusekit",2500],//
	["storagesmall",6500],//
	["storagebig",140000],//
	
	//new items
	["gpstracker",800],//
	["speedbomb",10000],//
	["kidney",5000],//
	["scalpel",1000],//
	["barrier",100],//
	["barriersmall",75],//
	["kegel",50],//
	["methu",1000],//
    ["methp",3900],//
	["lsdu",600],//
    ["lsdp",4150],//
	["cigarette",100],//
	["henraw",1500],//
    ["roosterraw",1500],//
    ["sheepraw",1500],//
    ["goatraw",1500],//
    ["rabbitraw",1500],//
	["uwsl",5000],
	["uranium",3500],
	["puranium",7000],
	["handcuffs",200],
	["handcuffkeys",100],
	["schnaps",7000],
	["diesel",200],
	["benzin",100],
	["goldschatz",15000]
];
__CONST__(sell_array,sell_array);

buy_array = 
[
	["apple",65],
	["rabbit",75],
	["salema",55],
	["ornate",50],
	["mackerel",200],
	["tuna",900],
	["mullet",300],
	["catshark",350],
	["water",10],
	["turtle",34000],
	["turtlesoup",2500],
	["donuts",120],
	["coffee",10],
	["tbacon",75],
	["lockpick",3500],
	["pickaxe",1200],
	["redgull",2500],
	["fuelF",850],
	["peach",68],
	["spikeStrip",1000],
	["blastingcharge",30000],
	["boltcutter",7500],
	["defusekit",2500],
	["storagesmall",78000],
	["storagebig",160000],
	
	//new items
	["gpstracker",2500],
	["speedbomb",170000],
	["kidney",12000],
	["scalpel",4750],
	["barrier",400],
	["barriersmall",350],
	["kegel",300],
	["cigarette",700],
	["cotton",730],
	["henraw",5500],
    ["roosterraw",5500],
    ["sheepraw",5500],
    ["goatraw",5500],
    ["rabbitraw",5500],
	["uwsl",10000],
	["zyankali",5000],
	["puranium",2000],
	["ipuranium",4000],
	["handcuffs",500],
	["handcuffkeys",300]	
];
__CONST__(buy_array,buy_array);

life_weapon_shop_array =
[	
	["LMG_Zafir_F",60000],
	["R3F_M4S90",10000],
	["srifle_DMR_01_F",3500],
	["arifle_TRG21_F",32000],
	["arifle_TRG20_F",32000],
	["arifle_Katiba_F",32000],
	["arifle_Katiba_C_F",32000],
	["srifle_LRR_F",45000],
	["arifle_MX_SW_F",3500],
	["srifle_GM6_F",37500],
	["srifle_EBR_F",12500],
	["arifle_SDAR_F",25000],
	["arifle_Katiba_GL_F",3500],
	["arifle_TRG21_GL_F",3500],
	["arifle_Mk20_GL_F",37250],
	["arifle_Mk20_GL_plain_F",37250],
	["arifle_Mk20_F",35250],
	["arifle_Mk20_plain_F",35250],
	["arifle_Mk20C_F",35250],
	["arifle_Mk20C_plain_F",35250],
	["LMG_Mk200_F",3500],
	["SMG_01_F",8500],
	["SMG_02_F",7500],	
	["R3F_PAMAS",20000],
	["hgun_PDW2000_F",15000],
	["hgun_Pistol_heavy_01_F",1000],
	["hgun_P07_F",2500],
	["hgun_Rook40_F",2500],
	["hgun_ACPC2_F",2500],
	["hgun_Pistol_heavy_02_F",7500],
	["hgun_Pistol_Signal_F",7500],
	["R3F_FRF2",nil,280000],
	["R3F_FRF2_DES",nil,300000],
	["R3F_10Rnd_762x51_FRF2",nil,100],
	["arifle_MXC_F",40000],
	["arifle_MXC_Black_F",40000],
	["arifle_MX_F",45000],
	["arifle_MX_Black_F",45000],
	["arifle_MX_GL_F",48000],
	["arifle_MX_GL_Black_F",48000],
	["arifle_MXM_F",5000],
	["arifle_MXM_Black_F",5000],
	["arifle_MX_SW_F",55000],
	["arifle_MX_SW_Black_F",55000],
	
	["optic_Nightstalker",12500],
	["optic_Yorris",1000],
	["optic_Holosight_smg",1000],
	["optic_MRD",1000],
	["optic_Aco",1000],
	["optic_Holosight",1000],
	["optic_MRCO",1000],
	["optic_Hamr",1000],
	["optic_SOS",5000],
	["optic_Arco",1000],
	["optic_ACO_grn",1000],
	["optic_Aco_smg",1000],
	["optic_ACO_grn_smg",1000],
	["optic_DMS",10000],
	["optic_LRPS",10000],
	["optic_NVS",10000],
	["optic_tws",10000],
	["optic_tws_mg",12000],
	["acc_flashlight",750],
	["acc_pointer_IR",1000],
	["muzzle_snds_H_MG",2900],
	["muzzle_snds_L",2500],
	["muzzle_snds_acp",500],
	["muzzle_snds_H",2500],
	["muzzle_snds_B",2500],
	["muzzle_snds_M",2500],
	
	["R3F_MP5SD",18000],
	["R3F_30Rnd_9x19_MP5",100],
	["R3F_Famas_surb",15000],
	["R3F_Famas_surb_HG",20000],
	["R3F_Famas_surb_M203",20000],
	["R3F_Famas_F1",22000],
	["R3F_Famas_F1_HG",22000],
	["R3F_Famas_F1_M203",22000],
	["R3F_Famas_G2",28000],
	["R3F_Famas_G2_HG",28000],
	["R3F_Famas_G2_M203",28000],
	["R3F_HK416M",30000],
	["R3F_HK416M_HG",30000],
	["R3F_30Rnd_556x45_FAMAS",10],
	["R3F_25Rnd_556x45_FAMAS",10],
	["R3F_30Rnd_556x45_TRACER_FAMAS",50],
	["R3F_25Rnd_556x45_TRACER_FAMAS",50],
	["R3F_30Rnd_556x45_HK416",50],
	["R3F_30Rnd_556x45_TRACER_HK416",50],
	["R3F_HK417S_HG",40000],
	["R3F_HK417M",42000],
	["R3F_HK417M_HG",43000],
	["R3F_HK417L",45000],
	["R3F_20Rnd_762x51_HK417",200],
	["R3F_20Rnd_762x51_TRACER_HK417",220],
	
	["R3F_M107",100000],
	["R3F_10Rnd_127x99_M107",500],
	["R3F_10Rnd_127x99_PEI_M107",400],
	["R3F_FELIN_FRF2",8000],
	["R3F_J10",8000],
	["R3F_J10_MILDOT",8200],
	["R3F_J8",7000],
	["R3F_J8_MILDOT",7200],
	["R3F_OB50",5800],
	["R3F_NF",5000],
	["R3F_NF42",5000],
	["R3F_ZEISS",3500],
	["R3F_J4",3000],
	["R3F_POINTEUR_SURB",1000],
	["R3F_LAMPE_SURB",1000],
	["R3F_AIMPOINT",2500],
	["R3F_EOTECH",2500],
	["R3F_PIRAT",300],
	["R3F_SILENCIEUX_FAMAS",200],
	["R3F_SILENCIEUX_FRF2",200],
	["R3F_SILENCIEUX_FRF2_DES",200],
	["R3F_AIMPOINT_DES",300],
	["R3F_EOTECH_DES",300],
	
	["5Rnd_127x108_Mag",2500],
	["5Rnd_127x108_APDS_Mag",2500],
	["6Rnd_45ACP_Cylinder",25],	
	["6Rnd_GreenSignal_F",25],
	["6Rnd_RedSignal_F",25],
	["7Rnd_408_Mag",2500],
	["9Rnd_45ACP_Mag",25],
	["10Rnd_762x51_Mag",25],
	["11Rnd_45ACP_Mag",25],
	["R3F_15Rnd_9x19_PAMAS",50],
	["16Rnd_9x21_Mag",25],
	["20Rnd_556x45_UW_mag",100],
	["20Rnd_762x51_Mag",100],
	["30Rnd_45ACP_Mag_SMG_01",50],
	["30Rnd_45ACP_Mag_SMG_01_tracer_green",50],
	["30Rnd_9x21_Mag",50],
	["30Rnd_556x45_Stanag",50],
	["30Rnd_556x45_Stanag_Tracer_Red",50],
	["30Rnd_556x45_Stanag_Tracer_Green",50],
	["30Rnd_556x45_Stanag_Tracer_Yellow",50],
	["30Rnd_65x39_caseless_mag",50],
	["30Rnd_65x39_caseless_mag_Tracer",50],
	["30Rnd_65x39_caseless_green_mag_Tracer",50],
	["100Rnd_65x39_caseless_mag",250],
	["100Rnd_65x39_caseless_mag_Tracer",250],
	["150Rnd_762x51_Box",250],
	["150Rnd_762x51_Box_Tracer",250],
	["200Rnd_65x39_cased_Box",500],
	["200Rnd_65x39_cased_Box_Tracer",500],
	["R3F_7Rnd_M4S90",50],
	
	["R3F_PGM_Hecate_II",360000],
	["R3F_PGM_Hecate_II_DES",360000],
	["R3F_PGM_Hecate_II_POLY",360000],
	["R3F_7Rnd_127x99_PGM",200],
	["R3F_7Rnd_127x99_PEI_PGM",200],
	
	["Tv_Camera",5000],
	
	["R3F_Minimi",160000],
	["R3F_Minimi_HG",16500],
	["R3F_200Rnd_556x45_MINIMI",200],
	["R3F_Minimi_762",180000],
	["R3F_Minimi_762_HG",18500],
	["R3F_100Rnd_762x51_MINIMI",200],
	["SatchelCharge_Remote_Mag",10000],
	
	["bipod_02_F_tan",1000],
	["bipod_02_F_hex",1000],
	["bipod_01_F_mtp",1000],
	["bipod_01_F_snd",1000],
	["bipod_03_F_oli",1000],
	["optic_AMS_khk",12000],
	["optic_AMS_snd",12000],
	["optic_KHS_old",12000],
	["optic_KHS_tan",12000],
	["optic_KHS_hex",12000],
	["muzzle_snds_93mmg_tan",120],
	["srifle_DMR_05_tan_f",26000],
	["srifle_DMR_05_hex_F",26000],
	["10Rnd_93x64_DMR_05_Mag",10],
	["srifle_DMR_03_multicam_F",9000],
	["srifle_DMR_03_khaki_F",9000],
	["srifle_DMR_03_tan_F",9000],
	["srifle_DMR_03_woodland_F",9000],
	["20Rnd_762x51_Mag",10],
	["srifle_DMR_06_camo_F",8000],
	["20Rnd_762x51_Mag",10],
	["bipod_03_F_oli",1000],
	["bipod_03_F_blk",1000],
	["bipod_02_F_blk",1000],
	["bipod_01_F_blk",1000],
	["optic_AMS",1200],
	["optic_KHS_blk",1200],
	["srifle_DMR_05_blk_F",62000],
	["10Rnd_93x64_DMR_05_Mag",100],
	["muzzle_snds_93mmg",1100],
	["srifle_DMR_03_F",82000],
	["20Rnd_762x51_Mag",100],
	["muzzle_snds_B",1100],
	["srifle_DMR_06_olive_F",57000],
	["20Rnd_762x51_Mag",100],
	["optic_AMS_khk",5000],
	
	["RH_mk2",15000],
    ["RH_10Rnd_22LR_mk2",500],
	["RH_deagle",25000], 		
	["RH_deagleg",100000],		
	["RH_deagles",25000],			
	["RH_deaglem",25000],		
	["RH_7Rnd_50_AE",500],		
	["RH_cz75",15000],			
	["RH_16Rnd_9x19_cz",500], 		
	["RH_sw659",17500],			
	["RH_14Rnd_9x19_sw",500],	
	["RH_usp",16500],			
	["RH_12Rnd_45cal_usp",500],		
	["RH_mak",10000],			
	["RH_8Rnd_9x18_Mak",500],		
	["RH_uspm",18500],				
	["RH_16Rnd_40cal_usp",500],		
	["RH_m9",19000],			
	["RH_15Rnd_9x19_M9",500],		
	["RH_m9c",15500],				
	["RH_tt33",15500],				
	["RH_8Rnd_762_tt33",50],        
	["RH_mk2",11500],				
	["RH_10Rnd_22LR_mk2",500],     
	["RH_p226",18000],				
	["RH_15Rnd_9x19_SIG",500],     
	["RH_p226s",15500],			
	["RH_mateba",5000],            
	["RH_6Rnd_44_Mag",500],       
	["RH_python",19000],       
	["RH_6Rnd_357_Mag",500],     
	["RH_mp412",17500],          
	["RH_bull",5000],				
	["RH_6Rnd_454_Mag",500],        
	["RH_bullb",5000],            
	["RH_ttracker",5000],        	
	["RH_6Rnd_45ACP_Mag",500],     
	["RH_ttracker_g",5000],      
	["RH_fnp45",19500],          
	["RH_15Rnd_45cal_fnp",500],
	["RH_fnp45t",18500],          
	["RH_fn57",16500], 				
	["RH_20Rnd_57x28_FN",500],	
	["RH_fn57_g",21000],          
	["RH_fn57_t",21000],    
	["RH_gsh18",18000],           
	["RH_18Rnd_9x19_gsh",500],	
	["RH_g18",3500],
    ["RH_33Rnd_9x19_g18",500],
	["RH_g17",500],
	["RH_g19",500],
	["RH_g19t",550],
	["RH_17Rnd_9x19_g17",50],
	["RH_X300",150],
	["RH_p226",650],
	["RH_15Rnd_9x19_SIG",50],
	["RH_usp",650],
	["RH_12Rnd_45cal_usp",75],
	["RH_X300",150],
	["RH_M4_ris",4500],
	["RH_M4A1_ris",5500],
	["RH_SAMR",6000],
	["RH_M4sbr_b",6000],
	["RH_M4sbr",6000],
	["RH_m1911",5000],
	["RH_kimber",5200],
	["RH_kimber_nw",5300],
	["RH_7Rnd_45cal_m1911",200],
	["RH_vz61",3500], 
	["RH_20Rnd_32cal_vz61",100], 
	["RH_vp70",6200], 
	["RH_18Rnd_9x19_VP",100],
	["RH_tec9",20000],
	["RH_32Rnd_9x19_tec",100],
	["RH_muzi",15000],
	["RH_gemtech9",6000],
	["RH_m9qd",6000],
	["RH_30Rnd_9x19_UZI",150],
	["hlc_rifle_ak47",26000],
	["hlc_30Rnd_762x39_b_ak",200],
	["hlc_30Rnd_762x39_t_ak",200],
	["hlc_45Rnd_762x39_m_rpk",200],
	["hlc_45Rnd_762x39_t_rpk",200],
	["hlc_30rnd_762x39_s_ak",200],
	["hlc_rifle_rpk",80000],
	["hlc_rifle_RPK12",82000],
	["hlc_75Rnd_762x39_m_rpk",200],
	["hlc_45Rnd_762x39_m_rpk",200],
	["hlc_45Rnd_762x39_t_rpk",200],
	["hlc_30Rnd_762x39_b_ak",200],
	["hlc_30Rnd_762x39_t_ak",200],
	["hlc_30rnd_762x39_s_ak",200],
	["hlc_rifle_ak74",36000],
	["hlc_rifle_aks74",36000],
	["hlc_rifle_aks74u",38000],
	["hlc_rifle_aks74_GL",38000],
	["hlc_rifle_aek971",46000],
	["hlc_rifle_ak12",66000],
	["hlc_rifle_ak12GL",66000],
	["hlc_rifle_aku12",68000],
	["hlc_30Rnd_545x39_B_AK",200],
	["hlc_30Rnd_545x39_S_AK",200],
	["hlc_45Rnd_545x39_t_rpk",200],
	["hlc_30Rnd_545x39_t_ak",200],
	["hlc_30Rnd_545x39_EP_ak",200],
	["hlc_rifle_akm",48000],
	["hlc_rifle_akmgl",5000],
	["hlc_30Rnd_762x39_b_ak",200],
	["hlc_30Rnd_762x39_t_ak",200],
	["hlc_45Rnd_762x39_m_rpk",200],
	["hlc_45Rnd_762x39_t_rpk",200],
	["hlc_30rnd_762x39_s_ak",200],
	["hlc_rifle_saiga12k",26000],
	["hlc_10rnd_12g_buck_S12",300],
	["hlc_10rnd_12g_slug_S12",300],
	["HLC_Optic_PSO1",3000],
	["HLC_Optic_1p29",3200],
	["hlc_muzzle_545SUP_AK",6300],
	["hlc_muzzle_762SUP_AK",6300],
	["hlc_optic_kobra",5200],
	["hlc_GRD_White",400],
	["hlc_GRD_red",400],
	["hlc_GRD_green",400],
	["hlc_GRD_blue",400],
	["hlc_GRD_orange",400],
	["hlc_GRD_purple",400],
	["gign_shield",3000],
	
	["tf_ex8550",50],
	["Binocular",5000],
	["Rangefinder",10000],
	["Laserdesignator",12000],
	["B_UavTerminal",10000],
	["Laserbatteries",1000],
	["NVGoggles",2500],
	["NVGoggles_INDEP",2500],
	["NVGoggles_OPFOR",2500],
	["ItemGPS",400],
	["ItemMap",400],
	["ItemWatch",400],
	["ItemCompass",400],
	["Medikit",2500],
	["FirstAidKit",250],
	["ToolKit",10],
	["B_Kitbag_cbr",1000],
	["V_Rangemaster_belt",1000],
	["B_UAV_01_backpack_F",25000],
	["HandGrenade_Stone",350],
	["HandGrenade","Ali's Bumbum",10000],
	["1Rnd_HE_Grenade_shell",25000],
	["emt_uni1",300],
	["fire_uni1",300],
	["Item_Medic",300],
	["U_C_Scientist",300],
	["B_Kitbag_cbr",1500],
	["V_Rangemaster_belt",1300],
	["A3L_medic_helmet",2000],
	["police_pilot_helmet",2500],
	
	["Trixie_CZ550_Rail",29000],
	["Trixie_CZ550_Mag",600],
	["Trixie_Enfield_Rail",32000],
	["Trixie_Enfield_Mag",400],
	
	["BWA3_MG4",400000],
	["BWA3_200Rnd_556x45",300],
	["Trixie_FNFAL_Rail",58000],
	["Trixie_FNFAL_Mag",100],
	["Trixie_FNFAL_Mag_T",150],
	["BWA3_MG5_Tan",430000],
	["BWA3_120Rnd_762x51",400],
	["BWA3_1200Rnd_762x51",400],
	["BWA3_G27",73000],
	["BWA3_G27_AG",78000],
	["BWA3_G28_Standard",8500],
	["BWA3_G28_Assault",90000],
	["BWA3_20Rnd_762x51_G28",100],
	["BWA3_20Rnd_762x51_G28_Tracer",150],
	["BWA3_20Rnd_762x51_G28_Tracer_Dim",150],
	["BWA3_20Rnd_762x51_G28_SD",150],
	["BWA3_20Rnd_762x51_G28_AP",150],
	["BWA3_10Rnd_762x51_G28_LR",150],
	["BWA3_optic_Aimpoint",3000],
	["BWA3_optic_20x50",3800],
	["UGL_FlareWhite_F",300],
	["UGL_FlareGreen_F",300],
	["UGL_FlareRed_F",300],
	["UGL_FlareYellow_F",300],
	["UGL_FlareCIR_F",300],
	["BWA3_Pzf3",1800000],
	["BWA3_optic_NSA80",10000],
	["BWA3_Pzf3_IT",50000],
	
	["Chemlight_red",5],
	["Chemlight_yellow",5],
	["Chemlight_green",5],
	["Chemlight_blue",5],
	["SmokeShell",150],
	["SmokeShellRed",150],
	["SmokeShellGreen",150],
	["SmokeShellYellow",150],
	["SmokeShellPurple",150],
	["SmokeShellBlue",150],
	["SmokeShellOrange",150],
	["UGL_FlareWhite_F",350],
	["UGL_FlareGreen_F",350],
	["UGL_FlareRed_F",350],
	["UGL_FlareYellow_F",350],
	["UGL_FlareCIR_F",350],
	["1Rnd_Smoke_Grenade_shell",300],
	["1Rnd_SmokeRed_Grenade_shell",300],
	["1Rnd_SmokeGreen_Grenade_shell",300],
	["1Rnd_SmokeYellow_Grenade_shell",300],
	["1Rnd_SmokePurple_Grenade_shell",300],
	["1Rnd_SmokeOrange_Grenade_shell",300]
];
__CONST__(life_weapon_shop_array,life_weapon_shop_array);

life_garage_prices =
[
	["B_Heli_Transport_03_unarmed_F",28000],
	["O_Heli_Transport_04_F",33000],
	["B_Heli_Transport_03_F",10000],
	["O_Heli_Transport_04_covered_F",3500],
	["O_Heli_Transport_04_repair_F",3500],
	["O_Heli_Transport_04_fuel_F",3500],
	["C_Heli_Light_01_civil_F",10000],
	["O_Heli_Light_02_v2_F",12000],
	["B_Quadbike_01_F",100],
	["C_Kart_01_Blu_F",500],
	["C_Kart_01_Fuel_F",500],
	["C_Kart_01_Red_F",500],
	["C_Kart_01_Vrana_F",500],
	["C_Offroad_01_F",1500],
	["B_G_Offroad_01_F",1500],
	["C_Offroad_01_repair_F",1500],
	["C_SUV_01_F",1500],
	["C_Hatchback_01_F",1500],
	["C_Hatchback_01_sport_F",1500],
	["C_Van_01_box_F",3500],
	["B_G_Van_01_fuel_F",3500],
	["C_Van_01_transport_F",3500],
	["B_G_Offroad_01_armed_F",3500],
	["O_MRAP_02_F",3500],
	["O_MRAP_02_hmg_F",3500],
	["B_MRAP_01_F",5000],
	["B_MRAP_01_gmg_F",25000],
	["B_MRAP_01_hmg_F",25000],
	["B_Heli_Light_01_F",15000],
	["I_Heli_light_03_unarmed_F",25000],
	["O_Heli_Light_02_unarmed_F",15000],
	["I_Heli_Transport_02_F",45000],
	["O_Heli_Attack_02_black_F",3500],
	["B_Heli_Attack_01_F",3500],
	["B_Heli_Light_01_armed_F",25000],
	["B_Plane_CAS_01_F",25000],
	["O_Plane_CAS_02_F",25000],
	["I_Plane_Fighter_03_CAS_F",25000],
	["I_Plane_Fighter_03_AA_F",25000],
	["B_UAV_02_F",5000],
	["B_UAV_02_CAS_F",15000],
	["I_Truck_02_transport_F",5000],
	["I_Truck_02_covered_F",5000],
	["O_Truck_03_transport_F",5000],
	["O_Truck_03_covered_F",5000],
	["B_Truck_01_transport_F",5000],
	["B_Truck_01_covered_F",5000],
	["O_Truck_03_device_F",5000],
	["O_Truck_03_ammo_F",5000],
	["B_Truck_01_box_F",5000],
	["C_Rubberboat",5000],
	["C_Boat_Civil_01_F",5000],
	["B_SDV_01_F",15000],
	["B_Boat_Transport_01_F",5000],
	["C_Boat_Civil_01_police_F",5000],
	["B_Boat_Armed_01_minigun_F",5000]
];
__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
[
	["A3L_CVPILBFD",55000],
	["B_Heli_Transport_03_unarmed_F",228000],
	["O_Heli_Transport_04_F",233000],
	["B_Heli_Transport_03_F",210000],
	["O_Heli_Transport_04_covered_F",23500],
	["O_Heli_Transport_04_repair_F",23500],
	["O_Heli_Transport_04_fuel_F",23500],
	["C_Heli_Light_01_civil_F",110000],
	["O_Heli_Light_02_v2_F",112000],
	["B_Quadbike_01_F",1250],
	["C_Kart_01_Blu_F",7500],
	["C_Kart_01_Fuel_F",7500],
	["C_Kart_01_Red_F",7500],
	["C_Kart_01_Vrana_F",7500],
	["C_Offroad_01_F",6250],
	["B_G_Offroad_01_F",5000],
	["C_Offroad_01_repair_F",5500],
	["Burnes_LCAC_1",344000],
	["C_SUV_01_F",17500],
	["C_Hatchback_01_F",14250],
	["C_Hatchback_01_sport_F",22500],
	["B_G_Van_01_fuel_F",30000],
	["C_Van_01_box_F",5000],
	["C_Van_01_transport_F",20000],
	["B_G_Offroad_01_armed_F",352500],
	["O_MRAP_02_F",752500],
	["O_MRAP_02_hmg_F",1000000],
	["B_MRAP_01_F",35250],
	["B_MRAP_01_gmg_F",85250],
	["B_MRAP_01_hmg_F",85250],
	["B_Heli_Light_01_F",122500],
	["I_Heli_light_03_unarmed_F",135250],
	["O_Heli_Light_02_unarmed_F",400000],
	["I_Heli_Transport_02_F",1435250],
	["O_Heli_Attack_02_black_F",212500],
	["B_Heli_Attack_01_F",172500],
	["B_Heli_Light_01_armed_F",125000],
	["B_Plane_CAS_01_F",200000],
	["O_Plane_CAS_02_F",200000],
	["I_Plane_Fighter_03_CAS_F",100000],
	["I_Plane_Fighter_03_AA_F",100000],
	["B_UAV_02_F",5000],
	["B_UAV_02_CAS_F",5000],
	["I_Truck_02_transport_F",87500],
	["I_Truck_02_covered_F",15200],
	["O_Truck_03_transport_F",25200],
	["O_Truck_03_covered_F",32500],
	["B_Truck_01_transport_F",38700],
	["B_Truck_01_covered_F",50735],
	["O_Truck_03_device_F",100000],
	["O_Truck_03_ammo_F",100000],
	["B_Truck_01_box_F",200000],
	["C_Rubberboat",12250],
	["C_Boat_Civil_01_F",25100],
	["B_SDV_01_F",135250],
	["B_Boat_Transport_01_F",7000],
	["C_Boat_Civil_01_police_F",12000],
	["B_Boat_Armed_01_minigun_F",75000],
	["DAR_ExplorerMedic",32000],
	["DAR_TahoeEMS",45000],
	["dezkit_b206_ems",200000],
	["dezkit_b206_rescue",220000],
	["EWK_HMMWV_Light",1645000],
	["EWK_HMMWV_Medevac",166500],
	["EWK_M997A2_Ambulance_Tan",1245000],
	["C_Offroad_01_repair_F",20000],
	["Jonzie_Mini_Cooper",5500],
	["Jonzie_Mini_Cooper_R_spec",5700],
	["cl3_r8_spyder_black",6175],
	["cl3_r8_spyder_white",6175],
	["cl3_r8_spyder_gold",6175],
	["cl3_r8_spyder_violet",6175],
	["cl3_r8_spyder_red",6175],
	["cl3_r8_spyder_purple",6175],
	["cl3_r8_spyder_orange",6175],
	["cl3_r8_spyder_sand",6175],
	["cl3_r8_spyder_blue",6175],
	["cl3_r8_spyder_grey",6175],
	["cl3_r8_spyder_silver",6175],
	["cl3_r8_spyder_lime",6175],
	["cl3_r8_spyder_lavender",6175],
	["cl3_r8_spyder_light_blue",6175],
	["cl3_r8_spyder_light_yellow",6175],
	["cl3_r8_spyder_babyblue",6175],
	["cl3_r8_spyder_babypink",6175],
	["cl3_r8_spyder_burgundy",6175],
	["cl3_r8_spyder_yellow",6175],
	["cl3_r8_spyder_navy_blue",6175],
	["cl3_r8_spyder_marina_blue",6175],
	["cl3_r8_syder_cardinal",6175],
	["cl3_r8_spyder_aqua",6175],
	["cl3_r8_spyder_camo",6175],
	["cl3_r8_spyder_camo_urban",6175],
	["cl3_q7_black",4500],
	["cl3_q7_white",4500],
	["cl3_q7_blue",4875],
	["cl3_q7_babyblue",4875],
	["cl3_q7_babypink",4875],
	["cl3_q7_gold",4875],
	["cl3_q7_violet",4875],
	["cl3_q7_purple",4875],
	["cl3_q7_red",4875],
	["cl3_q7_grey",4875],
	["cl3_q7_silver",4875],
	["cl3_q7_lime",4875],
	["cl3_q7_lavender",4875],
	["cl3_q7_light_blue",4875],
	["cl3_q7_light_yellow",4875],
	["cl3_q7_burgundy",4875],
	["cl3_q7_yellow",4875],
	["cl3_q7_navy_blue",4875],
	["cl3_q7_marina_blue",4875],
	["cl3_q7_green",4875],
	["cl3_q7_dark_green",4875],
	["cl3_q7_cardinal",4875],
	["cl3_q7_aqua",4875],
	["cl3_q7_camo",4875],
	["cl3_q7_camo_urban",4875],
	["DAR_M3CivBlack",133575],
	["DAR_M3CivGrey",133575],
	["DAR_M3CivWhite",133575],
	["cl3_z4_2008_black",3253],
	["cl3_z4_2008_white",3253],
	["cl3_z4_2008_blue",3253],
	["cl3_z4_2008_babyblue",3253],
	["cl3_z4_2008_babypink",3253],
	["cl3_z4_2008_gold",3253],
	["cl3_z4_2008_violet",3253],
	["cl3_z4_2008_red",3253],
	["cl3_z4_2008_purple",3253],
	["cl3_z4_2008_orange",3253],
	["cl3_z4_2008_sand",3253],
	["cl3_z4_2008_grey",3253],
	["cl3_z4_2008_silver",3253],
	["cl3_z4_2008_lime",3253],
	["cl3_z4_2008_lavender",3253],
	["cl3_z4_2008_light_blue",3253],
	["cl3_z4_2008_light_yellow",3253],
	["cl3_z4_2008_burgundy",3253],
	["cl3_z4_2008_yellow",3253],
	["cl3_z4_2008_navy_blue",3253],
	["cl3_z4_2008_marina_blue",3253],
	["cl3_z4_2008_dark_green",3253],
	["cl3_z4_2008_green",3253],
	["cl3_z4_2008_cardinal",3253],
	["cl3_z4_2008_aqua",3253],
	["cl3_z4_2008_camo",3253],
	["cl3_z4_2008_camo_urban",3253],
	["max_BMW_M3_GTR4",134000],
	["max_BMW_M3_GTR",134000],
	["max_BMW_M3_GTR3",134000],
	["max_BMW_M3_GTR1",134000],
	["max_BMW_M3_GTR2",134000],
	
	["A3L_ChargerBlack",8500],
	["A3L_ChargerBlue",8500],
	["A3L_Charger",8500],
	["A3L_ChargerRed",8500],
	["A3L_ChargerWhite",8500],
	["Jonzie_Viper",462000],
	["A3L_F350Black",33000],
	["A3L_FordKaBlack",5200],
	["A3L_FordKaGrey",5200],
	["A3L_FordKaRed",5200],
	["A3L_FordKaWhite",5200],
    ["A3L_FordKaBlue",5200],
	["DAR_TaurusCivBlack",6300],
	["DAR_TaurusCivBlue",6300],
	["DAR_TaurusCiv",6300],
	["cl3_taurus_black",3997],
	["cl3_taurus_white",3997],
	["cl3_taurus_aqua",3997],
	["cl3_taurus_red",3997],
	["cl3_taurus_babyblue",3997],
	["cl3_taurus_babypink",3997],
	["cl3_taurus_blue",3997],
	["cl3_taurus_orange",3997],
	["cl3_taurus_lime",3997],
	["cl3_taurus_silver",3997],
	["cl3_taurus_grey",3997],
	["cl3_taurus_sand",3997],
	["cl3_taurus_purple",3997],
	["cl3_taurus_lavender",3997],
	["cl3_taurus_light_blue",3997],
	["cl3_taurus_light_yellow",3997],
	["cl3_taurus_burgundy",3997],
	["cl3_taurus_gold",3997],
	["cl3_taurus_violet",3997],
	["cl3_taurus_yellow",3997],
	["cl3_taurus_navy_blue",3997],
	["cl3_taurus_marina_blue",3997],
	["cl3_taurus_cardinal",3997],
	["cl3_taurus_burgundy",3997],
	["cl3_taurus_camo",3997],
	["cl3_taurus_camo_urban",3997],
	["A3L_PuntoBlack",3500],
	["A3L_PuntoBlue",3500],
	["A3L_PuntoGrey",3500],
	["A3L_PuntoRed",3500],
	["A3L_PuntoWhite",3500],
	["A3L_VolksWagenGolfGTiblack",2300],
	["A3L_VolksWagenGolfGTiblue",2300],
	["A3L_VolksWagenGolfGTired",2300],
	["A3L_VolksWagenGolfGTiwhite",2300],
	["cl3_polo_gti_black",5000],
	["cl3_polo_gti_white",5000],
	["cl3_polo_gti_aqua",5000],
	["cl3_polo_gti_blue",5000],
	["cl3_polo_gto_babypink",5000],
	["cl3_polo_gti_purple",5000],
	["cl3_polo_gti_red",5000],
	["cl3_polo_gti_orange",5000],
	["cl3_polo_gti_sand",5000],
	["cl3_polo_gti_burgundy",5000],
	["cl3_polo_gti_navy_blue",5000],
	["cl3_polo_gti_marina_blue",5000],
	["cl3_polo_gti_lime",5000],
	["cl3_polo_gti_silver",5000],
	["cl3_polo_gti_grey",5000],
	["cl3_polo_gti_lavender",5000],
	["cl3_polo_gti_light_blue",5000],
	["cl3_polo_gti_light_yellow",5000],
	["cl3_polo_gti_cardinal",5000],
	["cl3_polo_gti_dark_green",5000],
	["cl3_polo_gti_yellow",5000],
	["cl3_polo_gti_green",5000],
	["cl3_polo_gti_gold",5000],
	["cl3_polo_gti_violet",5000],
	["cl3_polo_gti_camo",5000],
	["cl3_polo_gti_camo_urban",5000],
	["S_Skyline_Black",65200],
	["S_Skyline_Blue",65200],
	["S_Skyline_Purple",65200],
	["S_Skyline_Red",65200],
	["S_Skyline_White",65200],
	["S_Skyline_Yellow",65200],
	["S_McLarenP1_Black",92100],
	["S_McLarenP1_Blue",92100],
	["S_McLarenP1_Orange",92100],
	["S_McLarenP1_Silver",92100],
	["S_McLarenP1_White",92100],
	["S_McLarenP1_Yellow",92100],
	["DAR_MF1Silver",812500],
	["DAR_MF1Red",812500],
	["DAR_MF1Orange",812500],
	["DAR_MF1Burgundy",812500],
	["DAR_MF1Civ",812500],
	["S_PorscheRS_Black",87300],
	["S_PorscheRS_White",87300],
	["S_PorscheRS_Yellow",87300],
	["S_Rangerover_Black",6500],
	["S_Rangerover_Blue",6500],
	["S_Rangerover_Green",6500],
	["S_Rangerover_Grey",6500],
	["S_Rangerover_Orange",6500],
	["S_Rangerover_Purple",6500],
	["S_Rangerover_Red",6500],
	["S_Rangerover_White",6500],
	["cl3_dbs_volante_black",68250],
	["cl3_dbs_volante_white",68250],
	["cl3_dbs_volante_blue",68250],
	["cl3_dbs_volante_babyblue",68250],
	["cl3_dbs_volante_babypink",68250],
	["cl3_dbs_volante_gold",68250],
	["cl3_dbs_volante_violet",68250],
	["cl3_dbs_volante_purple",68250],
	["cl3_dbs_volante_red",68250],
	["cl3_dbs_volante_orange",68250],
	["cl3_dbs_volante_sand",68250],
	["cl3_dbs_volante_grey",68250],
	["cl3_dbs_volante_silver",68250],
	["cl3_dbs_volante_lime",68250],
	["cl3_dbs_volante_lavender",68250],
	["cl3_dbs_volante_light_blue",68250],
	["cl3_dbs_volante_light_yellow",68250],
	["cl3_dbs_volante_burgundy",68250],
	["cl3_dbs_volante_yellow",68250],
	["cl3_dbs_volante_navy_blue",68250],
	["cl3_dbs_volante_marina_blue",68250],
	["cl3_dbs_volante_green",68250],
	["cl3_dbs_volante_dark_green",68250],
	["cl3_dbs_volante_cardinal",68250],
	["cl3_dbs_volante_aqua",68250],
	["cl3_dbs_volante_camo",68250],
	["cl3_dbs_volante_camo_urban",68250],
	["S_Vantage_Black",9300],
	["S_Vantage_Blue",9300],
	["S_Vantage_LightBlue",9300],
	["S_Vantage_Purple",9300],
	["S_Vantage_Red",9300],
	["S_Vantage_White",9300],
	["S_Vantage_Black",9300],
	["S_Vantage_Yellow",9300],
	["A3L_Ferrari458black",14300],
	["A3L_Ferrari458white",14300],
	["A3L_Ferrari458red",14300],
	["A3L_Ferrari458blue",14300],
	["A3L_Ferrari458black",14300],
	["cl3_458_black",9575],
	["cl3_458_white",9575],
	["cl3_458_blue",9575],
	["cl3_458_babyblue",9575],
	["cl3_458_babypink",9575],
	["cl3_458_gold",9575],
	["cl3_458_violet",9575],
	["cl3_458_red",9575],
	["cl3_458_purple",9575],
	["cl3_458_orange",9575],
	["cl3_458_sand",9575],
	["cl3_458_grey",9575],
	["cl3_458_lime",9575],
	["cl3_458_silver",9575],
	["cl3_458_lavender",9575],
	["cl3_458_burgundy",9575],
	["cl3_458_yellow",9575],
	["cl3_458_navy_blue",9575],
	["cl3_458_marina_blue",9575],
	["cl3_458_dark_green",9575],
	["cl3_458_green",9575],
	["cl3_458_cardinal",9575],
	["cl3_458_aqua",9575],
	["cl3_458_camo",9575],
	["cl3_458_camo_urban",9575],
	["cl_skatea",200],
	["cl_skateb",200],
	["cl_skatec",200],
	["cl_skated",200],
	["cl_skatee",200],
	["cl_skatef",200],
	["cl_skateg",200],
	["cl_skateh",200],
	["cl_skatei",200],
	["cl_skatej",200],
	["cl_skatek",200],
	["cl_skatel",200],
	["cl_skatem",200],
	["cl_skaten",200],
	["cl_skateo",200],
	["cl_skatep",200],
	["cl_skateq",200],
	["cl_skater",200],
	["cl_skates",200],
	["cl_skatet",200],
	["cl_skateu",200],
	["cl_skatev",200],
	["cl_skatex",200],
	["cl_skatey",200],
	["cl3_e63_amg_black",6175],
	["cl3_e63_amg_white",6175],
	["cl3_e63_amg_babyblue",6175],
	["cl3_e63_amg_babypink",6175],
	["cl3_e63_amg_gold",6175],
	["cl3_e63_amg_violet",6175],
	["cl3_e63_amg_red",6175],
	["cl3_e63_amg_grey",6175],
	["cl3_e63_amg_purple",6175],
	["cl3_e63_amg_lime",6175],
	["cl3_e63_amg_silver",6175],
	["cl3_e63_amg_sand",6175],
	["cl3_e63_amg_lavender",6175],
	["cl3_e63_amg_light_blue",6175],
	["cl3_e63_amg_light_yellow",6175],
	["cl3_e63_amg_burgundy",6175],
	["cl3_e63_amg_yellow",6175],
	["cl3_e63_amg_navy_blue",6175],
	["cl3_e63_amg_marina_blue",6175],
	["cl3_e63_amg_dark_green",6175],
	["cl3_e63_amg_green",6175],
	["cl3_e63_amg_cardinal",6175],
	["cl3_e63_amg_aqua",6175],
	["cl3_e63_amg_camo",6175],
	["cl3_e63_amg_camo_urban",6175],
	["cl3_reventon_2tone1",16175],
	["cl3_reventon_2tone2",16175],
	["cl3_reventon_2tone3",16175],
	["cl3_reventon_2tone4",16175],
	["cl3_reventon_2tone5",16175],
	["cl3_reventon_aqua",16175],
	["cl3_reventon_babyblue",16175],
	["cl3_reventon_babypink",16175],
	["cl3_reventon_black",16175],
	["cl3_reventon_blue",16175],
	["cl3_reventon_burgundy",16175],
	["cl3_reventon_camo",16175],
	["cl3_reventon_cardinal",16175],
	["cl3_reventon_dark_green",16175],
	["cl3_reventon_flame",16175],
	["cl3_reventon_flame1",16175],
	["cl3_reventon_flame2",16175],
	["cl3_reventon_gold",16175],
	["cl3_reventon_green",16175],
	["cl3_reventon_grey",16175],
	["cl3_reventon_lavender",16175],
	["cl3_reventon_light_blue",16175],
	["cl3_reventon_light_yellow",16175],
	["cl3_reventon_lime",16175],
	["cl3_reventon_marina_blue",16175],
	["cl3_reventon_navy_blue",16175],
	["cl3_reventon_orange",16175],
	["cl3_reventon_purple",16175],
	["cl3_reventon_red",16175],
	["cl3_reventon_sand",16175],
	["cl3_reventon_silver",16175],
	["cl3_reventon_violet",16175],
	["cl3_reventon_white",16175],
	["cl3_reventon_yellow",16175],
	["cl3_veyron_wht_lwht",19200],
	["cl3_veyron_red_red",19200],
	["cl3_veyron_brn_blk",19200],
	["cl3_veyron_lblue_lblue",19200],
	["cl3_veyron_lblue_dblue",19200],
	["cl3_veyron_blk_wht",19200],
	["cl3_veyron_black",19200],
	["dezkit_b206_fl",34000],
	["dezkit_b206_hs",34000],
	["dezkit_b206_ls",34000],
	["dezkit_b206_news",345000],
	["bwi_a3_t6a_6",3320],
	["bwi_a3_t6a_nta",3320],
	["bwi_a3_t6a_7",3320],
	["bwi_a3_t6a_9",3320],
	["bwi_a3_t6a_3",3320],
	["bwi_a3_t6a_4",3320],
	["bwi_a3_t6a_1",3320],
	["bwi_a3_t6a",3320],
	["bwi_a3_t6a_8",3320],
	["bwi_a3_t6a_2",3320],
	["bwi_a3_t6c",3320],
	["sab_cz_An2",13000],
	["Sab_ee_An2",13000],
	["Sab_ru_An2",13000],
	["Sab_yel_An2",13000],
	["Sab_fd_An2",13000],
	["Sab_ana_An2",13000],
	["sab_ca_An2",13000],
	["Sab_Snow_An2",13000],
	["Sab_Snow_An2",13000],
	["Sab_Snow3_An2",13000],
	["Sab_af_An2",13000],
	["Sab_tk_An2",13000],
	["Sab_A2_An2",13000],
	["sab_BI_An2",131000],
	["sab_AH_An2",131000],
	["D41_Trawler",830000],
	["Sab_sea_An2",13000],
	["Sab_sea2_An2",13000],
	["Sab_sea3_An2",13000],
	["Sab_sea4_An2",13000],
	["Sab_Amphi_An2",145000],
	["DAR_ChargerPolice",12000],
	["DAR_ChargerPoliceState",16000],
	["DAR_ChargerPoliceStateSlick",16000],
	["DAR_TaurusPolice",2300],
	["DAR_CVPIPolice",33000],
	["DAR_ExplorerPolice",42000],
	["DAR_ImpalaPolice",36000],
	["DAR_ImpalaPoliceSlick",3500],
	["DAR_TahoePolice",46000],
	["DAR_TahoePoliceSlick",45000],
	["DAR_ExplorerPoliceStealth",32000],
	["DAR_ImpalaPoliceDet",3500],
	["DAR_TahoePoliceDet",45000],
	["DAR_DAR_02FirebirdSSVPolice",96000],
	["dezkit_b206_police",280000],
	["dezkit_b206_fbi",280000],
	["A3L_jailBus",58000]
];
__CONST__(life_garage_sell,life_garage_sell);