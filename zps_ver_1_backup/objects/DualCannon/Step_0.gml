/// @description Insert description here
// You can write your code in this editor
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
		ShootShot(BulletObj, global.player.image_angle, x + lengthdir_x(8,image_angle+90), y + lengthdir_y(8,image_angle+90),accuracy,projectile_speed)
		ShootShot(BulletObj, global.player.image_angle, x + lengthdir_x(10,image_angle+90), y + lengthdir_y(10,image_angle+90),accuracy,projectile_speed)
	}
	}
}
