[] spawn {

	call {
		// No Damage
		if (NMLLuDmg >= 0 && NMLLuDmg <= 10) exitWith {
			// hint "No Lung Damage!";
		};
			
		// Light Damage
		if (NMLLuDmg > 10 && NMLLuDmg <= 60) exitWith {
			// hint "Light Lung Damage!";
		};
		
		// Moderate Damage
		if (NMLLuDmg > 60 && NMLLuDmg <= 80) exitWith {
			// hint "Moderate Lung Damage!";
		};
			
		// Heavy Damage
		if (NMLLuDmg > 80 && NMLLuDmg <= 95) exitWith {
			// hint "Heavy Lung Damage!";
		};		
		
		// Lethal Damage
		if (NMLLuDmg > 95 && NMLLuDmg <= 99) exitWith {
			// hint "Lethal Lung Damage!";
		};	
		
		// Death Damage
		if (NMLLuDmg == 100) exitWith {
			// hint "Death Lung Damage!";
		};
	};


};