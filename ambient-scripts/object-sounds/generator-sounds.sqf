//nul = [this] spawn {while {true} do {(_this select 0) say3D "generator_work_1"; sleep 4;};};
[] spawn {
	while {true} do {
		generator_1 say3D "generator_work_1";
		sleep 3;
	};
}