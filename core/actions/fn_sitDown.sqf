//////////////////////////////////////////////////////////////////
// Created by: Losi
// Black Collar Elite  // bce.teamspeak.me
// pls ask for permission before using
// fn_sitDown.sqf
//////////////////////////////////////////////////////////////////

_chair=_this select 0;
if(isNil "TheGodsofAltis_sitStatus")then{
TheGodsofAltis_sitStatus=0};
_handled=false;
if(isNil "(_chair getVariable 'used')")then{_chair setVariable ["used",false,true];};
if(_chair getVariable "used")then{exitWith};


if(TheGodsofAltis_sitStatus == 0)then{
if((player distance _chair) < 3)then{
	player attachTo [_chair,[0,0,0]];
	player switchMove "HubSittingChairUB_idle3";
	[[player,"HubSittingChairUB_idle3"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
	_chair setVariable ["used",true,true];
	detach player;
	player setDir (direction _chair + 180);
	BCE_CurChair=_chair;
	TheGodsofAltis_sitStatus=1;
	standup = player addAction["Aufstehen","core\actions\fn_standup.sqf"];
	_handled=true;};
};

if(TheGodsofAltis_sitStatus == 1 && !_handled)then{
	player switchMove "";
	[[player,""],"life_fnc_animSync",true,false] spawn life_fnc_MP;
	BCE_CurChair setVariable ["used",false,true];
	BCE_CurChair=nil;
	TheGodsofAltis_sitStatus=0;

	player switchMove "";  
	player removeAction standup;
};