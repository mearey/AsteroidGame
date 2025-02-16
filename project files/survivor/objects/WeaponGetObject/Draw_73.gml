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
	draw_rectangle(x-99,y+64,x+99,y+300,false)
	draw_set_alpha(1)
	draw_set_color(c_white)
	draw_rectangle(x-99,y+64,x+99,y+300,true)
	draw_rectangle(x-99,y+64,x+99,y+100,true)
	draw_set_valign(fa_top)
	draw_text_ext(x, y+115, inst.description,20,190)
	draw_text_ext_transformed(x, y+74, inst.brand,20,250,0.9,0.9,0)
	draw_set_valign(fa_middle)
	instance_destroy(inst)
}


if (mouse_x<bbox_right and mouse_x > bbox_left and mouse_y < bbox_bottom and mouse_y > bbox_top) {
	var spr = global.ship_selection.sprite_index
	draw_sprite_ext(spr,0,mouse_x,mouse_y-32*3, 3,3,90,c_white,0.8)
	draw_sprite_ext(weapon_sprite,0,mouse_x,mouse_y-32*3, 3,3,90,c_white,0.95)
}