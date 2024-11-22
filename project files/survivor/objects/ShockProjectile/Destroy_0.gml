/// @description Insert description here
// You can write your code in this editor
if split {
	for (var i=0; i<6; i+=1) {
		var inst = instance_create_depth(x,y,1,ShockProjectile)
		inst.split = false
		inst.direction = 72*i
		inst.projectile_speed = 2
	}
	
}