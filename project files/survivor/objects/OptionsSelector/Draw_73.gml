/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

draw_set_alpha(0.3)
draw_set_color(c_black)
draw_rectangle(camx,camy,camx+surface_get_width(application_surface),camy+surface_get_height(application_surface),false)
draw_set_color(c_white)

draw_circle(x_,y_,340-13,true)
draw_circle(x_,y_,340+18,true)
draw_self()
draw_set_alpha(1)

draw_circle(x_,y_,340-13,true)
draw_circle(x_,y_,340+18,true)
draw_self()