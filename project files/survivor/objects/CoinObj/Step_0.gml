/// @description Insert description here
// You can write your code in this editor
if (collision_circle(x,y,10,PlayerObj,false,true)) {
	global.player.coins += 1
	instance_destroy(self)
}