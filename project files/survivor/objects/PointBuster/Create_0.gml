/// @description Insert description here
// You can write your code in this editor




// Inherit the parent event
event_inherited();
brand = "???"
lighting_colour = c_gray
slot = 3
fire_rate = global.player.fire_rate*2;
description = "???"
damage = 5
function lvlUp() {
	if (lvl < 10) {
		lvl+=1
		fire_rate -= fire_rate/6
		projectile_speed += 2
	} 
	if lvl >= 10 {
		evolved = true
		removeWeaponFromPool(PointBuster)
	}
}