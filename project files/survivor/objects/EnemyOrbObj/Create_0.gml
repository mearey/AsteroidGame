/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

function physics_fixture_create_() {
	var fixture = physics_fixture_create()	
	physics_fixture_set_box_shape(fixture, image_xscale*8,image_yscale*8)
	physics_fixture_set_collision_group(fixture,1)
	physics_fixture_bind(fixture,self)

}
check_timer = 120
num = 0
combine_time = 200