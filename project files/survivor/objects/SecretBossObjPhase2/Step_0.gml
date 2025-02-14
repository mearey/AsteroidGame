/// @description Insert description here
// You can write your code in this editor
if (!global.pauseObj.paused){
	EnemyCollisions()

if stage == 1 {
	if phy_speed < 1 {
		phy_speed_x = random_range(-10,10)
		phy_speed_y = random_range(-10,10)
	}

	if random(1) < 0.015 {
		alarm[1] = 60
	}
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