/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


if !global.pauseObj.paused {
	
}

inst.image_angle = -phy_rotation

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
