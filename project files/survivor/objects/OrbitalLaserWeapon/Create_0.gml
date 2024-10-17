/// @description Insert description here
// You can write your code in this editor
event_inherited()
slot = 6
projectile_speed = 0

accuracy = 0

fire_rate = 0
fire_timer = fire_rate;

number = 1;
lvl = 1;

function lvlUp() {
	if (lvl < 10) {
		lvl+=1
		number+=1;
	}  
	if lvl == 10 {
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