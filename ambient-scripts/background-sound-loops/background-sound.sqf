[] spawn {

while {true} do
{

		while {daytime > 4 && daytime < 5} do {
				playSound "bkg_morning";
				sleep 26;
			};

		while {daytime > 5 && daytime < 18.5} do {
				playSound "bkg_day";
				sleep 26;
			};

		while {daytime > 18.5 && daytime < 20} do {
				playSound "bkg_evening";
				sleep 26;
			};

		while {daytime > 20 && daytime < 23.99} do {
				playSound "bkg_night";
				sleep 26;
			};

		while {daytime > 0 && daytime < 4} do {
				playSound "bkg_night";
				sleep 26;
			};
}

};