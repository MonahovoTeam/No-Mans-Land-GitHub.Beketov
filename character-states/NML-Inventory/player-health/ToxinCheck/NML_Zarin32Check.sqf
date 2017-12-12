	call {
		// No Dose
		if (NMLZrn32Dose >= 0 && NMLZrn32Dose <= 10) exitWith {
			// hint "No NMLZrn32Dose!";
		};
			
		// Light Dose
		if (NMLZrn32Dose > 10 && NMLZrn32Dose <= 60) exitWith {
			// hint "Light NMLZrn32Dose!";
			[0.01] call NMLHealth_fnc_giveLungDamage; 
			[0.004] call NMLHealth_fnc_giveGastroDamage; 
			[0.004] call NMLHealth_fnc_giveBrainDamage; 
			[0.01] call NMLHealth_fnc_giveNevroDamage;
			[0.002] call NMLHealth_fnc_giveKidneyDamage;
		};
		
		// Moderate Dose
		if (NMLZrn32Dose > 60 && NMLZrn32Dose <= 80) exitWith {
			// hint "Moderate NMLZrn32Dose!";
			[0.02] call NMLHealth_fnc_giveLungDamage; 
			[0.008] call NMLHealth_fnc_giveGastroDamage; 
			[0.01] call NMLHealth_fnc_giveBrainDamage; 
			[0.02] call NMLHealth_fnc_giveNevroDamage;
			[0.005] call NMLHealth_fnc_giveKidneyDamage;
		};
			
		// Heavy Dose
		if (NMLZrn32Dose > 80 && NMLZrn32Dose <= 90) exitWith {
			// hint "Heavy NMLZrn32Dose!";
			[0.05] call NMLHealth_fnc_giveLungDamage; 
			[0.016] call NMLHealth_fnc_giveGastroDamage; 
			[0.02] call NMLHealth_fnc_giveBrainDamage; 
			[0.04] call NMLHealth_fnc_giveNevroDamage;
			[0.01] call NMLHealth_fnc_giveKidneyDamage;
		};		
		
		// Lethal Dose
		if (NMLZrn32Dose > 90 && NMLZrn32Dose <= 99) exitWith {
			// hint "Lethal NMLZrn32Dose!";
			[0.5] call NMLHealth_fnc_giveLungDamage; 
			[0.16] call NMLHealth_fnc_giveGastroDamage; 
			[0.2] call NMLHealth_fnc_giveBrainDamage; 
			[0.4] call NMLHealth_fnc_giveNevroDamage;
			[0.1] call NMLHealth_fnc_giveKidneyDamage;
		};	
		
		// Death Dose
		if (NMLZrn32Dose == 100) exitWith {
			// hint "Death NMLZrn32Dose!";
			[2.5] call NMLHealth_fnc_giveLungDamage; 
			[2.16] call NMLHealth_fnc_giveGastroDamage; 
			[2.2] call NMLHealth_fnc_giveBrainDamage; 
			[2.4] call NMLHealth_fnc_giveNevroDamage;
			[2.1] call NMLHealth_fnc_giveKidneyDamage;
		};
	};