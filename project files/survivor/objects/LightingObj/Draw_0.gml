/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if !surface_exists(lighting_surface) {
	lighting_surface = surface_create(cam_width,cam_height)	
}

var camx = camera_get_view_x(view_camera[0])
var camy = camera_get_view_y(view_camera[0])

surface_set_target(lighting_surface)

draw_set_alpha(0.6)
draw_set_color(c_black)
draw_rectangle(0,0,cam_width,cam_height,false)
draw_set_color(c_white)
gpu_set_blendmode(bm_subtract)
if (instance_exists(Level)) {
	draw_sprite(global.level.lighting_layer, 0, camx*0.3-room_width/4 - camx, camy*0.3-room_width/4 + cam_height*1.3 - camy-1440)
}
for (var i = 0; i< instance_number(ObjectLightingParent); i++) {
	var obj = instance_find(ObjectLightingParent, i)
	draw_sprite_ext(obj.lighting_sprite,0,obj.x-camx,obj.y-camy, obj.lighting_size, obj.lighting_size, obj.image_angle,c_white,obj.lighting_intensity)
}
gpu_set_blendmode(bm_normal)
		
for (var i = 0; i< instance_number(ObjectLightingParent); i++) {
	var obj = instance_find(ObjectLightingParent, i)
	draw_sprite_ext(obj.lighting_sprite,0,obj.x-camx,obj.y-camy, obj.lighting_size,obj.lighting_size, obj.image_angle,obj.lighting_colour,obj.lighting_intensity)
}
	
draw_set_alpha(1)
surface_reset_target()
draw_surface(lighting_surface, camx,camy)