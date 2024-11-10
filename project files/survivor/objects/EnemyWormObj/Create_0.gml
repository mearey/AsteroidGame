/// @description Insert description here
// You can write your code in this editor
event_inherited()

direction = point_direction(x,y,global.player.x,global.player.y)
move = false
length = random_range(10,50)
_speed = length/1.7
body = []
hp=8
xp=3
lighting_colour = c_purple
alarm[1] = 2