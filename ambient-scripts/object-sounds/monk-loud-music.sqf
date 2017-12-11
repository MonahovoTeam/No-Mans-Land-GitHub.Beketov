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


/* playSound3D TRY

	[] spawn {
		while {monkLSMusic == 1} do {
		_monklssnds = ["sound\ambient\music\monk_loudspeakers\01_Radiomix.ogg","sound\ambient\music\monk_loudspeakers\02_Radiomix.ogg","sound\ambient\music\monk_loudspeakers\03_Radiomix.ogg","sound\ambient\music\monk_loudspeakers\04_Radiomix.ogg","sound\ambient\music\monk_loudspeakers\05_Radiomix.ogg","sound\ambient\music\monk_loudspeakers\06_Radiomix.ogg","sound\ambient\music\monk_loudspeakers\07_Radiomix.ogg","sound\ambient\music\monk_loudspeakers\08_Radiomix.ogg","sound\ambient\music\monk_loudspeakers\09_Radiomix.ogg","sound\ambient\music\monk_loudspeakers\10_Radiomix.ogg","sound\ambient\music\monk_loudspeakers\11_Radiomix.ogg"];
		_snd_sleep = [259,247,256,261,261,239,258,259,262,232,246];
		_rndsnd = _monklssnds call BIS_fnc_selectRandom;
		_getsleepInd = _monklssnds find _rndsnd;
		_getsleep = _snd_sleep select _getsleepInd;
		// [monk_loudspeaker, _rndsnd, 150] call CBA_fnc_globalSay3d;
		playSound3D [MISSION_ROOT + _rndsnd, monk_loudspeaker, false, getPosASL monk_loudspeaker, 5, 1, 150];
		sleep _getsleep;
		};
	}; */
