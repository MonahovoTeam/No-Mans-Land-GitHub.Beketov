_monk_post_guard_com_hello = ["meet_com_hello_1","meet_com_hello_2"];
	monk_post_guard_3 setRandomLip true;
	monk_post_guard_3 say3D (_monk_post_guard_com_hello select floor random count _monk_post_guard_com_hello); 
	sleep 1;
	monk_post_guard_3 setRandomLip false;
	// [monk_post_guard_1, (_monk_post_guard_hello select floor random count _monk_post_guard_hello)] call CBA_fnc_globalSay3d;
	sleep 10;