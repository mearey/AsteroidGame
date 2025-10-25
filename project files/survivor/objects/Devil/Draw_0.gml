/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if !global.pauseObj.paused {
	timer1-=1
	timer2-=1
	timer3-=1
	timer4-=1
	if timer1 <=0 {
		timer1 = 10+random(15)
		rot1 = image_angle
	}
	if timer2 <=0 {
		timer2 = 10+random(15)
		rot2 = image_angle
	}
	if timer3 <=0 {
		timer3 = 10+random(15)
		rot3 = image_angle
	}
	if timer4 <=0 {
		timer4 = 10+random(15)
		rot4 = image_angle
	}
}

draw_sprite_ext(level5_throne,0,room_width/2,room_height/2,1,1,0,c_white,1)

draw_self()