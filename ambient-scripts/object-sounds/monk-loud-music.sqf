/* [] spawn {
	while {true} do {
		[monk_loudspeaker, "11_Radiomix"] call CBA_fnc_globalSay3d;
		sleep 300;
	};
} */

[] spawn {
	while {true} do {
	_monklssnds = ["01_Radiomix","02_Radiomix","03_Radiomix", "04_Radiomix", "05_Radiomix","06_Radiomix","07_Radiomix","08_Radiomix","09_Radiomix","10_Radiomix","11_Radiomix"];
	_snd_sleep = [258,246,255,260,260,238,257,258,261,231,245];
	_rndsnd = _monklssnds call BIS_fnc_selectRandom;
	_getsleepInd = _monklssnds find _rndsnd;
	_getsleep = _snd_sleep select _getsleepInd;
	[monk_loudspeaker, _rndsnd, 150] call CBA_fnc_globalSay3d;
	sleep _getsleep;
	};
};
