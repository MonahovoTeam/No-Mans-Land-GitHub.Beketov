[] spawn {
	_monk_post_amb_talking = ["idle_1","idle_2","idle_3","idle_4","idle_5","idle_6","idle_7","idle_8","idle_9","idle_10","idle_11","idle_12"];
	_monk_post_amb_talking_sleep = [5,6,9,3,9,7.5,5,3,6,8,1,3];
	_npc_list = [monk_sec_3,monk_sec_4,monk_post_guard_2,monk_sec_6];
	

	while {monk_amb_talking == 1} do {
		_rndphrase = _monk_post_amb_talking call BIS_fnc_selectRandom;
		_getsleepInd = _monk_post_amb_talking find _rndphrase;
		_getsleep = _monk_post_amb_talking_sleep select _getsleepInd;
		_npc_talking = _npc_list call BIS_fnc_selectRandom;
		_npc_talking setRandomLip true;
		_npc_talking say3D _rndphrase;
		sleep _getsleep;
		_npc_talking setRandomLip false;
		sleep 5;
		//sleep (5 + (Random 25));
	};
};