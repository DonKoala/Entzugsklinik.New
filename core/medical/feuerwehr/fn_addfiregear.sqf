hint "attaching1";

_obj = vehicle player;
_objs =	count attachedObjects _obj;
if (_objs <= 4)then{
hint "attaching2";
[[_obj],"TON_fnc_firegear",false,false] spawn life_fnc_MP;
hint "attaching3";

}else{
hint "Es sind zu viele Objekte ausgefahren";
};

