saveLoadout ={
/*
	Author: BlueCrab
	Version 0.1a

	Description:
	Save loadout to profileNamespace.

*/

	_pos = getPosATL player;
	_dir = direction player;
	_loadout = getUnitLoadout player;

	// NML_pl_sv - No Man's Land Player Save
	_savedata = [_pos, _dir, _loadout, NMLZrn32Dose];
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

	_rpos = _savedata select 0 ;
	_rdir = _savedata select 1 ;
	_rloadout = _savedata select 2 ;

	player setPosATL _rpos;
	player setDir _rdir;
	player setUnitLoadout _rloadout;
	NMLZrn32Dose = _savedata select 3 ;

	hint "Loaded";
};

plyHQ addAction ["<t color='#38BAFF'>Save Game</t>", {[] call saveLoadout;}];
plyHQ addAction ["<t color='#38BAFF'>Load Game</t>", {[] call loadLoadout;}];