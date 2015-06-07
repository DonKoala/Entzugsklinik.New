/*
	Author: M4rc3lloX / Marcel
*/

private["_target", "_message"];
_target = cursorTarget;
if( isNull _target) then {_target = player;};
if( !(_target isKindOf "Man") ) then {_target = player;};
if( !(alive _target) ) then {_target = player;};
_message = format["Dir wurde dein Telefon, dein GPS sowie dein Kompass und deine Karte von Sofia entrissen. Hoffentlich hast du oft Survival-Shows gesehen!"];
[[player, _message],"life_fnc_civPhoneRobbed",_target,false] spawn life_fnc_MP;