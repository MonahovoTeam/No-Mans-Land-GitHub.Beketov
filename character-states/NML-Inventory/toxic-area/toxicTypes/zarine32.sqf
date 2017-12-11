[] spawn {	
	
	execVM "character-states\NML-Inventory\toxic-area\toxicTypes\zarine32Dose+.sqf";
	["FilmGrain", 2000, [0.025, 0.25, 2.01, 0.75, 1.0, true], [0, 0.25, 2.01, 0.75, 1.0, true]] spawn 
{
	params ["_name", "_priority", "_effect", "_effect2", "_handle"];
	while {
		_handle = ppEffectCreate [_name, _priority];
		_handle < 0
	} do {
		_priority = _priority + 1;
	};
	
	
	call {
		if (zarine32 == 1) then {
			_handle ppEffectEnable true;
			_handle ppEffectAdjust _effect;
			_handle ppEffectCommit 5;
		}; 
	}; 
};	

["ChromAberration", 1500, [0.01, 0.01, false], [0.005, 0.005, false]] spawn 
{
	params ["_name", "_priority", "_effect", "_effect2", "_handle"];
	while {
		_handle = ppEffectCreate [_name, _priority];
		_handle < 0
	} do {
		_priority = _priority + 1;
	};
	
	
	call {
		if (zarine32 == 1) then {
			_handle ppEffectEnable true;
			_handle ppEffectAdjust _effect;
			_handle ppEffectCommit 5;
		}; 
	}; 
};
	sleep (2 + (random 2));
	systemChat "Вы чувствуете странный запах.";
	sleep (4 + (random 4));
	
	
	while {zarine32 == 1} do {
		scopeName "ToxicAreaMessages";
		if (zarine32 == 1) then {
		_nml_toxicareatext = selectRandom ["Вы чувствуете едкий запах.","У вас жжется нос."];
		systemChat format["%1", _nml_toxicareatext];
		} else {breakOut "ToxicAreaMessages";};
		sleep (5);
		if (zarine32 == 0) then {breakOut "ToxicAreaMessages";};
		sleep (5 + (random 5));
	};
	systemChat "Странный запах пропал.";
};

