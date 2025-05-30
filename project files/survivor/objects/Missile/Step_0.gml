/// @description Insert description here
// You can write your code in this editor]
event_inherited()
image_xscale = 1 + image_index/4
image_yscale = 1 + image_index/4
part_type_color_mix(global.exhaust, c_white, c_white)
part_type_orientation(global.exhaust, image_angle,image_angle,0,0,0)
part_type_direction(global.exhaust,0,0,0,0);
part_particles_create(global.p_system, x, y, global.exhaust, 1);	

if !global.pauseObj.paused { 
	lifetime_-=1
	if lifetime_ <=0 {
		instance_destroy(self)	
	}
	if (target != PlayerObj) && (instance_exists(target)) && !exploded {
		var target_dir = point_direction(x,y,target.x,target.y)
		if dir < target_dir {
			dir += 1.5*projectile_speed
		} else if dir > target_dir	{
			dir -= 1.5*projectile_speed
		}
		var x_ = lengthdir_x(projectile_speed, dir)
		var y_ = lengthdir_y(projectile_speed, dir)
		x += x_
		y += y_
		image_angle = dir
	} else if !exploded {
		var x_ = lengthdir_x(projectile_speed, dir)
		var y_ = lengthdir_y(projectile_speed, dir)
		x += x_
		y += y_
		image_angle = dir
		if instance_exists(Enemy) {
			target = instance_nearest(x,y, Enemy)
		} else {
			target = instance_nearest(x,y,Boss)	
		}
	}
	if collision_circle(x,y,8,Enemy,false, true) {
		image_speed = 1
		if !exploded {
			PlaySFX(explosion,1,4)
			var list = ds_list_create();
			var num = collision_circle_list(x,y,30*size,Enemy,false,true,list,false)
			for (var i = 0; i<num; i++) {
				if instance_exists(list[| i]) {
					var dir_ = -point_direction(x,y,list[| i].x,list[| i].y)
					list[| i].phy_speed_x += lengthdir_x(1.5, dir_)
					list[| i].phy_speed_y -= lengthdir_y(1.5, dir_)
					list[| i].takeDamage(global.player.dmg)
				}
			}
			exploded = true
		}
	} else if collision_circle(x,y,8,Boss,false, true) {
		image_speed = 1
		if !exploded {
			PlaySFX(explosion,1,4)
			var list = ds_list_create();
			var num = collision_circle_list(x,y,30*size,Enemy,false,true,list,false)
			for (var i = 0; i<num; i++) {
				var dir_ = -point_direction(x,y,list[| i].x,list[| i].y)
				list[| i].phy_speed_x += lengthdir_x(1.5, dir_)
				list[| i].phy_speed_y -= lengthdir_y(1.5, dir_)
				list[| i].takeDamage(global.player.dmg)
			}
			exploded = true
		}
	}
}