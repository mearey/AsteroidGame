/// @description Insert description here
// You can write your code in this editor
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

var index = 0
if mouse_x > surface_get_width(application_surface)/2+200 {
	index = 3
} else if mouse_x < surface_get_width(application_surface)/2-200 {
	index = 2
} else {
	index = 0	
}

if !instance_exists(ShipSelectionSelector) {
	if (variable_global_exists("ship_selection")) {
		if !instance_exists(global.ship_selection) {
			var inst = instance_create_depth(x,y,0,global.ship_selection)
			draw_sprite_ext(inst.sprite_index,index,x_,y_,9,9,90,c_white,1)
			instance_destroy(inst)
		} else {
			draw_sprite_ext(global.ship_selection.sprite_index,index,x_,y_,9,9,90,c_white,1)
		}
	}
}