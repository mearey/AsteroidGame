/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

lighting_size =4
sprite_index = MeeleShipSprite
max_speed = 2.2;
dmg = 1.2;
fire_rate = global.fire_rate
fire_timer = fire_rate

ability = "Press \'space'\ to throw a hammer towards your cursor, dealing massive damage and healing for a small percentage of the damage"

max_hp=140;
hp=max_hp;
cooldown = 375/(global.cdr)
ability_cooldown = 375/(global.cdr)
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
		ability_cooldown = 375/(global.cdr)
		PlaySFX(swordSwoosh,1,1.3)
		PlaySFX(swordSwoosh,1,1.3)
		PlaySFX(swordSwoosh,1,1.3)
		PlaySFX(swordSwoosh,1,1.3)
		PlaySFX(swordSwoosh,1,1.3)
	}
}