/// @description Insert description here
// You can write your code in this editor
part_system_drawit(p_system);

var inst = instance_create_depth(x,y,0,display_ship)
draw_sprite_ext(inst.sprite_index,0,x_,y_-150,9,9,90,c_white,1)
instance_destroy(inst)