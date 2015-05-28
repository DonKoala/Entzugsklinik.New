enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;
tjms_IntroOn = true;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";
[] execVM "core\items\fn_teargas.sqf";
[] execVM "core\TJMS\fn_initHud.sqf";
[] execVM "core\TJMS\fn_addkey.sqf";
//[] execVM "core\TJMS\welcome.sqf"; //Load Welcome Intro
[] execVM "scripts\screwpeta.sqf";



if(isDedicated && isNil("life_market_prices")) then {
	[] call life_fnc_marketconfiguration;
	diag_log "Market prices generated!";
	"life_market_prices" addPublicVariableEventHandler
	{
		diag_log format["Market prices updated! %1", _this select 1];
	};
	//Start server fsm
	[] execFSM "core\fsm\server.fsm";
	diag_log "Server FSM executed";
};

tf_same_sw_frequencies_for_side = true;
tf_same_lr_frequencies_for_side = true;
tf_freq_west    = [0,7,["35","36.6","42.3","48","53.7","59.4","65.1","70.8","76.5","82.2","87.9","93.6","99.3"],0,"_bluefor",-1,0];
tf_freq_west_lr = [0,7,["35","36.6","42.3","48","53.7","59.4","65.1","70.8","76.5","82.2","87.9","93.6","99.3"],0,"_bluefor",-1,0];
tf_freq_name    = [["35","Alfa"],["36.6","Bravo"],["42.3","Charlie"],["48","Delta"],["53.7","Echo"],["59.4","Foxtrot"],["65.1","Golf"],["70.8","Hotel"],["76.5","India"],["82.2","Juliett"],["87.9","Kilo"],["93.6","Lima"],["99.3","Mike"]];

StartProgress = true;

life_fnc_switchMove = {
    private["_object","_anim"];
    _object = _this select 0;
    _anim = _this select 1;
    _object switchMove _anim;
};
