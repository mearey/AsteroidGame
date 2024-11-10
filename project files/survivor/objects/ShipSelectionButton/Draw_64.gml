draw_set_halign(fa_center)
draw_set_valign(fa_middle)

if spr1 != nocollision {
	draw_sprite_ext(spr1,0,x+lengthdir_x(5,point_direction(x,y,mouse_x,mouse_y)),y+lengthdir_y(5,point_direction(x,y,mouse_x,mouse_y)),2,2,0,c_white,1)
}

if (locked) {
	draw_sprite(LockedSprite,0,x+lengthdir_x(5,point_direction(x,y,instance_find(SelectorParent,0).x,instance_find(SelectorParent,0).y)),y+lengthdir_y(5,point_direction(x,y,mouse_x,mouse_y)))	
}

event_inherited()