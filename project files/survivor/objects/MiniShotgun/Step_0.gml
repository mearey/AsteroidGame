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
		var x_ = x+lengthdir_x(15,image_angle-90)
		var y_ = y+lengthdir_y(15,image_angle-90)
		ShootShot(BulletObj, global.player.image_angle,x_,y_,accuracy,projectile_speed,30)
		ShootShot(BulletObj, global.player.image_angle,x_,y_,accuracy,projectile_speed,30)
		ShootShot(BulletObj, global.player.image_angle,x_,y_,accuracy,projectile_speed,30)
		ShootShot(BulletObj, global.player.image_angle,x_,y_,accuracy,projectile_speed,30)
		ShootShot(BulletObj, global.player.image_angle,x_,y_,accuracy,projectile_speed,30)
	}
	}
}
