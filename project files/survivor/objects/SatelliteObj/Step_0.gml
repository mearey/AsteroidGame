/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

var cam_x = camera_get_view_x(view_get_camera(0))
var cam_y = camera_get_view_y(view_get_camera(0))

if x < cam_x {	
	phy_speed_x += 1
}
if x > cam_x+surface_get_width(application_surface) {
	phy_speed_x -= 1
}
if y < cam_y {
	phy_speed_y += 1
}
if y > cam_y+surface_get_height(application_surface){
	phy_speed_y -=1
}

if phy_speed_x > 5 {
	phy_speed_x = 5	
} else if phy_speed_x < -5 {
	phy_speed_x = -5	
}

if phy_speed_y > 5 {
	phy_speed_y = 5	
} else if phy_speed_y < -5 {
	phy_speed_y = -5	
}