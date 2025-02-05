if (dragging) {
	if (blue) {
	draw_sprite_ext(object_get_sprite(item),1,mouse_x-cam_x,mouse_y-cam_y,2.1,2.1,90,c_aqua,1)
	}

	if (green) {
		draw_sprite_ext(object_get_sprite(item),1,mouse_x-cam_x,mouse_y-cam_y,2.1,2.1,90,c_green,1)
	}
	draw_sprite(sprite_index,0,mouse_x-cam_x,mouse_y-cam_y)
	draw_sprite_ext(object_get_sprite(item),1,mouse_x-cam_x,mouse_y-cam_y,2,2,90,c_white,1)
} else {
	if (blue) {
	draw_sprite_ext(object_get_sprite(item),1,x-cam_x,y-cam_y,2.1,2.1,90,c_aqua,1)
	}

	if (green) {
		draw_sprite_ext(object_get_sprite(item),1,x-cam_x,y-cam_y,2.1,2.1,90,c_green,1)
	}
	if (mouse_x-cam_x < bbox_right-cam_x && mouse_x-cam_x > bbox_left-cam_x) && (mouse_y-cam_y > bbox_top-cam_y && mouse_y-cam_y < bbox_bottom-cam_y) {
		draw_sprite_ext(sprite_index,0,x-cam_x,y-cam_y,1,1,0,c_gray,1)
	} else {
		draw_sprite_ext(sprite_index,0,x-cam_x,y-cam_y,1,1,0,c_white,1)
	}
	draw_sprite_ext(object_get_sprite(item),2,x-cam_x,y-cam_y,2,2,90,c_white,1)
}

