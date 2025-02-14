/// @description Insert description here
// You can write your code in this editor
var dir = point_direction(x,y,global.player.x, global.player.y)

instance_create_depth(x,y,1,GiantClayShot).direction = dir
instance_create_depth(x,y,1,GiantClayShot).direction = dir+20
instance_create_depth(x,y,1,GiantClayShot).direction = dir-20