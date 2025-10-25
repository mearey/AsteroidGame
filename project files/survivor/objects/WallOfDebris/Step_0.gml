/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if !(global.pauseObj.paused) {
	
spawn_timer_real-=1
if spawn_timer_real <=0 {
	spawn_timer_real = spawn_timer
	var arr =  [AsteroidObj, SatelliteObj, GunDebrisObj, RocketObj,AsteroidObj, SatelliteObj, GunDebrisObj, RocketObj, DebrisGrabberObj]
	var inst = arr[round(random_range(0,4))]
	instance_create_depth(x,y,1,inst)
}
	
	
move_cooldown -= 1;


if move_cooldown <= 0 {
	moves[random_range(0,array_length(moves))]()
}
}

if start_y < 0 {
	start_y+=1	
}

var cam_x = camera_get_view_x(view_get_camera(0))
var cam_y = camera_get_view_y(view_get_camera(0))

phy_speed_x = 0
phy_speed_y = 0
phy_linear_velocity_x = 0
phy_linear_velocity_y = 0
phy_angular_velocity = 0
phy_position_x = cam_x+surface_get_width(application_surface)/2
phy_position_y = max(0,cam_y+79+start_y)
phy_rotation = 0
//collisions
if (!global.pauseObj.paused){
	if (collision_rectangle(0,0,room_width,160, global.ship_selection,false,true)) {
		global.player.hp-=damage
		global.player.takeDamage()
	}

	if (collision_rectangle(0,0,room_width,161, BeamObj,false,true)) {
		takeDamage(global.player.dmg/25)
	}

	if (collision_rectangle(0,0,room_width,161, BeamObj_2xDamage,false,true)) {
		takeDamage(global.player.dmg/12)
	}

	if (collision_rectangle(0,0,room_width,161, LaserObj,false,true)) {
		takeDamage(global.player.dmg/1.5)
	}

	if (collision_rectangle(0,0,room_width,161, SwordObject,false,true)) {
		if SwordObject.x != global.player.x {
			takeDamage(global.player.dmg*4)
			var dir = point_direction(x,y,global.player.x, global.player.y)
			phy_speed_x = -lengthdir_x(1,dir)
			phy_speed_y = -lengthdir_y(1,dir)
			phy_position_x -= lengthdir_x(sprite_height/2,dir)
			phy_position_y -= lengthdir_y(sprite_height/2,dir)
		}
	}

	if (collision_rectangle(0,0,room_width,161, FlameProjectile,false,true)) {
		takeDamage(global.player.dmg/200)
		plasma+=2
	}
}


