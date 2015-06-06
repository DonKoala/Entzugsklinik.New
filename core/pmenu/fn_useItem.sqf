/*
	File: fn_useItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main function for item effects and functionality through the player menu.
*/
private["_item"];
disableSerialization;
if((lbCurSel 2005) == -1) exitWith {hint localize "STR_ISTR_SelectItemFirst";};
_item = lbData[2005,(lbCurSel 2005)];

switch (true) do
{
	case (_item == "uwsl"): {
        _OBJ = nearestObject [player, "Land_Wreck_Traw_F"];
        if (_OBJ==objNull) then {_OBJ = nearestObject [player, "Land_Wreck_Traw2_F"];};
		if (("Land_Wreck_Traw_F" == typeOf _OBJ) OR ("Land_Wreck_Traw2_F" == typeOf _OBJ)&&(player distance _OBJ < 30)) then {
            if (!([false,_item,1] call life_fnc_handleInv)) exitWith {hint "Error: Object not found";};
			_ship = _OBJ getVariable "opened";
			_ship_obj = _OBJ;
			if (_ship) then {hint "Das Schiff wurde bereits geoeffnet!"};
			if (!_ship) then {
				hint "The charge has been planted! Get away from the shipwreck!";
				playSound3D ["A3\Sounds_F\sfx\alarm_independent.wss", _ship_obj];
				sleep 10;
				"M_NLAW_AT_F" createVehicle [getPos _ship_obj select 0, getPos _ship_obj select 1, 0];
				schiffwoffen = true;
				publicVariableServer "schiffwoffen";
			};
		};
	};
	
	case (_item == "water" or _item == "coffee"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_thirst = 100;
			player setFatigue 0;
			player say3D "drink";
		};
	};
	
	case (_item == "zyankali"):									   
	{															  
		if(([false,_item,1] call life_fnc_handleInv)) then		  
		{	
			hint "Du Feigling!!";
			[]spawn life_fnc_zyankali
			//sleep 150;							
			//player setdamage 100;								  						
		};												   
	};
	
	case (_item == "cigarette"): 
	{
		
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			hint "Du hast eine Zigarette geraucht... Jetzt fühlst du Dich GEILO!";
			[] spawn
			{
				private["_OBJ","_PS"];
				_OBJ = player;
				_PS = "#particlesource" createVehicle getpos _OBJ;
				[[_PS,_OBJ],"life_fnc_smokeWeed",true] spawn life_fnc_MP;
				sleep 19;
				deleteVehicle _PS; 
			};
			player setFatigue 0;
		};
	};
	
	case (_item == "barrier"):
	{
		if(!isNull life_barrier) exitWith {hint "Du stellst schon eine Barriere auf!"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_barrier;
		};
	};
	
	case (_item == "barriersmall"):
	{
		if(!isNull life_barriersmall) exitWith {hint "Du stellst schon eine Barriere klein auf!"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_barriersmall;
		};
	};
	
	case (_item == "kegel"):
	{
		if(!isNull life_kegel) exitWith {hint "Du stellst schon einen Kegel auf!"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_kegel;
		};
	};
	
	case (_item == "kidney"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			player setVariable["missingOrgan",false,true];
			life_thirst = 100;
			life_hunger = 100;
			player setFatigue .5;
		};
	};
	
	case (_item == "gpstracker"): {
		[cursorTarget] spawn life_fnc_gpstracker;
	};
	
	case (_item == "speedbomb"):
	{
		[] spawn life_fnc_speedbomb;
	};
	
	case (_item == "cannabis"):
	{
		if( (life_thirst >= 15) && (life_hunger >= 20) ) then
		{
			if(([false,_item,1] call life_fnc_handleInv)) then
			{
				player setDamage ((damage player) +0.05);
				life_thirst = life_thirst -15;
				life_hunger = life_hunger -20;
				[] spawn
				{
					titleText["So viele Bunte Farben!","PLAIN"];
					[] spawn
					{
						private["_OBJ","_PS"];
						_OBJ = player;
						_PS = "#particlesource" createVehicle getpos _OBJ;
						[[_PS,_OBJ],"life_fnc_smokeWeed",true] spawn life_fnc_MP;
						sleep 19;
						deleteVehicle _PS; 
					};
				};
			};
		}
		else
		{
			hint "Du solltest das in deinem Zustand nicht nehmen... iss und trink lieber erstmal was!";
		};
	};
	
	case (_item == "marijuana"):
	{	
		if( (life_thirst >= 15) && (life_hunger >= 20)) then
		{
			if(([false,_item,1] call life_fnc_handleInv)) then
			{
				player setDamage ((damage player) -0.05);
				life_thirst = life_thirst -15;
				life_hunger = life_hunger -20;
				[] spawn
				{
					titleText["Ich rauch mein Ganja den ganzen Tag!","PLAIN"];
					[] spawn life_fnc_weedUse;
				};
			};
		}
		else
		{
			hint "Du solltest das in deinem Zustand nicht nehmen... iss und trink lieber erstmal was!";
		};
	};
	
	case (_item == "cocainep" or _item == "lsdp"):
	{
		if( (life_thirst >= 15) && (life_hunger >= 20)) then
		{
			if(([false,_item,1] call life_fnc_handleInv)) then
			{
				player setDamage ((damage player) +0.15);
				life_thirst = life_thirst -15;
				life_hunger = life_hunger -15;
				[] spawn
				{
					life_redgull_effect = time;
					titleText["Du kannst nun 5 Minuten lang rennen, weil du HIGHAYAY bist! Run drugged up Forest...Run!","PLAIN"];
					player enableFatigue false;
					[] spawn life_fnc_cocaineUse;
					waitUntil {!alive player OR ((time - life_redgull_effect) > (5 * 60))};
					player enableFatigue true;
				};
			};
		
		}
		else
		{
			hint "Du solltest das in deinem Zustand nicht nehmen... iss und trink lieber erstmal was!";
		};
	};
	
	case (_item == "heroinp" or _item == "methp"):
	{	
		if( (life_thirst >= 20) && (life_hunger >= 20)) then
		{
			if(([false,_item,1] call life_fnc_handleInv)) then
			{
				player setDamage ((damage player) +0.25);
				life_thirst = life_thirst -20;
				life_hunger = life_hunger -20;
				[] spawn
				{
					titleText["Nächster Halt Entzugsklinik!","PLAIN"];
					[] spawn life_fnc_heroinUse;
				};
			};
		}
		else
		{
			hint "Du solltest das in deinem Zustand nicht nehmen... iss und trink lieber erstmal was!";
		};
	};
	
	case (_item == "boltcutter"): {
		[cursorTarget] spawn life_fnc_boltcutter;
		closeDialog 0;
	};
	
	case (_item == "blastingcharge"): {
		player reveal fed_bank;
		(group player) reveal fed_bank;
		[cursorTarget] spawn life_fnc_blastingCharge;
	};
	
	case (_item == "defusekit"): {
		[cursorTarget] spawn life_fnc_defuseKit;
	};
	
	case (_item in ["storagesmall","storagebig"]): {
		[_item] call life_fnc_storageBox;
	};
	
	case (_item == "redgull"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_thirst = 100;
			player setFatigue 0;
			player say3D "drink";
			[] spawn
			{
				life_redgull_effect = time;
				titleText[localize "STR_ISTR_RedGullEffect","PLAIN"];
				player enableFatigue false;
				waitUntil {!alive player OR ((time - life_redgull_effect) > (3 * 60))};
				player enableFatigue true;
			};
		};
	};
	
	case (_item == "spikeStrip"):
	{
		if(!isNull life_spikestrip) exitWith {hint localize "STR_ISTR_SpikesDeployment"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_spikeStrip;
		};
	};
	
	case (_item == "fuelF"):
	{
		if(vehicle player != player) exitWith {hint localize "STR_ISTR_RefuelInVehicle"};
		[] spawn life_fnc_jerryRefuel;
	};
	
	case (_item == "lockpick"):
	{
		[] spawn life_fnc_lockpick;
	};
	
	case (_item in ["apple","rabbit","salema","ornate","mackerel","tuna","mullet","catshark","turtle","turtlesoup","donuts","tbacon","peach"]):
	{
		[_item] call life_fnc_eatFood;
	};

	case (_item == "pickaxe"):
	{
		[] spawn life_fnc_pickAxeUse;
	};
	
	default
	{
		hint localize "STR_ISTR_NotUsable";
	};
};
	
[] call life_fnc_p_updateMenu;
[] call life_fnc_hudUpdate;