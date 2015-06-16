/*

	Main configuration for non-persistent market system
	Will need triggers to hook into vanilla pricing methods

*/

////////////MAIN CONFIG

life_market_resources = [
	//Schema: SHORTNAME, Default, Min, Max, changes in action, [Sales multiplied by 1, Purchase multiplied by -1]
	["goldbar", 130000, 65000, 260000, 8, 5,[["goldbar",-1],["diamond",1],["diamondc",1],["iron_r",1],["copper_r",1],["salt_r",1],["glass",1]]],
	["oilp", 5100, 2800, 02400, 4, 2,[["diamond",1],["diamondc",1],["iron_r",1],["copper_r",1],["salt_r",1],["glass",1]]],
	["iron_r", 4550, 1025, 8275, 4, 4,[["diamond",1],["diamondc",1],["oilp",1],["copper_r",1],["salt_r",1],["glass",1]]],
	["diamondc", 4050, 700, 2100, 4, 2,[["oilp",1],["iron_r",1],["copper_r",1],["salt_r",1],["goldbar",1],["glass",1]]],
	["copper_r", 2750, 1525, 5525, 4, 4,[["diamondc",1],["oilp",1],["iron_r",1],["salt_r",1],["glass",1]]],
	["salt_r", 2500, 1425, 5250, 4, 3,[["diamondc",1],["oilp",1],["iron_r",1],["copper_r",1],["glass",1]]],
	["glass", 3000, 1275, 8425, 4, 3,[["diamondc",1],["oilp",1],["iron_r",1],["copper_r",1],["salt_r",1]]],
	["apple", 45, 15, 45, 4, 3,[["goldbar",-1],["rabbit",1],["peach",1],["cotton",1]]],
	["rabbit", 45, 45, 145, 4, 3,[["rabbit",-1],["apple",1],["peach",1],["cotton",1]]],
	["peach", 60, 30, 90, 4, 3,[["apple",1],["cotton",1]]],
	["cotton", 85, 45, 150, 4, 3,[["uwsl",1],["rabbit",1],["apple",1],["peach",1]]],
	["spikeStrip", 1200, 1100, 1300, 1, 1,[["cigarette",1],["donuts",1],["lockpick",1]]],
	["lockpick", 5000, 2000, 7000, 1, 1,[["cigarette",1]]],
	["salema", 850, 35, 195, 1, 1,[["cigarette",-1],["fishingpoles",1],["ornate",1],["mackerel",1],["tuna",1],["mullet",1],["catshark",1]]],
	["ornate", 750, 38, 225, 1, 1,[["fishingpoles",1],["salema",1],["mackerel",1],["tuna",1],["mullet",1],["catshark",1]]],
	["mackerel", 265, 130, 785, 1, 1,[["fishingpoles",1],["salema",1],["ornate",1],["tuna",1],["mullet",1],["catshark",1]]],
	["tuna", 1050, 525, 3150, 1, 1,[["fishingpoles",1],["salema",1],["ornate",1],["mackerel",1],["mullet",1],["catshark",1]]],
	["mullet", 375, 170, 1125, 1, 1,[["fishingpoles",1],["salema",1],["ornate",1],["mackerel",1],["tuna",1],["catshark",1]]],
	["catshark", 450, 225, 1350, 1, 1,[["fishingpoles",1],["salema",1],["ornate",1],["mackerel",1],["tuna",1],["mullet",1]]],
	["turtle", 28000, 11500, 36000, 4, 4,[["fishingpoles",-1],["turtle",-1],["rabbitraw",1],["goatraw",1],["sheepraw",1],["roosterraw",1],["henraw",1],["marijuana",1],["cocainep",1],["lsdp",1],["methp",1],["turtle",-1],["heroinp",1]]],
	["henraw", 1800, 500, 3000, 4, 4,[["fishingpoles",-1],["turtle",-1],["marijuana",1],["cocainep",1],["lsdp",1],["methp",1],["turtle",-1],["heroinp",1]]],
	["roosterraw", 1700, 500, 1400, 4, 4,[["fishingpoles",-1],["turtle",-1],["marijuana",1],["cocainep",1],["lsdp",1],["methp",1],["turtle",-1],["heroinp",1]]],
	["sheepraw", 1800, 500, 1200, 4, 4,[["fishingpoles",-1],["turtle",-1],["marijuana",1],["cocainep",1],["lsdp",1],["methp",1],["turtle",-1],["heroinp",1]]],
	["goatraw", 1700, 500, 3000, 4, 4,[["fishingpoles",-1],["turtle",-1],["marijuana",1],["cocainep",1],["lsdp",1],["methp",1],["turtle",-1],["heroinp",1]]],
	["rabbitraw", 1500, 500, 1600, 4, 4,[["fishingpoles",-1],["turtle",-1],["marijuana",1],["cocainep",1],["lsdp",1],["methp",1],["turtle",-1],["heroinp",1]]],
	["turtlesoup", 1000, 750, 2235, 4, 4,[["fishingpoles",-1],["turtlesoup",-1],["marijuana",1],["cocainep",1],["lsdp",1],["methp",1],["turtle",-1],["heroinp",1]]],
	["marijuana", 8500, 1800, 7200, 4, 4,[["marijuana",-1],["turtle",1],["cocaine",1],["cocainep",1],["lsdp",1],["methp",1],["heroinp",1]]],
	["cocainep", 9250, 2975, 7900, 4, 4,[["cannabis",1],["marijuana",1],["turtlesoup",1],["turtle",1],["lsdp",1],["methp",1],["heroinp",1]]],
	["heroinp", 6500, 3750, 9000, 4, 4,[["goldbar",1],["cannabis",1],["marijuana",1],["turtlesoup",1],["turtle",1],["lsdp",1],["methp",1],["cocainep",1]]],
	["methp", 8250, 4300, 11200, 4, 4,[["cigarette",-1],["methp",-1],["cannabis",1],["marijuana",1],["turtlesoup",1],["turtle",1],["heroinp",1],["lsdu",1],["lsdp",1],["cocainep",1]]],
	["lsdp", 7500, 2825, 9100, 4, 4,[["lsdu",1],["cannabis",1],["marijuana",1],["turtlesoup",1],["turtle",1],["heroinp",1],["methu",1],["methp",1],["cocainep",1]]],
	["uranium", 25000, 18500, 28500, 4, 4,[["oilp",1],["iron_r",1],["copper_r",1],["salt_r",1],["goldbar",1],["glass",1]]],
	["diesel", 2000, 1850, 4850, 4, 4,[["oilp",1],["iron_r",1],["copper_r",1],["salt_r",1],["goldbar",1],["glass",1],["benzin",1]]],
	["benzin", 2500, 1800, 4850, 4, 4,[["oilp",1],["iron_r",1],["copper_r",1],["salt_r",1],["goldbar",1],["glass",1],["diesel",1]]],
	["goldschatz", 50000, 30000, 90000, 8, 5,[["goldschatz",-1],["diamond",1],["diamondc",1],["iron_r",1],["copper_r",1],["salt_r",1],["glass",1]]],
	["schnaps", 6250, 4300, 11200, 4, 4,[["cigarette",-1],["methp",-1],["cannabis",1],["marijuana",1],["turtlesoup",1],["turtle",1],["heroinp",1],["lsdu",1],["lsdp",1],["cocainep",1]]]
];
publicVariable "life_market_resources";

////////////GENERATED CONFIG
//life_market_changes = []; //[SHORTNAME,SELL,BUY]
life_market_shortnames = []; //shortnames if in market
//life_market_clampprices = []; //[SHORTNAME,MIN,MAX]

{
	life_market_shortnames set [count life_market_shortnames, _x select 0];
	//life_market_clampprices set [count life_market_clampprices, [_x select 0, _x select 2, _x select 3] ];
	//life_market_changes set [count life_market_changes, [_x select 0, _x select 4, _x select 5] ];
}
foreach life_market_resources;

publicVariable "life_market_shortnames";
//publicVariable "life_market_clampprices";

//SYNC PRICES WITH SERVER IF EMPTY
if(isNil("life_market_prices")) then
{
	life_market_prices = []; //[SHORTNAME,CURRENTPRICE,DIRECTIONGLOBAL,DIRECTIONLOCAL]
	{
	
		life_market_prices set [count life_market_prices, [_x select 0, _x select 1, 0, 0] ];
	}
	foreach life_market_resources;
	
	publicVariable "life_market_prices";
	
	systemChat "Market Prices Generated!";
};