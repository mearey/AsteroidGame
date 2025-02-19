/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

lighting_size =4

max_speed = 2;
dmg = 1.5;
fire_rate = global.fire_rate*1.2
fire_timer = fire_rate

ability = "Press space to throw a hammer towards your cursor that deals massive damage and heals your ship for a small percentage of the damgage"

max_hp=150;
hp=max_hp;
cooldown = 350/(global.cdr)
ability_cooldown = 350/(global.cdr)
var starting_wep = Sword

weapons = [starting_wep]
unique_weapons = [starting_wep]
equipped_weapons = [starting_wep, Weapon, Weapon,  Weapon, Weapon, Weapon, Weapon, Weapon, Weapon, Weapon]

//create hammer 
hammer = NaN

alarm[1] = 3

function ability_() {
	//nova ability here
	ability_cooldown -= 1
	if ability_cooldown <= 0 && (keyboard_check_pressed(vk_space) || CheckControllerButton()) {
		hammer.throw_()
		ability_cooldown = 250/(global.cdr)
		PlaySFX(swordSwoosh,1,1.3)
		PlaySFX(swordSwoosh,1,1.3)
		PlaySFX(swordSwoosh,1,1.3)
		PlaySFX(swordSwoosh,1,1.3)
		PlaySFX(swordSwoosh,1,1.3)
	}
}