/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(GlowCircleSmallSpr,0,x,y,2,2,0,c_red,0.2)
draw_self()

dir = point_direction(x,y,global.player.x,global.player.y)
eye_x = x+lengthdir_x(7,dir)
eye_y = y+lengthdir_y(7,dir)
//draw lines for connecting eye
draw_line_width_color(x-16,y,eye_x+random_range(-2,2),eye_y+random_range(-2,2),2,c_aqua,c_white)
draw_line_width_color(x-12,y-12,eye_x+random_range(-2,2),eye_y+random_range(-2,2),2,c_aqua,c_white)
draw_line_width_color(x+16,y,eye_x+random_range(-2,2),eye_y+random_range(-2,2),2,c_aqua,c_white)
draw_line_width_color(x-12,y+12,eye_x+random_range(-2,2),eye_y+random_range(-2,2),2,c_aqua,c_white)
draw_line_width_color(x+12,y+12,eye_x+random_range(-2,2),eye_y+random_range(-2,2),2,c_aqua,c_white)
draw_line_width_color(x+12,y-12,eye_x+random_range(-2,2),eye_y+random_range(-2,2),2,c_aqua,c_white)

draw_sprite(OrbOfScorbEyeSprite,0,eye_x,eye_y)

surface_set_target(lighting_layer)
gpu_set_blendmode(bm_subtract)
var camx = camera_get_view_x(view_camera[0])
var camy = camera_get_view_y(view_camera[0])
draw_sprite_ext(GlowCircleSmallSpr,0,x-camx,y-camy,7,7,image_angle,c_white,1)
draw_sprite_ext(GlowCircleSmallSpr,0,eye_x-camx,eye_y-camy,2,2,0,c_aqua,1)

gpu_set_blendmode(bm_normal)

surface_reset_target()
draw_sprite_ext(GlowCircleSmallSpr,0,eye_x,eye_y,2,2,0,c_aqua,0.3)

draw_healthbar(x-50,y-60,x+50,y-70,(hp/max_hp)*100,c_black,c_green,c_green,0,true,true)