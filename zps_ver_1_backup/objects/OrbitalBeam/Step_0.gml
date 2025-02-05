/// @description Insert description here
// You can write your code in this editor

if (instance_exists(Enemy)) {
	target = instance_nearest(x,y,Enemy)
}

x = global.player.x + lengthdir_x(32,rotation) 
y = global.player.y + lengthdir_y(32,rotation) 

if (rotation >= 360) {
	rotation = 0	
} else {
	rotation += 1;
}

if !global.pauseObj.paused {
if (target != PlayerObj) && distance_to_object(target) < range {
	shooting = true
	image_speed = 1;
	target.takeDamage(global.player.dmg/160)
} else {
	shooting = false
	image_speed = 0;
	image_index = 0;
}
}
