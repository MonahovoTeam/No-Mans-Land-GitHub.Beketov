// hungerText
_ht = selectRandom ["У вас урчит в животе.","Вы чувствуете голод.","Вам нужно поесть.","У вас сводит живот от голода","Вам необходима пища.","Вам срочно нужно принять пищу.","Вам необходимо поесть.","Глядя на что угодно вы вспоминаете о еде.","Вы голодны."];

// hungerTextCritical
_htc = selectRandom ["У вас болит сердце.","У вас темнеет в глазах.","Ваши мышцы слабеют.","Вы спотыкаетесь об свои ноги.","У вас болит живот","Вы побледнели","У вас болят почки.","Вам мерещится всякое..."];

// thirstText
_tt = selectRandom ["У пересохло в горле.","Вы чувствуете жажду.","Вам нужно попить.","У вас жжет горло от жажды.","Вам необходима вода.","Вам срочно нужно выпить воды.","Вам необходимо попить.","Глядя на что угодно вы вспоминаете о воде.","Вы хотите пить."];

// thirstTextCritical
_ttc = selectRandom ["Вы не можете сглотнуть слюну.","Вам сложно передвигаться.","Вас морозит.","Ваша кожа сморщилась.","Вы стали хуже видеть.","У вас распухает язык.","У вас болит голова.","У вас кружится голова.","Вам хочется спать."];

sleep (2 + (random 5));

if (KSS_hunger > 10 && KSS_hunger <= 40) then {
	systemChat format["%1", _ht]; 
} else { 
		if (KSS_hunger > 0 && KSS_hunger <= 10) then {
			systemChat format["%1", _htc];
			titletext ["У вас мутнится в глазах из-за голода!","PLAIN",1];
			2 fadeSound 0.2;
			"dynamicBlur" ppEffectEnable true; // enables ppeffect
			"dynamicBlur" ppEffectAdjust [18]; // intensity of blur
			"dynamicBlur" ppEffectCommit 6; // time till vision is fully blurred
			sleep 3;
			"dynamicBlur" ppEffectEnable true; // enables ppeffect
			"dynamicBlur" ppEffectAdjust [0]; // enables normal vision
			"dynamicBlur" ppEffectCommit 3; // time it takes to normal
			2 fadeSound 1;	//fades the sound back to normal
		} else {
				if (KSS_hunger == 0) then {
					execVM "character-states\heart-beat.sqf";
					player forceWalk true;
					titletext ["Вы умираете от голода...","BLACK OUT",4];
					sleep 8;
					[player, "breath_suffocation_2", 50] call CBA_fnc_globalSay3d;
					sleep 3.7;
					titletext ["Вы умираете от голода...","BLACK IN",4];
					format["Кто-то умер от голода."] remoteExec ["systemChat"];
					player setDamage 1;
					
				};
		}
	};
								
sleep (2 + (random 5));
		
if (KSS_thirst > 10 && KSS_thirst < 40) then {
	systemChat format["%1", _tt]; 
} else { 
		if (KSS_thirst > 0 && KSS_thirst <= 10) then {
			systemChat format["%1", _ttc];
			titletext ["У вас кружиться голова из-за жажды!","PLAIN",2];
			2 fadeSound 0.2;
			"dynamicBlur" ppEffectEnable true; // enables ppeffect
			"dynamicBlur" ppEffectAdjust [18]; // intensity of blur
			"dynamicBlur" ppEffectCommit 6; // time till vision is fully blurred
			sleep 3;
			"dynamicBlur" ppEffectEnable true; // enables ppeffect
			"dynamicBlur" ppEffectAdjust [0]; // enables normal vision
			"dynamicBlur" ppEffectCommit 3; // time it takes to normal
			2 fadeSound 1;	//fades the sound back to normal
		} else {
				if (KSS_thirst == 0) then {
					execVM "character-states\heart-beat.sqf";
					player forceWalk true;
					"dynamicBlur" ppEffectEnable true; // enables ppeffect
					"dynamicBlur" ppEffectAdjust [8]; // intensity of blur
					"dynamicBlur" ppEffectCommit 2; // time till vision is fully blurred
					sleep 1;
					"dynamicBlur" ppEffectEnable true; // enables ppeffect
					"dynamicBlur" ppEffectAdjust [0]; // intensity of blur
					"dynamicBlur" ppEffectCommit 2; // time till vision is fully blurred
					sleep 4;
					titletext ["Вы умираете от обезвоживания...","plain",2];
					"dynamicBlur" ppEffectEnable true; // enables ppeffect
					"dynamicBlur" ppEffectAdjust [25]; // intensity of blur
					"dynamicBlur" ppEffectCommit 3; // time till vision is fully blurred
					sleep 3;
					[player, "breath_suffocation_2", 50] call CBA_fnc_globalSay3d;
					sleep 6;
					"dynamicBlur" ppEffectEnable true; // enables ppeffect
					"dynamicBlur" ppEffectAdjust [0]; // intensity of blur
					"dynamicBlur" ppEffectCommit 3; // time till vision is fully blurred
					format["Кто-то умер от жажды."] remoteExec ["systemChat"];
					player setDamage 1;
				};
		}
	};







