/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();



if !global.pauseObj.paused {
if init {
	
	part_type_color1(global.exhaust,c_lime)
	part_type_orientation(global.exhaust, phy_rotation,phy_rotation,0,0,0)
	part_particles_create(global.p_system, x+lengthdir_x(7,phy_rotation), y+lengthdir_y(7,phy_rotation), global.exhaust, 1);	

	var temp = point_direction(x,y,global.player.x,global.player.y)
	
	if ((dir_)<(temp)) {
		dir_+=1	
	} else {
		dir_-=1	
	}
	
	
	phy_rotation = -dir_-180
	
	phy_position_x += lengthdir_x(4,dir_)
	phy_position_y += lengthdir_y(4,dir_)
	
	var cam_x_ = camera_get_view_x(view_get_camera(0))
	var cam_y_ = camera_get_view_y(view_get_camera(0))

	if x <= (cam_x_-100) {	
		phy_position_x = cam_x_+surface_get_width(application_surface)+50
	}
	if x >= (cam_x_+surface_get_width(application_surface) + 100) {
		phy_position_x = cam_x_-50
	}
	if y <= (cam_y_-100) {
		phy_position_y = cam_y_+surface_get_height(application_surface)+50	
	}
	if y >= (cam_y_+surface_get_height(application_surface) + 100) {
		phy_position_y = cam_y_-50
	}
	
}
}