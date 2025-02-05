/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if !(global.pauseObj.paused) {
if (collision_circle(x,y,8,global.ship_selection,false,true)) {
	physics_apply_impulse(x,y,lengthdir_x(-phy_speed,point_direction(x,y,global.player.x, global.player.y)), lengthdir_y(-phy_speed,point_direction(x,y,global.player.x, global.player.y)))	
} else {
	physics_apply_impulse(x,y,lengthdir_x(_speed,point_direction(x,y,global.player.x, global.player.y)), lengthdir_y(_speed,point_direction(x,y,global.player.x, global.player.y)))		
}
}