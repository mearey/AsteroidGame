/// @description Insert description here
// You can write your code in this editor
preGlobals()
first_launch = false

camx = camera_get_view_x(view_camera[0])
camy = camera_get_view_y(view_camera[0])
if (instance_exists(Level)) {
	cam_width = camera_get_view_width(view_camera[0])
	cam_height = camera_get_view_height(view_camera[0])
} else {
	cam_width = surface_get_width(application_surface)
	cam_height = surface_get_height(application_surface)
}
	
x_ = camx+cam_width/2
y_ = camy+cam_height/2
loadOptions()