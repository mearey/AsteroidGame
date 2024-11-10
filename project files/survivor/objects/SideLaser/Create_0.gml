/// @description Insert description here
// You can write your code in this editor
event_inherited()
lighting_colour = c_red
projectile_speed = global.player.projectile_speed;

accuracy = global.player.accuracy/2;

fire_rate = global.player.fire_rate*1.5;
fire_timer = fire_rate;

lvl = 1;

slot = 4

description = "Aimed basic laser repeater"
damage = 4
function lvlUp() {
	if (lvl < 10) {
		lvl+=1
		fire_rate -= fire_rate/4
	} 
	if lvl >= 10 {
		evolved = true
		removeWeaponFromPool(SideLaser)
	}
}