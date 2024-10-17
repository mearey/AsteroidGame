/// @description Insert description here
// You can write your code in this editor
gpu_set_blendmode_ext(bm_inv_dest_colour,bm_zero);
var dir = global.player.image_angle

var len = image_index+1
draw_line_width_color(x+lengthdir_x(13,dir),y+lengthdir_y(13,dir), x+lengthdir_x(2000/len,dir),y+lengthdir_y(2000/len,dir),image_yscale*2,c_aqua,c_blue)
gpu_set_blendmode(bm_normal);