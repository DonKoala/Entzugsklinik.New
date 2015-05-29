/* 
	Master configuration file by M4rc3lloX
    Author: M4rc3lloX / Marcel
    Description: Handle everything for extra scripts etc.! 
*/

// Global Variables
m4rc_blinkerR = false;
m4rc_blinkerL = false;

// Info
systemChat "Initializing Entzugsklinik Gaming Life by Êntzugsklinik.";

// Set TJMS ADMINS for testing purposes
TJMS_ADMIN = [
	"76561198220189656"
];

// Add a Player to an custom radio channel
[] spawn
{
	while {true} do
	{
		sleep 6;
		if (playerside == civilian && ((getPlayerUID player) in TJMS_ADMIN)) then {
			4 radioChannelAdd [player]; // Developer Channel
		};
		if (playerside == west or playerside == independent) then {
			5 radioChannelAdd [player]; // Notruf & Polizeiruf
		};
		if (vehicle player isKindOf "Air") then {
			6 radioChannelAdd [player]; // Funkverkehr
		} else {
			6 radioChannelRemove [player];
		};
	};
};

// Limited 3rd Person View
if (!isDedicated) then {
	waitUntil {!isNull (findDisplay 46)};
	if (difficultyEnabled "3rdPersonView") then {
		while {true} do {
			waitUntil {cameraView == "EXTERNAL" || cameraView == "GROUP"};
			if((vehicle player) == player) then {
				//player switchCamera "INTERNAL";
			};
		};
	};
};
