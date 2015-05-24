#include <macro.h>
private["_target", "_message"];
_target = cursorTarget;
_licenses = "";
if( isNull _target) then {_target = player;};
if( !(_target isKindOf "Man") ) then {_target = player;};
if( !(alive _target) ) then {_target = player;};

_medlevel = call life_medicLevel;
_rank = "ERROR";

switch(_medlevel) do
{
	case 1: {_rank = "Rettungssanitäter"};
	case 2: {_rank = "Notarzt"};
	case 3: {_rank = "Arzt"};
	case 4: {_rank = "Oberarzt"};
	case 5: {_rank = "Chefarzt"};
};

_message = format[
"
	<t align='left' size='1.4' color='#FFFFFF'>Tschernobyl</t><br/>
	<t align='left' size='1.2' color='#BDBDBD'>Personalausweis</t><br/><br/>
   
	<t align='left' size='1.2' color='#FFFFFF'>Vollständiger Name</t><br/>
	<t align='left' color='#BDBDBD'>%1</t><br/>
	<t align='left' size='1.2' color='#FFFFFF'>Nationalität</t><br/>
	<t align='left' color='#BDBDBD'>DEUTSCH</t><br/>
	<t align='left' size='1.2' color='#FFFFFF'>Eindeutige UID / Kennnummer</t><br/>
	<t align='left' color='#BDBDBD'>%3</t><br/><br/>
	

	
	<t align='left' size='1.2' color='#FFFFFF'>Ärztliche Qualifikation</t><br/>
	<t align='left' color='#BDBDBD'>%2</t><br/>
"

, name player, _rank, (getPlayerUID player), life_cash, life_atmcash, (life_cash + life_atmcash)];

[[player, _message],"life_fnc_medLicenseShown",_target,false] spawn life_fnc_MP;
