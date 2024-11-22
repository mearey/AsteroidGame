/// @description Insert description here
// You can write your code in this editor
if (dragging) {
	draw_sprite(sprite_index,0,mouse_x-cam_x,mouse_y-cam_y)
	draw_sprite_ext(object_get_sprite(item),1,mouse_x-cam_x,mouse_y-cam_y,2,2,90,c_white,1)
} else {

	if (mouse_x-cam_x < bbox_right-cam_x && mouse_x-cam_x > bbox_left-cam_x) && (mouse_y-cam_y > bbox_top-cam_y && mouse_y-cam_y < bbox_bottom-cam_y) {
		draw_sprite_ext(sprite_index,0,x-cam_x,y-cam_y,1,1,0,c_gray,1)
	} else {
		draw_sprite_ext(sprite_index,0,x-cam_x,y-cam_y,1,1,0,c_white,1)
	}
	draw_sprite_ext(object_get_sprite(item),2,x-cam_x,y-cam_y,2,2,90,c_white,1)
	
	if hovered && !dragging {
		Weapontip(sprite_get_name((object_get_sprite(item))),item,0)	
	}
	draw_set_halign(fa_left)
	draw_text(x-cam_x+40,y-cam_y,"COST: " + string(cost))
}