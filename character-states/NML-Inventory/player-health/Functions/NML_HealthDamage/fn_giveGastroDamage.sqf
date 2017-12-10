/*
    File: fn_giveGastroDamage
    Author: Grozovsky
    Arguments :
        0 - (SCALAR) damage
*/

NMLGaDmg = NMLGaDmg + (_this select 0);
NMLGaDmg = NMLGaDmg min 100;

if (NMLGaDmg < 0) then {
	NMLGaDmg = 0;
};