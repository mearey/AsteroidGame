/// @description Insert description here
// You can write your code in this editor
var camx = camera_get_view_x(view_camera[0])
var camy = camera_get_view_y(view_camera[0])

layer_x("Midground", camx*0.3-room_width/4)

layer_y("Midground", camy*0.3+room_height/4-1440)

layer_x("Foreground", camx*0.5+room_width/4)

layer_y("Foreground", camy*0.5-room_height/4)