/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if !global.pauseObj.paused {
direction = point_direction(x,y,global.player.x,global.player.y)

if -phy_rotation < direction-180 {
	phy_rotation-=1
} else {
	phy_rotation+=1	
}
image_angle = direction
if move {
	physics_apply_impulse(x,y,lengthdir_x(_speed,direction),lengthdir_y(_speed,direction))
}
}
