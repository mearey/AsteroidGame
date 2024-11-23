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

if phy_speed_x > 3 {
	phy_speed_x = 3	
} else if phy_speed_x < -3 {
	phy_speed_x = -3	
}

if phy_speed_y > 3 {
	phy_speed_y = 3	
} else if phy_speed_y < -3 {
	phy_speed_y = -3
}


if !connected { 
	var max_distance = 0;
	var farthest = id;

	with (Slime)
	{
	    var distance = point_distance(other.x, other.y, x, y);
	    if (distance > max_distance)
	    {
	        max_distance = distance;
	        farthest = id;
	    }
	}

	if (farthest != id)
	{
		var dir = point_direction(x,y,farthest.x,farthest.y)
		physics_apply_impulse(x,y, lengthdir_x(3*speed,dir), lengthdir_y(3*speed,dir))
	}
	var list = ds_list_create()
	if collision_circle_list(x,y,16,Slime,false,true,list,false) {
		if !list[| 0].connected {
			physics_joint_distance_create(self,list[| 0], x,y, list[| 0].x, list[| 0].y, false)
			connected = true
			list[| 0].speed += speed
		}
	}
	
	ds_list_destroy(list)
}
phy_rotation = 0