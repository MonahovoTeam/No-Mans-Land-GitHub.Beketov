["FilmGrain", 2000, [0.025, 0.25, 2.01, 0.75, 1.0, true], [0.00001, 0.25, 2.01, 0.75, 1.0, true]] spawn 
{
	params ["_name", "_priority", "_effect", "_effect2", "_handle"];
	while {
		_handle = ppEffectCreate [_name, _priority];
		_handle < 0
	} do {
		_priority = _priority + 1;
	};
	
	
	call {
		if (toxicair == 1) then {
			_handle ppEffectEnable true;
			_handle ppEffectAdjust _effect;
			_handle ppEffectCommit 5;
			hint "effect started";

		}; 
		
		if (toxicair == 0) then {
				_handle ppEffectEnable true;
				_handle ppEffectAdjust _effect2;
				_handle ppEffectCommit 5;
				hint "effect ended";
			}
	}; 
};


/* [] spawn {	
	if (toxicair == 1) then {
		"FilmGrain" ppEffectEnable true; 
		"FilmGrain" ppEffectAdjust [1, 0.15, 7, 0.2, 1.0, true]; 
		"FilmGrain" ppEffectCommit 6; 
		waitUntil {ppEffectCommitted "FilmGrain"};
		sleep 3;
		comment "admire effect for a sec";
		"FilmGrain" ppEffectEnable false;
		ppEffectDestroy "FilmGrain";
	};
} */
