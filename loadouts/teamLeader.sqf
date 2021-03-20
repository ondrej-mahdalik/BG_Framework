comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

comment "Add weapons";
player addWeapon "rhs_weap_savz58v_ris";
player addPrimaryWeaponItem "ACE_optic_Hamr_2D";
player addPrimaryWeaponItem "rhs_30Rnd_762x39mm_Savz58_tracer";
player addWeapon "ACR_A3_hgun_Phantom";
player addHandgunItem "ACR_A3_18Rnd_9x19_Phantom";

comment "Add containers";
player forceAddUniform "U_ACR_A3_CombatUniform";
player addVest "V_ACR_A3_PlateCarrier1_rgr";
player addBackpack "ACR_A3_ACRPara_m95";

comment "Add binoculars";
player addWeapon "Rangefinder";

comment "Add items to containers";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_EarPlugs";};
for "_i" from 1 to 4 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "ACE_EntrenchingTool";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "ACE_IR_Strobe_Item";
for "_i" from 1 to 3 do {player addItemToUniform "ACE_Chemlight_HiGreen";};
for "_i" from 1 to 7 do {player addItemToVest "rhs_30Rnd_762x39mm_Savz58_tracer";};
for "_i" from 1 to 2 do {player addItemToVest "ACR_A3_18Rnd_9x19_Phantom";};
for "_i" from 1 to 7 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 7 do {player addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 7 do {player addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 7 do {player addItemToBackpack "ACE_packingBandage";};
player addItemToBackpack "ACE_personalAidKit";
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_tourniquet";};
player addItemToBackpack "ACE_UAVBattery";
for "_i" from 1 to 3 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 3 do {player addItemToBackpack "ACE_morphine";};
player addItemToBackpack "ACE_Fortify";
player addItemToBackpack "ACE_M26_Clacker";
player addItemToBackpack "ACE_wirecutter";
for "_i" from 1 to 2 do {player addItemToBackpack "rhs_mag_m67";};
for "_i" from 1 to 2 do {player addItemToBackpack "SmokeShell";};
for "_i" from 1 to 2 do {player addItemToBackpack "SmokeShellBlue";};
for "_i" from 1 to 2 do {player addItemToBackpack "SmokeShellRed";};
player addHeadgear "H_ACR_A3_HelmetIA_vz95";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";
player linkItem "ItemGPS";
player linkItem "UK3CB_BAF_HMNVS";

comment "Set identity";
[player,"WhiteHead_11","ace_novoice"] call BIS_fnc_setIdentity;
