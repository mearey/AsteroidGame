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

draw_sprite_ext(back_leg_1,0,x,y,1,1,rot1,c_white,1)
draw_sprite_ext(back_leg_2,0,x,y,1,1,rot1+random_range(-3,3),c_white,1)

draw_sprite_ext(front_1,0,x,y,1,1,rot2,c_white,1)
draw_sprite_ext(front_2,0,x,y,1,1,rot2+random_range(-3,3),c_white,1)

draw_sprite_ext(_2nd_from_back_1,0,x,y,1,1,rot3,c_white,1)
draw_sprite_ext(_2nd_from_back_2,0,x,y,1,1,rot3+random_range(-3,3),c_white,1)

draw_sprite_ext(_3rd_from_back_1,0,x,y,1,1,rot4,c_white,1)
draw_sprite_ext(_3rd_from_back_2,0,x,y,1,1,rot4+random_range(-3,3),c_white,1)

draw_self()