[] spawn {

	call {
		// No Damage
		if (NMLZrn32Dose >= 0 && NMLZrn32Dose <= 10) exitWith {
			// hint "No NMLZrn32Dose!";
		};
			
		// Light Damage
		if (NMLZrn32Dose > 10 && NMLZrn32Dose <= 60) exitWith {
			// hint "Light NMLZrn32Dose!";
		};
		
		// Moderate Damage
		if (NMLZrn32Dose > 60 && NMLZrn32Dose <= 80) exitWith {
			// hint "Moderate NMLZrn32Dose!";
		};
			
		// Heavy Damage
		if (NMLZrn32Dose > 80 && NMLZrn32Dose <= 95) exitWith {
			// hint "Heavy NMLZrn32Dose!";
		};		
		
		// Lethal Damage
		if (NMLZrn32Dose > 95 && NMLZrn32Dose <= 99) exitWith {
			// hint "Lethal NMLZrn32Dose!";
		};	
		
		// Death Damage
		if (NMLZrn32Dose == 100) exitWith {
			// hint "Death NMLZrn32Dose!";
		};
	};


};