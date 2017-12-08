if (NML_sZone == 1) then {
			hint parseText "<t align='center' size='1.7' color='#0c9e29'>Впереди безопасная зона!</t><br /><br /><img image='img\peace-icon.paa' <img size='5' /><br /><br /><t align='center' size='1.2'>Вы зашли в поселение и спрятали оружие, так как местные запрещают вам его доставать на их территории.</t><br />";
			NML_sZone_Fired = player addEventHandler ["Fired", {deleteVehicle (_this select 6)}];
			player allowdamage false;
			setViewDistance 300;
		} else {
			hint parseText "<t align='center' size='1.7' color='#d60404'>Вы покинули безопасную зону!</t><br /><br /><img image='img\no-peace-icon.paa' <img size='5' /><br /><br /><t align='center' size='1.2'>Вы покинули поселение и теперь можете достать свое оружие.</t><br />";
			player allowdamage true;
			player removeEventHandler ["Fired", NML_sZone_Fired];
			setViewDistance 600;
			sleep 0.5;
			NML_sZone_Fired = nil;
			
		};
		
[] spawn {
		while {NML_sZone == 1} do {
			player action ['SwitchWeapon', player, player, 100];
			sleep 0.001;
			[player, "SAFEZONE ENABLED"] call ace_advanced_throwing_fnc_exitThrowMode;
			sleep 0.001;
			};
}
