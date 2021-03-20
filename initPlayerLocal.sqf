#include "nastaveni.sqf"

["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;

CHVD_allowNoGrass = bg_forceGrass;
CHVD_maxView = bg_maxView;
CHVD_maxObj = bg_maxView;

sleep 5;

// Uvodni hint vlevo dole
_msg =  format [bg_welcomeMessage, name player];
_msg remoteExec["systemChat"];

[] spawn {

	waitUntil {alive player};
	sleep 5;

	// Bezici text po pripojeni na server.
	if (bg_showSplashMessage) then {
		[[
			[bg_splashMessage1, "<t align = 'center' shadow = '1' size = '0.7' font='PuristaBold'>%1</t><br/>"],
			[bg_splashMessage2, "<t align = 'center' shadow = '1' size = '0.7' font='PuristaBold'>%1</t><br/>"],
			[bg_splashMessage3, "<t align = 'center' shadow = '1' size = '0.7' font='PuristaBold'>%1</t><br/>"]
		]] spawn BIS_fnc_typeText;

		sleep 30;
	};

	[[
		["BG Framework","align = 'center' size = '0.7' font='PuristaBold'"],["","<br/>"],["Version 03.05.2020","align = 'center' size = '0.7'","#aaaaaa"]
	]] spawn BIS_fnc_typeText2;
};