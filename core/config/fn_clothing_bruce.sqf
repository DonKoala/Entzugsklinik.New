#include <macro.h>
/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Bruce's Klamotten"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret set[count _ret,["TRYK_U_B_PCUGs_BLK",nil,800]];
		_ret set[count _ret,["TRYK_U_B_PCUGs_gry",nil,800]];
		_ret set[count _ret,["TRYK_U_B_PCUGs_OD",nil,800]];		
		_ret set[count _ret,["TRYK_U_denim_hood_blk",nil,800]];
		_ret set[count _ret,["TRYK_U_denim_hood_nc",nil,800]];
		_ret set[count _ret,["TRYK_U_denim_jersey_blk",nil,800]];	
		_ret set[count _ret,["TRYK_U_denim_jersey_blu",nil,800]];
		_ret set[count _ret,["TRYK_U_taki_wh",nil,800]];		
		_ret set[count _ret,["TRYK_U_B_BLK_T_BK",nil,800]];
		_ret set[count _ret,["TRYK_U_B_BLK_T_WH",nil,800]];
		_ret set[count _ret,["TRYK_U_B_Denim_T_BK",nil,800]];		
		_ret set[count _ret,["TRYK_U_B_Denim_T_WH",nil,800]];
		_ret set[count _ret,["A3L_Priest_Uniform","Priester Uniform",800]];		
		_ret set[count _ret,["A3L_Suit_Uniform","Anzug",950]];
		_ret set[count _ret,["A3L_Character_Uniform","Life Uniform",400]];
		_ret set[count _ret,["A3L_Dude_Outfit","Dude outfit",500]];
		_ret set[count _ret,["A3L_Farmer_Outfit","Farmer Outfit",350]];
		_ret set[count _ret,["A3L_Worker_Outfit","Arbeiter Outfit",700]];
		_ret set[count _ret,["A3LShirt","ArmA 3 Life Shirt",175]];
		_ret set[count _ret,["A3L_Poop2day","I Pooped Today!",175]];
		_ret set[count _ret,["A3L_A3LogoPants","A3L Logo Pants",180]];
		_ret set[count _ret,["pervt_uni","Pervert Shirt",250]];
		_ret set[count _ret,["BluePlaid_uni","A3L Kariert (Blue)",200]];
		_ret set[count _ret,["OrangePlaid_uni","A3L Kariert (Orange)",200]];
		_ret set[count _ret,["PinkPlaid_uni","A3L Kariert (Pink)",200]];
		_ret set[count _ret,["RedPlaid_uni","A3L Kariert (Red)",200]];
		_ret set[count _ret,["YellowPlaid_uni","A3L Kariert (Yellow)",200]];
		_ret set[count _ret,["checkered_uni","A3L Polo (Checkered)",200]];
		_ret set[count _ret,["GbGyBr_uni","A3L Polo (GB-GY-BR)",200]];
		_ret set[count _ret,["GnBlBr_uni","A3L Polo (GN-BL-BR)",200]];
		_ret set[count _ret,["GnGyBr_uni","A3L Polo (GN-GN-GY)",200]];
		_ret set[count _ret,["GyBlBr_uni","A3L Polo (GY-BL-BR)",200]];
		_ret set[count _ret,["kingfish_uni","A3L Polo (Kingfish)",200]];
		_ret set[count _ret,["mothertrucker_uni","A3L Polo (Mothertrucker)",250]];
		_ret set[count _ret,["OrBlBr_uni","A3L Polo (OR-BL-BR)",250]];
		_ret set[count _ret,["OrGnGy_uni","A3L Polo (OR-GN-GY)",250]];
		_ret set[count _ret,["OrGyBr_uni","A3L Polo (OR-GY-BR)",250]];
		_ret set[count _ret,["PkGnGy_uni","A3L Polo (PK-GN-GY)",350]];
		_ret set[count _ret,["PkGyBr_uni","A3L Polo (PK-GY-BR)",350]];
		_ret set[count _ret,["RdBlBr_uni","A3L Polo (RD-BL-BR)",350]];
		_ret set[count _ret,["RdGnGy_uni","A3L Polo (RD-GN-GY)",350]];
		_ret set[count _ret,["RdGyBr_uni","A3L Polo (RD-GY-BR)",350]];
		_ret set[count _ret,["sohoku_uni","A3L Polo (Sohoku)",350]];
		_ret set[count _ret,["WhBlBr_uni","A3L Polo (WH-BL-BR)",350]];
		_ret set[count _ret,["WhGyBr_uni","A3L Polo (WH-GY-BR)",350]];
		_ret set[count _ret,["YlBlBr_uni","A3L Polo (YL-BL-BR)",350]];
		_ret set[count _ret,["YlGnGy_unI","A3L Polo (YL-GN-GY)",350]];
		_ret set[count _ret,["YlGyBr_uni","A3L Polo (YL-GY-BR)",350]];
		_ret set[count _ret,["racer_uni","A3L Rennfahrers",250]];
		_ret set[count _ret,["taxi_uni","A3L Taxifahrer",250]];
		_ret set[count _ret,["arma3","ArmA 3 Kariert",250]];
		_ret set[count _ret,["arma3black","ArmA 3 Kariert (Black)",250]];
		_ret set[count _ret,["ATI","ATI Enthusiast",250]];
		_ret set[count _ret,["tacobell","Delgado Shirt",250]];
		_ret set[count _ret,["dutch","Holland Shirt",250]];
		_ret set[count _ret,["hanacd","Hannes Academy",250]];
		_ret set[count _ret,["nvidia","Nvidia Enthusiast",250]];
		_ret set[count _ret,["SFG","SF Giant",250]];
		_ret set[count _ret,["walkingdead","The Walking Dead",250]];
		_ret set[count _ret,["A3L_SSTie","Secret Service Krawatte",350]];
		_ret set[count _ret,["A3L_SSNoTie","Secret Service Keine Krawatte",350]];
		_ret set[count _ret,["U_C_Poloshirt_blue","Poloshirt Blue",250]];
		_ret set[count _ret,["U_C_Poloshirt_burgundy","Poloshirt Burgundy",275]];
		_ret set[count _ret,["U_C_Poloshirt_redwhite","Poloshirt Red/White",150]];
		_ret set[count _ret,["U_C_Poloshirt_salmon","Poloshirt Salmon",175]];
		_ret set[count _ret,["U_C_Poloshirt_stripped","Poloshirt stripped",125]];
		_ret set[count _ret,["U_C_Poloshirt_tricolour","Poloshirt Tricolor",350]];
		_ret set[count _ret,["U_C_Poor_2","Rag tagged clothes",250]];
		_ret set[count _ret,["U_IG_Guerilla2_2","Green stripped shirt & Pants",650]];
		_ret set[count _ret,["U_IG_Guerilla3_1","Brown Jacket & Pants",735]];
		_ret set[count _ret,["U_C_HunterBody_grn","Jäger Outfit",500]];
		_ret set[count _ret,["U_C_WorkerCoveralls","Mechaniker",500]];
		_ret set[count _ret,["U_OrestesBody","Surfer",400]];
		_ret set[count _ret,["U_NikosBody","Nikos Kleidung",300]];
		_ret set[count _ret,["U_Competitor","Wettkämpfer",100]];
		_ret set[count _ret,["U_NikosAgedBody","Nikos Anzug",500]];
		_ret set[count _ret,["U_Marshal","Marshal's Seide",400]];
	
		////neu
		_ret set[count _ret,["A3L_Bikini_Girl",nil,250]];
		_ret set[count _ret,["A3L_FuckCaidenPants",nil,650]];
		_ret set[count _ret,["GreenPlaid_uni",nil,735]];
		_ret set[count _ret,["BreakingBad",nil,400]];
		_ret set[count _ret,["PH",nil,300]];
		_ret set[count _ret,["RastaCiv",nil,100]];
		_ret set[count _ret,["vacationshirt_uni",nil,400]];
		
	
	
	
	
	};
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
	//Hats
	case 1:
	{
	
		_ret set[count _ret,["TRYK_H_Bandana_H",nil,500]];
		_ret set[count _ret,["TRYK_H_Bandana_wig",nil,500]];
		_ret set[count _ret,["TRYK_H_pakol2",nil,500]];
		_ret set[count _ret,["TRYK_H_DELTAHELM_NV",nil,500]];;
		_ret set[count _ret,["TRYK_R_CAP_BLK",nil,500]];
		_ret set[count _ret,["TRYK_H_wig",nil,500]];
		_ret set[count _ret,["TRYK_H_woolhat",nil,500]];
		_ret set[count _ret,["TRYK_H_woolhat_br",nil,500]];;
		_ret set[count _ret,["TRYK_H_woolhat_cu",nil,500]];
		_ret set[count _ret,["TRYK_H_woolhat_tan",nil,500]];
		_ret set[count _ret,["A3L_SkateHelmet_green","Fahrradhelm",1000]];
		_ret set[count _ret,["A3L_mexicanhat","Mexikan Hut",5000]];
		_ret set[count _ret,["A3L_Halloween_Pumpkinhead","Pumpkin",2000]];	
		_ret set[count _ret,["jokermask","Joker Mask",2250]];
		_ret set[count _ret,["A3L_Crown","Krone",2400]];		
		_ret set[count _ret,["A3L_Legoman","Lego Helmet",5000]];
		_ret set[count _ret,["A3L_soa_helmet","Biker Helmet",2000]];	
		_ret set[count _ret,["A3L_gangster_hat","Gangster Mask",2250]];
		_ret set[count _ret,["A3L_Mask","Mask",2400]];				
		_ret set[count _ret,["A3L_longhairblack","Long Hair Black",750]];
		_ret set[count _ret,["A3L_longhairblond","Long Hair Blond",750]];
		_ret set[count _ret,["A3L_longhairbrown","Long Hair Brown",750]];
		_ret set[count _ret,["cowboyhat","Cowboyhat",2200]];
		_ret set[count _ret,["Kio_Santa_Hat","Santa hat",2000]];
		_ret set[count _ret,["A3L_Sombrero","Sombrero",1050]];
		_ret set[count _ret,["A3L_russianhat","Russianhat",1200]];
		_ret set[count _ret,["H_Bandanna_camo","Camo Bandanna",120]];
		_ret set[count _ret,["H_Bandanna_surfer","Surfer Bandanna",130]];
		_ret set[count _ret,["H_Bandanna_gry","Grey Bandanna",150]];
		_ret set[count _ret,["H_Bandanna_cbr",nil,165]];
		_ret set[count _ret,["H_Bandanna_surfer",nil,135]];
		_ret set[count _ret,["H_Bandanna_khk","Khaki Bandanna",145]];
		_ret set[count _ret,["H_Bandanna_sgg","Sage Bandanna",160]];
		_ret set[count _ret,["H_StrawHat","Straw Fedora",225]];
		_ret set[count _ret,["H_BandMask_blk","Hat & Bandanna",300]];
		_ret set[count _ret,["H_Booniehat_tan",nil,425]];
		_ret set[count _ret,["H_Booniehat_khk",nil,475]];
		_ret set[count _ret,["H_Booniehat_indp",nil,525]];
		_ret set[count _ret,["H_Booniehat_mcamo",nil,425]];
		_ret set[count _ret,["H_Booniehat_grn",nil,685]];
		_ret set[count _ret,["H_Booniehat_dirty",nil,415]];
		_ret set[count _ret,["H_Booniehat_dgtl",nil,325]];
		_ret set[count _ret,["H_Hat_blue",nil,310]];
		_ret set[count _ret,["H_Hat_camo",nil,310]];
		_ret set[count _ret,["H_Hat_brown",nil,276]];
		_ret set[count _ret,["H_Hat_checker",nil,340]];
		_ret set[count _ret,["H_Hat_grey",nil,280]];
		_ret set[count _ret,["H_Hat_tan",nil,265]];
		_ret set[count _ret,["H_StrawHat",nil,365]];
		_ret set[count _ret,["H_StrawHat_dark",nil,465]];
		_ret set[count _ret,["H_Cap_blu",nil,150]];
		_ret set[count _ret,["H_Cap_grn",nil,150]];
		_ret set[count _ret,["H_Cap_grn_BI",nil,150]];
		_ret set[count _ret,["H_Cap_oli",nil,150]];
		_ret set[count _ret,["H_Cap_red",nil,150]];
		_ret set[count _ret,["H_Cap_tan",nil,150]];
		_ret set[count _ret,["H_Cap_blk",nil,200]];
		_ret set[count _ret,["H_Cap_blk_CMMG",nil,200]];
		_ret set[count _ret,["H_Cap_brn_SPECOPS",nil,200]];
		_ret set[count _ret,["H_Cap_tan_specops_US",nil,200]];
		_ret set[count _ret,["H_Cap_khaki_specops_UK",nil,200]];
		_ret set[count _ret,["H_Cap_blk_Raven",nil,200]];
		_ret set[count _ret,["H_Cap_blk_ION",nil,200]];
		_ret set[count _ret,["GER_Beret_Aufklaerer",nil,500]];
		_ret set[count _ret,["GER_Beret_Wach",nil,500]];
		_ret set[count _ret,["GER_Beret_Fallschirmjaeger",nil,500]];
		_ret set[count _ret,["GER_Beret_Heeresflieger",nil,500]];
		_ret set[count _ret,["GER_Beret_Panzergrenadier",nil,500]];
		_ret set[count _ret,["GER_Beret_Jaeger",nil,500]];
		_ret set[count _ret,["GER_Beret_Artillerist",nil,500]];
		_ret set[count _ret,["GER_Beret_Pionier",nil,500]];
		_ret set[count _ret,["GER_Beret_Panzer",nil,500]];
		_ret set[count _ret,["GER_Beret_Sanitaeter",nil,500]];;
	};
	
	//Glasses
	case 2:
	{
		_ret set[count _ret,["TRYK_Shemagh_G",nil,55]];
		_ret set[count _ret,["TRYK_Shemagh_WH",nil,55]];
		_ret set[count _ret,["TRYK_Shemagh",nil,55]];
		_ret set[count _ret,["TRYK_Shemagh_shade_MH",nil,55]];		
		_ret set[count _ret,["TRYK_Shemagh_shade_G",nil,55]];
		_ret set[count _ret,["TRYK_Shemagh_shade",nil,55]];
		_ret set[count _ret,["TRYK_Shemagh_shade_WH",nil,55]];				
    	_ret set[count _ret,["G_Shades_Black",nil,25]];
		_ret set[count _ret,["G_Shades_Blue",nil,20]];
		_ret set[count _ret,["G_Sport_Blackred",nil,20]];
		_ret set[count _ret,["G_Sport_Checkered",nil,20]];
		_ret set[count _ret,["G_Sport_Blackyellow",nil,20]];
		_ret set[count _ret,["G_Sport_BlackWhite",nil,20]];
		_ret set[count _ret,["G_Sport_Red",nil,55]];
		_ret set[count _ret,["G_Squares",nil,10]];
		_ret set[count _ret,["G_Aviator",nil,100]];
		_ret set[count _ret,["G_Lady_Mirror",nil,150]];
		_ret set[count _ret,["G_Lady_Dark",nil,150]];
		_ret set[count _ret,["G_Lady_Blue",nil,150]];
		_ret set[count _ret,["G_Lowprofile",nil,30]];
		_ret set[count _ret,["G_Shades_Blue",nil,55]];
		_ret set[count _ret,["G_Shades_Green",nil,55]];
		_ret set[count _ret,["G_Shades_Red",nil,55]];
		_ret set[count _ret,["G_Shades_Black",nil,55]];

	};
	
	//Vest
	case 3:
	{
		_ret set[count _ret,["V_Rangemaster_belt",nil,1000]];
	};
	
	//Backpacks
	case 4:
	{
	+

		_ret set[count _ret,["tf_mr3000",nil,2000]];
		_ret set[count _ret,["B_AssaultPack_blk",nil,2000]];
		_ret set[count _ret,["B_AssaultPack_cbr",nil,2000]];
		_ret set[count _ret,["B_AssaultPack_dgtl",nil,2000]];
		_ret set[count _ret,["B_AssaultPack_khk",nil,2000]];
		_ret set[count _ret,["B_AssaultPack_mcamo",nil,2000]];
		_ret set[count _ret,["B_AssaultPack_ocamo",nil,2000]];
		_ret set[count _ret,["B_AssaultPack_rgr",nil,2000]];
		_ret set[count _ret,["B_AssaultPack_sgg",nil,2000]];
		_ret set[count _ret,["B_Carryall_cbr",nil,5500]];
		_ret set[count _ret,["B_Carryall_khk",nil,5500]];
		_ret set[count _ret,["B_Carryall_mcamo",nil,5500]];
		_ret set[count _ret,["B_Carryall_ocamo",nil,5500]];
		_ret set[count _ret,["B_Carryall_oli",nil,5500]];
		_ret set[count _ret,["B_Carryall_oucamo",nil,5500]];
		_ret set[count _ret,["B_FieldPack_blk",nil,1000]];
		_ret set[count _ret,["B_FieldPack_cbr",nil,1000]];
		_ret set[count _ret,["B_FieldPack_khk",nil,1000]];
		_ret set[count _ret,["B_FieldPack_ocamo",nil,1000]];
		_ret set[count _ret,["B_FieldPack_oli",nil,1000]];
		_ret set[count _ret,["B_FieldPack_oucamo",nil,1000]];
		_ret set[count _ret,["B_Kitbag_cbr",nil,4500]];
		_ret set[count _ret,["B_Kitbag_mcamo",nil,4500]];
		_ret set[count _ret,["B_Kitbag_rgr",nil,4500]];
		_ret set[count _ret,["B_Kitbag_sgg",nil,4500]];
		_ret set[count _ret,["B_Kitbag_cbr",nil,4000]];
		_ret set[count _ret,["B_TacticalPack_mcamo",nil,4000]];
		_ret set[count _ret,["B_TacticalPack_ocamo",nil,4000]];
		_ret set[count _ret,["B_TacticalPack_oli",nil,4000]];
		_ret set[count _ret,["B_TacticalPack_rgr",nil,4000]];
	};
};
_ret;