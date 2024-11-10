/// @description Insert description here
// You can write your code in this editor
if (collision_circle(x,y,10,global.ship_selection,false,true)) {
	global.player.coins += 1
	audio_stop_sound(coinGetSound)
	PlaySFX(coinGetSound,1,1)
	instance_destroy(self)
}

if point_distance(x,y,global.player.x,global.player.y) <= global.magnet {
	phy_position_x += lengthdir_x(speed,point_direction(x,y,global.player.x,global.player.y))
	phy_position_y += lengthdir_y(speed,point_direction(x,y,global.player.x,global.player.y))
	speed+=0.3
}