/// @description Insert description here
// You can write your code in this editor
event_inherited()
lighting_colour = c_red
projectile_speed = global.player.projectile_speed;
brand = "Scorb Systems"
accuracy = global.player.accuracy;

fire_rate = global.player.fire_rate;
fire_timer = fire_rate;

lvl = 1;

slot = 0
damage = 4
description = "Aimed basic laser repeater"

function lvlUp() {
	if (lvl < 10) {
		lvl+=1
		fire_rate -= fire_rate/7
	} 
	if lvl >= 10 {
		evolved = true
		removeWeaponFromPool(LaserMKI)
	}
}   