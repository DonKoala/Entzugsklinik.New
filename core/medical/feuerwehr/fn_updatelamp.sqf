hint "update 1";
_id = _this select 0;
_veh = objNull;
_mast = life_lampe;

if (vehicle player != player)then{
	_veh = vehicle player;
}else{
	_veh = cursorTarget;
};

[[_id,_veh,_mast],"TON_fnc_flutlight",false,false] spawn life_fnc_MP;
hint "update 2";
if (_id == 0)then{
	_veh removeAction life_veh_action0;
	_veh removeAction life_veh_action1;
	life_veh_action1 =_veh addAction ["Search Light down",{[1]call life_fnc_updatelamp}];
};
if (_id == 1)then{
	_veh removeAction life_veh_action1;
	_veh removeAction life_veh_action0;
	life_veh_action0 = _veh addAction ["Search Light Up",{[0]call life_fnc_updatelamp}];
	};