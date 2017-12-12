[] spawn {
		atm_monk setRandomLip true;
		atm_monk say3D ["monk_bank_traded_2", 60];
		sleep 8;
		atm_monk setRandomLip false;
		sleep (2 + (random 4));
};