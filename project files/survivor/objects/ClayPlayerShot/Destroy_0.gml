/// @description Insert description here
// You can write your code in this editor
part_type_orientation(global.deadlaser, image_angle*0.6,image_angle*1.4,random_range(-10,10),0,0)
part_type_direction(global.deadlaser,0,360,0,0);
part_particles_create(global.p_system, x, y, global.deadlaser, 5);