/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

depth = 2

traded = false

timer = 300

image_speed = 0
image_index = 0

image_xscale = 1.5
image_yscale = 1.5

//	x_ = camx*0.5+room_width/4
//	y_ = camy*0.5-room_height/4

// x+x_
// y+y_
x = random_range(0,room_width)
if random(1)<0.5 {
	y = room_height + 360
} else {
	y = -360	
}
dir = point_direction(x+x_,y+y_,global.player.x,global.player.y)
alarm[1] = 10
