/*
    File: fn_giveLungDamage
    Author: Grozovsky
    Arguments :
        0 - (SCALAR) damage
*/

NML_BrainDamage = NML_BrainDamage + (_this select 0);
NML_BrainDamage = NML_BrainDamage min 100;

if (NML_BrainDamage < 0) then {
	NML_BrainDamage = 0;
};