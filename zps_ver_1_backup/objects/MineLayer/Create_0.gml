/// @description Insert description here
// You can write your code in this editor
event_inherited()
projectile_speed = global.player.projectile_speed;

accuracy = global.player.accuracy;

fire_rate = global.player.fire_rate*5;
fire_timer = fire_rate;

lvl = 1;

slot = 0

description = "Drops explosive mines behind the ship that detonate on impact with any enemy"
damage = 6
function lvlUp() {
	if (lvl < 10) {
		lvl+=1
		fire_rate -= fire_rate/5
	} 
	if lvl >= 10 {
		evolved = true
		removeWeaponFromPool(MineLayer)
	}
}