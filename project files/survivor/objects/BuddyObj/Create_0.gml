/// @description Insert description here
// You can write your code in this editor
event_inherited()

lighting_size = 4
lighting_intensity = 0.2
collected = false
range = 400
movetimer = 60
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
	sprite_index = Buddy_Explosion
	image_speed = 0.7
	collected = false
}