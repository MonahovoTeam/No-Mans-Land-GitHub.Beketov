[] spawn {
	while {true} do {
		execVM "character-states\NML-Inventory\player-health\Hunger\hunger_stats.sqf";
		sleep 60;
	}
}