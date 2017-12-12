saveLoadout ={
/*
	Author: BlueCrab
	Version 0.1a

	Description:
	Save loadout to profileNamespace.

*/

	_loadout = getUnitLoadout player;
	_unitCash = player getVariable "HG_Cash";
	_unitBank = player getVariable "HG_Bank";

	// NML_pl_sv - No Man's Land Player Save
	_savedata = [_loadout, NMLZrn32Dose, NMLBrDmg, NMLGaDmg, NMLLuDmg, NMLNeDmg, NMLKdDmg, _unitCash, _unitBank];
	profileNamespace setVariable ["NML_pl_sv", _savedata];
	saveProfileNamespace;

	hintSilent "Saved!";
};

loadLoadout = {

	_savedata = profileNamespace getVariable "NML_pl_sv";


	removeAllAssignedItems player;
	removeAllItems player;
	clearAllItemsFromBackpack player;
	removeBackpack player;
	removeUniform player;
	removeVest player;
	removeHeadgear player;
	removeGoggles player;
	removeAllWeapons player;
	removeAllPrimaryWeaponItems player;
	removeAllHandgunItems player;

	_rloadout = _savedata select 0 ;
	_runitCash = _savedata select 7;
	_runitBank = _savedata select 8;

	player setUnitLoadout _rloadout;
	NMLZrn32Dose = _savedata select 1 ;
	NMLBrDmg = _savedata select 2 ;
	NMLGaDmg = _savedata select 3 ;
	NMLLuDmg = _savedata select 4 ;
	NMLNeDmg = _savedata select 5 ;
	NMLKdDmg = _savedata select 6 ;
	player setVariable ["HG_Cash", _runitCash, true];
	player setVariable ["HG_Bank", _runitBank, true];

	hint "Loaded";
};

plyHQ addAction ["<t color='#38BAFF'>Save Game</t>", {[] call saveLoadout;}];
plyHQ addAction ["<t color='#38BAFF'>Load Game</t>", {[] call loadLoadout;}];