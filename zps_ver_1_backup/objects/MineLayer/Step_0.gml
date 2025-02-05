/// @description Insert description here
// You can write your code in this editor
x = global.player.x 
y = global.player.y 
image_angle = global.player.image_angle
image_angle = global.player.image_angle

if !global.pauseObj.paused {
if (fire_timer > 0) {
	fire_timer -= 1
} else {
	fire_timer = fire_rate;
	//create mine
	instance_create_depth(x,y,1,Mine)
}
}