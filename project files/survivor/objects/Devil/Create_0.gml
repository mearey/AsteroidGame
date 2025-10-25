/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
max_hp = 10000
hp = 10000
lighting_colour = c_red 
lighting_size = 10
lighting_intensity = 0.2

dir = 0
instance_create_depth(0,0,0,nopause)
timer1 = 10 + random(15)
timer2 = 10 + random(15)
timer3 = 10 + random(15)
timer4 = 10 + random(15)

rot1 = 0
rot2 = 0
rot3 = 0
rot4 = 0

damage = 2

centerx = room_width/2
centery = room_height/2

move_cooldown = 200;

moves = [
	function move0() {
		move_cooldown = 5
		instance_create_depth(room_width/2,room_height/2, depth, GreenSkullObj, {sprite_index: choose(mite1,mite2,mite3)})
	}
]