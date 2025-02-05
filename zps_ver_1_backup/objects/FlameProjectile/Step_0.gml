/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
if !global.pauseObj.paused {
	lifetime -= 1
}

if lifetime <= 0 {
	instance_destroy(self)	
}

if !global.pauseObj.paused {
if speed > 0 {
	speed -= 0.1;
}
life -= 1

x+= lengthdir_x(speed,direction)
y+= lengthdir_y(speed,direction)

image_xscale = size
image_yscale = size 

size+=0.05

if life<=0 {
	instance_destroy(self)	
}
}