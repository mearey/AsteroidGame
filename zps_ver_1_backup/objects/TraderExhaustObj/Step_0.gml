/// @description Insert description here
// You can write your code in this editor
event_inherited()
image_alpha-=0.035+random_range(0,0.03)

if image_alpha <= 0 {
	instance_destroy(self)	
}

x+=lengthdir_x(1,image_angle)
y+=lengthdir_y(1,image_angle)