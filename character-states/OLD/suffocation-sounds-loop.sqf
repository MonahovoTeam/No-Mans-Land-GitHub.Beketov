[] spawn {

_suffocation_sounds = ["breath_suffocation_1","breath_suffocation_2","breath_suffocation_3","breath_gas_mask_suffocation"];

	while {suffocation == 1} do {
		player say3D (_suffocation_sounds select ([0,(count _suffocation_sounds)-1] call BIS_fnc_randomInt));
		sleep 7.5;
	}
}

