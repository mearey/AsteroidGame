/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
lighting_colour = c_yellow
target = PlayerObj
projectile_speed = global.player.projectile_speed/2 + random_range(0,1)
size = 1
dir = point_direction(x,y,mouse_x,mouse_y)
exploded = false
image_speed = 0
image_index = 0