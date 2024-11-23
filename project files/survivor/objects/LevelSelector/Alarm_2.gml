/// @description Insert description here
// You can write your code in this editor
sprite_prefetch(level_3__planet)
sprite_prefetch(level_3__sun)
sprite_prefetch(level_3__stars)

//remove loadscreen
instance_destroy(loadscreen)

instance_create_depth(x,y,1,Level3)
room_goto(Level3Room)