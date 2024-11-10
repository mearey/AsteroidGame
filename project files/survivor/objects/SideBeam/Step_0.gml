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
		bullet = instance_create_depth(x,y,1,BeamObj)
		bullet.image_yscale = width/2
		bullet.image_speed = 0;
		bullet.x = global.player.x+lengthdir_x(16,image_angle+90)
		bullet.y = global.player.y+lengthdir_y(16,image_angle+90)
		bullet.direction = global.player.image_angle
		bullet.image_angle = bullet.direction
		bullet.projectile_speed = projectile_speed
		bullet.accuracy = accuracy
	}
	}
}



if (instance_exists(bullet)) {
	bullet.x = global.player.x+lengthdir_x(16,image_angle+90)+lengthdir_x(-12,image_angle)
	bullet.y = global.player.y+lengthdir_y(16,image_angle+90)+lengthdir_y(-12,image_angle)
	bullet.direction = global.player.image_angle
	bullet.image_angle = bullet.direction
	bullet.projectile_speed = projectile_speed
	bullet.accuracy = accuracy
	if !(keyboard_check(vk_space) || mouse_check_button(mb_left) || true) {
		bullet.image_speed = 1;
	}
}