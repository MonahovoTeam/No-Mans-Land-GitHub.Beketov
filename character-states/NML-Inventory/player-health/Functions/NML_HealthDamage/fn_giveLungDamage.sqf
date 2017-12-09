/*
    File: fn_giveLungDamage
    Author: Grozovsky
    Arguments :
        0 - (SCALAR) damage
*/

NML_LungDamage = NML_LungDamage + (_this select 0);
NML_LungDamage = NML_LungDamage min 100;

if (NML_LungDamage < 0) then {
	NML_LungDamage = 0;
};