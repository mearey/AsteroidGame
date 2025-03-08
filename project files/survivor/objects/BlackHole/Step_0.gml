/// @description Insert description here
// You can write your code in this editor
image_angle = -global.player.image_angle

if (keyboard_check(vk_space) || mouse_check_button(mb_left) || true) {
	if !global.pauseObj.paused {
		x = lerp(x,mouse_x,0.05)
		y = lerp(y,mouse_y,0.05)
		var list = ds_list_create()
		if collision_circle_list(x,y,50+lvl*15,Enemy,false,true,list,false) {
			for (var i=0; i<ds_list_size(list); i+=1) {
				var dir =  point_direction(list[| i].x,list[| i].y,x,y)
				list[| i].phy_speed_x = lengthdir_x(3+lvl/2, dir)
				list[| i].phy_speed_y = lengthdir_y(3+lvl/2, dir)
			}
		}
		ds_list_destroy(list)
	}
}