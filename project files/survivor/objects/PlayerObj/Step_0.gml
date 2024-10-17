/// @description Insert description here
// You can write your code in this editor
//auto aim
if !global.pauseObj.paused {
if auto_aim {
	if (instance_exists(Enemy)) {
		target = instance_nearest(x,y,Enemy)
	}
} else {
	image_angle = point_direction(x,y,mouse_x,mouse_y)	
}

if target != self {
	if (instance_exists(target)) {
		image_angle = point_direction(x,y,target.x,target.y)
	}
}
}


if ((keyboard_check(ord("W"))||keyboard_check(ord("A"))||keyboard_check(ord("S"))||keyboard_check(ord("D"))) && speed_ < max_speed && !global.pauseObj.paused) {
	speed_ += 0.2;	
} else if global.pauseObj.paused {
	speed_ = 0;
} else if (speed_ > 0) {
	speed_ -= 0.2;	
}

if (keyboard_check(ord("W")) && y>0) {
	yspeed -= speed_
}
if (keyboard_check(ord("D")) && x<room_width) {
	xspeed += speed_
}
if (keyboard_check(ord("S")) && y<room_height) {
	yspeed += speed_
}
if (keyboard_check(ord("A")) && x>0) {
	xspeed -= speed_
}
if !(global.pauseObj.paused) {
x+=xspeed
y+=yspeed
x_speed = xspeed;
y_speed = yspeed;
xspeed = 0
yspeed = 0
}
if (hp <= 0) {
	clearEntities()
	room_goto(MainMenu)
	saveTotal()
	wipeSave()
}

if (hp < max_hp) && !global.pauseObj.paused {
	hp+=regen/100
}