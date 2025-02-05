/// @description Insert description here
// You can write your code in this editor
var target = PlayerObj
if (instance_exists(Enemy)) {
	target = instance_nearest(x,y,Enemy)
}

x = global.player.x + lengthdir_x(38,rotation) 
y = global.player.y + lengthdir_y(38,rotation) 

if (rotation <= 0) {
	rotation = 360	
} else {
	rotation -= 0.5;
}

if !global.pauseObj.paused {
if (fire_timer > 0) && distance_to_object(target) < range {
	fire_timer -= 1
} else if (target != PlayerObj) && distance_to_object(target) < range {
	fire_timer = fire_rate;
	ShootShot(LaserObj, point_direction(x,y,target.x, target.y), x,y,accuracy,projectile_speed,1000)
}
}
