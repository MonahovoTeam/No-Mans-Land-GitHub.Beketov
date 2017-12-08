[] spawn {
		
		sleep 0.2;
		[player, "inv_open", 20] call CBA_fnc_globalSay3d;
		
		// STATS CHECK
		
		_hungertext = 
				if (KSS_hunger >= 80 && KSS_hunger <= 100) then {
					"<t  size='1.2'>Вы не испытываете голода.</t>"
				} else { 
						if (KSS_hunger >= 60 && KSS_hunger < 80) then {
							"<t  size='1.2' color='#34ce0a'>Вы слегка проголодались.</t>"
						} else { 
								if (KSS_hunger >= 40 && KSS_hunger < 60) then {
									"<t  size='1.2' color='#ffff00'>Вы чувствуете голод.</t>"
								} else { 
									if (KSS_hunger >= 10 && KSS_hunger < 40) then {
										"<t  size='1.2' color='#FFA500'>Вы сильно голодны.</t>" 
									} else {	
											"<t  size='1.3' color='#ef0404'>Вы умираете от голода!</t>"
											}
										} 
								}
						};
		
		 _thirsttext = 
				if (KSS_thirst >= 80 && KSS_thirst <= 100) then {
					"<t  size='1.2'>Вы не испытываете жажду.</t>"
				} else { if (KSS_thirst >= 60 && KSS_thirst < 80) then {
					"<t  size='1.2' color='#34ce0a'>Вы чувствуете сухость в горле.</t>"
				} else { if (KSS_thirst >= 40 && KSS_thirst < 60) then {
					"<t  size='1.2' color='#ffff00'>Вы чувствуете жажду.</t>"
				} else { if (KSS_thirst >= 10 && KSS_thirst < 40) then {
					"<t  size='1.2' color='#FFA500'>Вы чувствуете сильную жажду.</t>" 
				} else {"<t  size='1.3' color='#ef0404'>Вы умираете от обезвоживания!</t>"}
				
				} } };
		
		// Name Hook
		_plypersname = roleDescription player;
		

		while {inventoryOpen == 1} do {
		
			hintSilent parseText format["<img image='img\player-icons\wallet.paa' img size='4' /><br /><t  color='#768858' size='1.5'>В вашем кошельке:</t><br /> <t>%1 руб.</t><br /><br /><t  color='#768858' size='1.5'>Ваш персонаж:</t><br/><t size='1.3'>%4</t><br/><br/><t  color='#768858' size='1.5'>Ваш статус:</t><br/><t align='center'>%2</t><br/><t align='center'>%3</t>", ([(player getVariable "HG_Cash")] call BIS_fnc_numberText),_hungertext,_thirsttext,_plypersname];
			sleep 1;
		}
};