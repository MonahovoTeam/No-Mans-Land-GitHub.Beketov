[] spawn {

	call {
		// No Damage
		if (NMLGaDmg >= 0 && NMLGaDmg <= 10) exitWith {
			// hint "No Gastro Damage!";
		};
			
		// Light Damage
		if (NMLGaDmg > 10 && NMLGaDmg <= 60) exitWith {
			// hint "Light Gastro Damage!";
		};
		
		// Moderate Damage
		if (NMLGaDmg > 60 && NMLGaDmg <= 80) exitWith {
			// hint "Moderate Gastro Damage!";
		};
			
		// Heavy Damage
		if (NMLGaDmg > 80 && NMLGaDmg <= 95) exitWith {
			// hint "Heavy Gastro Damage!";
		};		
		
		// Lethal Damage
		if (NMLGaDmg > 95 && NMLGaDmg <= 99) exitWith {
			// hint "Lethal Gastro Damage!";
		};	
		
		// Death Damage
		if (NMLGaDmg == 100) exitWith {
			// hint "Death Gastro Damage!";
		};
	};


};