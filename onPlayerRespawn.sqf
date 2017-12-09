execVM "character-states\npc\identety-save.sqf";
execVM "character-states\NML-Inventory\player-health\NML_PlayerHealthInit.sqf";
[plyGroup ply1, ply1] remoteExec ["selectLeader", groupOwner plyGroup ply1];