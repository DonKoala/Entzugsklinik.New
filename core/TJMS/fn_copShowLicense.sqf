#include <macro.h>
private["_target", "_message"];
_target = cursorTarget;
_licenses = "";
if( isNull _target) then {_target = player;};
if( !(_target isKindOf "Man") ) then {_target = player;};
if( !(alive _target) ) then {_target = player;};

_coplevel = call life_coplevel;
_seklevel = call life_seklevel;
_rank = "ERROR";
_rank2 = "ERROR";

switch(_coplevel) do
{
	case 0: {_rank = "Kein Mitglied"};
	case 1: {_rank = "Polizeineuling"};
	case 2: {_rank = "Polizeianwärter"};
	case 3: {_rank = "Polizeimeister"};
	case 4: {_rank = "Polizeihauptmeister"};
	case 5: {_rank = "Polizeikomissar"};
	case 6: {_rank = "Polizeihauptkomissar"};
	case 7: {_rank = "Polizeioberrat"};
	case 8: {_rank = "Polizeioberratmeister"};
	case 9: {_rank = "Stelv.Polizeidirektor"};
	case 10: {_rank = "Polizeidirektor"};
};
switch(_seklevel) do
{
	case 0: {_rank2 = "Kein Mitglied"};
	case 1: {_rank2 = "SEK Mitglied"};
	case 2: {_rank2 = "SEK Mitglied"};
	case 3: {_rank2 = "SEK Mitglied"};
	case 4: {_rank2 = "SEK Mitglied"};
	case 5: {_rank2 = "SEK Mitglied"};
	case 6: {_rank2 = "SEK Mitglied"};
	case 7: {_rank2 = "SEK Mitglied"};
	case 8: {_rank2 = "SEK Mitglied"};
	case 9: {_rank2 = "SEK Mitglied"};
	case 10: {_rank2 = "SEK Mitglied"};
};

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
	

	
	<t align='left' size='1.2' color='#FFFFFF'>Polizeirang</t><br/>
	<t align='left' color='#BDBDBD'>%2</t><br/><br/>
	

"

, name player, _rank, (getPlayerUID player), life_cash, life_atmcash, (life_cash + life_atmcash), _rank2];

[[player, _message],"life_fnc_copLicenseShown",_target,false] spawn life_fnc_MP;
