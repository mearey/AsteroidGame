/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
ini_open("save_game_state.ini")
//draw_self()
if future {
	text = "COMING SOON"	
}
try {
var	game_exists = ini_read_real("STATE","position_x", 0)
show_debug_log(game_exists)
if text == "CONTINUE" && !game_exists {
draw_sprite_ext(sprite_index,image_index,x+2+lengthdir_x(5,point_direction(x,y,instance_find(SelectorParent,0).x,instance_find(SelectorParent,0).y)),y+2+lengthdir_y(5,point_direction(x,y,mouse_x,mouse_y)),1,1,image_angle,c_aqua,0.3)
draw_sprite_ext(sprite_index,image_index,x-2+lengthdir_x(5,point_direction(x,y,instance_find(SelectorParent,0).x,instance_find(SelectorParent,0).y)),y-2+lengthdir_y(5,point_direction(x,y,mouse_x,mouse_y)),1,1,image_angle,c_red,0.3)
draw_sprite_ext(sprite_index,image_index,x+lengthdir_x(5,point_direction(x,y,instance_find(SelectorParent,0).x,instance_find(SelectorParent,0).y)),y+lengthdir_y(5,point_direction(x,y,mouse_x,mouse_y)),1,1,image_angle,c_white,0.3)
draw_set_color(c_white)
draw_text_ext_transformed_color(x-image_index/13+lengthdir_x(5,point_direction(x,y,mouse_x,mouse_y)),y-image_index/13+lengthdir_y(5,point_direction(x,y,mouse_x,mouse_y)),text, 20, 128, 1, 1, 0, c_red, c_red, c_red, c_red, image_index/20)
draw_text_ext_transformed_color(x+image_index/13+lengthdir_x(5,point_direction(x,y,mouse_x,mouse_y)),y+image_index/13+lengthdir_y(5,point_direction(x,y,mouse_x,mouse_y)),text, 20, 128, 1, 1, 0, c_aqua, c_aqua, c_aqua, c_aqua,image_index/20)
} else {
draw_sprite_ext(sprite_index,image_index,x+2+lengthdir_x(5,point_direction(x,y,instance_find(SelectorParent,0).x,instance_find(SelectorParent,0).y)),y+2+lengthdir_y(5,point_direction(x,y,mouse_x,mouse_y)),1,1,image_angle,c_aqua,0.5)
draw_sprite_ext(sprite_index,image_index,x-2+lengthdir_x(5,point_direction(x,y,instance_find(SelectorParent,0).x,instance_find(SelectorParent,0).y)),y-2+lengthdir_y(5,point_direction(x,y,mouse_x,mouse_y)),1,1,image_angle,c_red,0.5)
draw_sprite_ext(sprite_index,image_index,x+lengthdir_x(5,point_direction(x,y,instance_find(SelectorParent,0).x,instance_find(SelectorParent,0).y)),y+lengthdir_y(5,point_direction(x,y,mouse_x,mouse_y)),1,1,image_angle,c_white,1)
draw_set_color(c_white)
draw_text_ext_transformed_color(x-image_index/13+lengthdir_x(5,point_direction(x,y,mouse_x,mouse_y)),y-image_index/13+lengthdir_y(5,point_direction(x,y,mouse_x,mouse_y)),text, 20, 128, 1, 1, 0, c_red, c_red, c_red, c_red, image_index/20)
draw_text_ext_transformed_color(x+image_index/13+lengthdir_x(5,point_direction(x,y,mouse_x,mouse_y)),y+image_index/13+lengthdir_y(5,point_direction(x,y,mouse_x,mouse_y)),text, 20, 128, 1, 1, 0, c_aqua, c_aqua, c_aqua, c_aqua,image_index/20)
draw_text_ext_transformed(x+lengthdir_x(5,point_direction(x,y,mouse_x,mouse_y)),y+lengthdir_y(5,point_direction(x,y,mouse_x,mouse_y)),text, 20, 128, 1, 1, 0)
}
} catch (err) {
	
}


ini_close()