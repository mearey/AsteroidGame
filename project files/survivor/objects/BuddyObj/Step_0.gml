/// @description Insert description here
// You can write your code in this editor
event_inherited()
phy_rotation = 0
if !global.pauseObj.paused {
if collected {
	phy_position_x = global.player.x + lengthdir_x(70,rotation) 
	phy_position_y = global.player.y + lengthdir_y(70,rotation) 
	
	if (rotation >= 360) {
		rotation = 0	
	} else {
		rotation += 1;
	}
	
	
	
} else {
	movetimer -= 1
	if movetimer <= 0 {
		var dir = point_direction(x,y, PlayerObj.x, PlayerObj.y) + random_range(-90,90)
		phy_linear_velocity_x += lengthdir_x(100,dir)
		phy_linear_velocity_y += lengthdir_y(100,dir)
		movetimer = random_range(50,100)
	}
}
if collision_circle(x,y,16,PlayerObj,false,true) {
	collected = true	
	sprite_index = Buddy_shrink
}
if (instance_exists(Enemy)) {
	var target = instance_nearest(x,y,Enemy)
	if (target != PlayerObj) && distance_to_object(target) < range {
		if (fire_timer > 0) && distance_to_object(target) < range {
			fire_timer -= 1
		} else if (target != PlayerObj) && distance_to_object(target) < range {
			fire_rate = global.player.fire_rate/array_length(PlayerObj.unique_weapons)
			fire_timer = fire_rate;
			ShootShot(array_get_random([LaserObj, Greneade, BulletObj, ShockProjectile, Missile]), point_direction(x,y,target.x, target.y), x,y,1,global.player.projectile_speed,1000)
		}
	}
}
}