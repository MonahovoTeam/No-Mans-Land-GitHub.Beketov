[] spawn {

	call {
		// No Damage
		if (NMLKdDmg >= 0 && NMLKdDmg <= 10) exitWith {
			// hint "No Kidney Damage!";
		};
			
		// Light Damage
		if (NMLKdDmg > 10 && NMLKdDmg <= 60) exitWith {
			// hint "Light Kidney Damage!";
		};
		
		// Moderate Damage
		if (NMLKdDmg > 60 && NMLKdDmg <= 80) exitWith {
			// hint "Moderate Kidney Damage!";
		};
			
		// Heavy Damage
		if (NMLKdDmg > 80 && NMLKdDmg <= 95) exitWith {
			// hint "Heavy Kidney Damage!";
		};		
		
		// Lethal Damage
		if (NMLKdDmg > 95 && NMLKdDmg <= 99) exitWith {
			// hint "Lethal Kidney Damage!";
		};	
		
		// Death Damage
		if (NMLKdDmg == 100) exitWith {
			// hint "Death Kidney Damage!";
		};
	};


};