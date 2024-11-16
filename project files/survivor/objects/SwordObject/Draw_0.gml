/// @description Insert description here
// You can write your code in this editor
part_type_orientation(global.swordtrail, image_angle,image_angle,0,0,0)
part_type_direction(global.swordtrail,0,0,0,0);
part_type_size(global.swordtrail, image_xscale, image_xscale, 0,0)
part_particles_create(global.p_system, x, y, global.swordtrail, 5);	
draw_self()