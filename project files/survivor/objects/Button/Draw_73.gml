/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
//draw_self()
draw_text(x+lengthdir_x(5,point_direction(x,y,mouse_x,mouse_y)),y+lengthdir_y(5,point_direction(x,y,mouse_x,mouse_y)),text)


draw_sprite_ext(sprite_index,image_index,x+2+lengthdir_x(5,point_direction(x,y,instance_find(SelectorParent,0).x,instance_find(SelectorParent,0).y)),y+2+lengthdir_y(5,point_direction(x,y,mouse_x,mouse_y)),1,1,image_angle,c_aqua,0.5)
draw_sprite_ext(sprite_index,image_index,x-2+lengthdir_x(5,point_direction(x,y,instance_find(SelectorParent,0).x,instance_find(SelectorParent,0).y)),y-2+lengthdir_y(5,point_direction(x,y,mouse_x,mouse_y)),1,1,image_angle,c_red,0.5)
draw_sprite_ext(sprite_index,image_index,x+lengthdir_x(5,point_direction(x,y,instance_find(SelectorParent,0).x,instance_find(SelectorParent,0).y)),y+lengthdir_y(5,point_direction(x,y,mouse_x,mouse_y)),1,1,image_angle,c_white,1)
