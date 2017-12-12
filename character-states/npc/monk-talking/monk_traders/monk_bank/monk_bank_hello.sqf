[] spawn {
		atm_monk setRandomLip true;
		atm_monk say3D ["monk_bank_hello_1", 60];
		sleep 2;
		atm_monk setRandomLip false;
		sleep (2 + (random 4));
};