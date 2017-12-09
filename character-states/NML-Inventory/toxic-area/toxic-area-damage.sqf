[] spawn {	
	while {toxicarea == 1} do {
		[0.55] call NMLHealth_fnc_giveLungDamage;
		[0.28] call NMLHealth_fnc_giveGastroDamage;
		[0.29] call NMLHealth_fnc_giveBrainDamage;
		[0.29] call NMLHealth_fnc_giveNevroDamage;
		sleep 1;
		// if (toxicarea == 0) exitWith {};
	};
};