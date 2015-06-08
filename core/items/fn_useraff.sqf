/*
script made by spll3r.
*/

_tentSpawnPosition = player modelToWorld[0,4,0];
_tentSpawnPosition set [2,0];

hint "Du baust deine Raffinerie auf";	 
  //Land_CanisterOil_F  Land_Bucket_F 
  
  
		player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
		sleep 7;
		player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
		sleep 7;
		player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
		sleep 7;
		player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
		sleep 7;
		player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
		sleep 7;
		player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
		sleep 7;
		player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
		sleep 7;
		player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
		sleep 5; 
	
		_tent = createVehicle ["Land_ReservoirTower_F", [1.6650946,1.6626484,5], [], 0, "CAN_COLLIDE"];
		_tent setDir 90;
		_chair = createVehicle ["Land_ReservoirTank_Rust_F", [5.2369072,2.8136106,5], [], 0, "CAN_COLLIDE"];
		_fire = createVehicle ["Land_IndPipe1_valve_F", [2.5509803,3.8476455,5], [], 0, "CAN_COLLIDE"];
		_stapel = createVehicle ["Land_Pallets_stack_F", [9.48040187,4.485964,5], [], 0, "CAN_COLLIDE"];
		_motor =  createVehicle ["Land_Portable_generator_F", [9.48040187,4.485964,5], [], 0, "CAN_COLLIDE"];
		_fass =  createVehicle ["Land_WaterBarrel_F", [9.48040187,4.485964,5], [], 0, "CAN_COLLIDE"];   
		_haufen =  createVehicle ["Dirthump_3_F", [8.58040187,2.85964,5], [], 0, "CAN_COLLIDE"];
		
			
		_chair attachTo [_tent];
		_fire attachTo [_tent];
		_stapel attachTo [_tent];
		_motor attachTo [_tent];
		_fass attachTo [_tent];
		_haufen attachTo [_tent];
		
		
		
		_tent setDir (+13.3056);		
		_tent setPos (_tentSpawnPosition);
		_tent setPosATL [(getPosATL _tent) select 0, (getPosATL _tent) select 1, 0];
		
		_chair setDir (+63.3056);
		_chair setPos (getPos _chair);
		_chair setPosATL [(getPosATL _chair) select 0, (getPosATL _chair) select 1, 0];
		_chair attachTo [_tent, [-3.2, 9.5, 3.7] ];
		
		_fire setDir -20;
		_fire setPos (getPos _fire);
		_fire setPosATL [(getPosATL _fire) select 0, (getPosATL _fire) select 1, 0];
		_fire attachTo [_tent, [0, 3, 0] ]; 
										
		_stapel setPos (getPos _stapel);
		_stapel setPosATL [(getPosATL _stapel) select 0, (getPosATL _stapel) select 1, 0];
		_stapel attachTo [_tent, [-0.15, 2.6, -1.35] ]; //2.6
		
		_motor setDir (+90);
		_motor setPos (getPos _motor);
		_motor setPosATL [(getPosATL _motor) select 0, (getPosATL _motor) select 1, 0];
		_motor attachTo [_tent, [-0.15, 1.6, -0.45] ];
		_motor addaction ["Benzin herstellen",life_fnc_benzin];
		_motor addaction ["Diesel herstellen",life_fnc_diesel];
		
		_fass setPos (getPos _fass);
		_fass setPosATL [(getPosATL _fass) select 0, (getPosATL _light) select 1, 0];
		_fass attachTo [_tent, [-0.15, 2.55, -0.35] ];
		
		
		_haufen setPos (getPos _haufen);
		_haufen setPosATL [(getPosATL _haufen) select 0, (getPosATL _light) select 1, 0];
		_haufen attachTo [_tent, [-0, -10.55, -8.8] ];
		
		
	
		_tent allowDamage false;
		_chair allowDamage false;
		_fire allowDamage false;
		_stapel allowDamage false;
		_motor allowDamage false;
		_haufen allowDamage false;
		