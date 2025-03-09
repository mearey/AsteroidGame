/// @description Insert description here
// You can write your code in this editor
physics_apply_impulse(x,y,random_range(-10,10),random_range(-10,10))

if instance_exists(weapon) {
	if weapon.lvl >= 10 {
		instance_destroy(self)	
	}
}