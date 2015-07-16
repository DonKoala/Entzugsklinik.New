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
	case "market": {["Altis Markt",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","cotton","boltcutter","uwsl","gpstracker","Ipuranium","storagesmall","storagebig"]]};
	case "marketJAIL": {["JVA Markt",["water","rabbit","apple","redgull","tbacon","fuelF","peach","cotton"]]};
	case "rebel": {["Schwarzmarkt",["handcuffs","handcuffkeys","water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","cotton","boltcutter","blastingcharge","speedbomb","gpstracker","Ipuranium"]]};
	case "gang": {["Gang Markt", ["handcuffs","handcuffkeys","water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","blastingcharge","uwsl","boltcutter","speedbomb","Ipuranium","gpstracker"]]};
	case "wongs": {["Shitty Wok - Restaurant",["turtlesoup","turtle","henraw","roosterraw","goatraw","sheepraw","rabbitraw"]]};
	case "coffee": {["Kaffeclub Sofia",["coffee","donuts"]]};
	case "heroin": {["Drogendealer",["cocainep","heroinp","marijuana","methp","lsdp"]]};
	case "oil": {["Ölhändler",["oilp","pickaxe","fuelF"]]};
	case "fishmarket": {["Peters Fischplatte",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "glass": {["Glaßhändler",["glass"]]};
	case "iron": {["Metallhändler",["iron_r","copper_r"]]};
	case "diamond": {["Diamantenhändler",["diamond","diamondc"]]};
	case "salt": {["Salzhändler",["salt_r"]]};
	case "cop": {["Polizei Markt",["handcuffs","handcuffkeys","donuts","coffee","spikeStrip","water","rabbit","apple","redgull","fuelF","defusekit","gpstracker","barrier","kegel","barriersmall"]]};
	case "gold": {["Goldhändler",["goldbar","goldschatz"]]};
	case "organ": {["Organhändler",["kidney","scalpel"]]}; 
	case "med": {["Sanitäter Markt",["scheere","handcuffs","handcuffkeys","donuts","coffee","kidney","scalpel","barrier","kegel","barriersmall"]]}; 
	case "besonders": {["Genussmittel Händler",["cigarette","schnaps"]]}; 
	case "uranium": {["Uranhändler",["uranium","puranium"]]};
	case "raff": {["Treibstoffhändler",["diesel","benzin"]]};
};
