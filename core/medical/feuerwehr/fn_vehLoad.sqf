private["_veh","_obj","_ret","_objsnear","_highs","_exit"];
_veh = vehicle player;
_pos = [0,-1,1];
_posLKW = _pos;
_posPanzert = _pos;
_posQuad = _pos;
_whitelist = ["I_MRAP_03_F","C_Boat_Civil_01_rescue_F","B_G_Offroad_01_F","C_Offroad_01_F","C_Van_01_transport_F","C_Hatchback_01_F","C_Hatchback_01_sport_F","C_SUV_01_F","C_Van_01_box_F","C_Van_01_fuel_F","I_G_Offroad_01_armed_F","Land_Pod_Heli_Transport_04_medevac_F","B_Slingload_01_Medevac_F","I_G_Van_01_transport_F","O_G_Van_01_fuel_F","C_Offroad_01_repair_F","I_G_Van_01_fuel_F"]; 												//Karts
  	  	
_lkws = ["I_Truck_02_ammo_F","I_Truck_02_box_F","I_Truck_02_fuel_F","O_Truck_02_covered_F","O_Truck_02_transport_F","O_Truck_03_transport_F","O_Truck_03_covered_F","O_Truck_03_repair_F","O_Truck_03_ammo_F","O_Truck_03_fuel_F","O_Truck_03_device_F","O_Truck_02_box_F","O_Truck_02_Ammo_F","O_Truck_02_fuel_F","I_Truck_02_covered_F",
"B_Truck_01_box_F","B_Truck_01_Repair_F","B_Truck_01_medical_F","B_Truck_01_covered_F","B_Truck_01_transport_F","B_Truck_01_mover_F","O_Truck_02_Ammo_F","I_Truck_02_transport_F","I_Truck_02_covered_F","B_Truck_01_fuel_F"];

_gepanzert = ["I_MRAP_03_gmg_F","B_MRAP_01_F","B_MRAP_01_hmg_F","O_MRAP_02_F"];

_klein = ["B_Quadbike_01_F","O_Quadbike_01_F","C_Quadbike_01_F","I_Quadbike_01_F","I_G_Quadbike_01_F","B_G_Quadbike_01_F","O_G_Quadbike_01_F",
"C_Kart_01_F","C_Kart_01_Fuel_F","C_Kart_01_Blu_F","C_Kart_01_Red_F","C_Kart_01_Vrana_F"];

if (typeOf _veh == "C_Offroad_01_repair_F")then{
	_pos = [0,2,-0.5];
	_posQuad = [0,2,-0.5];
	_whitelist = _klein;
};
if (typeOf _veh == "B_Truck_01_transport_F")then{
	_pos = [0,-2.5,1];
	_posQuad = [0,-2.5,0.87];
	_whitelist = _whitelist + _klein;
};
if (typeOf _veh == "I_Truck_02_transport_F")then{
	_pos = [0,-1,1];
	_posQuad = [0,-1,0.86];
	_whitelist = _whitelist + _klein;
};
if (typeOf _veh == "I_Heli_Transport_02_F")then{
	_pos = [0,2,-0.5];
	_posPanzert = [0,2,-0.5];
	_posQuad = [0,2,-0.7];
	_whitelist = _whitelist + _gepanzert + _klein;
};
if (typeOf _veh == "B_Truck_01_mover_F")then{
	_pos = [0,-7.1,0.05];
	_posQuad = [0,-5.8,-0.27];
	_posPanzert = [0,-6.3,0.9];
	_posLKW = [0,-8.7,0.6];
	_whitelist = _whitelist + _gepanzert + _lkws + _klein;

};
_exit = false;

_dirobj = getDir _veh;
_posobj = getposATL _veh;
_posobj = [(_posobj select 0)-5*sin(_dirobj),(_posobj select 1)-5*cos(_dirobj),0];
_objsnear =nearestObjects [_posobj, _whitelist, 8];
if((count _objsnear) == 0)exitWith{hint "Kein Fahrzeug in der Nähe";};

_obj = _objsnear select 0;
if(isNull _obj )exitWith{};
if (_veh == _obj)exitWith{hint "Kein Fahrzeug in der Nähe";};
if (!(typeOf _obj in _whitelist))exitWith{hint "Das Fahrzeug kann nicht angehoben werden!"};


_type = typeOf _veh;
_objlist = attachedObjects _veh;
if (_obj in _objlist)exitWith{hint "Fahrzeug ist schon geliftet!"};
_objs = [];
{
	_objs pushBack (typeOf _x);
}forEach _objlist;

{
	if (_x in _whitelist)then {
		_exit = true;
	};
}forEach _objs;


if (_exit)exitWith{ hint "Es ist bereits ein Fahrzeug geliftet worden!"};
if ((typeOf _obj) in _lkws)then{
_pos = _posLKW;
};
if ((typeOf _obj) in _gepanzert)then{
_pos = _posPanzert;
};
if ((typeOf _obj) in _klein)then{
_pos = _posQuad;
};
	
_obj attachTo[_veh,_pos];
if (typeOf _veh == "B_Truck_01_mover_F")then{
	_obj setVectorUp [0,-0.14,0.99]; 
};


action_vehunload = _veh addAction ["Fahrzeug Abladen",life_fnc_vehUnload,1,5,false,true,"",""];

_high = -1.4;
if ((typeOf _obj) in _gepanzert)then{
_high = -1.0;
};
if ((typeOf _obj) in _klein)then{
_high = -1.8;
};
if ((typeOf _obj) in _lkws)then{
_high = -0.95;
};



_objlist1 = attachedObjects _veh;
_objs = [];
{
	if (typeOf _x == "FlagPole_F")then{
	
		_x attachto [_veh, [0,-1.5,_high]]; 
	_x setVectorDirAndUp [[0,0,-1],[0,1,0]]; 
	
	};
}forEach _objlist1;


