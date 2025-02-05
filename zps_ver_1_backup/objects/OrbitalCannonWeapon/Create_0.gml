/// @description Insert description here
// You can write your code in this editor
event_inherited()
slot = 7

projectile_speed = global.player.projectile_speed*2;
fire_rate = global.player.fire_rate*6;
fire_timer = fire_rate;
description = "Orbits the ship and occasionaly fires a bullet at the nearest enemy"
number = 2;
lvl = 1;
damage = 5


function lvlUp() {
	if (lvl < 10) {
		lvl+=1
		number+=2;
	}  
	if lvl >= 10 {
		evolved = true
		removeWeaponFromPool(OrbitalCannonWeapon)
	}
}

function spawnOrbitals() {
	for (var i = number; i>0; i--;) {
		var orbital = instance_create_depth(x,y,1,OrbitalCannon)
		orbital.rotation = i*(360/number)
		orbital.fire_timer = i*(orbital.fire_rate/number)
	}
}