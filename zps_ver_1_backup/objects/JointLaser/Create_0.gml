/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
projectile_speed = global.player.projectile_speed;

accuracy = global.player.accuracy/2;
scrap = 125
fire_rate = global.player.fire_rate;
fire_timer = fire_rate;

damage = 4

lvl = 1;

slot = 0

function lvlUp() {
	if (lvl < 10) {
		lvl+=1
		fire_rate -= 2
	} else {
		evolved = true
		removeWeaponFromPool(JointLaser)
	}
}