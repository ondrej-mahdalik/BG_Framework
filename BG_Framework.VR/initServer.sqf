#include "nastaveni.sqf"

["Initialize"] call BIS_fnc_dynamicGroups;

if (bg_civilianWhenUnconscious) then {
	["ace_unconscious", {
		(_this select 0) setCaptive (_this select 1);
	}] call CBA_fnc_addEventHandler;
};