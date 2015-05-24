/*
File: fn_gatherUranium.sqf

Description:
Gathers Uranium?
*/
private["_sum","_dice"];

_dice=ceil(random 3);
_sum = ["uranium1",_dice,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
life_action_inUse = true;
titleText["Sammle Uranabfall...","PLAIN"];
titleFadeOut 6;
sleep 6;
if(([true,"uranium1",_sum] call life_fnc_handleInv)) then
{
titleText[format["Du hast %1 Uranabfall gesammelt.",_sum],"PLAIN"];
};
};

life_action_inUse = false; 