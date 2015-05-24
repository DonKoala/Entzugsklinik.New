/*
	File: fn_sendChannel.sqf
	Author: alleskapot & Lifted
	Thanks again for all the help alleskapot!
	Description:
	Ermöglicht senden bzw. die Abfrage des Geschriebenen.

*/

private["_message","_sendPlayername"];
disableSerialization;

waitUntil {!isnull (findDisplay 9000)};

if (life_cash < 1000 && playerside != west) exitWith { systemChat "Du benötigst 1000€ um eine Nachricht zu senden!"; }; // Hint if person haves no 6000 dollar
if (playerside == civilian && !license_civ_aan) exitWith { systemChat "Du musst einen AAN-Reporterausweis haben um einen Nachricht zu senden!"; }; // Hint if not civilian
if !( life_channel_send ) exitWith { systemChat "Warte 10 Minuten bevor du einen neue Nachricht sendest!"; }; //Gives Player the Hint to Wait 10 mins
if(playerside != west or playerside != independent) then {
	life_atmcash = life_atmcash - 1000;
};

_sendPlayername = profileName;

_message = ctrlText 9001;
[[3,format ["%2", _sendPlayername, _message]],"life_fnc_broadcast",true,false] call life_fnc_MP;
life_channel_send = false;

[] spawn
{
	sleep 600;
	life_channel_send = true;
};