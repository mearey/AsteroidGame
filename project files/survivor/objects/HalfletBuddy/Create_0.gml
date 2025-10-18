/// @description Insert description here
// You can write your code in this edito
event_inherited()
PlaySFX(array_get_random([Buddy_SFX_chatter1,Buddy_SFX_chatter2,Buddy_SFX_chatter3,Buddy_SFX_chatter4,Buddy_SFX_chatter5,Buddy_SFX_chatter6,Buddy_SFX_chatter7,Buddy_SFX_chatter8,Buddy_SFX_chatter9]),0.5,0.7)
hp = 1
lighting_size = 4
lighting_intensity = 0.2
collected = false
range = 400
movetimer = 60
lighting_colour = c_aqua
fire_rate = global.player.fire_rate
fire_timer = fire_rate
rotation = 0
exploded = false
_speed = 0
size = 1
rate = random_range(1,3)
function explode() {
	if !exploded {
		PlaySFX(explosion,1,4)
		var list = ds_list_create();
		var num = collision_circle_list(x,y,1500,Enemy,false,true,list,false)
		for (var i = 0; i<num; i++) {
			var dir_ = -point_direction(x,y,list[| i].x,list[| i].y)
			list[| i].phy_speed_x += lengthdir_x(7, dir_)
			list[| i].phy_speed_y -= lengthdir_y(7, dir_)
			list[| i].takeDamage(global.player.dmg)
		}
		exploded = true
	}
	sprite_index = Buddy_Alt_Explosion
	image_speed = 0.7
	collected = false
}