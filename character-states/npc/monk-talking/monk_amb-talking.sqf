[] spawn {
	_monk_post_amb_talking_v1 = ["idle_1_1","idle_1_2","idle_1_3","idle_1_4","idle_1_5","idle_1_6","idle_1_7","idle_1_8","idle_1_9","idle_1_10","idle_1_11","idle_1_12"];
	_monk_post_amb_talking_v2 = ["idle_2_1","idle_2_2","idle_2_3","idle_2_4","idle_2_5","idle_2_6","idle_2_7","idle_2_8","idle_2_9","idle_2_10","idle_2_11","idle_2_12"];
	_monk_post_amb_talking_v3 = ["idle_3_1","idle_3_2","idle_3_3","idle_3_4","idle_3_5","idle_3_6","idle_3_7","idle_3_8","idle_3_9","idle_3_10","idle_3_11","idle_3_12"];
	_monk_post_amb_talking_sleep_v1 = [5,6,9,3,9,7.5,5,3,6,8,1,3];
	_monk_post_amb_talking_sleep_v2 = [7,5,3,10,1,2,2,1,1.2,0.8,1,0.5];
	_monk_post_amb_talking_sleep_v3 = [12,11,12,9,10,16,8,10,8,6,7,22];
	_npc_voice1 = [monk_post_guard_2,monk_sec_6];
	_npc_voice2 = [monk_sec_3];
	_npc_voice3 = [monk_sec_4];
	

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
		
		_rndphrase3 = _monk_post_amb_talking_v3 call BIS_fnc_selectRandom;
		_getsleepInd3 = _monk_post_amb_talking_v3 find _rndphrase3;
		_getsleep3 = _monk_post_amb_talking_sleep_v3 select _getsleepInd3;
		_npc_talking3 = _npc_voice3 call BIS_fnc_selectRandom;
		_npc_talking3 setRandomLip true;
		[_npc_talking3, _rndphrase3] call CBA_fnc_globalSay3d;
		sleep _getsleep3;
		_npc_talking3 setRandomLip false;
		sleep (2 + (random 5));

	};
};