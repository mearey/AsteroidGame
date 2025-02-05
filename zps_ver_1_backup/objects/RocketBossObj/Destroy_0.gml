/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

var inst = instance_create_depth(x,y,1,RocketBottomObj)
inst.image_angle = -phy_rotation
instance_create_depth(x,y,1,RocketTopObj)
inst.image_angle = -phy_rotation