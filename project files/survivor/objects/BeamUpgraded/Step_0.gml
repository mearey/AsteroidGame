/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
x = global.player.x 
y = global.player.y 
image_angle = global.player.image_angle
image_angle = global.player.image_angle
if (keyboard_check(vk_space) || mouse_check_button(mb_left) || true) {
	if !global.pauseObj.paused {
	if (fire_timer > 0) {
		fire_timer -= 1
	} else {
		fire_timer = fire_rate;
	}
	if (!instance_exists(bullet)) {
		bullet = instance_create_depth(x,y,1,BeamObj_2xDamage)
		bullet.image_yscale = width
		bullet.image_speed = 0;
		bullet.x = global.player.x
		bullet.y = global.player.y
		bullet.direction = global.player.image_angle
		bullet.image_angle = bullet.direction
		bullet.projectile_speed = projectile_speed
		bullet.accuracy = accuracy
	}
	}
}


try {
if (instance_exists(bullet)) {
	bullet.x = global.player.x
	bullet.y = global.player.y
	bullet.direction = global.player.image_angle
	bullet.image_angle = bullet.direction
	bullet.projectile_speed = projectile_speed
	bullet.accuracy = accuracy
	if !(keyboard_check(vk_space) || mouse_check_button(mb_left) || true) {
		bullet.image_speed = 1;
	}
}
} catch (err) {
	log(err)
}