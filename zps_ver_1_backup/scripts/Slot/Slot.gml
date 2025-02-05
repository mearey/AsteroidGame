// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Slot(weapon){
	var wep_ = instance_create_depth(0,0,1,weapon)
	var res = wep_.slot
	instance_destroy(wep_)
	return res
}

function WeaponLevel(weapon) {
	var count = 0;
	for (var i = 0; i < array_length(global.player.weapons); i++) {
		if (global.player.weapons[i] == weapon) {
			count += 1;	
		}
	}
	return count
}

function RemoveWeapon(weapon) {
	for (var i=0; i<array_length(global.player.unique_weapons); i++;) {
		if (weapon == global.player.unique_weapons[i]) {
			array_delete(global.player.unique_weapons,i,1)	
		}
	}
	for (var i=0; i<array_length(global.player.weapons); i++;) {
		if (weapon == global.player.weapons[i]) {
			array_delete(global.player.weapons,i,1)	
		}
	}
	for (var i=0; i<array_length(global.player.equipped_weapons); i++;) {
		if (weapon == global.player.equipped_weapons[i]) {
			global.player.equipped_weapons[i] = Weapon
		}
	}
}