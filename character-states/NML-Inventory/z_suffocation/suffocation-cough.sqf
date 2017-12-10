sleep (60 + (random 40));
_suff_cought = ["breath_suffocation_1","breath_suffocation_2","breath_suffocation_3", "breath_toxic_air_out_3"];

systemChat "Вы начали кашлять.";


	while {toxicair == 1} do {
		[player, (_suff_cought select floor random count _suff_cought), 30] call CBA_fnc_globalSay3d;
		sleep (20 + (Random 40));
		systemChat "Вы закашлялись.";
	}