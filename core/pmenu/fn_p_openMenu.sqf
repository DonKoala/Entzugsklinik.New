#include <macro.h>

/*
	File: fn_p_openMenu.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Opens the players virtual inventory menu
*/

if(!alive player || dialog) exitWith {}; //Prevent them from opening this for exploits while dead.
createDialog "playerSettings";
disableSerialization;

switch(playerSide) do
{
	case west: 
	{
		ctrlShow[2025,false];
		ctrlShow[2011,false];
		ctrlShow[9824,false];
		
	};
	
	case independent: 
	{
		ctrlShow[2025,false];
		ctrlShow[2012,false];
		ctrlShow[2011,false];
		ctrlShow[9800,false];
		ctrlShow[9824,false];
		if(__GETC__(life_medicLevel) < 5) then 
		{
			ctrlShow[9824,false];
		};
	};
	
	case civilian:
	{
		ctrlShow[2012,false];
		ctrlShow[9800,false];
		if(!license_civ_aan) then
		{
			ctrlShow[9823,false];
		};
		if(!license_civ_taxi) then
		{
			ctrlShow[9824,false];
		};
		
		
	};
};

if(__GETC__(life_adminlevel) < 1 ) then
{
	ctrlShow[2020,false];
	ctrlShow[2021,false];
};

//SUPPORTER
if(__GETC__(life_adminlevel) < 5) then
{
			ctrlShow[2904,false];  
			ctrlShow[2906,false];
			ctrlShow[2907,false];
			ctrlShow[2908,false];
			ctrlShow[2910,false];
			ctrlShow[2911,false];
};

[] call life_fnc_p_updateMenu;