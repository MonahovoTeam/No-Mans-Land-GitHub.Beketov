call {


	//ZARINE-32 TOXIN AREA
		if (zarine32 == 1) exitWith {
			zarine_area_start = execVM "character-states\NML-Inventory\toxic-area\toxicTypes\zarine32.sqf";
		};
		
		if (zarine32 == 0) exitWith {
			terminate zarine_area_start;
			toxic_area_stop = execVM "character-states\NML-Inventory\toxic-area\toxicTypes\zarine32stop.sqf";
		};
	
	
	
};