/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

max_speed = 3;

dmg = 1.1;

ability_cooldown = 0

speed_holder = max_speed

boosting = false

max_hp = 110

hp = 110

overclock_timer = 200
clocking = false
addition = 0

cooldown = 1000
ability_cooldown=cooldown/(global.cdr)
ability = "Press \'space\' to overclock weapons"
function ability_() {
	//speed boost ability here
	ability_cooldown -= 1
	if ability_cooldown <= 0 && keyboard_check_pressed(vk_space) {
		ability_cooldown = 1000/(global.cdr)
		clocking = true
	}
	if clocking {
		with (Weapon) {
			fire_rate -= 0.04
			other.addition += 0.04
		}
		overclock_timer-=1
		if overclock_timer <= 0 {
			overclock_timer = 200
			clocking = false
			with (Weapon) {
				fire_rate += other.addition	
			}
			addition = 0
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
var starting_wep = LaserMKI

weapons = [starting_wep]
unique_weapons = [starting_wep]
equipped_weapons = [starting_wep, Weapon, Weapon, Weapon, Weapon, Weapon, Weapon, Weapon, Weapon, Weapon]