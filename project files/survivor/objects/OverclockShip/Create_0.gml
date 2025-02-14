/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

max_speed = 4;

dmg = 1.1;

ability_cooldown = 0

speed_holder = max_speed

boosting = false

max_hp = 110

hp = 110

overclock_timer = 200
clocking = false
addition = 0

cooldown = 2000
ability_cooldown=cooldown/(global.cdr)
ability = "Press \'space\' to overclock weapons"
function ability_() {
	//speed boost ability here
	ability_cooldown -= 1
	if ability_cooldown <= 0 && keyboard_check_pressed(vk_space) && !clocking {
		ability_cooldown = 1200/(global.cdr)
		clocking = true
	}
	if clocking {
		lighting_colour = c_fuchsia
		with (Weapon) {
			fire_rate -= fire_rate/60
		}
		lighting_size += 0.015
		lighting_intensity += 0.002
		addition += 0.1
		overclock_timer-=1
		if overclock_timer <= 0 {
			overclock_timer = 200
			clocking = false
			resetWeapons()
			lighting_size = 3
			lighting_intensity = 0.1
			addition = 0
			lighting_colour = c_white
		}
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
var starting_wep = JointLaser

weapons = [starting_wep]
unique_weapons = [starting_wep]
equipped_weapons = [starting_wep, Weapon, Weapon, Weapon, Weapon, Weapon, Weapon, Weapon, Weapon, Weapon]