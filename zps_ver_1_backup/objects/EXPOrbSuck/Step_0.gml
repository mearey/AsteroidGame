/// @description Insert description here
// You can write your code in this editor
if (!global.pauseObj.paused) {
x += lengthdir_x(speed_,point_direction(x,y,global.player.x,global.player.y))
y += lengthdir_y(speed_,point_direction(x,y,global.player.x,global.player.y))
image_angle += 6
speed_+=0.4
}

if collision_point(x,y,global.ship_selection,false,true) {
	instance_destroy(self)
	audio_stop_sound(expGetSound)
	PlaySFX(expGetSound,1,1)
	global.player.addXP(number);
}