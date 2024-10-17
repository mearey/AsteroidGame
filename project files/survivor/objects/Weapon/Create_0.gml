/// @description Insert description here
// You can write your code in this editor
event_inherited()
projectile_speed = global.player.projectile_speed;

accuracy = global.player.accuracy;

fire_rate = global.player.fire_rate;
fire_timer = fire_rate;

evolved = false

lvl = 1;

equipped = false

slot = 0

function lvlUp() {
	if (lvl < 10) {
		lvl+=1;	
	} else {
		evolved = true
		removeWeaponFromPool(self)
	}
}