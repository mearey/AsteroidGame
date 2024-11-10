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
		ShootShot(LaserObj, global.player.image_angle, x+lengthdir_x(3,image_angle-90),y+lengthdir_y(3,image_angle-90), accuracy, projectile_speed)
		ShootShot(LaserObj, global.player.image_angle, x+lengthdir_x(0,image_angle-90),y+lengthdir_y(0,image_angle-90), accuracy, projectile_speed)
	}
	}
}