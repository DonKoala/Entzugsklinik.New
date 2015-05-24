// Exceptions

if (life_calledTaxi) exitWith { hint "Du hast schon ein Taxi gerufen !"; };
if (life_isOnDutyTaxi) exitWith { hint "Du kannst kein Taxi rufen weil du Taxifahrer bist !"; };

// Main

life_calledTaxi = true;
[[player],"TON_fnc_callTaxiDrivers",false,false] spawn life_fnc_mp;
hint "Du hast ein Taxi gerufen. Bitte warte bis ein taxifahrer den Auftrag angenommen hat. Nimmt kein Taxifahrer den Auftrag an wird deine Anfrage in 60 Sekunden gelöscht. ";