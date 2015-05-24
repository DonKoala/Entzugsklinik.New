/*
	File: fn_medicLoadout.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description: Loads the medic out with the default gear.
*/
removeAllContainers player;
removeAllWeapons player;
removeGoggles player; 
removeHeadgear player; 

player forceaddUniform "emt_Uni1";
player addBackpack "B_Kitbag_cbr";
player addVest "V_Rangemaster_belt";
//player addHeadgear "A3L_medic_helmet";

player addItem "NVGoggles_OPFOR";
player assignItem "NVGoggles_OPFOR";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";
player addItem "ItemGPS";
player assignItem "ItemGPS";
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "tf_ex8550";
player assignItem "tf_ex8550";
player addWeapon "Binocular";

player addItem "Medikit";
player addItem "FirstAidKit";
player addItem "FirstAidKit";
player addItem "FirstAidKit";
player addItem "FirstAidKit";