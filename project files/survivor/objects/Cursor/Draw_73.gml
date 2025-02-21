/// @description Insert description here
// You can write your code in this editor

if global.cursor_colour != 0 {
	draw_sprite_ext(cursor_sprite,0,mouse_x, mouse_y , 1.3, 1.3, 1, colour, 1)
	draw_sprite_ext(cursor_sprite,0,mouse_x, mouse_y, 0.7, 0.7, 1, colour, 1)
}