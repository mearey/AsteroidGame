/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
lighting_colour = c_yellow
target = instance_find(global.ship_selection,0)
projectile_speed = global.player.projectile_speed/2 + random_range(0,1)
size = 1
dir = point_direction(x,y,target.x,target.y)
exploded = false
lifetime = 1000
damage = 10
image_speed = 0
image_index = 0