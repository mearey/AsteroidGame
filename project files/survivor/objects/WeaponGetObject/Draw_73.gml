/// @description Insert description here
// You can write your code in this editor
draw_self()
//draw_sprite_ext(sprite_index,animation,window_get_width()/2, window_get_height()/2,1.03,1.01,0,c_white,0.9)
if (weapon_sprite != -1) {
draw_sprite_ext(weapon_sprite,2,x, y,6,6,0,c_white,1)

draw_set_halign(fa_center)
draw_text(x, y- 100, string_replace_all(string(sprite_get_name(weapon_sprite)),"_", " "))
}

var count = 0
for (var i =0; i<array_length(global.player.weapons); i++) {
	if (global.player.weapons[i] == weapon) {
		count++;
	}
}	
if (count >= 1) {
	draw_text(x, y- 80, "LVL +1")
} else {
	draw_text(x, y- 80, "NEW")
}

Weapontip(string(sprite_get_name(weapon_sprite)))