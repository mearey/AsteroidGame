/// @description Insert description here
// You can write your code in this editor
if collision_circle(x,y,size,global.ship_selection,false,true) {
	global.player.hp -= damage
	global.player.takeDamage()
	instance_destroy(self)
}
image_angle = direction

if !global.pauseObj.paused {
	y += lengthdir_y(projectile_speed,direction)
	x += lengthdir_x(projectile_speed,direction)
}

lifetime-=1
if lifetime <=0 {
	instance_destroy(self)	
}