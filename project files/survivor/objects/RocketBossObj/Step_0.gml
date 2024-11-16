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
	
	if ((dir__)<(temp)) {
		dir__+=1	
	} else {
		dir__-=1	
	}	
	
	phy_rotation = -dir__-180
	
	phy_position_x += lengthdir_x(4,dir__)
	phy_position_y += lengthdir_y(4,dir__)
	
	var cam_x = camera_get_view_x(view_get_camera(0))
	var cam_y = camera_get_view_y(view_get_camera(0))

	if x < cam_x-100 {	
		phy_position_x = cam_x+surface_get_width(application_surface)+50
	}
	if x > cam_x+surface_get_width(application_surface) + 100 {
		phy_position_x = cam_x-50
	}
	if y < cam_y-100 {
		phy_position_y = cam_y+surface_get_height(application_surface)+50	
	}
	if y > cam_y+surface_get_height(application_surface) + 100 {
		phy_position_y = cam_y-50
	}
}
}