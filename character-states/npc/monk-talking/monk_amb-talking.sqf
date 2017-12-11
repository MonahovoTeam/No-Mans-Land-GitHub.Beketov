[] spawn {
	_monk_post_amb_talking_v1 = ["idle_1_1","idle_1_2","idle_1_3","idle_1_4","idle_1_5","idle_1_6","idle_1_7","idle_1_8","idle_1_9","idle_1_10","idle_1_11","idle_1_12"];
	_monk_post_amb_talking_v2 = ["idle_2_1","idle_2_2","idle_2_3","idle_2_4","idle_2_5","idle_2_6","idle_2_7","idle_2_8","idle_2_9","idle_2_10","idle_2_11","idle_2_12"];
	_monk_post_amb_talking_sleep_v1 = [5,6,9,3,9,7.5,5,3,6,8,1,3];
	_monk_post_amb_talking_sleep_v2 = [7,5,3,10,1,2,2,1,1.2,0.8,1,0.5];
	_npc_voice1 = [monk_post_guard_2,monk_sec_6];
	_npc_voice2 = [monk_sec_3,monk_sec_4];
	

	while {monk_amb_talking == 1} do {
		_rndphrase1 = _monk_post_amb_talking_v1 call BIS_fnc_selectRandom;
		_getsleepInd1 = _monk_post_amb_talking_v1 find _rndphrase1;
		_getsleep1 = _monk_post_amb_talking_sleep_v1 select _getsleepInd1;
		_npc_talking1 = _npc_voice1 call BIS_fnc_selectRandom;
		_npc_talking1 setRandomLip true;
		[_npc_talking1, _rndphrase1] call CBA_fnc_globalSay3d;
		sleep _getsleep1;
		_npc_talking1 setRandomLip false;
		sleep (2 + (random 5));
		
		_rndphrase2 = _monk_post_amb_talking_v2 call BIS_fnc_selectRandom;
		_getsleepInd2 = _monk_post_amb_talking_v2 find _rndphrase2;
		_getsleep2 = _monk_post_amb_talking_sleep_v2 select _getsleepInd2;
		_npc_talking2 = _npc_voice2 call BIS_fnc_selectRandom;
		_npc_talking2 setRandomLip true;
		[_npc_talking2, _rndphrase2] call CBA_fnc_globalSay3d;
		sleep _getsleep2;
		_npc_talking2 setRandomLip false;
		sleep (2 + (random 5));
		//sleep (5 + (Random 25));
	};
};