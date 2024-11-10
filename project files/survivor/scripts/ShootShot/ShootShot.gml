// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ShootShot(type, dir, starting_x, starting_y, acc, spd, lifetime){
	dir = dir+random_range(-acc,acc)
	if is_undefined(lifetime) {
		lifetime = 100
	}
	
	if (global.multi_shot == 1) {
		var bullet = Fire(type, dir, starting_x-1, starting_y-1, acc, spd+random_range(-1,1))
		bullet.lifetime = lifetime
		var bullet = Fire(type, dir, starting_x+1, starting_y+1, acc, spd+random_range(-1,1))
		bullet.lifetime = lifetime
	} else {
		var bullet = Fire(type, dir, starting_x, starting_y, acc, spd)
		bullet.lifetime = lifetime
	}
}

function Fire(type, dir, starting_x, starting_y, acc, spd){
	if (type = LaserObj) {
		var bullet = instance_create_depth(starting_x,starting_y,1,type)
		bullet.direction = dir
		bullet.projectile_speed = spd
		PlaySFX(laser,1,4)
	} else if (type = BulletObj) {
		PlaySFX(kineticLaunch,1,4)
		var bullet = instance_create_depth(starting_x,starting_y,1,type)
		bullet.direction = dir
		bullet.phy_rotation = -bullet.direction
		bullet.projectile_speed = spd*2
		bullet.accuracy = acc

		with (bullet) {
			physics_apply_impulse(x,y,lengthdir_x(spd,dir+random_range(-acc,acc)), lengthdir_y(spd,dir)+random_range(-acc,acc))	
		}	
	} else if (type = Missile) {
		var bullet  = instance_create_depth(starting_x,starting_y,1,type)
		bullet.target = instance_nearest(starting_x,starting_y, Enemy)
		PlaySFX(gernadeLaunch,1,3)
	} else if (type = Greneade) {
		var bullet  = instance_create_depth(starting_x,starting_y,1,type)
		bullet.speed = spd
		bullet.direction = dir
		PlaySFX(gernadeLaunch,1,3)
	} else if (type = FlameProjectile) {
		var bullet  = instance_create_depth(starting_x,starting_y,1,type)
		bullet.speed = spd
		bullet.direction = dir
		var bullet  = instance_create_depth(starting_x,starting_y,1,type)
		bullet.speed = spd
		bullet.direction = dir
		var bullet  = instance_create_depth(starting_x,starting_y,1,type)
		bullet.speed = spd
		bullet.direction = dir
	}
	return bullet
}