/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if !(global.pauseObj.paused){
if (distance_to_object(PlayerObj) < 200) {
	physics_apply_impulse(x,y,lengthdir_x(-0.5 ,point_direction(x,y,global.player.x, global.player.y)), lengthdir_y(-0.5,point_direction(x,y,global.player.x, global.player.y)))	
}

var dir = -point_direction(x,y,global.player.x,global.player.y)

if (phy_rotation < dir+5) {
	phy_rotation += 1
} else if phy_rotation > dir-5 {
	phy_rotation -= 1
} 

if (fire_timer > 0) {
	fire_timer -= 1;
	if (fire_timer == 50) {
		image_speed = 1
	}
} else {
	fire_timer = fire_rate
	var bullet = instance_create_depth(x,y,1,EnemyLaser)
	bullet.projectile_speed = 4
	bullet.direction = -phy_rotation
	image_index = 0
}
}