/// @description Insert description here
// You can write your code in this editor
event_inherited()

if (collision_circle(x,y,8,Enemy,false,true)) {
	image_speed = 1
	image_xscale = 1 + image_index/1.5
	image_yscale = 1 + image_index/1.5
	if !exploded {
		PlaySFX(explosion,1,4)
		var list = ds_list_create();
		var num = collision_circle_list(x,y,80*size,Enemy,false,true,list,false)
		for (var i = 0; i<num; i++) {
			var dir = -point_direction(x,y,list[| i].x,list[| i].y)
			list[| i].phy_speed_x += lengthdir_x(4, dir)
			list[| i].phy_speed_y += lengthdir_y(4, dir)
			list[| i].takeDamage(global.player.dmg)
		}	
		exploded = true
	}
}



