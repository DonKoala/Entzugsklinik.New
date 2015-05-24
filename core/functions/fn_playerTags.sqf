#include <macro.h>
/*
	File: fn_playerTags.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Adds the tags above other players heads when close and have visible range.
*/
private["_ui","_units"];
#define iconID 78000
#define scale 0.8

if(visibleMap OR {!alive player} OR {dialog}) exitWith {
	500 cutText["","PLAIN"];
};

_ui = uiNamespace getVariable ["Life_HUD_nameTags",displayNull];
if(isNull _ui) then {
	500 cutRsc["Life_HUD_nameTags","PLAIN"];
	_ui = uiNamespace getVariable ["Life_HUD_nameTags",displayNull];
};

_units = nearestObjects[(visiblePosition player),["Man","Land_Pallet_MilBoxes_F","Land_Sink_F"], 50];
_units = _units - [player];
//_units = [player];

{
	private["_name", "_text", "_icon", "_hasName"];
	_name = _x getVariable ["realname", name _x];
	_hasName = if(!isNil {(_x getVariable "realname")}) then {true} else {false};

	_idc = _ui displayCtrl (iconID + _forEachIndex);

	if(!(lineIntersects [eyePos player, eyePos _x, player, _x]) && {!isNil {_x getVariable "realname"}}) then {
		_pos = switch(typeOf _x) do {
			case "Land_Pallet_MilBoxes_F": {[visiblePosition _x select 0, visiblePosition _x select 1, (getPosATL _x select 2) + 1.5]};
			case "Land_Sink_F": {[visiblePosition _x select 0, visiblePosition _x select 1, (getPosATL _x select 2) + 2]};
			default {[visiblePosition _x select 0, visiblePosition _x select 1, ((_x modelToWorld (_x selectionPosition "head")) select 2)+.5]};
		};

		_sPos = worldToScreen _pos;
		_distance = _pos distance player;

		if(count _sPos > 1 && {_distance < 25}) then {
			_text = "";
			_icon = "";

			switch (true) do {
				//My Group
				case (_x in (units grpPlayer) && playerSide == civilian && alive _x): {
					//Others with gang
					if(!isNil {(group _x) getVariable "gang_name"}  && alive _x) then {
						_groupname = (group _x) getVariable ["gang_name",""];
						//_text = format["<t color='#FFFFFF'>%1</t><br/><t size='0.8' color='#82FA58'>%2</t>", _name, _groupname];
						_text = format["<t color='#FFFFFF'>%1</t>", _name];
					//Normaly Civilians
					} else {
						//_text = format["<t color='#FFFFFF'>%1</t>", _name];
						_text = format["<t color='#FFFFFF'>%1</t>", _name];
					};
				};
				

				//Dead Players
				case (!alive _x): {
					_text = format["<t color='#FF0040'><img image='a3\ui_f\data\map\MapControl\hospital_ca.paa' size='1.5'></img></t> %1", _name];
					_text = format["", _name];
				};


				//Cops
				case(_x getVariable["coplevel", 0] > 0 && alive _x) : {
					switch (_x getVariable["coplevel", 0]) do {
							case (1) : {_icon = "Polizeimeisteranwärter";};
							case (2) : {_icon = "Polizeimeister";};
							case (3) : {_icon = "Polizeikommissar";};
							case (4) : {_icon = "Polizeioberkommissar";};
							case (5) : {_icon = "Polizeihauptkommissar";};
							case (6) : {_icon = "Spezialeinsatzkommando";};
							case (7) : {_icon = "Präsident des Bundespolizeipräsidiums";};
						};
						default {};
					};
					//_text = format["<t color='#FFFFFF'>%1</t><br/><t size='0.8' color='#2E64FE'>%2</t>", _name, _icon];
					_text = format["<t color='#FFFFFF'>%1</t>", _name];
				};

				//Medics
				case(_x getVariable["medlevel", 0] > 0  && alive _x): {
					switch (_x getVariable["medlevel", 0]) do {
						case (1) : {_icon = "Rettungssanitäter";};
						case (2) : {_icon = "Notarzt";};
						case (3) : {_icon = "Arzt";};
						case (4) : {_icon = "Oberarzt";};
						case (5) : {_icon = "Chefarzt";};
						default {};
					};
					//_text = format["<t color='#FFFFFF'>%1</t><br/><t size='0.8' color='#FF0040'>%2</t>", _name, _icon];
					_text = format["<t color='#FFFFFF'>%1</t>", _name];
				};

				//Admins - Kommentar "unnötig..." by M4rc3lloX
				/*case(_x getVariable["adminlevel", 0] > 0): {
					_icon = "a3\UI_F\data\GUI\Cfg\Ranks\colonel_gs.paa";
					_text = format["<t color='#FFFF00'><img image='%2' size='1'></img> %1</t>", _name, _icon];
				};*/				

				//Others
				default {
					//Others with gang
					if(!isNil {(group _x) getVariable "gang_name"}  && alive _x) then {
						_groupname = (group _x) getVariable ["gang_name",""];
						//_text = format["<t color='#FFFFFF'>%1</t><br/><t size='0.8' color='#B6B6B6'>%2</t>", _name, _groupname];
						_text = format["<t color='#FFFFFF'>%1</t>", _name];
					//Normaly Civilians
					} else {
						//_text = format["<t color='#FFFFFF'>%1</t>", _name];
						_text = format["<t color='#FFFFFF'>%1</t>", _name];
					};
				};
			
			if(simulationEnabled _x) then {
				_text = format[""];
			};
			
			if(tjms_IntroOn) then {
				_text = format[""];
			};
			
			/* KILLED FOR NOW
			// switch througth those speaking channels o.0
			switch (true) do {
				case (alive _x && _x getVariable ["speaking",false]) :
				{
					if(_x getVariable ["masked",false]) then {
						_text = format["<t color='#086A87'>*Maskierte Person*</t>"];
					};
					_text = "*Spricht* " + _text
				};
				case (_x getVariable ["radio",false]) :
				{
					if(_x getVariable ["masked",false]) then {
						_text = format["<t color='#086A87'>*Maskierte Person*</t>"];
					};
					_text = "*Funkt* " + _text
				};
				default
				{
					if(_x getVariable ["masked",false]) then {
						_text = format["<t color='#086A87'>*Maskierte Person*</t>"];
					};
					_text = _text
				};
			};
			
			// get the developer tag - only as Developer!
			if(alive _x && _x getVariable ["developer",false]) then {
				_text = format["<t color='#FF0000'>[DEV]</t> "] + _text
			};
			*/

			_idc ctrlSetStructuredText parseText _text;
			_idc ctrlSetPosition [_sPos select 0, _sPos select 1, 0.4, 0.65];
			_idc ctrlSetScale scale;
			_idc ctrlSetFade 0;
			_idc ctrlCommit 0;
			_idc ctrlShow true;
		} else {
			_idc ctrlShow false;
		};
	} else {
		_idc ctrlShow false;
	};
} foreach _units;