//ScOoBY Oprava 03.05.2020
 
{
	if (!isnull (getassignedcuratorunit _x)) then {
		_unit = getassignedcuratorunit _x;
		if (isnull (getassignedcuratorlogic _unit)) then {
			unassignCurator _x;
			sleep 1;
			_unit assignCurator _x;
			_unit allowDamage false;
			if (isClass (configFile >> "CfgPatches" >> "task_force_radio")) then {
				_unit call TFAR_fnc_isForcedCurator;
			};
		};
	};
} foreach allcurators;
