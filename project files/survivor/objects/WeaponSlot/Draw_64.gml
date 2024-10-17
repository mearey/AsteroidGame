/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor
draw_sprite(sprite_index, 0, x-cam_x,y-cam_y)
x_ = x -cam_x
y_ = y-cam_y
closeness = 0
if dragging {
	x_ = mouse_x-cam_x
	y_ = mouse_y-cam_y
	if (synergy != -1) {
		closeness = point_distance(mouse_x-cam_x,mouse_y-cam_y,synergy.x,synergy.y)/10
	}
}
if !grey {
	draw_sprite_ext(sprite_index,0,x_,y_,1,1,0,c_gray,1)
} else {
	draw_sprite_ext(sprite_index,0,x_,y_,1.15,1.15,0,c_yellow,1)
}
if (weapon!=Weapon) {
	if (blue) {
		draw_sprite_ext(object_get_sprite(weapon),1,x_,y_,2.1,2.1,90,c_aqua,1)
	}
	draw_sprite_ext(sprite_index,0,x_,y_,1,1,0,c_white,1)
	draw_sprite_ext(object_get_sprite(weapon),2,x_,y_,2,2,90,c_white,1)
	if (green) {
		if (closeness != 0) {
			draw_sprite_ext(object_get_sprite(weapon),1,x_,y_,2.1+1/closeness,2.1+1/closeness,90,c_lime,1)
		} else {
			draw_sprite_ext(object_get_sprite(weapon),1,x_,y_,2.1,2.1,90,c_lime,1)
		}
		if dragging {
			draw_line_color(mouse_x-cam_x+random_range(-closeness,closeness), mouse_y-cam_y+random_range(-closeness,closeness), synergy.x+random_range(-closeness,closeness) ,synergy.y+random_range(-closeness,closeness) , c_lime, c_white)
			draw_line_color(mouse_x-cam_x+random_range(-closeness,closeness), mouse_y-cam_y+random_range(-closeness,closeness), synergy.x+random_range(-closeness,closeness) ,synergy.y+random_range(-closeness,closeness) , c_white, c_lime)
		}
	}
	
} else {
	draw_text(x_,y_,string(slot))
}