/*
    File: fn_giveLungDamage
    Author: Grozovsky
    Arguments :
        0 - (SCALAR) damage
*/

NML_GastroDamage = NML_GastroDamage + (_this select 0);
NML_GastroDamage = NML_GastroDamage min 100;

if (NML_GastroDamage < 0) then {
	NML_GastroDamage = 0;
};