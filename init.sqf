#include "nastaveni.sqf"

// Vypnout ukladani a hlas AI a hracu
enableSaving [false, false];
enableSentences false;
enableRadio false;
{_x disableConversation true} forEach playableUnits;
{_x setSpeaker "ace_novoice"} forEach playableUnits;

// Prikaz #hint
["hint", {
    [_this select 0] remoteExec ["hint"];
}] call CBA_fnc_registerChatCommand;

// Prikaz #spunty
["spunty", {
    {player addItem "ACE_EarPlugs";} remoteExec["call"];
}] call CBA_fnc_registerChatCommand;

// Prikaz #give
["give", {
    bg_itemToGive = _this select 0;
    publicVariable "bg_itemToGive";
    {player addItem bg_itemToGive;} remoteExec["call"];
}] call CBA_fnc_registerChatCommand;

// Prikaz #heal
["heal", {
    {[player] call ACE_medical_treatment_fnc_fullHealLocal;} remoteExec["call"];
}] call CBA_fnc_registerChatCommand;