/// @description Insert description here
// You can write your code in this editor
var yellow = 100*size
if yellow > 255 {
	yellow = 255	
}
draw_sprite_ext(Flame,0,x,y,size,size,0,make_color_rgb(165,yellow/4,yellow),1/size)