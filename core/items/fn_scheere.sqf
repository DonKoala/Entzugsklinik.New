/*
	File: fn_scheere.sqf
  Author: Bryan "Tonic" Boardwine (lockpick)
	
	Description:
	Macht fahrzeug auf für medics 
*/
private["_curTarget","_distance","_isVehicle","_title","_progressBar","_cP","_titleText","_badDistance","_rettungssatz"];
_veh = cursorTarget;	
_locked = locked _veh;
				
if( player distance _veh < 8) then {
					if(_locked == 2) then {
						if(local _veh) then {
							_veh lock 0;
							
						} else {
							[[_veh,0],"life_fnc_lockVehicle",_veh,false] spawn life_fnc_MP;
						};
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
						//systemChat localize "STR_MISC_VehUnlock";
						hint composeText [ image "icons\unlock.paa", "  Fahrzeug aufgeschlossen" ];
						[[player,"car_unlock"],"life_fnc_globalSound",nil,true] spawn life_fnc_MP;
					} else {
						if(local _veh) then {
							_veh lock 2;
							
						} else {
							[[_veh,2],"life_fnc_lockVehicle",_veh,false] spawn life_fnc_MP;
						};	
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
						//systemChat localize "STR_MISC_VehLock";
						hint composeText [ image "icons\lock.paa", "  Fahrzeug abgeschlossen" ];
						[[player,"car_lock"],"life_fnc_globalSound",nil,true] spawn life_fnc_MP;
					};
					if ((typeOf _veh) in ["C_Hatchback_01_F","C_Hatchback_01_sport_F","C_Offroad_01_F","B_G_Offroad_01_F","C_SUV_01_F","I_MRAP_03_F","B_MRAP_01_F","C_Van_01_transport_F","C_Van_01_box_F","B_Truck_01_transport_F","B_Truck_01_covered_F","B_Truck_01_fuel_F","B_Truck_01_ammo_F","B_Truck_01_Repair_F","B_Truck_01_box_F"])then
					{
						[[_veh],"life_fnc_blink",true,false] call life_fnc_MP;
					};
};