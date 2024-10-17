/// @description Insert description here
// You can write your code in this editor
if open {
	draw_set_color(c_black)
	draw_rectangle(x,y,x+300,y+400,false)
	draw_set_color(c_white)
	draw_rectangle(x,y,x+300,y+400,true)
	draw_set_color(c_white)
	draw_set_halign(vk_left)
	draw_text(x+20,y+380,keyboard_string)
	
	
	for (var i = 0; i<array_length(res_list); i++) {
		draw_set_color(c_white)
		draw_text(x+20,y+360-20*i,res_list[array_length(res_list)-1-i])
	}
}