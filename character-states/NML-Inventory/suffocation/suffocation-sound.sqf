sleep (16 + (random 8));

_hard_breath_sounds_in = ["breath_toxic_air_in_1","breath_toxic_air_in_2","breath_toxic_air_in_3"];
_hard_breath_sounds_out = ["breath_toxic_air_out_1","breath_toxic_air_out_2"];
// suffocationText

_nml_suffstarsoundtext = selectRandom ["Воздух при вдохе обжигает ваше горло.","У вас с трудом получилось вдохнуть.","Вы вдохнули и с трудом выдохнули.","Вы с болью вдохнули воздух.","Вдыхая воздух вы почувствовали тяжесть в груди.","Воздух обжигает горло и кажется тяжелым."];


	while {toxicair == 1} do {
		systemChat format["%1", _nml_suffstarsoundtext];
		sleep 0.1;
		[player, (_hard_breath_sounds_in select floor random count _hard_breath_sounds_in), 30] call CBA_fnc_globalSay3d;
		sleep (1 + (Random 1));
		[player, (_hard_breath_sounds_out select floor random count _hard_breath_sounds_out), 30] call CBA_fnc_globalSay3d;
		sleep (10 + (random 20));
	}