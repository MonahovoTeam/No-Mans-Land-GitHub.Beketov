call {
	if (toxicarea == 1) exitWith {
		toxic_area_start = execVM "character-states\NML-Inventory\toxic-area\toxic-area-start.sqf";
	};
		
	if (toxicarea == 0) exitWith {
		terminate toxic_area_start;
		toxic_area_stop = execVM "character-states\NML-Inventory\toxic-area\toxic-area-stop.sqf";
	};
};