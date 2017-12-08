[] spawn {
	while {true} do {
		execVM "character-states\NML-Inventory\hunger-check.sqf";
		sleep 60;
	}
}