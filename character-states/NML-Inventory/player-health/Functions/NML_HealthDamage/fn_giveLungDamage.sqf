/*
    File: fn_giveLungDamage
    Author: Grozovsky
    Arguments :
        0 - (SCALAR) damage
*/

NMLLuDmg = NMLLuDmg + (_this select 0);
NMLLuDmg = NMLLuDmg min 100;

if (NMLLuDmg < 0) then {
	NMLLuDmg = 0;
};