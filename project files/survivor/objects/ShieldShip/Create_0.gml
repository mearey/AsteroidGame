/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

max_speed = 3;

dmg = 0.8;

ability_cooldown = 0

speed_holder = max_speed

boosting = false

max_hp = 120

hp = 120

cooldown = 4000
ability_cooldown=cooldown/(global.cdr)
ability = "Press \'space\' to summon a buddy"
function ability_() {
	//speed boost ability here
	ability_cooldown -= 1
	if ability_cooldown <= 0 && (keyboard_check_pressed(vk_space) || CheckControllerButton()) {
		ability_cooldown = 4000/(global.cdr)
		instance_create_depth(x,y,0,BuddyObj)
	}

}

//starting weapons
var starting_wep = SideBeam

weapons = [starting_wep]
unique_weapons = [starting_wep]
equipped_weapons = [Weapon, Weapon, starting_wep, Weapon, Weapon, Weapon, Weapon, Weapon, Weapon, Weapon]