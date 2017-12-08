[] spawn {	
	sleep (5 + (random 2));
	while {toxicarea == 1} do {
		_nml_toxicareatext = selectRandom ["Вы чувствуете странный запах.", "Вы чувствуете едкий запах.","У вас жжется нос.","У вас побаливает нос."];
		systemChat format["%1", _nml_toxicareatext];
		sleep (10 + (random 5));
		
	}
};