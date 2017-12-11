[] spawn {

	call {
		// No Damage
		if (NMLBrDmg >= 0 && NMLBrDmg <= 10) exitWith {
			// hint "No Brain Damage!";
		};
			
		// Light Damage
		if (NMLBrDmg > 10 && NMLBrDmg <= 60) exitWith {
			// hint "Light Brain Damage!";
		};
		
		// Moderate Damage
		if (NMLBrDmg > 60 && NMLBrDmg <= 80) exitWith {
			// hint "Moderate Brain Damage!";
		};
			
		// Heavy Damage
		if (NMLBrDmg > 80 && NMLBrDmg <= 95) exitWith {
			// hint "Heavy Brain Damage!";
		};		
		
		// Lethal Damage
		if (NMLBrDmg > 95 && NMLBrDmg <= 99) exitWith {
			// hint "Lethal Brain Damage!";
		};	
		
		// Death Damage
		if (NMLBrDmg == 100) exitWith {
			// hint "Death Brain Damage!";
		};
	};


};