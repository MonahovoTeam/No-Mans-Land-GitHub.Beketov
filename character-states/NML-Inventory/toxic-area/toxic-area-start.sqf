[] spawn {	
	sleep (5 + (random 2));
	while {toxicarea == 1} do {
		
		systemChat "Вы чувствуете странный запах.";
		sleep (10 + (random 5));
		_nml_toxicareatext = selectRandom ["Вы чувствуете едкий запах.","У вас жжется нос.","У вас чешется нос."];
		systemChat format["%1", _nml_toxicareatext];
		sleep (10 + (random 5));
		
	}
};