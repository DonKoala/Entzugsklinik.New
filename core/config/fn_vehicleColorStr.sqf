/*
	File: fn_vehicleColorStr.sqf
	Author: Bryan "Tonic" Boardwine B_MRAP_01_F 
	
	Description: B_Truck_01_box_F
	Master configuration for color strings depending on their index location.
*/
#include <macro.h>
private["_vehicle","_color","_index"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
_index = [_this,1,-1,[0]] call BIS_fnc_param;
_color = "";

switch (_vehicle) do
{
	case "C_Heli_Light_01_civil_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Blaue Linie"};
			case 1: {_color = "Digital"};
			case 2: {_color = "Elliptisch"};
			case 3: {_color = "Furious"};
			case 4: {_color = "Gray Watcher"};
			case 5: {_color = "Jeans Blau"};
			case 6: {_color = "Licht"};
			case 7: {_color = "Schatten"};
			case 8: {_color = "Sheriff"};
			case 9: {_color = "Speedy"};
			case 10: {_color = "Sunset"};
			case 11: {_color = "Vrana"};
			case 12: {_color = "Wasp"};
			case 13: {_color = "Wave"};
		};
	};
	
	case "C_Hatchback_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Beige";};
			case 1: {_color = "Grün";};
			case 2: {_color = "Blau";};
			case 3: {_color = "Dunkelblau";};
			case 4: {_color = "Gelb";};
			case 5: {_color = "Weiß"};
			case 6: {_color = "Grau"};
			case 7: {_color = "Schwarz"};
			case 8: {_color = "Sanitäter"};
			case 9: {_color = "Polygon"};
			case 10: {_color = "Natur / Bunt"};
			case 11: {_color = "Monster Energy"};
			case 12: {_color = "Red Bull"};
			case 13: {_color = "Asiimov Motorsport"};
		};
	};
	
	case "C_Hatchback_01_sport_F":
	{
		switch(_index) do
		{
			case 0: {_color = "Rot"};
			case 1: {_color = "Dunkelblau"};
			case 2: {_color = "Orange"};
			case 3: {_color = "Schwarz / Weiß"};
			case 4: {_color = "Tan"};
			case 5: {_color = "Grün"};
			case 6: {_color = "Sanitäter"};
			case 7: {_color = "Polygon"};
			case 8: {_color = "Natur / Bunt"};
			case 9: {_color = "Monster Energy"};
			case 10: {_color = "Red Bull"};
			case 11: {_color = "Asiimov Motorsport"};
		};
	};
	
	case "C_SUV_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Dunkelrot";};
			case 1: {_color = "Schwarz";};
			case 2: {_color = "Silber";};
			case 3: {_color = "Orange";};
			case 4: {_color = "Sanitäter";};
			case 5: {_color = "Eiswürfel";};
			case 6: {_color = "Ferrari";};
			case 7: {_color = "Ghost";};
			case 8: {_color = "Comic";};
			case 9: {_color = "NyanCat";};
			case 10: {_color = "Hellfire";};
			case 11: {_color = "Sweet Donut"};
		};
	};
	
	case "C_Van_01_box_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Weiß"};
			case 1: {_color = "Rot"};
			case 2: {_color = "Sanitäter"};
			case 3: {_color = "Berliner Liebe"};
		};
	};
	
	case "B_G_Van_01_fuel_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Weiß - Grau"};
			case 1: {_color = "Weiß - Grün"};
			case 2: {_color = "Weiß - Rot"};
			case 3: {_color = "Rot - Grau"};
			case 4: {_color = "Rot - Grün"};
			case 5: {_color = "Rot - Rot"};
		};
	};
	
	case "C_Van_01_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Weiß"};
			case 1: {_color = "Rot"};
		};
	}; 
	
	case "C_Van_01_fuel_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Weiß"};
			case 1: {_color = "Rot"};
		};
	};
	
	case "I_Truck_02_covered_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Black"};
		};
	};
	
	case "I_Truck_02_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Black"};
		};
	};
	
	case "B_Quadbike_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Schwarz"};
			case 1: {_color = "Digital Wüste"};
			case 2: {_color = "Schwarz"};
			case 3: {_color = "Blau"};
			case 4: {_color = "Rot"};
			case 5: {_color = "Weiß"};
			case 6: {_color = "Digital Grün"};
			case 7: {_color = "Jägerlook"};
			case 8: {_color = "Rebellenlook"};
		};
	};
	
	case "B_Heli_Light_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei"};
			case 1: {_color = "Schwarz"};
			case 2: {_color = "Blau"};
			case 3: {_color = "Rot"};
			case 4: {_color = "Digital Grün"};
			case 5: {_color = "Blueline"};
			case 6: {_color = "Elliptical"};
			case 7: {_color = "Furious"};
			case 8: {_color = "Jeans Blau"};
			case 9: {_color = "Speedy Redline"};
			case 10: {_color = "Sunset"};
			case 11: {_color = "Vrana"};
			case 12: {_color = "Blaue Welle"};
			case 13: {_color = "Rebellen Digital"};
			case 14: {_color = "Sanitäter"};
			case 15: {_color = "Carabinieri Helicopter"};
		};
	};
	
	case "B_MRAP_01_F":
	{
		switch (_index) do
		{
			case 1: {_color = "Schwarz";};
		};
	};
};

_color;