[] spawn {	
	sleep (4 + (random 4));
	_nml_suffstarttext = selectRandom ["Вам стало тяжело дышать.","У вас начали болеть легкие.","У вас заболела голова.","Вы почувствовали сгусток слизи у себя в горле.","Вы почувствовали тяжесть в груди."];
		sleep 0.1;
		systemChat format["%1", "1 text"/* _nml_suffstarttext */];
	
	_sleep_counter = 0;
	while {toxicair == 1 && _sleep_counter < 1} do {
	sleep (25 + (Random 15));
	_sleep_counter = 1;
	};

	while {toxicair == 1} do {
		
		_nml_sufftext = selectRandom ["Вам тяжело дышать.","У вас болят легкие.","У вас болят глаза.","У вас по горлу стекает слизь.","Вы чувствуете тяжесть в груди.","У вас болит голова.","Вы чувствуете тошноту.","У вас ухудшилось зрение."];
		systemChat format["%1", _nml_sufftext];
		sleep (25 + (random 5));
		
	}
};