/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
dir += 0.4
if dir > 360 {
	dir = 0	
}
event_inherited();
if hp <= max_hp*2/3 {
	if hp <= max_hp/3 {
		sprite_index = level5_boss_phasethird
		phy_rotation = 0
		physics_apply_impulse(x,y,lengthdir_x(100,point_direction(x,y,PlayerObj.x,PlayerObj.y)),lengthdir_y(200,point_direction(x,y,PlayerObj.x,PlayerObj.y)))
		moves = [
			function move3() {
				move_cooldown = 5
				instance_create_depth(room_width/2,room_height/2, depth, GreenSkullObj, {sprite_index: choose(mite1,mite2,mite3)})
			},
			function move2() {
				move_cooldown = 20
				repeat 1 {
					instance_create_depth(random_range(0,room_width),random_range(0,room_height),depth,EnemyMissile, {sprite_index: Buddy_Cyl_Orb})
				}
			}
		]
	} else {
		sprite_index = level5_boss_phases2
		phy_position_x = centerx + lengthdir_x(350, dir)
		phy_position_y = centery + lengthdir_y(350, dir)
		phy_rotation = 0
		moves = [
			function move0() {
				move_cooldown = 5
				instance_create_depth(room_width/2,room_height/2, depth, GreenSkullObj, {sprite_index: choose(mite1,mite2,mite3)})
			},
			function move10() {
				move_cooldown = 30
				repeat 3 {
					instance_create_depth(x,y,depth,EnemyMissile, {sprite_index: Buddy_Cyl_Orb})
				}
			},
			function move000() {
				move_cooldown = 5
				instance_create_depth(room_width/2,room_height/2, depth, GreenSkullObj, {sprite_index: choose(mite1,mite2,mite3)})
			},
			function move1() {
				move_cooldown = 30
				repeat 3 {
					instance_create_depth(x,y,depth,EnemyMissile, {sprite_index: Buddy_Cyl_Orb})
				}
			},
			function move00000() {
				move_cooldown = 5
				instance_create_depth(room_width/2,room_height/2, depth, GreenSkullObj, {sprite_index: choose(mite1,mite2,mite3)})
			},
			function move100() {
				move_cooldown = 30
				repeat 3 {
					instance_create_depth(x,y,depth,EnemyMissile, {sprite_index: Buddy_Cyl_Orb})
				}
			},
			function move00() {
				move_cooldown = 400
				centery = random_range(400,room_height-400)
				centerx = random_range(400,room_width-400)
			}
		]
	}
	
} else {
	phy_speed_x = 0
	phy_speed_y = 0
	phy_linear_velocity_x = 0
	phy_linear_velocity_y = 0
	phy_angular_velocity = 0
	phy_position_x = room_width/2
	phy_position_y = room_height/2
	phy_rotation = 0
}

if instance_exists(PauseSelector) && !global.pauseObj.paused {
	instance_destroy(PauseSelector)	
}



if !global.pauseObj.paused {
	EnemyCollisions()
	move_cooldown -= 1;
	
	if move_cooldown <= 0 {
		moves[random_range(0,array_length(moves))]()
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
		phy_speed_y -= 1
	}

	if phy_speed_x > 2 {
		phy_speed_x = 2
	} else if phy_speed_x < -2 {
		phy_speed_x = -2
	}

	if phy_speed_y > 2 {
		phy_speed_y = 2	
	} else if phy_speed_y < -2 {
		phy_speed_y = -2	
	}
}
lighting_size = 10