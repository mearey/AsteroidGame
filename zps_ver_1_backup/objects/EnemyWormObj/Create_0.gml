/// @description Insert description here
// You can write your code in this editor
event_inherited()

direction = point_direction(x,y,global.player.x,global.player.y)
move = false
length = random_range(10,50)
_speed = length/1.7
body = [self]
hp=3.5
xp=1
lighting_colour = c_purple
alarm[1] = 2