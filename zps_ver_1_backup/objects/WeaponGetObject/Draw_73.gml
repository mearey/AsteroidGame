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
	draw_text(x, y- 80, "LVL " + string(count) +" >> " + string(count+1))
} else {
	draw_text(x, y- 80, "NEW")
	var inst = instance_create_depth(0,0,0,weapon)
	draw_set_color(c_black)
	draw_set_alpha(0.6)
	draw_rectangle(x-99,y+64,x+99,y+200,false)
	draw_set_alpha(1)
	draw_set_color(c_white)
	draw_rectangle(x-99,y+64,x+99,y+200,true)
	draw_set_valign(fa_top)
	draw_text_ext(x, y+80, inst.description,20,190)
	draw_set_valign(fa_middle)
	instance_destroy(inst)
}

