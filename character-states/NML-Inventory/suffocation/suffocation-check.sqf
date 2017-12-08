call {
	if (toxicarea == 1) exitWith {
		suffocation_message = execVM "character-states\NML-Inventory\suffocation\suffocation-message.sqf";
		suffocation_sound = execVM "character-states\NML-Inventory\suffocation\suffocation-sound.sqf";
		suffocation_cough = execVM "character-states\NML-Inventory\suffocation\suffocation-cough.sqf";
		// suffocation_vision_grain = execVM "character-states\NML-Inventory\suffocation\suffocation-vision-grain.sqf";
		// execVM "character-states\NML-Inventory\suffocation\suffocation-title-message.sqf";
	};
		
	if (toxicarea == 0) exitWith {
		terminate suffocation_message;
		terminate suffocation_sound;
		terminate suffocation_cough;
		execVM "character-states\NML-Inventory\suffocation\suffocation-stop.sqf";
		// suffocation_vision_grain = execVM "character-states\NML-Inventory\suffocation\suffocation-vision-grain.sqf";
	};
};
