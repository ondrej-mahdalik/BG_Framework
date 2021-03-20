#include "nastaveni.sqf"

if (isNil "my_respawn_count") then {
	my_respawn_count = bg_respawnCount + 1;
};

my_respawn_count = my_respawn_count - 1;

// Zapnuti spektatora po vycerpani respawnu
if (my_respawn_count < 0) then 
{ 
	call ace_spectator_fnc_setSpectator;
	sleep 5;
	[allUnits, [player]] call ace_spectator_fnc_updateUnits;
};