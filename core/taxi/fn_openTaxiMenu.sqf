
disableSerialization;
createDialog "life_taxiMenu";
_display        = findDisplay 6600;
_taxiListbox    = _display displayCtrl 6601;

if (!life_isOnDutyTaxi) exitWith {hint "Du bist nicht als verfügbar gemeldet oder hast schon einen Auftrag angenommen !";closeDialog 0;};

[[player],"TON_fnc_goOnDuty",false,false] spawn life_fnc_mp;
sleep 1;
if (count TaxiCallsClient > 0) then
{
	{
		_taxiListbox lbAdd format ["%1 (%2 Meter entfernt)",name _x,(_x distance player)];
		_taxiListbox lbSetData [(lbSize _taxiListbox)-1,format ["%1",_x]];
	} forEach TaxiCallsClient;
};

hint "Du hast die Auftragsliste geöffnet. Bitte suche dir einen Auftrag aus.";