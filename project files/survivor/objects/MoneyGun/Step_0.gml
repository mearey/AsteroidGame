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
		if global.player.coins > 0 {
			ShootShot(CoinProjectile,global.player.image_angle,x+lengthdir_x(15,image_angle+90),y+lengthdir_y(15,image_angle+90),accuracy,projectile_speed).range = shockrange
			PlaySFX(coinGetSound,1,2)
			global.player.coins -= 1
		}
	}
	}
}