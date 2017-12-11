MISSION_ROOT = str missionConfigFile select [0, count str missionConfigFile - 15];
execVM "saveSystem\saveloadout.sqf";