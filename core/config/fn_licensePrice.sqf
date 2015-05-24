/*
	File: fn_licensePrice.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns the license price.
*/
private["_type"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
if(_type == "") exitWith {-1};

switch (_type) do
{
	case "driver": {5000}; //Drivers License cost
	case "boat": {10000}; //Boating license cost
	case "pilot": {75000}; //Pilot/air license cost
	case "gun": {10000}; //Firearm/gun license cost
	case "dive": {5000}; //Diving license cost
	case "oil": {17000}; //Oil processing license cost
	case "heroin": {95000}; //Heroin processing license cost
	case "marijuana": {80000}; //Marijuana processing license cost
	case "medmarijuana": {5000}; //Medical Marijuana processing license cost
	case "gang": {125000}; //Gang license cost
	case "rebel": {500000};//Rebel license cost
	case "truck": {20000}; //Truck license cost
	case "diamond": {45000};
	case "salt": {35000};
	case "cocaine": {100000};
	case "sand": {20000};
	case "iron": {30000};
	case "copper": {7500};
	case "home": {200000};
	case "anwalt": {120000};
	case "aan": {500000};
	case "logistic": {1000000};
	case "meth": {110000};
	case "adac": {50000};
	case "uc": {0};
	case "lsd": {95000};
	case "taxi": {30000};
	case "uranium": {12500};
};