/// @description Insert description here
// You can write your code in this editor
if (!global.pauseObj.paused){
	EnemyCollisions()

if stage == 1 {
	if phy_speed < 1 {
		phy_speed_x = random_range(-10,10)
		phy_speed_y = random_range(-10,10)
	}
	
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
	if  random(1) < 0.004 && !following {
		alarm[2] = 300
		following = true
		image_speed = 1
		sprite_index = secret_boss_phase_3_attack
	}
	
	if random(1) < 0.015 && !following {
		alarm[1] = 60
	}
	
	if following {
		var dir = point_direction(x,y,global.player.x,global.player.y)
		phy_speed_x = lengthdir_x(4,dir)
		phy_speed_y = lengthdir_y(4,dir)
	}
}
}