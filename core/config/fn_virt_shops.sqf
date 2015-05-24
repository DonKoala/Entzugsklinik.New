/*
	File: fn_virt_shops.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Config for virtual shops.
*/
private["_shop"];
_shop = _this select 0;

switch (_shop) do
{
	case "market": {["Tschernobyl Markt",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","cotton","boltcutter","uwsl","gpstracker","Ipuranium"]]};
	case "marketJAIL": {["Tschernobyl Markt",["water","rabbit","apple","redgull","tbacon","fuelF","peach","cotton"]]};
	case "rebel": {["Schwarzmarkt",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","cotton","boltcutter","blastingcharge","speedbomb","gpstracker","Ipuranium"]]};
	case "gang": {["Gang Markt", ["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","blastingcharge","uwsl","boltcutter","speedbomb","Ipuranium","gpstracker"]]};
	case "wongs": {["Shitty Wok - Restaurant",["turtlesoup","turtle","henraw","roosterraw","goatraw","sheepraw","rabbitraw"]]};
	case "coffee": {["Kaffeclub Tschernobyl",["coffee","donuts"]]};
	case "heroin": {["Drogendealer",["cocainep","heroinp","marijuana","methp","lsdp"]]};
	case "oil": {["Ölhändler",["oilp","pickaxe","fuelF"]]};
	case "fishmarket": {["Peters Fischplatte",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "glass": {["Glaßhändler",["glass"]]};
	case "iron": {["Metallhändler",["iron_r","copper_r"]]};
	case "diamond": {["Diamantenhändler",["diamond","diamondc"]]};
	case "salt": {["Salzhändler",["salt_r"]]};
	case "cop": {["Polizei Markt",["diaper","donuts","coffee","spikeStrip","water","rabbit","apple","redgull","fuelF","defusekit","gpstracker","barrier","kegel"]]};
	case "gold": {["Goldhändler",["goldbar"]]};
	case "organ": {["Organhändler",["kidney","scalpel"]]}; 
	case "med": {["Sanitäter Markt",["kidney","scalpel"]]}; 
	case "besonders": {["Besonderheiten Händler",["cigarette"]]}; 
	case "uranium": {["Uranhändler",["uranium","puranium"]]};
};