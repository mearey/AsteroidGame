// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Tooltip(text){
	cam_x_ = camera_get_view_x(view_camera[0])
	cam_y_ = camera_get_view_y(view_camera[0])
	cam_width_ = camera_get_view_width(view_camera[0])
	if (mouse_x<bbox_right and mouse_x > bbox_left and mouse_y < bbox_bottom and mouse_y > bbox_top) {
		if mouse_x > cam_x_ + cam_width_/2 {
			text = string_replace_all(text,"_", " ")
			draw_set_valign(fa_top)
			draw_set_halign(fa_left)
			draw_rectangle(mouse_x-cam_x_-1, mouse_y-cam_y_-1, mouse_x-cam_x_ +string_width(text)+1+20,mouse_y-cam_y_+string_height(text)+1, false)
			draw_set_color(c_black)
			draw_rectangle(mouse_x-cam_x_, mouse_y-cam_y_, mouse_x-cam_x_ +string_width(text)+20,mouse_y-cam_y_+string_height(text), false)
			draw_set_color(c_white)
			draw_text(mouse_x-cam_x_+10, mouse_y-cam_y_, text)
			draw_set_valign(fa_middle)
			draw_set_halign(fa_center)
		} else {
			text = string_replace_all(text,"_", " ")
			draw_set_valign(fa_top)
			draw_set_halign(fa_left)
			draw_rectangle(mouse_x-cam_x_+1, mouse_y-cam_y_-1, mouse_x-cam_x_ -(string_width(text)+1+20),mouse_y-cam_y_+string_height(text)+1, false)
			draw_set_color(c_black)
			draw_rectangle(mouse_x-cam_x_, mouse_y-cam_y_, mouse_x-cam_x_ -(string_width(text)+20),mouse_y-cam_y_+string_height(text), false)
			draw_set_color(c_white)
			draw_text(mouse_x-cam_x_-(string_width(text)+1+20)+10, mouse_y-cam_y_, text)
			draw_set_valign(fa_middle)
			draw_set_halign(fa_center)
		}
	}
}

function statTip(text) {
	cam_x_ = 0
	cam_y_ = 0
	cam_width_ = camera_get_view_width(view_camera[0])
	if (mouse_x<bbox_right and mouse_x > bbox_left and mouse_y < bbox_bottom and mouse_y > bbox_top) {
		if mouse_x > camera_get_view_x(view_camera[0]) + cam_width_/2 {
			text = string_replace_all(text,"_", " ")
			draw_set_valign(fa_top)
			draw_set_halign(fa_left)
			draw_rectangle(mouse_x-cam_x_-1, mouse_y-cam_y_-1, mouse_x-cam_x_ +string_width(text)+1+20,mouse_y-cam_y_+string_height(text)+1, false)
			draw_set_color(c_black)
			draw_rectangle(mouse_x-cam_x_, mouse_y-cam_y_, mouse_x-cam_x_ +string_width(text)+20,mouse_y-cam_y_+string_height(text), false)
			draw_set_color(c_white)
			draw_text(mouse_x-cam_x_+10, mouse_y-cam_y_, text)
			draw_set_valign(fa_middle)
			draw_set_halign(fa_center)
		} else {
			text = string_replace_all(text,"_", " ")
			draw_set_valign(fa_top)
			draw_set_halign(fa_left)
			draw_rectangle(mouse_x-cam_x_+1, mouse_y-cam_y_-1, mouse_x-cam_x_ -(string_width(text)+1+20),mouse_y-cam_y_+string_height(text)+1, false)
			draw_set_color(c_black)
			draw_rectangle(mouse_x-cam_x_, mouse_y-cam_y_, mouse_x-cam_x_ -(string_width(text)+20),mouse_y-cam_y_+string_height(text), false)
			draw_set_color(c_white)
			draw_text(mouse_x-cam_x_-(string_width(text)+1+20)+10, mouse_y-cam_y_, text)
			draw_set_valign(fa_middle)
			draw_set_halign(fa_center)
		}
	}
}

