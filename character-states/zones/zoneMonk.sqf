[] spawn {

	any= ["Монахово"] spawn BIS_fnc_infoText;
	
	if (monkZone == 1) then {
		NML_sZone = 1;
		execVM "character-states\zones\safezoneInit.sqf";
	
	}
	else {
		NML_sZone = 0;
		execVM "character-states\zones\safezoneInit.sqf";
		
	any= ["Пустошь"] spawn BIS_fnc_infoText;
	sleep 0.1;
	}; 


} 