[] spawn {	
	while {zarine32 == 1} do {
		[+0.4] call NMLHealth_fnc_giveZarine32Dose;
		sleep 1;
		// if (toxicarea == 0) exitWith {};
	};
};