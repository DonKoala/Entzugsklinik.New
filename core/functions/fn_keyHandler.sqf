/*
	File: fn_keyHandler.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main key handler for event 'keyDown'
*/
private ["_handled","_shift","_alt","_code","_ctrl","_alt","_ctrlKey","_veh","_locked","_interactionKey","_mapKey","_interruptionKeys"];
_ctrl = _this select 0;
_code = _this select 1;
_shift = _this select 2;
_ctrlKey = _this select 3;
_alt = _this select 4;
_speed = speed cursorTarget;
_handled = false;

_interactionKey = if(count (actionKeys "User10") == 0) then {219} else {(actionKeys "User10") select 0};
_mapKey = actionKeys "ShowMap" select 0;
//hint str _code;
_interruptionKeys = [17,30,31,32]; //A,S,W,D

//Vault handling...
if((_code in (actionKeys "GetOver") || _code in (actionKeys "salute")) && {(player getVariable ["restrained",false])}) exitWith {
	true;
};

if(life_action_inUse) exitWith {
	if(!life_interrupted && _code in _interruptionKeys) then {life_interrupted = true;};
	_handled;
};

//Hotfix for Interaction key not being able to be bound on some operation systems.
if(count (actionKeys "User10") != 0 && {(inputAction "User10" > 0)}) exitWith {
	//Interaction key (default is Left Windows, can be mapped via Controls -> Custom -> User Action 10)
	if(!life_action_inUse) then {
		[] spawn 
		{
			private["_handle"];
			_handle = [] spawn life_fnc_actionKeyHandler;
			waitUntil {scriptDone _handle};
			life_action_inUse = false;
		};
	};
	true;
};
switch (_code) do
{
	//Space key for Jumping
	case 57:
	{
		if(isNil "jumpActionTime") then {jumpActionTime = 0;};
		if(_shift && {animationState player != "AovrPercMrunSrasWrflDf"} && {isTouchingGround player} && {stance player == "STAND"} && {speed player > 2} && {!life_is_arrested} && {(velocity player) select 2 < 2.5} && {time - jumpActionTime > 1.5}) then {
			jumpActionTime = time; //Update the time.
			[player,true] spawn life_fnc_jumpFnc; //Local execution
			[[player,false],"life_fnc_jumpFnc",nil,FALSE] call life_fnc_MP; //Global execution 
			_handled = true;
		};
	};
	
	// Q + Shift Blinker by M4rc3lloX
	case 16:
	{
		if(playerSide in [west,independent,civilian,opfor]) then {
			if(vehicle player != player && (typeOf vehicle player) in [
			"C_SUV_01_F",
			"C_Hatchback_01_F",
			"C_Hatchback_01_sport_F",
			"C_Offroad_01_F",
			"B_G_Offroad_01_F",
			"B_G_Offroad_01_armed_F",
			"C_Offroad_01_repair_F",
			"B_Quadbike_01_F",
			"B_MRAP_01_F",
			"B_MRAP_01_gmg_F",
			"B_MRAP_01_hmg_F",
			"C_Van_01_transport_F",
			"B_G_Van_01_fuel_F",
			"C_Van_01_box_F",
			"O_MRAP_02_F",
			"O_MRAP_02_hmg_F",
			"O_MRAP_02_gmg_F",
			"I_MRAP_03_F",
			"I_MRAP_03_hmg_F",
			"I_MRAP_03_gmg_F",
			"I_Truck_02_transport_F",
			"I_Truck_02_covered_F",
			"O_Truck_02_fuel_F",
			"B_Truck_01_mover_F",
			"B_Truck_01_transport_F",
			"B_Truck_01_covered_F",
			"B_Truck_01_ammo_F",
			"B_Truck_01_medical_F",
			"B_Truck_01_fuel_F",
			"B_Truck_01_box_F",
			"O_Truck_03_transport_F",
			"O_Truck_03_covered_F",
			"O_Truck_03_device_F",
			"O_Truck_03_ammo_F"
			]) then {
				if(!isNil {vehicle player getVariable "bLeft"}) then {
					[vehicle player] call life_fnc_blinkingLeft;
					_handled = true;
				};
			};
		};
	};
	//ADMINMENU !!!
	case 60:
	{
		closeDialog 0;[] spawn life_fnc_openMenu;
	};
	
	case 20:
	{
		if(!_alt && !_ctrlKey) then
		{
			if(vehicle player != player && alive vehicle player) then
			{
				if((vehicle player) in life_vehicles) then
				{
					[vehicle player] spawn life_fnc_openInventory;
				};
			}
				else
			{
				if((cursorTarget isKindOf "Land_Wreck_Traw_F" OR cursorTarget isKindOf "Land_Wreck_Traw2_F" OR cursorTarget isKindOf "Car" OR cursorTarget isKindOf "Air" OR cursorTarget isKindOf "Ship" OR cursorTarget isKindOf "House_F") && player distance cursorTarget < 10 && vehicle player == player && alive cursorTarget) then
				{
					if(cursorTarget in life_vehicles OR {!(cursorTarget getVariable ["locked",true])}) then
					{
						[cursorTarget] spawn life_fnc_openInventory;
					};
					if (cursorTarget isKindOf "Land_Wreck_Traw_F" OR cursorTarget isKindOf "Land_Wreck_Traw2_F") then {
						[cursorTarget] spawn life_fnc_openInventory;
					};
				};
			};
		};
	};
	
	
	// E + Shift Blinker 
	case 18:
	{
		if(playerSide in [west,independent,civilian,opfor]) then {
			if(vehicle player != player && (typeOf vehicle player) in [
			"C_SUV_01_F",
			"C_Hatchback_01_F",
			"C_Hatchback_01_sport_F",
			"C_Offroad_01_F",
			"B_G_Offroad_01_F",
			"B_G_Offroad_01_armed_F",
			"C_Offroad_01_repair_F",
			"B_Quadbike_01_F",
			"B_MRAP_01_F",
			"B_MRAP_01_gmg_F",
			"B_MRAP_01_hmg_F",
			"C_Van_01_transport_F",
			"B_G_Van_01_fuel_F",
			"C_Van_01_box_F",
			"O_MRAP_02_F",
			"O_MRAP_02_hmg_F",
			"O_MRAP_02_gmg_F",
			"I_MRAP_03_F",
			"I_MRAP_03_hmg_F",
			"I_MRAP_03_gmg_F",
			"I_Truck_02_transport_F",
			"I_Truck_02_covered_F",
			"O_Truck_02_fuel_F",
			"B_Truck_01_mover_F",
			"B_Truck_01_transport_F",
			"B_Truck_01_covered_F",
			"B_Truck_01_ammo_F",
			"B_Truck_01_medical_F",
			"B_Truck_01_fuel_F",
			"B_Truck_01_box_F",
			"O_Truck_03_transport_F",
			"O_Truck_03_covered_F",
			"O_Truck_03_device_F",
			"O_Truck_03_ammo_F"
			]) then {
				if(!isNil {vehicle player getVariable "bRight"}) then {
					[vehicle player] call life_fnc_blinkingRight;
					_handled = true;
				};
			};
		};
	};
	
	// O, gate opener
    case 24:
    {
		if(_shift) then {
			[] call life_fnc_fadeSound;
		};
		
        if(playerSide in [west,independent] && vehicle player != player && ((driver vehicle player) == player)) then 
        {
            [] call life_fnc_Opener;
        };
    };
	
	//Map Key
	case _mapKey:
	{
		switch (playerSide) do 
		{
			case west: {if(!visibleMap) then {[] spawn life_fnc_copMarkers;}};
			case independent: {if(!visibleMap) then {[] spawn life_fnc_medicMarkers;}};
			case civilian: {if(!visibleMap) then {[] spawn life_fnc_gangMarkers;}};
		};
	};
	
	//Holster / recall weapon.
	case 35:
	{
		if(_shift && !_ctrlKey && currentWeapon player != "") then {
			life_curWep_h = currentWeapon player;
			player action ["SwitchWeapon", player, player, 100];
			player switchcamera cameraView;
		};
		
		if(!_shift && _ctrlKey && !isNil "life_curWep_h" && {(life_curWep_h != "")}) then {
			if(life_curWep_h in [primaryWeapon player,secondaryWeapon player,handgunWeapon player]) then {
				player selectWeapon life_curWep_h;
			};
		};
	};
	
	//EMP Konsole - K
	case 37:
	{
		if (!_shift && !_alt && !_ctrlKey && (playerSide == west) && (vehicle player != player && (typeOf vehicle player) in ["B_Heli_Light_01_F"])) then
		{
			[] call life_fnc_openEmpMenu; [_this] call life_fnc_isEmpOperator;
		};
	};
	
	//Interaction key (default is Left Windows, can be mapped via Controls -> Custom -> User Action 10)
	case _interactionKey:
	{
		if(!life_action_inUse) then {
			[] spawn 
			{
				private["_handle"];
				_handle = [] spawn life_fnc_actionKeyHandler;
				waitUntil {scriptDone _handle};
				life_action_inUse = false;
			};
		};
	};
	
	
//Restraining (Shift + R)
    case 19:
    {
        if(_shift) then {_handled = true;};
        switch (playerSide) do
        {
            case west:
            {
            if(_shift && !(player getVariable["restrained",false]) && !isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget in [civilian,independent]) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable "Escorting") && !(cursorTarget getVariable "restrained") && !life_knockout&& speed cursorTarget < 1) then
                {
                    if([false,"handcuffs",1] call life_fnc_handleInv) then
                    {
                        [] call life_fnc_restrainAction;
                        life_inv_handcuffs = life_inv_handcuffs - 1;
                        systemChat localize "STR_NOTF_RestrainedPerson";
                    }else{
                        systemChat localize "STR_NOTF_NoHandcuffs";
                    };
                };
            };
            case independent:
            {
            if(_shift && !(player getVariable["restrained",false]) && !isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget in [civilian,independent]) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable "Escorting") && !(cursorTarget getVariable "restrained") && !life_knockout&& speed cursorTarget < 1) then
                {
                    if([false,"handcuffs",1] call life_fnc_handleInv) then
                    {
                        [] call life_fnc_restrainAction;
                        life_inv_handcuffs = life_inv_handcuffs - 1;
                        systemChat localize "STR_NOTF_RestrainedPerson";
                    }else{
                        systemChat localize "STR_NOTF_NoHandcuffs";
                    };
                };
            };
            case civilian:
            {
            if(_shift && !(player getVariable["restrained",false]) && !isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget in [west,civilian,independent]) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable "Escorting") && !(cursorTarget getVariable "restrained") && !life_knockout&& speed cursorTarget < 1) then
                {
                    if([false,"handcuffs",1] call life_fnc_handleInv) then
                    {
                        [] call life_fnc_restrainAction;
                        life_inv_handcuffs = life_inv_handcuffs - 1;
                        systemChat localize "STR_NOTF_RestrainedPerson";
                    }else{
                        systemChat localize "STR_NOTF_NoHandcuffs";
                    };
                };
            };
        };
    };
	
	//Knock out, this is experimental and yeah...
	case 34:
	{
		if(_shift) then {_handled = true;};
		if(_shift && !isNull cursorTarget && cursorTarget isKindOf "Man" && isPlayer cursorTarget && alive cursorTarget && cursorTarget distance player < 4 && speed cursorTarget < 1) then
		{
			if((animationState cursorTarget) != "Incapacitated" && (currentWeapon player == primaryWeapon player OR currentWeapon player == handgunWeapon player) && currentWeapon player != "" && !life_knockout && !(player getVariable["restrained",false]) && !life_istazed && !(cursorTarget getVariable "restrained")) then
			{
				[cursorTarget] spawn life_fnc_knockoutAction;
			};
		};
	}; 
	//surrender... shift + L
	case 38:
	{
		if(_shift) then {_handled = true;};

		if (_shift) then
		{
			if (vehicle player == player && !(player getVariable ["restrained", false]) && (animationState player) != "Incapacitated" && !life_istazed) then
			{
				if (player getVariable ["surrender", false]) then
				{
					player setVariable ["surrender", false, true];
				} else
				{
					[] spawn life_fnc_surrender;
				};
			};
		};
	};

	//T Key (Trunk) edited by M4rc3lloX for better jet use
	case 20:
	{
		if(!_alt && !_ctrlKey && !_shift) then
		{
			if(vehicle player != player && alive vehicle player) then
			{
				if((vehicle player) in life_vehicles) then
				{
					if(vehicle player != player && !((typeOf vehicle player) in [
						"B_Plane_CAS_01_F",
						"O_Plane_CAS_02_F",
						"I_Plane_Fighter_03_CAS_F",
						"I_Plane_Fighter_03_AA_F"
					])) then {
						[vehicle player] call life_fnc_openInventory;
					};
				};
			}
				else
			{
				if((cursorTarget isKindOf "Land_Wreck_Traw_F" OR cursorTarget isKindOf "Land_Wreck_Traw2_F" OR cursorTarget isKindOf "Car" OR cursorTarget isKindOf "Air" OR cursorTarget isKindOf "Ship" OR cursorTarget isKindOf "House_F") && player distance cursorTarget < 10 && vehicle player == player && alive cursorTarget) then
				{
					if(cursorTarget in life_vehicles OR {!(cursorTarget getVariable ["locked",true])}) then
					{
						[cursorTarget] spawn life_fnc_openInventory;
					};
					if (cursorTarget isKindOf "Land_Wreck_Traw_F" OR cursorTarget isKindOf "Land_Wreck_Traw2_F") then {
						[cursorTarget] spawn life_fnc_openInventory;
					};
				};
			};
		};
	};
	
	//C Key Pickaxe use
    case 46:
    {    
		if((!life_action_inUse) && (vehicle player == player) ) then
        {
            {
                _str = [_x] call life_fnc_varToStr;
                _val = missionNameSpace getVariable _x;
                if(_val > 0 ) then
                {
                    if( _str == "Spitzhacke" || _str == "pickaxe" ) then
                    {
                        [] spawn life_fnc_pickAxeUse;
                    };
                };
            } foreach life_inv_items;
        }
    };
	
	//L Key?
	case 38: 
	{
		//If cop run checks for turning lights on.
		if(_shift && playerSide in [west,independent]) then {
			if(vehicle player != player && (typeOf vehicle player) in [
			"C_Van_01_box_F",
			"C_Offroad_01_F",
			"B_MRAP_01_F",
			"B_MRAP_01_gmg_F",
			"B_MRAP_01_hmg_F",
			"C_SUV_01_F",
			"C_Hatchback_01_sport_F",
			"B_Heli_Light_01_F",
			"B_Heli_Transport_01_F",
			"I_Heli_light_03_unarmed_F"
			]) then {
				if(!isNil {vehicle player getVariable "lights"}) then {
					if(playerSide == west) then {
						[vehicle player] call life_fnc_sirenLights;
					} else {
						[vehicle player] call life_fnc_medicSirenLights;
					};
					_handled = true;
				};
			};
		};
		
		//secound cop lights (red)
		if(_ctrlKey && playerSide in [west,independent]) then {
			if(vehicle player != player && (typeOf vehicle player) in [
			"C_Van_01_box_F",
			"C_Offroad_01_F",
			"B_MRAP_01_F",
			"B_MRAP_01_gmg_F",
			"B_MRAP_01_hmg_F",
			"C_SUV_01_F",
			"C_Hatchback_01_sport_F",
			"B_Heli_Light_01_F",
			"B_Heli_Transport_01_F",
			"I_Heli_light_03_unarmed_F"
			]) then {
				if(!isNil {vehicle player getVariable "lights"}) then {
					if(playerSide == west) then {
						[vehicle player] call life_fnc_sirenLightsRed;
					} else {
						[vehicle player] call life_fnc_medicSirenLights;
					};
					_handled = true;
				};
			};
		};
		
		//adac lights
		if(_shift && playerSide in [west,independent]) then {
			if(vehicle player != player && (typeOf vehicle player) in [
			"C_Offroad_01_repair_F"
			]) then {
				if(!isNil {vehicle player getVariable "ADAClights"}) then {
					[vehicle player] call life_fnc_adacLights;
					_handled = true;
				};
			};
		};
		
		if(!_alt && !_ctrlKey) then { [] call life_fnc_radar; };
	};
	//Y Player Menu
	case 21:
	{
		if(!_alt && !_ctrlKey && !dialog) then
		{
			[] call life_fnc_p_openMenu;
		};
	};
	
	//F Key
	case 33:
	{	
		// + shift
		if(_shift && playerSide in [west,independent] && !isNil {vehicle player getVariable "lights"} && vehicle player != player && !life_siren_active && ((driver vehicle player) == player && !((typeOf vehicle player) in [
			"B_Plane_CAS_01_F",
			"O_Plane_CAS_02_F",
			"I_Plane_Fighter_03_CAS_F",
			"I_Plane_Fighter_03_AA_F"
		]))) then
		{
			[] spawn
			{
				life_siren_active = true;
				sleep 3.1;
				life_siren_active = false;
			};
			_veh = vehicle player;
			if(isNil {_veh getVariable "siren"}) then {_veh setVariable["siren",false,true];};
			if((_veh getVariable "siren")) then
			{
				titleText [localize "STR_MISC_SirensOFF","PLAIN"];
				_veh setVariable["siren",false,true];
			}
				else
			{
				titleText [localize "STR_MISC_SirensON","PLAIN"];
				_veh setVariable["siren",true,true];
				if(playerSide == west) then {
					[[_veh],"life_fnc_copSiren",nil,true] spawn life_fnc_MP;
				} else {
					[[_veh],"life_fnc_medicSiren",nil,true] spawn life_fnc_MP;
				};
			};
		};
	};
		
	//Takwondo(Traditional Martial arts in korea)(Shift + Num 1)
	case 79:
	{		
		if(_shift) then {_handled = true;};
		if ((_shift) && (vehicle player == player)) then
		{
			cutText [format["*sing* Everybody was kung fu fighting!!! *sing*"], "PLAIN DOWN"];
			player playMove "AmovPercMstpSnonWnonDnon_exerciseKata";
		};
	};

	//Kneebend Slow(Shift + Num 2)
	case 80:
	{	
		if(_shift) then {_handled = true;};
		if ((_shift) && (vehicle player == player)) then
		{
			cutText [format["Lass dir ruhig Zeit... LANGWEILIG!"], "PLAIN DOWN"];
			player playMove "AmovPercMstpSnonWnonDnon_exercisekneeBendA";
		};
	};

	//Kneebend Fast(Shift + Num 3)
	case 81:
	{
		if(_shift) then {_handled = true;};
		if ((_shift) && (vehicle player == player)) then
		{
			cutText [format["KNIEBEUGE!! Schneller du Marde!!!"], "PLAIN DOWN"];
			player playMove "AmovPercMstpSnonWnonDnon_exercisekneeBendB";
		};
	};

	//Pushup(Shift + Num 4)
	case 75:
	{
		if(_shift) then {_handled = true;};
		if ((_shift) && (vehicle player == player)) then
		{
			cutText [format["Liegestütze!! Mach deinen Arsch richtig runter!!!!"], "PLAIN DOWN"];
			player playMove "AmovPercMstpSnonWnonDnon_exercisePushup";
		};
	};
	
	// Hello gesture (Shift + Num 5)
	case 76: {
		if(_shift) then {_handled = true;};
		if ((_shift) && (vehicle player == player)) then
		{
			player playActionNow "gestureHi";
		};
    };
	
	// Epic Split (Shift + Num 6)
	case 77: {
		if(_shift) then {_handled = true;};
		if ((_shift) && (vehicle player == player)) then {
			cutText [format["EPIC SPLIT! Animation beenden mit SHIFT + ENTF.."], "PLAIN DOWN"];
			[[player,"Acts_EpicSplit"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
		};
    };
	
	// Animation Beenden (Shift + Entf)
	case 211:
	{
		if(_shift) then {_handled = true;};
		if ((_shift) && (vehicle player == player)) then
		{
			[[player,"AmovPercMstpSnonWnonDnon"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
		};
	};
	
	
	//^ Entfernt
    case 41:
    {
        if(playerSide == civilian) then
        {
        _handled = true;
        };
    };
	
	//^ Entfernt
    case 41:
    {
        if(playerSide == west) then
        {
        _handled = true;
        };
    };
	
	//^ Entfernt
    case 41:
    {
        if(playerSide == civilian) then
        {
        _handled = true;
        };
    };
	
	//^ Entfernt
    case 41:
    {
        if(playerSide == independent) then
        {
        _handled = true;
        };
    };
	
	
	
	
	
	//U Key
	case 22:
	{
		if(vehicle player == player) then {
			_veh = cursorTarget;
		} else {
			_veh = vehicle player;
		};
		if(_shift) then { //if shift do the door animation please.. :D
			_locked = locked _veh;
			if(_veh in life_vehicles && player distance _veh < 8) then {
				if(_locked == 2) then {
					if(local _veh) then {
						_veh lock 0;
						_veh animateDoor ["door_back_R",1];
						_veh animateDoor ["door_back_L",1];
						_veh animateDoor ['door_R',1];
						_veh animateDoor ['door_L',1];
						_veh animateDoor ['Door_rear',1];
						_veh animateDoor ['Door_LM',1];
						_veh animateDoor ['Door_RM',1];
						_veh animateDoor ['Door_LF',1];
						_veh animateDoor ['Door_RF',1];
						_veh animateDoor ['Door_LB',1];
						_veh animateDoor ['Door_RB',1];
					} else {
						[[_veh,0],"life_fnc_lockVehicle",_veh,false] spawn life_fnc_MP;
						_veh animateDoor ["door_back_R",1];
						_veh animateDoor ["door_back_L",1];
						_veh animateDoor ['door_R',1];
						_veh animateDoor ['door_L',1];
						_veh animateDoor ['Door_rear',1];
						_veh animateDoor ['Door_LM',1];
						_veh animateDoor ['Door_RM',1];
						_veh animateDoor ['Door_LF',1];
						_veh animateDoor ['Door_RF',1];
						_veh animateDoor ['Door_LB',1];
						_veh animateDoor ['Door_RB',1];
					};
					systemChat localize "STR_MISC_VehUnlock";
					hint parseText ("<img image='icons\unlock.paa'/> Aufgeschlossen!");  
					//Sound
					[[_veh],"life_fnc_carSound_unlock",nil,true] spawn life_fnc_MP;
				} else {
					if(local _veh) then {
						_veh lock 2;
						_veh animateDoor ["door_back_R",0];
						_veh animateDoor ["door_back_L",0];
						_veh animateDoor ['door_R',0];
						_veh animateDoor ['door_L',0];
						_veh animateDoor ['Door_rear',0];
						_veh animateDoor ['Door_LM',0];
						_veh animateDoor ['Door_RM',0];
						_veh animateDoor ['Door_LF',0];
						_veh animateDoor ['Door_RF',0];
						_veh animateDoor ['Door_LB',0];
						_veh animateDoor ['Door_RB',0];
					} else {
						[[_veh,2],"life_fnc_lockVehicle",_veh,false] spawn life_fnc_MP;
						_veh animateDoor ["door_back_R",0];
						_veh animateDoor ["door_back_L",0];
						_veh animateDoor ['door_R',0];
						_veh animateDoor ['door_L',0];
						_veh animateDoor ['Door_rear',0];
						_veh animateDoor ['Door_LM',0];
						_veh animateDoor ['Door_RM',0];
						_veh animateDoor ['Door_LF',0];
						_veh animateDoor ['Door_RF',0];
						_veh animateDoor ['Door_LB',0];
						_veh animateDoor ['Door_RB',0];
					};	
					systemChat localize "STR_MISC_VehLock";
					hint parseText ("<img image='icons\lock.paa'/> Abgeschlossen!");  
					//Sound
					[[_veh],"life_fnc_carSound_lock",nil,true] spawn life_fnc_MP;
				};
			};
		};
		
		if(!_alt && !_ctrlKey && !_shift) then {
			if(_veh isKindOf "House_F" && playerSide == civilian) then {
				if(_veh in life_vehicles && player distance _veh < 8) then {
					_door = [_veh] call life_fnc_nearestDoor;
					if(_door == 0) exitWith {hint localize "STR_House_Door_NotNear"};
					_locked = _veh getVariable [format["bis_disabled_Door_%1",_door],0];
					if(_locked == 0) then {
						_veh setVariable[format["bis_disabled_Door_%1",_door],1,true];
						_veh animate [format["door_%1_rot",_door],0];
						systemChat localize "STR_House_Door_Lock";
						hint parseText ("<img image='icons\unlock.paa'/> Aufgeschlossen!");
						//player say3D "car_lock";
						[[_veh],"life_fnc_houseClose",nil,true] spawn life_fnc_MP;
					} else {
						_veh setVariable[format["bis_disabled_Door_%1",_door],0,true];
						_veh animate [format["door_%1_rot",_door],1];
						systemChat localize "STR_House_Door_Unlock";
						hint parseText ("<img image='icons\lock.paa'/> Abgeschlossen!");
						//player say3D "car_unlock";
						[[_veh],"life_fnc_houseOpen",nil,true] spawn life_fnc_MP;
					};
				};
			} else {
				_locked = locked _veh;
				if(_veh in life_vehicles && player distance _veh < 8) then {
					if(_locked == 2) then {
						if(local _veh) then {
							_veh lock 0;
						} else {
							[[_veh,0],"life_fnc_lockVehicle",_veh,false] spawn life_fnc_MP;
						};
						systemChat localize "STR_MISC_VehUnlock";
						hint parseText ("<img image='icons\unlock.paa'/> Aufgeschlossen!");  
						//Sound
						[[_veh],"life_fnc_carSound_unlock",nil,true] spawn life_fnc_MP;
					} else {
						if(local _veh) then {
							_veh lock 2;
						} else {
							[[_veh,2],"life_fnc_lockVehicle",_veh,false] spawn life_fnc_MP;
						};	
						systemChat localize "STR_MISC_VehLock";
						hint parseText ("<img image='icons\lock.paa'/> Abgeschlossen!");  
						//Sound
						[[_veh],"life_fnc_carSound_lock",nil,true] spawn life_fnc_MP;
					};
				};
			};
		};
	};
};

_handled;