/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

for (var i = 0; i<array_length(body); i+=1) {

	if instance_exists(body[i]) {
		var inst = instance_create_depth(body[i].x,body[i].y,1,Explosion)
		instance_destroy(body[i])	
	} else {
		break	
	}
	inst.image_xscale=0.5
	inst.image_yscale=0.5
}