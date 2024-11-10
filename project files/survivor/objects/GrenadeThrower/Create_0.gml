/// @description Insert description here
// You can write your code in this editor




// Inherit the parent event
event_inherited();
description = "Aimed weapon with a slow fire rate that fires grenades that explode on impact"
lighting_colour = c_yellow
slot = 9
fire_rate = global.player.fire_rate*3;
accuracy = global.player.accuracy
damage = 6
function lvlUp() {
	if (lvl < 10) {
		lvl+=1
		fire_rate -= fire_rate/5
	}  
	if lvl >= 10 {
		evolved = true
		removeWeaponFromPool(GrenadeThrower)
	}
}