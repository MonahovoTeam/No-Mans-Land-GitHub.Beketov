// [No Man's Land] Brain Damage
NMLBrDmg = 0;

// [No Man's Land] Gastro Damage
NMLGaDmg = 0;

// [No Man's Land] Lung Damage
NMLLuDmg = 0;

// [No Man's Land] Nevro Damage
NMLNeDmg = 0;

// [No Man's Land] Kidneys Damage
NMLKdDmg = 0;

execVM "character-states\NML-Inventory\player-health\Hunger\hungerDamage_init.sqf";
execVM "character-states\NML-Inventory\player-health\DamageCheck\NML_HealthCheckInit.sqf";
execVM "character-states\NML-Inventory\player-health\NML_PlayerHealthDebug.sqf";