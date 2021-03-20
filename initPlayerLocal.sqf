//Oprava ScOoBY	03.05.2020

["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;

private ["_infohrac","_infohracarr1","_infohracarr2","_msg","_zeusarr"];

_infohrac = squadParams player;
 

sleep 5;

//Uvodni hint vlevo dole
 
	_msg =  format ["Player %1 has joined the game. Welcome!",name player];
	_msg = str _msg;
	[_msg, "systemChat", true] call BIS_fnc_MP;

	[] spawn
 		{ 
		waitUntil {alive player};

		sleep 5;
        
//Bezici text po pripojeni na server.
        
		[
			[
				["You are being synchronized with Broken Grenade’s server!", "<t align = 'center' shadow = '1' size = '0.7' font='PuristaBold'>%1</t><br/>"],
				["Grab your gear and go stand in line with your squad at the flag.", "<t align = 'center' shadow = '1' size = '0.7' font='PuristaBold'>%1</t><br/>"],
				["Please avoid shit talking and hot mics before leaving the base.", "<t align = 'center' shadow = '1' size = '0.7' font='PuristaBold'>%1</t><br/>"]
			]
		] 

		spawn BIS_fnc_typeText;

		sleep 30;

		[
			[

			["BG Framework, ","align = 'center' size = '0.7' font='PuristaBold'"],["","<br/>"],["Version 03.05.2020","align = 'center' size = '0.7'","#aaaaaa"]
			
			]
		] 
		
		spawn BIS_fnc_typeText2;
	
};

//Maximalni dohled pro mod CH_view_distance
				
		CHVD_allowNoGrass = false; // Set 'false' if you want to disable "Low" option for terrain (default: true)
		CHVD_maxView = 5000; // Set maximum view distance (default: 12000)
		CHVD_maxObj = 5000; // Set maximimum object view distance (default: 12000)
