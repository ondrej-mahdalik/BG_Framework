#include "nastaveni.sqf"

// Vypnout AI hlas, nastavit vsechny hrace bez hlasu a vypnout arty comp.
enableSaving [false, false];
enableSentences false;
enableRadio false;
enableEngineArtillery bg_artilleryComputer;
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