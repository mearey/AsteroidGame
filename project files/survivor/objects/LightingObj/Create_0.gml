/// @description Insert description here
// You can write your code in this editor
cam_width = camera_get_view_width(view_camera[0])
cam_height = camera_get_view_height(view_camera[0])

lighting_surface = -1

init = false

alarm[0] = 100

var count = 0 
with LightingObj {
	count+=1	
}
if count >= 2 {
	instance_destroy(self)	
}

