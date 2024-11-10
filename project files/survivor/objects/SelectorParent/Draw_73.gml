/// @description Insert description here
// You can write your code in this editor
part_system_drawit(p_system);

if (variable_global_exists("ship_selection")) {
	if !instance_exists(global.ship_selection) {
		var inst = instance_create_depth(x,y,0,global.ship_selection)
		draw_sprite_ext(inst.sprite_index,0,x_,y_,9,9,90,c_white,1)
		instance_destroy(inst)
	} else {
		draw_sprite_ext(global.ship_selection.sprite_index,0,x_,y_,9,9,90,c_white,1)
	}
		
}