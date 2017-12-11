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
		if (zarine32 == 0) then {
			_handle ppEffectEnable true;
			_handle ppEffectAdjust _effect2;
			_handle ppEffectCommit 5;
		}; 
	}; 
};

["ChromAberration", 1500, [1, 1, true], [0, 0, false]] spawn 
{
	params ["_name", "_priority", "_effect", "_effect2", "_handle"];
	while {
		_handle = ppEffectCreate [_name, _priority];
		_handle < 0
	} do {
		_priority = _priority + 1;
	};
	
	
	call {
		if (zarine32 == 0) then {
			_handle ppEffectEnable true;
			_handle ppEffectAdjust _effect2;
			_handle ppEffectCommit 5;
		}; 
	}; 
};