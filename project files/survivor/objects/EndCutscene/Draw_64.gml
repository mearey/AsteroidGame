/// @description Insert description here
// You can write your code in this editor
if sprite_index != ending_cutsceneGLITCH {
	if random(5) < global.randomness {
		image_index = 1	
	} else {
		image_index = 0	
	}

	draw_sprite_ext(images[step], image_index, x,y, 2.8,2.8,0,c_white, al1)
	draw_sprite_ext(images[step+1], image_index, x,y, 2.8,2.8,0,c_white, al2)
}
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
		if random(4) < global.randomness {
			sprite_index = ending_cutsceneGLITCH
			image_speed = 1
		} else {
			room_goto(MainMenu)
		}
	}
}
x=0
y=0
draw_sprite_ext(sprite_index,image_index,0,0,2.8,2.8,0,c_white,1)