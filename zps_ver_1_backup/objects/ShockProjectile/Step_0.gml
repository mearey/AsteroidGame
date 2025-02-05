/// @description Insert description here
// You can write your code in this editor
event_inherited()
if collision_circle(x,y,0.5,Enemy,false,true) {
	instance_destroy(self)
}
image_angle = direction

if !global.pauseObj.paused {
	y += lengthdir_y(projectile_speed*2,direction)
	x += lengthdir_x(projectile_speed*2,direction)
}
