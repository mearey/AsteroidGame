/// @description Insert description here
// You can write your code in this editor
if split {
	draw_self()	
} else {
	//lighting_size = 0
	//lighting_sprite = nocollision	
}
draw_self()	

var list = ds_list_create()
collision_circle_list(x,y,64*range,Enemy,false,true,list,false)
for (var i=0; i<ds_list_size(list);i++) {
	var last_x = x
	var last_y = y
	for (var l=0; l<7; l+=1) {
		try {
			if l == 6 {
				draw_line_width_color(last_x,last_y,list[| i].x,list[| i].y, 2,c_white,c_aqua)
			} else {
				var dir = point_direction(last_x,last_y,list[| i].x,list[| i].y) + random_range(-70,70)
				var next_x = last_x + lengthdir_x(7,dir)
				var next_y = last_y + lengthdir_y(7,dir)
				draw_line_width_color(last_x,last_y,next_x,next_y,2, c_white,c_aqua)
				last_x = next_x
				last_y = next_y
			}
			
		}
		catch (err) {
			log(err)
		}
			
	}
	if !global.pauseObj.paused {
		list[| i].takeDamage(global.player.dmg/50)
	}
}

ds_list_destroy(list)