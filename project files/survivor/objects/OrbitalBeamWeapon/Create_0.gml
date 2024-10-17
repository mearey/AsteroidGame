/// @description Insert description here
// You can write your code in this editor
event_inherited()
slot = 8
projectile_speed = 0

accuracy = 0

number_beams = 1;
lvl = 1;

function lvlUp() {
	if (lvl < 10) {
		lvl+=1
		number_beams+=1;
	} 
	if lvl == 10 {
		evolved = true
		removeWeaponFromPool(OrbitalBeamWeapon)
	}
}

function spawnOrbitals() {
	for (var i = number_beams; i>0; i--;) {
		var orbital = instance_create_depth(x,y,1,OrbitalBeam)
		orbital.rotation = i*(360/number_beams)
	}
}