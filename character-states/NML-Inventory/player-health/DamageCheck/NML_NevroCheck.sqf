[] spawn {

	call {
		// No Damage
		if (NMLNeDmg >= 0 && NMLNeDmg <= 10) exitWith {
			// hint "No Nervo Damage!";
		};
			
		// Light Damage
		if (NMLNeDmg > 10 && NMLNeDmg <= 60) exitWith {
			// hint "Light Nervo Damage!";
		};
		
		// Moderate Damage
		if (NMLNeDmg > 60 && NMLNeDmg <= 80) exitWith {
			// hint "Moderate Nervo Damage!";
		};
			
		// Heavy Damage
		if (NMLNeDmg > 80 && NMLNeDmg <= 95) exitWith {
			// hint "Heavy Nervo Damage!";
		};		
		
		// Lethal Damage
		if (NMLNeDmg > 95 && NMLNeDmg <= 99) exitWith {
			// hint "Lethal Nervo Damage!";
		};	
		
		// Death Damage
		if (NMLNeDmg == 100) exitWith {
			// hint "Death Nervo Damage!";
		};
	};


};