/*
	File: fn_setupActions.sqf
	
	Description:
	Master addAction file handler for all client-based actions.
	
	edited by M4rc3llOX
*/
switch (playerSide) do
{
	case civilian:
	{
		//Drop fishing net
		life_actions = [player addAction[localize "STR_pAct_DropFishingNet",life_fnc_dropFishingNet,"",0,false,false,"",'(surfaceisWater (getPos vehicle player)) && ((vehicle player isKindOf "Ship") || (vehicle player in ["D41_Trawler","Sab_sea_An2","Sab_sea2_An2","Sab_sea3_An2","Sab_sea4_An2","Sab_Amphi_An2"])) && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !life_net_dropped ']];
		//Rob person
		life_actions = life_actions + [player addAction[localize "STR_pAct_RobPerson",life_fnc_robAction,"",0,false,false,"",'!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && animationState cursorTarget == "Incapacitated" or animationState cursorTarget == "amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon" && !(cursorTarget getVariable["robbed",FALSE]) ']];
		//take them organs
		life_actions = life_actions + [player addAction["<t color='#FF0040'>Nieren rausschneiden</t>",life_fnc_takeOrgans,"",0,false,false,"",'!isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable ["missingOrgan",FALSE]) && !(player getVariable "Escorting") && !(player getVariable "hasOrgan") && !(player getVariable "transporting") && animationState cursorTarget == "Incapacitated"']];
		//Personalausweis vorzeigen
		life_actions = life_actions + [player addAction["<t color='#FFBF00'>Personalausweis zeigen</t>",life_fnc_civShowLicense,"",1,false,true,"",' playerSide == civilian && (isPlayer cursorTarget) && !isNull cursorTarget && (side cursorTarget in [west, independent, civilian, opfor]) && cursorTarget isKindOf "Man" ']];
		//Rob Radio, Map and GPS
		life_actions = life_actions + [player addAction["<t color='#2E9AFE'>GPS und Karte abnehmen</t>",life_fnc_civRobPhone,"",0,false,false,"",'!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && animationState cursorTarget == "Incapacitated" or animationState cursorTarget == "amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon" && (cursorTarget hasWeapon "ItemGPS" || cursorTarget hasWeapon "ItemMap")']];
	
		
	
	};
	case west: {
		//Seize PlayerWeapons
		life_actions = life_actions + [player addAction["<t color='#0080FF'>Waffen beschlagnahmen</t>",life_fnc_seizePlayerWeapon,cursorTarget,0,false,false,"",'!isNull cursorTarget && (player distance cursorTarget) < 6 && speed cursorTarget < 2 && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget == civilian) && (cursorTarget getVariable "restrained")']];
		//seize Objects
        life_actions = life_actions + [player addAction["<t color='#0080FF'>Beschlagnahmen</t>",life_fnc_seizeObjects,cursorTarget,0,false,false,"",'count(nearestObjects [player,["weaponholder"],3])>0']];
		//Polizeimarke
		life_actions = life_actions + [player addAction["<t color='#FFBF00'>Polizeiausweis zeigen</t>",life_fnc_copShowLicense,"",1,false,true,"",' playerSide == west && (isPlayer cursorTarget) && !isNull cursorTarget && cursorTarget isKindOf "Man" ']];
		//nano EMP Little Bird
		life_actions = life_actions + [player addAction["<t color='#0080FF'>EMP Operator Konsole öffnen</t>",life_fnc_openEmpMenu,[],8,false,false,"",'[_this] call life_fnc_isEmpOperator']];
		//Kegel aufheben
		life_actions = life_actions + [player addAction["<t color='#BDBDBD'>Kegel aufheben</t>",life_fnc_packupkegel,"",0,false,false,"",' _kegel = nearestObjects[getPos player,["RoadCone_L_F"],8] select 0; !isNil "_kegel" && !isNil {(_kegel getVariable "item")}']];
		//Barriere aufheben
		life_actions = life_actions + [player addAction["<t color='#BDBDBD'>Barriere aufheben</t>",life_fnc_packupbarrier,"",0,false,false,"",' _barrier = nearestObjects[getPos player,["RoadBarrier_F"],8] select 0; !isNil "_barrier" && !isNil {(_barrier getVariable "item")}']];
	    //Barriere Klein aufheben
		life_actions = life_actions + [player addAction["<t color='#BDBDBD'>Barriere klein aufheben</t>",life_fnc_barriersmall,"",0,false,false,"",' _barriersmall = nearestObjects[getPos player,["RoadBarrier_small_F"],8] select 0; !isNil "_barriersmall" && !isNil {(_barriersmall getVariable "item")}']];
		
	
	};
	case independent: {
		//Personalausweis + Ärztliche Qualifikation zeigen
		life_actions = life_actions + [player addAction["<t color='#FFBF00'>Personalausweis zeigen</t>",life_fnc_medShowLicense,"",1,false,true,"",' playerSide == independent && (isPlayer cursorTarget) && !isNull cursorTarget && cursorTarget isKindOf "Man" ']];
		//Ticket
		life_actions = life_actions + [player addAction["Service-Gebühr stellen",life_fnc_servicefeeAction,"",0,false,false,"",'
        !isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget != independent) && alive cursorTarget && cursorTarget distance player < 3 ']];
	};
};

//Chemlights halten/doppen
life_actions = life_actions + [player addAction["<t color='#BDBDBD'>Knicklicht(ROT) halten</t>",life_fnc_chemlightUse,"red",-1,false,false,"",'isNil "life_chemlight" && "Chemlight_red" in (magazines player) && vehicle player == player ']];
life_actions = life_actions + [player addAction["<t color='#BDBDBD'>Knicklicht(GELB) halten</t>",life_fnc_chemlightUse,"yellow",-1,false,false,"",'isNil "life_chemlight" && "Chemlight_yellow" in (magazines player) && vehicle player == player ']];
life_actions = life_actions + [player addAction["<t color='#BDBDBD'>Knicklicht(GRÜN) halten</t>",life_fnc_chemlightUse,"green",-1,false,false,"",'isNil "life_chemlight" && "Chemlight_green" in (magazines player) && vehicle player == player ']];
life_actions = life_actions + [player addAction["<t color='#BDBDBD'>Knicklicht(BLAU) halten</t>",life_fnc_chemlightUse,"blue",-1,false,false,"",'isNil "life_chemlight" && "Chemlight_blue" in (magazines player) && vehicle player == player ']];
life_actions = life_actions + [player addAction["<t color='#BDBDBD'>Knicklicht loslassen</t>",{if(isNil "life_chemlight") exitWith {};if(isNull life_chemlight) exitWith {};detach life_chemlight; life_chemlight = nil;},"",-1,false,false,"",'!isNil "life_chemlight" && !isNull life_chemlight && vehicle player == player ']];

//Sitting Script
life_actions = life_actions + [player addAction["<t color='#BDBDBD'>Hinsetzen</t>",life_fnc_sitDown,cursorTarget,10,false,false,"",' !isNull cursorTarget && (player distance cursorTarget) < 5 && (
	cursorTarget isKindOf "Land_CampingChair_V2_F" || 
	cursorTarget isKindOf "Land_ChairWood_F" ||
	cursorTarget isKindof "Land_Bench_F" ||
	cursorTarget isKindof "Land_CampingChair_V1_F" ||
	cursorTarget isKindof "Land_WoodenLog_F"
)']];
life_actions = life_actions + [player addAction["<t color='#BDBDBD'>Aufstehen</t>", life_fnc_sitDown,cursorTarget,10,false,false,"",'life_sitting']];
