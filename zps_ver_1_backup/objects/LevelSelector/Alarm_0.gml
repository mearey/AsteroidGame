/// @description Insert description here
// You can write your code in this editor

sprite_prefetch(level_2_planet)
sprite_prefetch(level_2__sun)
sprite_prefetch(level_2_stars)
	
//remove loadscreen
instance_destroy(loadscreen)
	
instance_create_depth(x,y,1,Level2)
room_goto(Level2Room)