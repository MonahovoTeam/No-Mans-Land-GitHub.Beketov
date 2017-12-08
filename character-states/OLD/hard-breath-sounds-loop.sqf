[] spawn {

_hard_breath_sounds_in = ["breath_toxic_air_in_1","breath_toxic_air_in_2","breath_toxic_air_in_3"];
_hard_breath_sounds_out = ["breath_toxic_air_out_1","breath_toxic_air_out_2","breath_toxic_air_out_3"];

	while {hard-breath == 1} do {
		player say3D (_hard_breath_sounds_in select ([0,(count _hard_breath_sounds_in)-1] call BIS_fnc_randomInt));
		sleep 2.3;
		player say3D (_hard_breath_sounds_out select ([0,(count _hard_breath_sounds_out)-1] call BIS_fnc_randomInt));
		sleep 2.3;
	}
}