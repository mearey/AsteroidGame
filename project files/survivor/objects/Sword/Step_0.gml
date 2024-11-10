/// @description Insert description here
// You can write your code in this editor
x = global.player.x 
y = global.player.y 
image_angle = global.player.image_angle

if (instance_exists(Enemy)) {
	target = instance_nearest(x,y,Enemy)
}

if (instance_exists(sword)) {
	sword.x = x
	sword.y = y
	sword.image_angle = image_angle
}

if !global.pauseObj.paused {
	if (target != PlayerObj) && distance_to_object(target) < range {
		if (fire_timer > 0) {
			fire_timer -= 1
			alarm_ = false
			animation = 10/(20/fire_rate)
		} else {
			if !alarm_ {
				alarm[0] =10/(20/fire_rate)
				alarm_ = true
			}
			var dir = point_direction(x,y,target.x,target.y)
			if (right) {
				sword.x = x + lengthdir_x(50*range/100,dir - 35 - (animation-7)*7)
				sword.y = y + lengthdir_y(50*range/100,dir - 35 - (animation-7)*7)
				sword.image_angle = dir - (animation-3)*15 -90
			} else {
				sword.x = x + lengthdir_x(50*range/100,dir + (animation-7)*7)
				sword.y = y + lengthdir_y(50*range/100,dir + (animation-7)*7)
				sword.image_angle = dir-75 + (animation-3)*15 -90
			}
			animation -= 1
			//play audio
			PlaySFX(swordSwoosh,1,4)
		}
	}
}