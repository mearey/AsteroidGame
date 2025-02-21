/// @description Insert description here
// You can write your code in this editor
event_inherited()
lighting_colour = c_red
projectile_speed = global.player.projectile_speed/2;
brand = "???"
accuracy = 10

fire_rate = global.player.fire_rate*1.5;
fire_timer = fire_rate;

lvl = 1;

slot = 4

description = "???"
damage = 4
function lvlUp() {
	if (lvl < 10) {
		lvl+=1
		fire_rate -= 1+fire_rate/7
		accuracy += 15
	} 
	if lvl >= 10 {
		evolved = true
		removeWeaponFromPool(ZeroClaw)
	}
}