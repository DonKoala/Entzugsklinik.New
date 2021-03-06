/*
	File: fn_varToStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Takes the long-name (variable) and returns a display name for our
	virtual item.
*/
private["_var"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
if(_var == "") exitWith {""};

switch (_var) do
{
	//Virtual Inventory Items
	case "life_inv_oilu": {(localize "STR_Item_OilU")};
	case "life_inv_oilp": {(localize "STR_Item_OilP")};
	case "life_inv_heroinu": {(localize "STR_Item_HeroinU")};
	case "life_inv_heroinp": {(localize "STR_Item_HeroinP")};
	case "life_inv_cannabis": {(localize "STR_Item_Cannabis")};
	case "life_inv_marijuana": {(localize "STR_Item_Marijuana")};
	case "life_inv_apple": {(localize "STR_Item_Apple")};
	case "life_inv_rabbit": {(localize "STR_Item_RabbitMeat")};
	case "life_inv_salema": {(localize "STR_Item_SalemaMeat")};
	case "life_inv_ornate": {(localize "STR_Item_OrnateMeat")};
	case "life_inv_mackerel": {(localize "STR_Item_MackerelMeat")};
	case "life_inv_tuna": {(localize "STR_Item_TunaMeat")};
	case "life_inv_mullet": {(localize "STR_Item_MulletMeat")};
	case "life_inv_catshark": {(localize "STR_Item_CatSharkMeat")};
	case "life_inv_turtle": {(localize "STR_Item_TurtleMeat")};
	case "life_inv_fishingpoles": {(localize "STR_Item_FishingPole")};
	case "life_inv_water": {(localize "STR_Item_WaterBottle")};
	case "life_inv_coffee": {(localize "STR_Item_Coffee")};
	case "life_inv_turtlesoup": {(localize "STR_Item_TurtleSoup")};
	case "life_inv_donuts": {(localize "STR_Item_Donuts")};
	case "life_inv_fuelE": {(localize "STR_Item_FuelE")};
	case "life_inv_fuelF": {(localize "STR_Item_FuelF")};
	case "life_inv_pickaxe": {(localize "STR_Item_Pickaxe")};
	case "life_inv_copperore": {(localize "STR_Item_CopperOre")};
	case "life_inv_ironore": {(localize "STR_Item_IronOre")};
	case "life_inv_ironr": {(localize "STR_Item_IronIngot")};
	case "life_inv_copperr": {(localize "STR_Item_CopperIngot")};
	case "life_inv_sand": {(localize "STR_Item_Sand")};
	case "life_inv_salt": {(localize "STR_Item_Salt")};
	case "life_inv_saltr": {(localize "STR_Item_SaltR")};
	case "life_inv_glass": {(localize "STR_Item_Glass")};
	case "life_inv_diamond": {(localize "STR_Item_DiamondU")};
	case "life_inv_diamondr": {(localize "STR_Item_DiamondC")};
	case "life_inv_tbacon": {(localize "STR_Item_TBacon")};
	case "life_inv_redgull": {(localize "STR_Item_RedGull")};
	case "life_inv_lockpick": {(localize "STR_Item_Lockpick")};
	case "life_inv_peach": {(localize "STR_Item_Peach")};
	case "life_inv_coke": {(localize "STR_Item_CocaineU")};
	case "life_inv_cokep": {(localize "STR_Item_CocaineP")};
	case "life_inv_spikeStrip": {(localize "STR_Item_SpikeStrip")};
	case "life_inv_goldbar": {(localize "STR_Item_GoldBar")};
	case "life_inv_blastingcharge": {(localize "STR_Item_BCharge")};
	case "life_inv_boltcutter": {(localize "STR_Item_BCutter")};
	case "life_inv_defusekit": {(localize "STR_Item_DefuseKit")};
	case "life_inv_storagesmall": {(localize "STR_Item_StorageBS")};
	case "life_inv_storagebig": {(localize "STR_Item_StorageBL")};
	case "life_inv_gpstracker": {"Peilsender"};
	case "life_inv_speedbomb": {"Autobombe (km/h)"};
	case "life_inv_kidney": {"Niere"};
	case "life_inv_scalpel": {"Skalpell"};
	case "life_inv_barrier": {"Barriere"};
	case "life_inv_barriersmall": {"Barriere Klein"};
	case "life_inv_kegel": {"Leuchtkegel"};
	case "life_inv_methu": {"Methanphetamin"};
	case "life_inv_methp": {"Crystal Meth"};
	case "life_inv_lsdu": {"Exotischer Frosch"};
	case "life_inv_lsdp": {"LSD (Lysergsäurediethylamid)"};
	case "life_inv_cigarette": {"Kubanische Zigarre"};
	case "life_inv_cotton": {"Feinste Baumwolle"};
	case "life_inv_henraw": {"Rohes Hünchenfleisch"};
    case "life_inv_roosterraw": {"Rohes Hähnchenfleisch"};
    case "life_inv_goatraw": {"Rohes Ziegenfleisch"};
    case "life_inv_sheepraw": {"Rohes Schaafsfleisch"};
    case "life_inv_rabbitraw": {"Rohes Hasenfleisch"};
	case "life_inv_uwsl": {"Unterwassersprengladung"};
	case "life_inv_zyankali": {"Zyankalikapsel"};
	case "life_inv_ipuranium": {"Illegale Uranlösung"};
	case "life_inv_puranium": {"Legale Uranauflösung"};
    case "life_inv_uranium1": {"Uranabfall"};
    case "life_inv_uranium2": {"Gereinigtes Uran"};
    case "life_inv_uranium3": {"Aufgelöstes Uran"};
    case "life_inv_uranium4": {"Uran"};
    case "life_inv_uranium": {"Angereichertes Uran"};
	case "life_inv_handcuffs": {(localize "STR_Item_Handcuffs")};
    case "life_inv_handcuffkeys": {(localize "STR_Item_Handcuffkeys")};
	case "life_inv_brenn": {"Brenner"};
	case "life_inv_raff": {"Raffinerie"};
	case "life_inv_schnaps": {"Schnaps"};
	case "life_inv_benzin": {"Benzin"};
	case "life_inv_diesel": {"Diesel"};
	case "life_inv_bauma": {"Baumaterial"};
	case "life_inv_mais": {"Maissack"};
	case "life_inv_zucker": {"Zucker"};
	case "life_inv_bottledwhiskey": {"Schnaps (21 Jahre)"};
	case "life_inv_goldschatz": {"Goldschatz"};
	
	
	///TEST
	
	case "life_inv_scheere": {"Rettungsschere"};
	
	


	
	//License Block
	case "license_civ_driver": {(localize "STR_License_Driver")};
	case "license_civ_air": {(localize "STR_License_Pilot")};
	case "license_civ_heroin": {(localize "STR_License_Heroin")};
	case "license_civ_oil": {(localize "STR_License_Oil")};
	case "license_civ_dive": {(localize "STR_License_Diving")};
	case "license_civ_boat": {(localize "STR_License_Boat")};
	case "license_civ_gun": {(localize "STR_License_Firearm")};
	case "license_civ_rebel": {(localize "STR_License_Rebel")};
	case "license_civ_truck": {(localize "STR_License_Truck")};
	case "license_civ_diamond": {(localize "STR_License_Diamond")};
	case "license_civ_copper": {(localize "STR_License_Copper")};
	case "license_civ_iron": {(localize "STR_License_Iron")};
	case "license_civ_sand": {(localize "STR_License_Sand")};
	case "license_civ_salt": {(localize "STR_License_Salt")};
	case "license_civ_coke": {(localize "STR_License_Cocaine")};
	case "license_civ_marijuana": {(localize "STR_License_Marijuana")};
	case "license_civ_home": {"Eigentumslizenz"};
	case "license_civ_anwalt": {"Anwaltslizenz"};
	case "license_civ_aan": {"AAN-Reporterausweis"};
	case "license_civ_logistic": {"Logistik-Lizenz"};
	case "license_civ_meth": {"Methausbildung"};
	case "license_civ_adac": {"ADAC Mitarbeiter"};
	case "license_civ_lsd": {"LSD-Ausbildung"};
	case "license_civ_taxi": {"Taxi Schein"};
	case "license_civ_uranium": {"Uran Lizenz"};

};
