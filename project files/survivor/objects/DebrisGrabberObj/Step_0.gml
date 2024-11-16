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

with (Enemy) {
	var dist = point_distance(other.x,other.y,x,y)
	try {
		if object_index != DebrisGrabberObj.object_index {
			if dist < 60 {
				if !array_contains(other.grabbed, self) && other.object_index!=WallOfDebris {
					array_push(other.grabbed,self)
					physics_joint_distance_create(self,other, x,y,other.x,other.y,true)
				}
			}
		}
	} catch (err) {
		log(err)
	}
}

if init {
	physics_apply_impulse(x,y,lengthdir_x(_speed,point_direction(x,y,global.player.x, global.player.y)), lengthdir_y(_speed,point_direction(x,y,global.player.x, global.player.y)))			
}