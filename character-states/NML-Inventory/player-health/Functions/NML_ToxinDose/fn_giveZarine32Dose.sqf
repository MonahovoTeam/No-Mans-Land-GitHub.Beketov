/*
    File: fn_giveZarine32Dose
    Author: Grozovsky
    Arguments :
        0 - (SCALAR) damage
*/

NMLZrn32Dose = NMLZrn32Dose + (_this select 0);
NMLZrn32Dose = NMLZrn32Dose min 100;
NMLZrn32Dose = NMLZrn32Dose max 0;

if (NMLZrn32Dose < 0) then {
	NMLZrn32Dose = 0;
};