function Weapontip(text, weapon, yoffset){
	cam_x_ = camera_get_view_x(view_camera[0])
	cam_y_ = camera_get_view_y(view_camera[0]) + yoffset
	cam_width_ = camera_get_view_width(view_camera[0])
	if (mouse_x<bbox_right and mouse_x > bbox_left and mouse_y < bbox_bottom and mouse_y > bbox_top) {
		draw_set_valign(fa_top)
		draw_set_halign(fa_left)
		text = string_replace_all(text,"_", " ")
		if (string_width(text) > string_width("Weapon currently in slot:")) {
			var width = string_width(text)
		} else {
			var width = string_width("Weapon currently in slot:")
		}
		if !(mouse_x > camera_get_view_x(view_camera[0]) + cam_width_/2) {
			draw_rectangle(mouse_x-cam_x_-1, mouse_y-cam_y_-1, mouse_x-cam_x_ +width+1+20,mouse_y-cam_y_+string_height(text)+301, false)
			draw_set_color(c_black)
			draw_rectangle(mouse_x-cam_x_, mouse_y-cam_y_, mouse_x-cam_x_ +width+20,mouse_y-cam_y_+string_height(text)+300, false)
			draw_set_color(c_white)
			draw_line(mouse_x-cam_x_-1, mouse_y-cam_y_-1+string_height(text)+1, mouse_x-cam_x_ +width+1+20,mouse_y-cam_y_+string_height(text)+1)
			draw_line(mouse_x-cam_x_-1, mouse_y-cam_y_-1+string_height(text)+105, mouse_x-cam_x_ +width+1+20,mouse_y-cam_y_+string_height(text)+105)
			draw_text(mouse_x-cam_x_+10, mouse_y-cam_y_, text)
			draw_text(mouse_x-cam_x_+10, mouse_y-cam_y_+string_height(text)+6, "Weapon currently in slot:")
			
			//draw stats
			draw_text(mouse_x-cam_x_+10, mouse_y-cam_y_+string_height(text)+110, "Stats:")
			
			var inst = instance_create_depth(0,0,0,weapon)
			//DRAW DAMAGE
			draw_set_halign(fa_right)
			for (var i = 0; i<10; i++) {
				x_ = mouse_x-cam_x_+80+8*i+20
				y_ = mouse_y-cam_y_+string_height(text)+110+30
				draw_rectangle_color(x_-1,y_-1,x_+6+1,y_+20+1,c_black,c_black,c_black,c_black, false)
				draw_rectangle(x_-1,y_-1,x_+6+1,y_+20+1,true)
			}
			draw_text( mouse_x-cam_x_+75+20,mouse_y-cam_y_+string_height(text)+110+22+string_height("S")/2,"Damage:")

			for (var i = 0; i<inst.damage/global.player.dmg; i++) {
				x_ = mouse_x-cam_x_+80+8*i+20
				y_ = mouse_y-cam_y_+string_height(text)+110+30
				draw_rectangle_color(x_+1,y_+1,x_+6-1,y_+20-1,c_aqua,c_aqua,c_aqua,c_aqua,false)	
			}
			
			//DRAW accuracy
			draw_set_halign(fa_right)
			for (var i = 0; i<10; i++) {
				x_ = mouse_x-cam_x_+80+8*i+20
				y_ = mouse_y-cam_y_+string_height(text)+110+60
				draw_rectangle_color(x_-1,y_-1,x_+6+1,y_+20+1,c_black,c_black,c_black,c_black, false)
				draw_rectangle(x_-1,y_-1,x_+6+1,y_+20+1,true)
			}
			draw_text( mouse_x-cam_x_+75+20,mouse_y-cam_y_+string_height(text)+110+52+string_height("S")/2,"Accuracy:")

			for (var i = 0; i<inst.accuracy; i++) {
				x_ = mouse_x-cam_x_+80+8*i+20
				y_ = mouse_y-cam_y_+string_height(text)+110+60
				draw_rectangle_color(x_+1,y_+1,x_+6-1,y_+20-1,c_aqua,c_aqua,c_aqua,c_aqua,false)	
			}
			
			//DRAW fire rate
			draw_set_halign(fa_right)
			for (var i = 0; i<10; i++) {
				x_ = mouse_x-cam_x_+80+8*i+20
				y_ = mouse_y-cam_y_+string_height(text)+110+90
				draw_rectangle_color(x_-1,y_-1,x_+6+1,y_+20+1,c_black,c_black,c_black,c_black, false)
				draw_rectangle(x_-1,y_-1,x_+6+1,y_+20+1,true)
			}
			draw_text( mouse_x-cam_x_+75+20,mouse_y-cam_y_+string_height(text)+110+82+string_height("S")/2,"Fire Rate:")

			for (var i = 0; i<10/(inst.fire_rate/global.player.fire_rate); i++) {
				x_ = mouse_x-cam_x_+80+8*i+20
				y_ = mouse_y-cam_y_+string_height(text)+110+90
				draw_rectangle_color(x_+1,y_+1,x_+6-1,y_+20-1,c_aqua,c_aqua,c_aqua,c_aqua,false)	
			}
			
			//DRAW projectile speed
			draw_set_halign(fa_right)
			for (var i = 0; i<10; i++) {
				x_ = mouse_x-cam_x_+80+8*i+20
				y_ = mouse_y-cam_y_+string_height(text)+110+120
				draw_rectangle_color(x_-1,y_-1,x_+6+1,y_+20+1,c_black,c_black,c_black,c_black, false)
				draw_rectangle(x_-1,y_-1,x_+6+1,y_+20+1,true)
			}
			draw_text( mouse_x-cam_x_+75+20,mouse_y-cam_y_+string_height(text)+110+112+string_height("S")/2,"Shot Speed:")

			for (var i = 0; i<inst.projectile_speed/global.player.projectile_speed; i++) {
				x_ = mouse_x-cam_x_+80+8*i+20
				y_ = mouse_y-cam_y_+string_height(text)+110+120
				draw_rectangle_color(x_+1,y_+1,x_+6-1,y_+20-1,c_aqua,c_aqua,c_aqua,c_aqua,false)	
			}
			
			instance_destroy(inst)
			
			//extra info (weapon in slot)
			if slot != -1 && yoffset ==0 {
				if object_index == SellerSlot {
					inst = instance_create_depth(0,0,0,item)
					with (WeaponSlot) {
						if slot == inst.slot {
							grey = true	
							
						} else {
							grey = false	
						}
						
					}
					instance_destroy(inst)
				} else {
					draw_sprite_ext(global.player.equipped_weapons[slot].sprite_index, 1,mouse_x-cam_x_+40,mouse_y-cam_y_+80,2,2,0,c_white,1)
				}
			} else {
				//draw weapon description
				
			}
		} else {
			draw_rectangle(mouse_x-cam_x_+1, mouse_y-cam_y_-1, mouse_x-cam_x_ -(width+1+20),mouse_y-cam_y_+string_height(text)+301, false)
			draw_set_color(c_black)
			draw_rectangle(mouse_x-cam_x_, mouse_y-cam_y_, mouse_x-cam_x_ -(width+20),mouse_y-cam_y_+string_height(text)+300, false)
			draw_set_color(c_white)
			draw_line(mouse_x-cam_x_, mouse_y-cam_y_-1+string_height(text)+1, mouse_x-cam_x_ -(width+1+20),mouse_y-cam_y_+string_height(text)+1)
			draw_line(mouse_x-cam_x_, mouse_y-cam_y_-1+string_height(text)+105, mouse_x-cam_x_ -(width+1+20),mouse_y-cam_y_+string_height(text)+105)
			draw_text(mouse_x-cam_x_-(width+1+20)+10, mouse_y-cam_y_, text)
			draw_text(mouse_x-cam_x_-(width+1+20)+10, mouse_y-cam_y_+string_height(text)+6, "Weapon currently in slot:")
		
			
						//draw stats
			draw_text(mouse_x-cam_x_+10-190, mouse_y-cam_y_+string_height(text)+110, "Stats:")
			
			var inst = instance_create_depth(0,0,0,weapon)
			//DRAW DAMAGE
			draw_set_halign(fa_right)
			for (var i = 0; i<10; i++) {
				x_ = mouse_x-cam_x_+80-190+8*i+20
				y_ = mouse_y-cam_y_+string_height(text)+110+30
				draw_rectangle_color(x_-1,y_-1,x_+6+1,y_+20+1,c_black,c_black,c_black,c_black, false)
				draw_rectangle(x_-1,y_-1,x_+6+1,y_+20+1,true)
			}
			draw_text( mouse_x-cam_x_+75-190+20,mouse_y-cam_y_+string_height(text)+110+22+string_height("S")/2,"Damage:")

			for (var i = 0; i<inst.damage; i++) {
				x_ = mouse_x-cam_x_+80-190+8*i+20
				y_ = mouse_y-cam_y_+string_height(text)+110+30
				draw_rectangle_color(x_+1,y_+1,x_+6-1,y_+20-1,c_aqua,c_aqua,c_aqua,c_aqua,false)	
			}
			
			//DRAW accuracy
			draw_set_halign(fa_right)
			for (var i = 0; i<10; i++) {
				x_ = mouse_x-cam_x_+80-190+8*i+20
				y_ = mouse_y-cam_y_+string_height(text)+110+60
				draw_rectangle_color(x_-1,y_-1,x_+6+1,y_+20+1,c_black,c_black,c_black,c_black, false)
				draw_rectangle(x_-1,y_-1,x_+6+1,y_+20+1,true)
			}
			draw_text( mouse_x-cam_x_+75-190+20,mouse_y-cam_y_+string_height(text)+110+52+string_height("S")/2,"Accuracy:")

			for (var i = 0; i<inst.accuracy; i++) {
				x_ = mouse_x-cam_x_+80-190+8*i+20
				y_ = mouse_y-cam_y_+string_height(text)+110+60
				draw_rectangle_color(x_+1,y_+1,x_+6-1,y_+20-1,c_aqua,c_aqua,c_aqua,c_aqua,false)	
			}
			
			//DRAW fire rate
			draw_set_halign(fa_right)
			for (var i = 0; i<10; i++) {
				x_ = mouse_x-cam_x_+80-190+8*i+20
				y_ = mouse_y-cam_y_+string_height(text)+110+90
				draw_rectangle_color(x_-1,y_-1,x_+6+1,y_+20+1,c_black,c_black,c_black,c_black, false)
				draw_rectangle(x_-1,y_-1,x_+6+1,y_+20+1,true)
			}
			draw_text( mouse_x-cam_x_+75-190+20,mouse_y-cam_y_+string_height(text)+110+82+string_height("S")/2,"Fire Rate:")

			for (var i = 0; i<10/(inst.fire_rate/global.player.fire_rate); i++) {
				x_ = mouse_x-cam_x_+80-190+8*i+20
				y_ = mouse_y-cam_y_+string_height(text)+110+90
				draw_rectangle_color(x_+1,y_+1,x_+6-1,y_+20-1,c_aqua,c_aqua,c_aqua,c_aqua,false)	
			}
			
			//DRAW projectile speed
			draw_set_halign(fa_right)
			for (var i = 0; i<10; i++) {
				x_ = mouse_x-cam_x_+80-190+8*i+20
				y_ = mouse_y-cam_y_+string_height(text)+110+120
				draw_rectangle_color(x_-1,y_-1,x_+6+1,y_+20+1,c_black,c_black,c_black,c_black, false)
				draw_rectangle(x_-1,y_-1,x_+6+1,y_+20+1,true)
			}
			draw_text( mouse_x-cam_x_+75-190+20,mouse_y-cam_y_+string_height(text)+110+112+string_height("S")/2,"Shot Speed:")

			for (var i = 0; i<inst.projectile_speed; i++) {
				x_ = mouse_x-cam_x_+80-190+8*i+20
				y_ = mouse_y-cam_y_+string_height(text)+110+120
				draw_rectangle_color(x_+1,y_+1,x_+6-1,y_+20-1,c_aqua,c_aqua,c_aqua,c_aqua,false)	
			}
			
			instance_destroy(inst)
			
			//extra info (weapon in slot)
			if slot != -1 && yoffset ==0 {
				if object_index == SellerSlot {
					inst = instance_create_depth(0,0,0,item)
					with (WeaponSlot) {
						if slot == inst.slot {
							grey = true	
						} else {
							grey = false	
						}
						
					}
					instance_destroy(inst)
				} else {
					draw_sprite_ext(global.player.equipped_weapons[slot].sprite_index, 1,mouse_x-cam_x_-150,mouse_y-cam_y_+80,2,2,0,c_white,1)
				}
			} else {
				
			}
		}
		
		
		draw_set_valign(fa_middle)
		draw_set_halign(fa_center)
	}
}