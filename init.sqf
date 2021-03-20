//ScOoBY Oprava 3.5.2020

//Vypnout AI hlas, nastavit vsechny hrace bez hlasu a vypnout arty comp.

enableSaving [false, false];
enableSentences false;
enableRadio false;
enableEngineArtillery true;
{_x disableConversation true} forEach playableUnits;
{_x setSpeaker "ace_novoice"} forEach playableUnits;



//CBA funkce

["hint", {
    [[(_this select 0)], "hint", true] call BIS_fnc_MP;
}, "admin"] call CBA_fnc_registerChatCommand;