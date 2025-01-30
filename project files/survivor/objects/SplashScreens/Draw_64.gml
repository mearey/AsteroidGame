/// @description Insert description here
// You can write your code in this editor
draw_rectangle_color(0,0,9999,9999,c_black,c_black,c_black,c_black,false)
draw_sprite_ext(imagesbw[step], 0, x,y, 1,1,0,c_white, al1)
draw_sprite_ext(images[step], 0, x,y, 1,1,0,c_white, al2)
if !fade_out {
	al2+=1/120
}
if al2 >= 2 {
	fade_out = true
}

if fade_out {
	al2 -= 1/60
	al1 -= 1/60
	if al2 <= 0 {
		fade_out = false
		al2 -= 90
		alarm[0] = 10
	}
}