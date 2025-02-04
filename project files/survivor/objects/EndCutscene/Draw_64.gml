/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(images[step], 0, x,y, 2.8,2.8,0,c_white, al1)
draw_sprite_ext(images[step+1], 0, x,y, 2.8,2.8,0,c_white, al2)
if !fade_out {
	al1 -= 1/(50+step*5)
	al2 += 1/(50+step*5)
}
if al2 >= 1 {
	fade_out = true
}

if fade_out {
	al2 = 0
	al1 = 1
	step+=1
	fade_out = false
	if step >= array_length(images)-1 {
		room_goto(MainMenu)
	}
}