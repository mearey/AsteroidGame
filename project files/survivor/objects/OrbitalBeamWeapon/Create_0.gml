/// @description Insert description here
// You can write your code in this editor
event_inherited()
slot = 8
brand = "L.U.N.A Prospecting"
fire_rate = global.player.fire_rate*6;
projectile_speed = 10

accuracy = 10

damage = 1
projectile_speed = 10

number_beams = 2;
lvl = 1;
description = "Orbits the ship and constantly beams nearby enemies"

function lvlUp() {
	if (lvl < 10) {
		lvl+=1
		number_beams+=2;
	} 
	if lvl >= 10 {
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