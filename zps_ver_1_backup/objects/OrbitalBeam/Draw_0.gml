/// @description Insert description here
// You can write your code in this editor
draw_self()
if (shooting && instance_exists(target)) {	
	gpu_set_blendmode_ext(bm_inv_dest_colour,bm_zero);
	draw_line_width_color(x,y,target.x,target.y,3,c_white,c_aqua)
	gpu_set_blendmode(bm_normal)
}