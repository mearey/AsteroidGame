/// @description Insert description here
// You can write your code in this editor




// Inherit the parent event
event_inherited();
slot = 3
fire_rate = global.player.fire_rate/4;
accuracy = global.player.accuracy*15
projectile_speed = global.player.projectile_speed/1.5
on = false
function lvlUp() {
	if (lvl < 10) {
		lvl+=1
		fire_rate -= fire_rate/4
		projectile_speed += 0.5
	}  
	if lvl == 10 {
		evolved = true
		removeWeaponFromPool(Flamethrower_)
	}
}