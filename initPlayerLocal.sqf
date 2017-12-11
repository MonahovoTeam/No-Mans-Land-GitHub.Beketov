/*
    Author - HoverGuy
    © All Fucks Reserved
    Website - http://www.sunrise-production.com
    Player initialization
*/
if(!hasInterface) exitWith {}; // If headless then exit
[] execVM "HG\Setup\fn_clientInitialization.sqf";




player addEventHandler ["InventoryOpened", {
	inventoryOpen = 1;
	execVM "character-states\NML-Inventory\inventory-open.sqf";
}];
player addEventHandler ["InventoryClosed", {
	inventoryOpen = 0;
	execVM "character-states\NML-Inventory\inventory-close.sqf";
}];

execVM "character-states\NML-Inventory\PersonNameInit.sqf";
execVM "ambient-scripts\background-sound-loops\background-sound.sqf";
execVM "character-states\npc\monk_post_animations.sqf";
execVM "character-states\npc\monk_guard_animations.sqf";
execVM "character-states\npc\monk_civ_animations.sqf";
