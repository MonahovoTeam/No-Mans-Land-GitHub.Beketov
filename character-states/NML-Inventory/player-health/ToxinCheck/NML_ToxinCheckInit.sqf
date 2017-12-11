[] spawn {

	while {true} do {
		// Файл (или функция) внутри которого проверка уровня дозы Зарина.
		execVM "character-states\NML-Inventory\player-health\ToxinCheck\NML_Zarin32Check.sqf";
		// Проверка каждое кол-во секунд (Стандарт: 10сек)
		sleep 1;
	}

};