/// @description Insert description here
// You can write your code in this editor
event_inherited()
var targ = collision_circle(x,y,0.5,Enemy,false,true)
if targ {
	instance_destroy(self)
	targ.takeDamage(global.player.dmg*3)
}
image_angle = direction

if !global.pauseObj.paused {
	y += lengthdir_y(projectile_speed*2,direction)
	x += lengthdir_x(projectile_speed*2,direction)
}

