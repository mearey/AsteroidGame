/// @description Insert description here
// You can write your code in this editor]
event_inherited()
image_xscale = 1 + image_index/4
image_yscale = 1 + image_index/4
part_type_orientation(global.exhaust, image_angle,image_angle,0,0,0)
part_type_direction(global.exhaust,0,0,0,0);
part_particles_create(global.p_system, x, y, global.exhaust, 1);	

lifetime -= 1;
if (lifetime <= 0) {
	exploded = true
}

if !global.pauseObj.paused { 
	if (instance_exists(target)) && !exploded {
		var target_dir = point_direction(x,y,target.x,target.y)
		if dir < target_dir {
			dir += 0.2*projectile_speed
		} else if dir > target_dir	{
			dir -= 0.2*projectile_speed
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
		if !instance_exists(target) {
			instance_destroy(self)
		}
	}
	if collision_circle(x,y,8,target,false, true) {
		image_speed = 1
		if !exploded {
			PlaySFX(explosion,1,4)
			//deal damage here
			global.player.hp -= damage
			global.player.takeDamage()
			exploded = true
		}
	}
}