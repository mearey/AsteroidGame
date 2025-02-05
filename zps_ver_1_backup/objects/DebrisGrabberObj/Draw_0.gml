/// @description Insert description here
// You can write your code in this editor
draw_self()

for (var i = 0; i<array_length(grabbed); i+=1){
	if (instance_exists(grabbed[i])) {
		var rand = random_range(-5,5)
		draw_line_color(x+rand,y+rand,grabbed[i].x-rand,grabbed[i].y-rand,c_fuchsia,c_purple)	
		draw_line_color(x-rand,y-rand,grabbed[i].x+rand,grabbed[i].y+rand,c_fuchsia,c_purple)	
	} else {
		array_delete(grabbed, i , 1)	
	}
}
lighting_size = 2+array_length(grabbed)