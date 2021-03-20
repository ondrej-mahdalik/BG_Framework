// CzR_CZ 20200322
// only 3x respawn, then stay in spectator
//my_respawn_count = 2; libovolny pocet respawnu (2 znamena jeden pri pripojeni a jeden po smrti = 1 respawn)
	
	if (isNil "my_respawn_count") then { my_respawn_count = 2; };  

		my_respawn_count = my_respawn_count - 1;

// https://ace3mod.com/wiki/framework/spectator-framework.html
//Zapnuti spektatoru po vyverpani respawnu

	if (my_respawn_count < 0) then 
		{ 

			[true,true,true] call ace_spectator_fnc_setSpectator;
			sleep 5;
			[allUnits, [player]] call ace_spectator_fnc_updateUnits;
			
		};



