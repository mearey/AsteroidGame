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
		rotation += rate;
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
if collision_circle(x,y,16,PlayerObj,false,true) && collected = false {
	PlaySFX(array_get_random([Buddy_SFX_recruit1,Buddy_SFX_recruit2,Buddy_SFX_recruit3,Buddy_SFX_recruit4,Buddy_SFX_recruit5,Buddy_SFX_recruit6,Buddy_SFX_recruit7]),0.9,1.1)
	collected = true	
	if instance_number(BuddyObj) >= 10 {
		steam_set_achievement("spacebuddies")		
	}
	sprite_index = Buddy_shrink
}
if (instance_exists(Enemy)) {
	var rate__ = 0.25
	if collected {
		rate__ = 1
	} 
	
	var target = instance_nearest(x,y,Enemy)
	if (target != PlayerObj) && distance_to_object(target) < range {
		if (fire_timer > 0) && distance_to_object(target) < range {
			fire_timer -= 1
		} else if (target != PlayerObj) && distance_to_object(target) < range {
			fire_rate = (global.player.fire_rate/array_length(PlayerObj.unique_weapons))*10*rate
			fire_timer = fire_rate;
			ShootShot(array_get_random([LaserObj, Greneade, BulletObj, ShockProjectile,LaserObj, Greneade, BulletObj, ShockProjectile, Missile]), point_direction(x,y,target.x, target.y), x,y,1,global.player.projectile_speed,100)
			if random(1) < 0.05 {
				PlaySFX(array_get_random([Buddy_SFX_shoot1,Buddy_SFX_shoot2,Buddy_SFX_shoot3,Buddy_SFX_shoot4]), 0.9,1.1)	
			}
		}
	}
}
}