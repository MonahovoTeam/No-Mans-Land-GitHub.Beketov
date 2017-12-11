/*
    File: fn_giveNevroDamage
    Author: Grozovsky
    Arguments :
        0 - (SCALAR) damage
*/

NMLKdDmg = NMLKdDmg + (_this select 0);
NMLKdDmg = NMLKdDmg min 100;

if (NMLKdDmg < 0) then {
	NMLKdDmg = 0;
};