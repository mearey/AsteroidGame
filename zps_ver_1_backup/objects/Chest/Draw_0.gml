/// @description Insert description here
// You can write your code in this editor

var cam_x = camera_get_view_x(view_get_camera(0))
var cam_y = camera_get_view_y(view_get_camera(0))
var display = false	

x_ = x 
y_ = y

if x < cam_x {	
	x_ = cam_x+30
	display = true
}
if x > cam_x+surface_get_width(application_surface) + 100 {
	x_ = cam_x+surface_get_width(application_surface)-30
	display = true
}
if y < cam_y {
	y_ = cam_y+30
	display = true
}
if y > cam_y+surface_get_height(application_surface) + 100 {
	y_ = cam_y+surface_get_height(application_surface)-30
	display = true
}

draw_self()
if display {
	draw_sprite_ext(ArrowSprite,0,x_,y_,2,2,point_direction(x,y,global.player.x,global.player.y),c_aqua,1)
}