/// @description Insert description here
// You can write your code in this editor

if (!global.pauseObj.paused) {
	draw_set_alpha(0.7)
	draw_healthbar(24,16,max_hp*2,25+16,(hp/max_hp)*100,c_black,c_red,c_maroon,0,false,false)
		draw_set_color(c_aqua)
	draw_rectangle(24+1.5,16+1.5,max_hp*2+1.5,25+16+1.5, true)
		draw_set_color(c_red)
	draw_rectangle(24-1.5,16-1.5,max_hp*2-1.5,25+16-1.5, true)
	draw_set_color(c_white)
	draw_rectangle(24,16,max_hp*2,25+16, true)
	draw_healthbar(24,35+18,200,61+18,(xp/max_xp)*100,c_black,c_aqua,c_aqua,0,false,false)
	draw_set_color(c_aqua)
	draw_rectangle(24+1.5,35+18+1.5,200+1.5,61+18+1.5, true)
		draw_set_color(c_red)
	draw_rectangle(24-1.5,35+18-1.5,200-1.5,61+18-1.5, true)
	draw_set_color(c_white)
	draw_rectangle(24,35+18,200,61+18, true)
	draw_text(230,61+7, "LVL: " + string(lvl))
	var skipped = 0;
	for (var i = 0; i < array_length(equipped_weapons); i += 1)
	{
		if (equipped_weapons[i] != Weapon) {
			if (instance_exists(equipped_weapons[i])) {
				draw_sprite(equipped_weapons[i].sprite_index,1,32 + 8 + 32*(i-skipped),100+8)
				if (equipped_weapons[i].evolved) {
					draw_sprite_ext(equipped_weapons[i].sprite_index,1,32 + 8 + 32*(i-skipped),100+8,1.2,1.2,0,c_aqua,1)
				}
				draw_set_font(SmallUIFont)
				draw_set_halign(fa_middle)
				draw_text(32 + 8 + 32*(i-skipped),100+32, "lvl: " + string(equipped_weapons[i].lvl))
				if equipped_weapons[i].lvl >= 10 {
					removeWeaponFromPool(equipped_weapons[i])
				}
				draw_set_font(DefaultFont)
			}
		} else {
			skipped += 1;	
		}
	}
	draw_sprite(CoinSprite,0,surface_get_width(application_surface)-64,32)
	draw_set_halign(fa_left)
	draw_text(surface_get_width(application_surface)-48,32,coins)
	draw_set_halign(fa_center)
	draw_set_alpha(1)
	
	//display time
	var hours = (((current_time - start_time)/1000)/60)/60
	var mins = (((current_time - start_time)/1000)/60) - floor(hours)*60
	var seconds =  ((current_time - start_time)/1000) - floor(hours)*60*60 - floor(mins)*60
	if hours < 10 {
		hours = "0"+string(floor(hours))
	} else {
		hours = string(floor(hours))	
	}
	
	if mins < 10 {
		mins = "0"+string(floor(mins))
	} else {
		mins = string(floor(mins))	
	}
	
	if seconds < 10 {
		seconds = "0"+string(floor(seconds))
	} else {
		seconds = string(floor(seconds))	
	}
	
	time = hours+":"+mins+":"+seconds
	draw_set_halign(fa_right)
	draw_text(surface_get_width(application_surface)-30,75,time)
	draw_set_halign(fa_left)
	
	//abilty bar
	if !global.pauseObj.paused {
	draw_set_alpha(0.7)
	draw_healthbar(surface_get_width(application_surface)-250,16,surface_get_width(application_surface)-100,25+16,100-(ability_cooldown/(cooldown/global.cdr))*100,c_black,c_green,c_lime,0,false,false)
	draw_set_color(c_aqua)
	draw_rectangle(surface_get_width(application_surface)-250+1.5,16+1.5,surface_get_width(application_surface)-100+1.5,25+16+1.5, true)
	draw_set_color(c_red)
	draw_rectangle(surface_get_width(application_surface)-250-1.5,16-1.5,surface_get_width(application_surface)-100-1.5,25+16-1.5, true)
	draw_set_color(c_white)
	draw_rectangle(surface_get_width(application_surface)-250,16,surface_get_width(application_surface)-100,25+16, true)
	draw_set_alpha(1)
}
}