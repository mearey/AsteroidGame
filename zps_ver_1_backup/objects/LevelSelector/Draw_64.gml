/// @description Insert description here
// You can write your code in this editor
var direction_ = -180
x_ = surface_get_width(application_surface)/2 + lengthdir_x(500,direction_)
y_ = surface_get_height(application_surface)/2 + lengthdir_y(500,direction_)

draw_text(x_,y_,"BACK")

x_ = surface_get_width(application_surface)/2
y_ = surface_get_height(application_surface)/2

draw_circle(x_,y_,340-13,true)
draw_circle(x_,y_,340+18,true)
draw_self()