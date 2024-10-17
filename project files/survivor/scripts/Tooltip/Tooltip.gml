// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Tooltip(text){
	cam_x = camera_get_view_x(view_camera[0])
	cam_y = camera_get_view_y(view_camera[0])
	cam_width = camera_get_view_width(view_camera[0])
	if (mouse_x<bbox_right and mouse_x > bbox_left and mouse_y < bbox_bottom and mouse_y > bbox_top) {
		if mouse_x > cam_x + cam_width/2 {
			text = string_replace_all(text,"_", " ")
			draw_set_valign(fa_top)
			draw_set_halign(fa_left)
			draw_rectangle(mouse_x-cam_x-1, mouse_y-cam_y-1, mouse_x-cam_x +string_width(text)+1+20,mouse_y-cam_y+string_height(text)+1, false)
			draw_set_color(c_black)
			draw_rectangle(mouse_x-cam_x, mouse_y-cam_y, mouse_x-cam_x +string_width(text)+20,mouse_y-cam_y+string_height(text), false)
			draw_set_color(c_white)
			draw_text(mouse_x-cam_x+10, mouse_y-cam_y, text)
			draw_set_valign(fa_middle)
			draw_set_halign(fa_center)
		} else {
			text = string_replace_all(text,"_", " ")
			draw_set_valign(fa_top)
			draw_set_halign(fa_left)
			draw_rectangle(mouse_x-cam_x+1, mouse_y-cam_y-1, mouse_x-cam_x -(string_width(text)+1+20),mouse_y-cam_y+string_height(text)+1, false)
			draw_set_color(c_black)
			draw_rectangle(mouse_x-cam_x, mouse_y-cam_y, mouse_x-cam_x -(string_width(text)+20),mouse_y-cam_y+string_height(text), false)
			draw_set_color(c_white)
			draw_text(mouse_x-cam_x-(string_width(text)+1+20)+10, mouse_y-cam_y, text)
			draw_set_valign(fa_middle)
			draw_set_halign(fa_center)
		}
	}
}

function statTip(text) {
	cam_x = 0
	cam_y = 0
	cam_width = camera_get_view_width(view_camera[0])
	if (mouse_x<bbox_right and mouse_x > bbox_left and mouse_y < bbox_bottom and mouse_y > bbox_top) {
		if mouse_x > camera_get_view_x(view_camera[0]) + cam_width/2 {
			text = string_replace_all(text,"_", " ")
			draw_set_valign(fa_top)
			draw_set_halign(fa_left)
			draw_rectangle(mouse_x-cam_x-1, mouse_y-cam_y-1, mouse_x-cam_x +string_width(text)+1+20,mouse_y-cam_y+string_height(text)+1, false)
			draw_set_color(c_black)
			draw_rectangle(mouse_x-cam_x, mouse_y-cam_y, mouse_x-cam_x +string_width(text)+20,mouse_y-cam_y+string_height(text), false)
			draw_set_color(c_white)
			draw_text(mouse_x-cam_x+10, mouse_y-cam_y, text)
			draw_set_valign(fa_middle)
			draw_set_halign(fa_center)
		} else {
			text = string_replace_all(text,"_", " ")
			draw_set_valign(fa_top)
			draw_set_halign(fa_left)
			draw_rectangle(mouse_x-cam_x+1, mouse_y-cam_y-1, mouse_x-cam_x -(string_width(text)+1+20),mouse_y-cam_y+string_height(text)+1, false)
			draw_set_color(c_black)
			draw_rectangle(mouse_x-cam_x, mouse_y-cam_y, mouse_x-cam_x -(string_width(text)+20),mouse_y-cam_y+string_height(text), false)
			draw_set_color(c_white)
			draw_text(mouse_x-cam_x-(string_width(text)+1+20)+10, mouse_y-cam_y, text)
			draw_set_valign(fa_middle)
			draw_set_halign(fa_center)
		}
	}
}

function Weapontip(text){
	cam_x = 0
	cam_y = 0
	cam_width = camera_get_view_width(view_camera[0])
	if (mouse_x<bbox_right and mouse_x > bbox_left and mouse_y < bbox_bottom and mouse_y > bbox_top) {
		draw_set_valign(fa_top)
		draw_set_halign(fa_left)
		text = string_replace_all(text,"_", " ")
		if (string_width(text) > string_width("Weapon currently in slot:")) {
			var width = string_width(text)
		} else {
			var width = string_width("Weapon currently in slot:")
		}
		if mouse_x > camera_get_view_x(view_camera[0]) + cam_width/2 {
			draw_rectangle(mouse_x-cam_x-1, mouse_y-cam_y-1, mouse_x-cam_x +width+1+20,mouse_y-cam_y+string_height(text)+101, false)
			draw_set_color(c_black)
			draw_rectangle(mouse_x-cam_x, mouse_y-cam_y, mouse_x-cam_x +width+20,mouse_y-cam_y+string_height(text)+100, false)
			draw_set_color(c_white)
			draw_line(mouse_x-cam_x-1, mouse_y-cam_y-1+string_height(text)+1, mouse_x-cam_x +width+1+20,mouse_y-cam_y+string_height(text)+1)
			draw_text(mouse_x-cam_x+10, mouse_y-cam_y, text)
			draw_text(mouse_x-cam_x+10, mouse_y-cam_y+string_height(text)+6, "Weapon currently in slot:")
			
			//extra info (weapon in slot)
			if slot != -1 {
				draw_sprite_ext(global.player.equipped_weapons[slot].sprite_index, 1,mouse_x-cam_x+40,mouse_y-cam_y+80,2,2,0,c_white,1)
			}
		} else {
			draw_rectangle(mouse_x-cam_x+1, mouse_y-cam_y-1, mouse_x-cam_x -(width+1+20),mouse_y-cam_y+string_height(text)+101, false)
			draw_set_color(c_black)
			draw_rectangle(mouse_x-cam_x, mouse_y-cam_y, mouse_x-cam_x -(width+20),mouse_y-cam_y+string_height(text)+100, false)
			draw_set_color(c_white)
			draw_line(mouse_x-cam_x, mouse_y-cam_y-1+string_height(text)+1, mouse_x-cam_x -(width+1+20),mouse_y-cam_y+string_height(text)+1)
			draw_text(mouse_x-cam_x-(width+1+20)+10, mouse_y-cam_y, text)
			draw_text(mouse_x-cam_x-(width+1+20)+10, mouse_y-cam_y+string_height(text)+6, "Weapon currently in slot:")
		
			//extra info (weapon in slot)
			if slot != -1 {
				draw_sprite_ext(global.player.equipped_weapons[slot].sprite_index, 1,mouse_x-cam_x-(width+1+20)+40,mouse_y-cam_y+80,2,2,0,c_white,1)
			}
		}
		draw_set_valign(fa_middle)
		draw_set_halign(fa_center)
	}
}