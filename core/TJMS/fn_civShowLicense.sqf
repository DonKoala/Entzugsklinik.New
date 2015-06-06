/*
	Author: M4rc3lloX / Marcel
*/

private["_target", "_message"];
_target = cursorTarget;
_licenses = "";
if( isNull _target) then {_target = player;};
if( !(_target isKindOf "Man") ) then {_target = player;};
if( !(alive _target) ) then {_target = player;};
if (isServer) exitWith {};

// get those licenses :)
{
	if(missionNamespace getVariable (_x select 0) && _x select 1 == "civ") then
	{
		_licenses = _licenses + ([_x select 0] call life_fnc_varToStr) + "<br/>";
	};
} foreach life_licenses;

if(_licenses == "") then {_licenses = ("<t color='#BDBDBD'>Keine Lizenzen erworben..</t>");};

// form everything into the right place..
_message = format[
"
	<t align='left' size='1.4' color='#FFFFFF'>Entzugsklinik</t><br/>
	<t align='left' size='1.2' color='#BDBDBD'>Personalausweis</t><br/><br/>
   
	<t align='left' size='1.2' color='#FFFFFF'>Vollständiger Name</t><br/>
	<t align='left' color='#BDBDBD'>%1</t><br/>
	<t align='left' size='1.2' color='#FFFFFF'>Nationalität</t><br/>
	<t align='left' color='#BDBDBD'>DEUTSCH</t><br/>
	<t align='left' size='1.2' color='#FFFFFF'>Eindeutige UID / Kennnummer</t><br/>
	<t align='left' color='#BDBDBD'>%3</t><br/><br/>
	

	
	<t align='left' size='1.2' color='#FFFFFF'>Erworbene Lizenzen</t><br/>
	<t align='left' color='#BDBDBD'>%2</t><br/>
"
, name player, _licenses, (getPlayerUID player), life_cash, life_atmcash, (life_cash + life_atmcash)];

// Go! Go and fly my little butterfly! YOU ARE FREE!
[[player, _message],"life_fnc_civLicenseShown",_target,false] spawn life_fnc_MP;