/// @description Insert description here
// You can write your code in this editor

if ability_cooldown == 1 {
	PlaySFX(abilitysound,10,10)
	ability_cooldown -= 1
}

camera_set_view_pos(view_camera[0], x-camera_get_view_width(view_camera[0])/2, y-camera_get_view_height(view_camera[0])/2)

if global.luck <=0 {
	global.luck = 1	
}

if !global.pauseObj.paused {

ability_()
//nohit acheivement
if image_index != 1 {
	nohitcounter += 1
	if nohitcounter >= 18000 {
		steam_set_achievement("nohit_5mins")	
	}
	if nohitcounter >= 21600 {
		instance_create_depth(x,y-25,depth, nohittextobj)
		instance_create_depth(x,y-150, depth, PicayuneEnemy)
		nohitcounter = 20000
	}
} else {
	nohitcounter = 0	
}

image_angle = point_direction(x,y,mouse_x,mouse_y)	

if target != self {
	if (instance_exists(target)) {
		image_angle = point_direction(x,y,target.x,target.y)
	}
}
}

if !(global.pauseObj.paused) && !dead {
if ((keyboard_check(ord("W"))||keyboard_check(ord("A"))||keyboard_check(ord("S"))||keyboard_check(ord("D"))||(abs(gamepad_axis_value(Console.gamepad,gp_axislh)) > 0.1 || abs(gamepad_axis_value(Console.gamepad, gp_axislv)) > 0.1)) && speed_ < max_speed && !global.pauseObj.paused) {
	speed_ += 0.2;	
} else if global.pauseObj.paused {
	speed_ = 0;
} else if (speed_ > 0) {
	speed_ -= 0.2;	
	if global.pauseObj.paused {
		speed_ = 0	
	}
}
if abs(gamepad_axis_value(Console.gamepad,gp_axislh)) > 0.1 || abs(gamepad_axis_value(Console.gamepad, gp_axislv)) > 0.1 {
	yspeed += speed_*gamepad_axis_value(Console.gamepad,gp_axislv)
	xspeed += speed_*gamepad_axis_value(Console.gamepad,gp_axislh)
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
}

if !(global.pauseObj.paused) && !dead {
	x+=xspeed
	y+=yspeed
	if x < 0 || x > room_width {
		x -= xspeed
	}
	if y < 0 || y > room_height {
		y -= yspeed	
	}
	x_speed = xspeed;
	y_speed = yspeed;
	xspeed = 0
	yspeed = 0
}
if (hp <= 0 && !dead) {
	
	dead = true
	var inst = instance_create_depth(x,y,1,DeadPlayer)
	inst.phy_rotation = -image_angle
	inst.sprite_index = sprite_index
	sprite_index = nocollision	
	with (Weapon) {
		instance_destroy(self)
	}
	with (Enemy) {
		
	}
	alarm[11] =200
	lighting_size = 0
}
if (hp < max_hp) && !global.pauseObj.paused {
	hp+=regen/300
}

if speed_ > 0 {
	if image_angle > previous_dir+1 {
		image_index = 2
	} else if image_angle < previous_dir-1 {
		image_index = 3
	} else if image_angle == previous_dir {
		image_index = 0
	}	
}
previous_dir = image_angle
