[] spawn {

	while {true} do {
		// Файл (или функция) внутри которого проверка мозгового урона.
		execVM "character-states\NML-Inventory\player-health\DamageCheck\NML_BrainCheck.sqf";
		// Проверка каждое кол-во секунд на урон по мозгам (Стандарт: 10сек)
		sleep 10;
		
		// Nervo Damage Check
		execVM "character-states\NML-Inventory\player-health\DamageCheck\NML_NevroCheck.sqf";
		sleep 10;
		
		// Lung Damage Check
		execVM "character-states\NML-Inventory\player-health\DamageCheck\NML_LungCheck.sqf";
		sleep 10;
		
		// Gastro Damage Check
		execVM "character-states\NML-Inventory\player-health\DamageCheck\NML_GastroCheck.sqf";
		sleep 10;
		
		// Kidney Damage Check
		execVM "character-states\NML-Inventory\player-health\DamageCheck\NML_KidneyCheck.sqf";
		sleep 10;
	}

};