/// @description Insert description here
// You can write your code in this editor

if (!global.pauseObj.paused) {
	draw_healthbar(24,16,max_hp*2,25+16,(hp/max_hp)*100,c_black,c_red,c_maroon,0,false,false)
	draw_rectangle(24,16,max_hp*2,25+16, true)
	draw_healthbar(24,35+18,200,61+18,(xp/max_xp)*100,c_black,c_aqua,c_aqua,0,false,false)
	draw_rectangle(24,35+18,200,61+18, true)
	var skipped = 0;
	for (var i = 0; i < array_length(equipped_weapons); i += 1)
	{
		if (equipped_weapons[i] != Weapon) {
			draw_sprite(equipped_weapons[i].sprite_index,1,32 + 8 + 32*(i-skipped),100+8)
			if (equipped_weapons[i].evolved) {
				draw_sprite_ext(equipped_weapons[i].sprite_index,1,32 + 8 + 32*(i-skipped),100+8,1.2,1.2,0,c_aqua,1)
			}
			draw_set_font(SmallUIFont)
			draw_text(32 + 8 + 32*(i-skipped),100+32, "LVL: " + string(equipped_weapons[i].lvl))
			draw_set_font(DefaultFont)
		} else {
			skipped += 1;	
		}
	}
	draw_sprite(CoinSprite,0,surface_get_width(application_surface)-64,32)
	draw_set_halign(fa_left)
	draw_text(surface_get_width(application_surface)-48,32,coins)
	draw_set_halign(fa_center)
}