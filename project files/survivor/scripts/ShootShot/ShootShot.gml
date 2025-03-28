// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ShootShot(type, dir, starting_x, starting_y, acc, spd, lifetime){
	dir = dir+random_range(-acc,acc)
	if is_undefined(lifetime) {
		lifetime = 100
	}
	
	if (random(8) < global.multi_shot) {
		var bullet = Fire(type, dir, starting_x-1, starting_y-1, acc, spd+random_range(-1,1))
		bullet.lifetime = lifetime
		var bullet = Fire(type, dir, starting_x+1, starting_y+1, acc, spd+random_range(-1,1))
		bullet.lifetime = lifetime
	} else {
		var bullet = Fire(type, dir, starting_x, starting_y, acc, spd)
		bullet.lifetime = lifetime
	}
	return bullet
}

function Fire(type, dir, starting_x, starting_y, acc, spd) {
	if random(10) < global.randomness {
		type = array_get_random([LaserObj,BulletObj,BigBulletObj,Missile,Greneade, FlameProjectile, ShockProjectile,ClayPlayerShot,CoinProjectile,BubbleProjectile,Mine])
	}
	if (type = LaserObj) {
		var bullet = instance_create_depth(starting_x,starting_y,1,type)
		bullet.direction = dir
		bullet.projectile_speed = spd
		PlaySFX(laser,1,4)
	} else if (type = BulletObj) || type = BigBulletObj {
		PlaySFX(kineticLaunch,1,4)
		var bullet = instance_create_depth(starting_x,starting_y,1,type)
		bullet.direction = dir
		bullet.phy_rotation = -bullet.direction
		bullet.projectile_speed = spd*5
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
	} else if (type = ShockProjectile) {
		var bullet = instance_create_depth(starting_x,starting_y,1,type)
		bullet.direction = dir
		bullet.projectile_speed = spd/2
	} else if (type = ClayPlayerShot) {
		var bullet = instance_create_depth(starting_x,starting_y,1,type)
		bullet.direction = dir
		bullet.projectile_speed = spd
		bullet.accuracy = acc
		PlaySFX(kineticLaunch,1,4)
	} else {
	 	var bullet = instance_create_depth(starting_x,starting_y,1,type)
		bullet.direction = dir
		bullet.projectile_speed = spd
		bullet.speed = spd
		bullet.accuracy = acc
	}
	return bullet
}