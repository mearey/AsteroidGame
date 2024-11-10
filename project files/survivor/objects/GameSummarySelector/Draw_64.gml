/// @description Insert description here
// You can write your code in this editor
// draw post game stats

var text_positions = [100+scroll,150+scroll,200+scroll,250+scroll,300+scroll,350+scroll,400+scroll]


draw_circle(x_,y_,340-13,true)

if instance_exists(PostGameStats) {
	draw_set_font(TitleFont)
	if (PostGameStats.win = true) {
	 	draw_text(room_width/2,100,"YOU WIN")
	} else {
		draw_text(room_width/2,100,"YOU DIED")
	}
	draw_set_font(DefaultFont)
	if (text_positions[0] >= 150 && text_positions[0] <= 600) {
		draw_text(room_width/2,text_positions[0],"GOLD GAINED: " + string(PostGameStats.gold_gained))
	}
	if (text_positions[1] >= 150 && text_positions[1] <= 600) {
		draw_text(room_width/2,text_positions[1],"ENEMIES DEFEATED: " + string(PostGameStats.enemies_defeated))
	}
	if (text_positions[2] >= 150 && text_positions[2] <= 600) {
		draw_text(room_width/2,text_positions[2],"EXP GAINED: " + string(PostGameStats.exp_gained))
	}
	if (text_positions[3] >= 150 && text_positions[3] <= 600) {
		draw_text(room_width/2,text_positions[3],"TIME: " + string(PostGameStats.time))
	}
	if (text_positions[4] >= 150 && text_positions[4] <= 600) {
		draw_text(room_width/2,text_positions[4],"FINAL WEAPONS: ")
	}
	if (text_positions[5] >= 150 && text_positions[5] <= 600) {
		var i_2 = 0
		for (var i = 0; i< array_length(PostGameStats.weapons); i+=1) {
			if PostGameStats.weapons[i] != Weapon {
				var item = instance_create_depth(x,y,0,PostGameStats.weapons[i])
				draw_sprite_ext(item.sprite_index,1,room_width/3+(int64(100*i_2) mod 500),text_positions[5]+100*floor(i_2/5),2,2,0,c_white,1)
				draw_text_ext(room_width/3+(int64(100*i_2) mod 500),text_positions[5]+100*floor(i_2/5)+50,string_replace(sprite_get_name(item.sprite_index), "_", " "),20,40)
				
				instance_destroy(item)
			} else {
				i_2-=1
			}
			i_2+=1
		}
	}
}


//scrolling behaviour

if (mouse_wheel_up()) {
	scroll -= 10
} else if mouse_wheel_down() {
	scroll += 10
}

if mouse_check_button(mb_any) {
	var diff = mouse_y - mouse_pos
	scroll+=diff
	mouse_pos = mouse_y
}
//-125 min, 500 max
if scroll < -125 {
	scroll = -125	
} else if scroll > 500 {
	scroll = 500	
}


draw_circle(x_,y_,340+18,true)
draw_self()