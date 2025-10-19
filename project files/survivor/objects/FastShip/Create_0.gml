/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

max_speed = 4;

dmg = 1.0;

ability_cooldown = 0

speed_holder = max_speed

boosting = false

max_hp = 80

hp = 80

cooldown = 600
ability_cooldown=cooldown/(global.cdr)
ability = "Press \'space\' to boost your speed"
function ability_() {
	//speed boost ability here
	ability_cooldown -= 1
	if ability_cooldown <= 0 && (keyboard_check_pressed(vk_space) || CheckControllerButton()) {
		ability_cooldown = 600/(global.cdr)
		speed_holder = max_speed
		max_speed = max_speed*2
		alarm[1] = 75
		boosting = true
		PlaySFX(boostsfx, 1,1.3)
	}

	if boosting {
		part_type_color_mix(global.exhaust, c_lime, c_lime)
		part_type_orientation(global.exhaust, image_angle,image_angle,0,0,0)
		part_type_direction(global.exhaust,0,0,0,0);
		part_particles_create(global.p_system, x - lengthdir_x(9,image_angle+90), y - lengthdir_y(9,image_angle+90), global.exhaust, 1);
		part_particles_create(global.p_system, x + lengthdir_x(9,image_angle+90), y + lengthdir_y(9,image_angle+90), global.exhaust, 1);
	}

}

//starting weapons
var starting_wep = LaserMKI

weapons = [starting_wep]
unique_weapons = [starting_wep]
equipped_weapons = [starting_wep, Weapon, Weapon, Weapon, Weapon, Weapon, Weapon, Weapon, Weapon, Weapon]