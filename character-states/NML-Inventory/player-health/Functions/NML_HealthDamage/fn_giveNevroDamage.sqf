/*
    File: fn_giveNevroDamage
    Author: Grozovsky
    Arguments :
        0 - (SCALAR) damage
*/

NMLNeDmg = NMLNeDmg + (_this select 0);
NMLNeDmg = NMLNeDmg min 100;

if (NMLNeDmg < 0) then {
	NMLNeDmg = 0;
};