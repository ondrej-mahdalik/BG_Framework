// Puvodni autor ALIAS, Upraveno

private ["_bg_flareLight","_bg_flareInter","_bg_flareInc","_bg_flare","_bg_flareTypes","_bg_flareType"];
private["_bg_flareIntensity", "_bg_flareRange", "_bg_flareMortarIntensity", "_bg_flareMortarRange"];

if (!hasInterface) exitWith {};

/** Obecne Nastaveni Intenzity a Vzdalenosti */
_bg_flareIntensity = 30;
_bg_flareRange = 200;
_bg_flareMortarIntensity = 100;
_bg_flareMortarRange = 450;

/** Druhy a Barvy Svetlic
 * - Pro pridani vlastni svetlice pridat ["<NazevSvetlice>", <barvaSvetlice>, <minomet>]
 * - Barvy:
 *   - 0 - Bila
 *   - 1 - Cervena
 *   - 2 - Zluta
 *   - 3 - Zelena
 *   - 4 - Bila pro minomet
 * - Minomet - Jestli je to svetlice urcena pro minomet / artilerii (true/false)
 */
_bg_flareTypes = [
	["F_40mm_White", 0, false],
	["F_40mm_Red", 1, false],
	["F_40mm_Yellow", 2, false],
	["F_40mm_Green", 3, false],
	["Flare_82mm_AMOS_White", 4, true],
	["rhs_40mm_green", 3, false],
	["rhs_40mm_red", 1, false],
	["rhs_40mm_white", 0, false],
	["rhsusf_40mm_green", 3, false],
	["rhsusf_40mm_red", 1, false],
	["rhsusf_40mm_white", 0, false]
];

_bg_flare_colors = [
	[0.7,0.7,0.8], // Bila
	[0.7,0.15,0.1], // Cervena
	[0.7,0.7,0], // Zluta
	[0.2,0.7,0.2], // Zelena
	[1,1,1] // Bila (minomet)
];

_bg_flare = _this select 0;
_bg_flareType = ["default", 0, false];

{
	if (typeOf _bg_flare == (_x select 0)) then {
		_bg_flareType = _x;
	};
} forEach _bg_flareTypes;

if ((_bg_flareType select 0) != "default") then {

	sleep 3;
	_bg_flareLight = "#lightpoint" createVehicle getPosATL _bg_flare;
	_bg_flareLight setLightAmbient (_bg_flare_colors select (_bg_flareType select 1));
	_bg_flareLight setLightColor (_bg_flare_colors select (_bg_flareType select 1));

	if (_bg_flareType select 2) then {
		_bg_flareLight setLightIntensity _bg_flareMortarIntensity;
		_bg_flareLight setLightAttenuation [_bg_flareMortarRange, 1, 100, 0, 50, _bg_flareMortarRange - 10];

	}
	else {
		_bg_flareLight setLightIntensity _bg_flareIntensity;
		_bg_flareLight setLightAttenuation [_bg_flareRange, 1, 100, 0, 50, _bg_flareRange - 10];
	};

	_bg_flareLight setLightUseFlare true;
	_bg_flareLight setLightFlareSize 10;
	_bg_flareLight setLightFlareMaxDistance 2000;

	_bg_flareInter = 0;
	private _bg_flareIntensityTemp = [_bg_flareMortarIntensity, _bg_flareIntensity] select (_bg_flareType select 2);
	while {!isNull _bg_flare} do {
		_bg_flareInc = 0.05 + random 0.01;
		sleep _bg_flareInc;
		_bg_flareLight setLightIntensity (_bg_flareIntensityTemp + random 10);
		_bg_flareInter = _bg_flareInter + _bg_flareInc;
		_bg_flareLight setPos(getPosATL _bg_flare);
	};
};