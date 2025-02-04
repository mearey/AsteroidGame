/// @description Insert description here
// You can write your code in this editor




// Inherit the parent event
event_inherited();
brand = "Astral Protection"
slot = 1
fire_rate = global.player.fire_rate*5
description = "Long range weapon that fires homing missles which explode on impact with any enemy"
damage = 6
function lvlUp() {
	if (lvl < 10) {
		lvl+=1
		fire_rate -= fire_rate/5
	} 
	if lvl >= 10 {
		evolved = true
		removeWeaponFromPool(MissileLauncher)
	}
}