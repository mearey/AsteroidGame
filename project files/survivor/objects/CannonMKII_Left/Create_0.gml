/// @description Insert description here
// You can write your code in this editor




// Inherit the parent event
event_inherited();
brand = "Will, Williams & Williamsons"
lighting_colour = c_gray
slot = 1
fire_rate = global.player.fire_rate*2;
description = "An aimed weapon that fires bullets at a reasonable rate"
damage = 5
function lvlUp() {
	if (lvl < 10) {
		lvl+=1
		fire_rate -= fire_rate/4
		projectile_speed += 2
	} 
	if lvl >= 10 {
		evolved = true
		removeWeaponFromPool(CannonMKII_Left)
	}
}