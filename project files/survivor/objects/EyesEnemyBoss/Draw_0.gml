/// @description Insert description here
// You can write your code in this editor
draw_self()

if !global.pauseObj.paused {
if point_distance(x,y,global.player.x,global.player.y) < 256 {
	var last_x = x
	var last_y = y
	for (var l=0; l<25; l+=1) {
		if l == 24 {
			draw_line_width_color(last_x,last_y,global.player.x,global.player.y, 2,c_white,c_lime)
		} else {
			var dir = point_direction(last_x,last_y,global.player.x,global.player.y) + random_range(-70,70)
			var next_x = last_x + lengthdir_x(10,dir)
			var next_y = last_y + lengthdir_y(10,dir)
			draw_line_width_color(last_x,last_y,next_x,next_y,2, c_white,c_lime)
			last_x = next_x
			last_y = next_y
		}
	}
	global.player.takeDamage()
	global.player.hp-=0.2
}
}

event_inherited()