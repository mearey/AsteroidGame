/// @description Insert description here
// You can write your code in this editor
event_inherited()
lighting_colour = c_blue
projectile_speed = global.player.projectile_speed;

accuracy = global.player.accuracy/2;

fire_rate = global.player.fire_rate*4.3;
fire_timer = fire_rate;

lvl = 1;
brand = "PIRATE"

shockrange = 1
slot = 9
scrap = 200
description = "Fires ONE BIG BULLET"
damage = 6
function lvlUp() {
	if (lvl < 10) {
		lvl+=1
		fire_rate -= fire_rate/7
		shockrange += 0.3
	} 
	if lvl >= 10 {
		evolved = true
		removeWeaponFromPool(Cannon)
	}
}