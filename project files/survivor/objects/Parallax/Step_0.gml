/// @description Insert description here
// You can write your code in this editor
var camx = camera_get_view_x(view_camera[0])
var camy = camera_get_view_y(view_camera[0])

layer_x("Midground", camx*0.3+room_width/8)

layer_y("Midground", camy*0.3-room_height/4)

if instance_exists(Level2) {
	layer_x("Foreground", camx*0.5+room_width/5)

	layer_y("Foreground", camy*0.5-room_height/10)	
} else {
	layer_x("Foreground", camx*0.5)

	layer_y("Foreground", camy*0.5-room_width/8)	
}

with MidgroundObj {
	x_ = camx*0.5
	y_ = camy*0.5
}