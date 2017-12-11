[] spawn {	
	while {zarine32 == 1} do {
		[0.45] call NMLHealth_fnc_giveLungDamage;
		[0.02] call NMLHealth_fnc_giveGastroDamage;
		[0.05] call NMLHealth_fnc_giveKidneyDamage;
		[0.05] call NMLHealth_fnc_giveBrainDamage;
		[0.25] call NMLHealth_fnc_giveNevroDamage;
		sleep 1;
		// if (toxicarea == 0) exitWith {};
	};
};