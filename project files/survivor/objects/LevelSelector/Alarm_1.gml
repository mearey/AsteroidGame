/// @description Insert description here
// You can write your code in this editor

sprite_prefetch(level_1__planet)
sprite_prefetch(level_1__sun)
sprite_prefetch(level_1__stars)

//remove loadscreen
instance_destroy(loadscreen)

instance_create_depth(x,y,1,Level1)
room_goto(Level1Room)