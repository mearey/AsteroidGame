draw_set_halign(fa_center)
draw_set_valign(fa_middle)

if spr != nocollision {
	draw_sprite_ext(spr,0,x+lengthdir_x(5,point_direction(x,y,mouse_x,mouse_y))-sprite_get_width(sprite_index)/2+3+9,y+lengthdir_y(5,point_direction(x,y,mouse_x,mouse_y))- sprite_get_height(sprite_index)/2+3,0.02,0.02,0,c_white,1)
	draw_sprite_ext(spr1,0,x+lengthdir_x(5,point_direction(x,y,mouse_x,mouse_y))-sprite_get_width(sprite_index)/2+3+9,y+lengthdir_y(5,point_direction(x,y,mouse_x,mouse_y))- sprite_get_height(sprite_index)/2+3,0.02,0.02,0,c_white,1)
}

if (locked) {
	draw_sprite(LockedSprite,0,x+lengthdir_x(5,point_direction(x,y,instance_find(SelectorParent,0).x,instance_find(SelectorParent,0).y)),y+lengthdir_y(5,point_direction(x,y,mouse_x,mouse_y)))	
}