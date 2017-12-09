/*
    File: fn_giveLungDamage
    Author: Grozovsky
    Arguments :
        0 - (SCALAR) damage
*/

NML_NevroDamage = NML_NevroDamage + (_this select 0);
NML_NevroDamage = NML_NevroDamage min 100;

if (NML_NevroDamage < 0) then {
	NML_NevroDamage = 0;
};