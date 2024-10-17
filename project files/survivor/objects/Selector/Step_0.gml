/// @description Insert description here
// You can write your code in this editor

x_ = surface_get_width(application_surface)/2
y_ = surface_get_height(application_surface)/2
var direction_ = point_direction(x_,y_,mouse_x,mouse_y)
x = x_ + lengthdir_x(340,direction_)
y = y_ + lengthdir_y(340,direction_)
image_angle = direction_

with (Button) {
	hovered = false;
}

if active_button != instance_nearest(x,y,Button) {
	active_button = instance_nearest(x,y,Button)
	PlaySFX(buttonSwitch,1,1)
}
active_button.image_speed = 1
active_button.hovered = true
