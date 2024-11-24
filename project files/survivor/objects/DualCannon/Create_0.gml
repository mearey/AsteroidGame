/// @description Insert description here
// You can write your code in this editor




// Inherit the parent event
event_inherited();
slot = 1
damage = 5
fire_rate = global.player.fire_rate/1.5;
fire_timer = fire_rate;
function lvlUp() {
	if (lvl < 10) {
		lvl+=1
		fire_rate -= 0.5
		projectile_speed += 5
	} else {
		evolved = true
		removeWeaponFromPool(DualCannon)
	}
}