/*
    File: fn_giveBrainDamage
    Author: Grozovsky
    Arguments :
        0 - (SCALAR) damage
*/

NMLBrDmg = NMLBrDmg + (_this select 0);
NMLBrDmg = NMLBrDmg min 100;

if (NMLBrDmg < 0) then {
	NMLBrDmg = 0;
};