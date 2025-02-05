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
		var bullet = instance_create_depth(x,y,1,BulletObj)
		bullet.direction = point_direction(x,y,mouse_x, mouse_y)
		bullet.phy_rotation = -bullet.direction
		bullet.projectile_speed = projectile_speed
		bullet.accuracy = accuracy

		with (bullet) {
			physics_apply_impulse(x,y,lengthdir_x(projectile_speed,point_direction(x,y,mouse_x, mouse_y)+random_range(-accuracy,accuracy)), lengthdir_y(projectile_speed,point_direction(x,y,mouse_x, mouse_y))+random_range(-accuracy,accuracy))	
		}
	}
	}
}