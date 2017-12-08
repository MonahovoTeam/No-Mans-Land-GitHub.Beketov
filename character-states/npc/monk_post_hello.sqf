_monk_post_guard_hello = ["meet_hello_1","meet_hello_2","meet_hello_3"];
	monk_post_guard_1 setRandomLip true;
	monk_post_guard_1 say3D (_monk_post_guard_hello select floor random count _monk_post_guard_hello); 
	sleep 1;
	monk_post_guard_1 setRandomLip false;
	// [monk_post_guard_1, (_monk_post_guard_hello select floor random count _monk_post_guard_hello)] call CBA_fnc_globalSay3d;
	sleep 10;
