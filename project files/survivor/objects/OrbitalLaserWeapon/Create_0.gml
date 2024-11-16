/// @description Insert description here
// You can write your code in this editor
event_inherited()
slot = 6
projectile_speed = global.player.projectile_speed*1.2
fire_rate = global.player.fire_rate*6;
fire_timer = fire_rate;
accuracy = global.player.accuracy*4
description = "Orbits the ship and occasionaly fires a laser at the nearest enemy"
number = 2;
lvl = 1;
damage = 4

function lvlUp() {
	if (lvl < 10) {
		lvl+=1
		number+=2;
	}  
	if lvl >= 10 {
		evolved = true
		removeWeaponFromPool(OrbitalLaserWeapon)
	}
}

function spawnOrbitals() {
	for (var i = number; i>0; i--;) {
		var orbital = instance_create_depth(x,y,1,OrbitalLaser)
		orbital.rotation = i*(360/number)
		orbital.fire_timer = i*(orbital.fire_rate/number)
	}
}