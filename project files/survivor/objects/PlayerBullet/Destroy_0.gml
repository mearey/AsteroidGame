/// @description Insert description here
// You can write your code in this editor
if (is_undefined(phy_linear_velocity_y)) {
	var dir = image_angle
} else {
	var dir = point_direction(0,0,phy_linear_velocity_x,phy_linear_velocity_y)
}
var dir1 = image_angle

for (var i = 0; i < 3; i++) {
	part_type_sprite(global.deadbullet,sprite_index,true,0,0)
	part_type_orientation(global.deadbullet, dir1-5,dir1+5,0,0,0)
	part_type_direction(global.deadbullet,dir-5,dir+5,0,0);
	part_particles_create(global.p_system, x, y, global.deadbullet, 5);	
	part_type_speed(global.deadbullet,projectile_speed/2,projectile_speed/2,-1,0); 
}