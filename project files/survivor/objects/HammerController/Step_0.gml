/// @description Insert description here
// You can write your code in this editor
if init {

	phy_position_x = global.player.x+lengthdir_x(15,global.player.image_angle-180)
	phy_position_y = global.player.y+lengthdir_y(15,global.player.image_angle-180)
}

if throwing {
	var dir = point_direction(x,y,global.player.x,global.player.y)
	physics_apply_impulse(x,y, lengthdir_x(10, dir), lengthdir_y(10, dir))
	
	hammer.image_xscale =1
	hammer.image_yscale =1
	
	var list = ds_list_create()
	if collision_circle_list(hammer.x,hammer.y,20,Enemy, false,true,list,false)>0 {
		list[|0].takeDamage(global.player.dmg*2)
		if global.player.hp < global.player.max_hp {
			global.player.hp += global.player.dmg/8
		}
	}
	ds_list_destroy(list)
	
} else {
		
	hammer.image_xscale =0.5
	hammer.image_yscale =0.5	
}