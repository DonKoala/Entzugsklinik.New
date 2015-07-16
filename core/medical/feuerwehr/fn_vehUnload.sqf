_whitelist = ["C_Boat_Civil_01_rescue_F","B_G_Offroad_01_F","C_Offroad_01_F","C_Van_01_transport_F","C_Hatchback_01_F","C_Hatchback_01_sport_F","C_SUV_01_F","C_Van_01_box_F","C_Van_01_fuel_F","I_G_Offroad_01_armed_F","Land_Pod_Heli_Transport_04_medevac_F","B_Slingload_01_Medevac_F","B_Quadbike_01_F","O_G_Van_01_fuel_F","C_Offroad_01_repair_F"]; 												//Karts
_lkws = ["I_Truck_02_ammo_F","I_Truck_02_box_F","I_Truck_02_fuel_F","O_Truck_02_covered_F","O_Truck_02_transport_F","O_Truck_03_transport_F","O_Truck_03_covered_F","O_Truck_03_repair_F","O_Truck_03_ammo_F","O_Truck_03_fuel_F","O_Truck_03_device_F","O_Truck_02_box_F","O_Truck_02_Ammo_F","O_Truck_02_fuel_F","I_Truck_02_covered_F",
"B_Truck_01_box_F","B_Truck_01_Repair_F","B_Truck_01_medical_F","B_Truck_01_covered_F","B_Truck_01_transport_F","B_Truck_01_mover_F","O_Truck_02_Ammo_F","I_Truck_02_transport_F","I_Truck_02_covered_F","B_Truck_01_fuel_F"];

_gepanzert = ["I_MRAP_03_gmg_F","B_MRAP_01_F","B_MRAP_01_hmg_F","O_MRAP_02_F","I_MRAP_03_F"];

_klein = ["B_Quadbike_01_F","O_Quadbike_01_F","C_Quadbike_01_F","I_Quadbike_01_F","I_G_Quadbike_01_F","B_G_Quadbike_01_F","O_G_Quadbike_01_F",
"C_Kart_01_F","C_Kart_01_Fuel_F","C_Kart_01_Blu_F","C_Kart_01_Red_F","C_Kart_01_Vrana_F"];
_whitelist = _whitelist + _gepanzert + _lkws + _klein;
_length = 8;
_veh = player;
if(vehicle player != player)then{
	_veh = vehicle player;
}else{
	_veh = cursorTarget;
};
_obj = player;
_objlist = attachedObjects _veh;
_veh removeAction action_vehunload;

{
	if ((typeOf _x) in _whitelist)then{
	_obj = _x;
	};
}forEach _objlist;

if (typeOf _veh == "B_Truck_01_transport_F")then{
	_length = 8;
};
if (typeOf _veh == "C_Offroad_01_repair_F")then{
	_length = 5;
};
if (typeOf _veh == "I_Truck_02_transport_F")then{
	_length = 8;
};
if (typeOf _veh == "I_Heli_Transport_02_F")then{
	_length = 18;
};

if (typeOf _veh == "B_Truck_01_mover_F")exitWith{
	detach _obj;
	_objlist1 = attachedObjects _veh;
	_objs = [];
{
	if (typeOf _x == "FlagPole_F")then{
	
		_x attachto [_veh, [0,-1.5,-1.8]]; 
	_x setVectorDirAndUp [[0,0,-1],[0,1,0]]; 
	
	};
}forEach _objlist1;

};

_dir = getDir _veh;
_pos = getposATL _veh;
if ((_pos select 2) <=10)then{
	_heigh= 0;
	_pos = [(_pos select 0)-_length*sin(_dir),(_pos select 1)-_length*cos(_dir),(_pos select 2)];
	detach _obj;
	_obj setposATL _pos;

}else{
	_pos = [(_pos select 0)-26*sin(_dir),(_pos select 1)-26*cos(_dir),(_pos select 2)];
	detach _obj;
	_obj setposATL _pos;
	sleep 2;
	_pos = position _obj;
	_parachute = "B_Parachute_02_F" createVehicle [(_pos select 0)-24*sin(_dir),(_pos select 1)-24*cos(_dir),(_pos select 2)-10];
	_parachute setpos (_obj ModelToWorld [0,-24,-8]);
	//sleep 1;
	_obj attachTo [_parachute, [0, 0, 0]];
	WaitUntil {((((position _obj) select 2) < 2) )};
	_rauch = "SmokeShellBlue" createVehicle ([(position _obj) select 0, (position _obj) select 1, 1]);
	WaitUntil {((((position _obj) select 2) < 1.6) )};
	
   detach _obj;
   // _obj SetVelocity [0,0,-5];           
    sleep 0.3;
    _obj setPos [(position _obj) select 0, (position _obj) select 1, 0.1];  
	sleep 1;
	deleteVehicle _parachute;
};