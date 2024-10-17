draw_set_halign(fa_center)
draw_set_valign(fa_middle)

if spr != nocollision {
	draw_sprite_ext(spr,0,x-sprite_get_width(sprite_index)/2+3+9,y- sprite_get_height(sprite_index)/2+3,0.04,0.04,0,c_white,1)
	draw_sprite_ext(spr1,0,x-sprite_get_width(sprite_index)/2+3+9,y- sprite_get_height(sprite_index)/2+3,0.04,0.04,0,c_white,1)
}