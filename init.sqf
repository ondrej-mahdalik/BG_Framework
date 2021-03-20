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
}, "admin"] call CBA_fnc_registerChatCommand;