saveLoadout ={
/*
	Author: BlueCrab
	Version 1.0

	Description:
	Save loadout to profileNamespace.

*/

	_pos = getPosATL player;
	_dir = direction player;
	_loadout = getUnitLoadout player;

	_savedata = [_pos, _dir, _loadout];
	profileNamespace setVariable ["NML_save", _savedata];
	saveProfileNamespace;

	hintSilent "Saved!";
};

loadLoadout = {

	_savedata = profileNamespace getVariable "NML_save";


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

	hint "Loaded";
};

player addAction ["<t color='#38BAFF'>Save Game</t>", {[] call saveLoadout;}];
player addAction ["<t color='#38BAFF'>Load Game</t>", {[] call loadLoadout;}];