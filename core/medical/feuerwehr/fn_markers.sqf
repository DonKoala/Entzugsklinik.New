
hint "Unfall!";
_veh = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_pos = getPos _veh;
_marker= createMarkerLocal ["Unfall",_pos];
_marker setMarkerColorLocal "ColorRed";
_marker setMarkerTypeLocal "loc_Hospital";

sleep 600;
hint "Feuer abgebrannt";
deleteMarker _marker;
