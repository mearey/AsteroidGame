/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
sprite_prefetch(uranus)
sprite_prefetch(level_3__sun)
sprite_prefetch(uranus_stars_background)

//remove loadscreen
instance_destroy(loadscreen)

instance_create_depth(x,y,1,Level4)
room_goto(Level4Room)