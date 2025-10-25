/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if !global.pauseObj.paused {
	var dir = point_direction(x,y,global.player.x,global.player.y)
	phy_position_x += lengthdir_x(1.5,dir)
	phy_position_y += lengthdir_y(1.5,dir)
}