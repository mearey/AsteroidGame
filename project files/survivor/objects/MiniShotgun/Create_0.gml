/// @description Insert description here
// You can write your code in this editor




// Inherit the parent event
event_inherited();
brand = "Will, Williams & Williamsons"
slot = 4
fire_rate = global.player.fire_rate*5;
accuracy = global.player.accuracy*10
projectile_speed = global.player.projectile_speed

description = "Short range aimed weapon that fires a spread of bullets"
damage = 6
function lvlUp() {
	if (lvl < 10) {
		lvl+=1
		fire_rate -= fire_rate/6
		projectile_speed += projectile_speed/8
	}  
	if lvl >= 10 {
		evolved = true
		removeWeaponFromPool(MiniShotgun)
	}
}