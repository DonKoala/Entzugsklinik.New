/*
	File: fn_fadeSound.sqf
	Author/Editor: M4rc3lloX
	Description:
	Earplugs for Pilots with Headsets ^^
*/

life_fadeSound = !life_fadeSound;

if (life_fadeSound) then {
	1 fadeSound 0.2; // Effects-Sound: 20%
	hint parseText format["Ohrenstöpsel: <t color='#58FA58'>AN</t>"];
} 
else {
	1 fadeSound 1; // Effects-Sound: 100%
	hint parseText format["Ohrenstöpsel: <t color='#FE2E2E'>AUS</t>"];
};