/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//try changing to rectangle collsion
//try reducing rate of checks

if !(global.pauseObj.paused) {
if (collision_circle(x,y,8,global.ship_selection,false,true)) {
	physics_apply_impulse(x,y,lengthdir_x(-phy_speed,point_direction(x,y,global.player.x, global.player.y)), lengthdir_y(-phy_speed,point_direction(x,y,global.player.x, global.player.y)))	
} else {
	physics_apply_impulse(x,y,lengthdir_x(_speed,point_direction(x,y,global.player.x, global.player.y)), lengthdir_y(_speed,point_direction(x,y,global.player.x, global.player.y)))		
}
}

check_timer-=1

if check_timer <= 0 {
	if combine_time >=200 {
		var list = ds_list_create()
		num = collision_circle_list(x,y,20,EnemyOrbObj,false,true,list,false)
		ds_list_destroy(list)
	} else {
		num = 4
	}
	check_timer=1
}

if num>=4 {
	combine_time -= 1
	if combine_time <= 0 {
		var list = ds_list_create()
		if collision_circle_list(x,y,20,EnemyOrbObj,false,true,list,false) >= 4 {
			var newsize = size/2
	
			for (var i = 0; i<4; i+=1) {
				newsize += list[| i].size/2
			
				instance_destroy(list[| i])
			}
			instance_destroy(self)
			var combined = instance_create_depth(x,y,1,EnemyOrbObj)
			combined.size = newsize
			combined.image_xscale = newsize
			combined.image_yscale = newsize
			combined.size = newsize
			combined.image_angle = image_angle
			combined.phy_speed_x = phy_speed_x
			combined.phy_speed_y= phy_speed_y
			combined.physics_fixture_create_()
			combined.lighting_size = 2*newsize
		}
		ds_list_destroy(list)
	}
} else {
	combine_time = 200
}
