/*

	Updates player clothing by replacing vanilla by custom ones
        by Audacious

*/

private["_uniform","_backpack"];

///Uniform
////////////////

_uniform = uniform player;

switch(true) do
{
	case (playerSide == west && _uniform == "U_Rangemaster"):
	{
        if( (call life_coplevel) == 1) then
		{
			player setObjectTextureGlobal  [0, "textures\uniform\cop_uniform_ordnungsamt.paa"]; 
			if(backpack player == "B_Bergen_blk") then {(unitBackpack player) setObjectTextureGlobal [0,"textures\backpack\cop_B_Bergen_blk.paa"];};
		};
		if( (call life_coplevel) > 1) then
		{
			player setObjectTextureGlobal  [0, "textures\uniform\cop_uniform_polizei.paa"]; 
			if(backpack player == "B_Bergen_blk") then {(unitBackpack player) setObjectTextureGlobal [0,"textures\backpack\cop_B_Bergen_blk.paa"];};
		};
	};
	case (playerSide == west && _uniform == "U_B_CombatUniform_mcam"):
	{
        if( (call life_coplevel) < 7) then
		{
			player setObjectTextureGlobal  [0, "textures\uniform\cop_uniform_lka.paa"]; 
			if(backpack player == "B_Bergen_blk") then {(unitBackpack player) setObjectTextureGlobal [0,"textures\backpack\cop_B_Bergen_blk.paa"];};
		};
		if( (call life_coplevel) > 4) then
		{
			player setObjectTextureGlobal  [0, "textures\uniform\cop_uniform_army.paa"]; 
			if(backpack player == "B_Bergen_blk") then {(unitBackpack player) setObjectTextureGlobal [0,"textures\backpack\cop_B_Bergen_blk.paa"];};
		};
	};
	case (playerSide == independent && _uniform == "U_Rangemaster"):
	{
		if( (call life_medlevel) > 0) then
		{
			player setObjectTextureGlobal  [0, "textures\uniform\med_uniform_sani.paa"];
			if(backpack player == "B_Bergen_blk") then {(unitBackpack player) setObjectTextureGlobal [0,"textures\backpack\cop_B_Bergen_blk.paa"];};
		};
	};
};


///backpack
////////////////