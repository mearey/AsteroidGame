/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
description = "Creates a field around the ship that damages enemies that enter"
lvl = 1;

slot = 5

range = 100

target = PlayerObj

alarm_ = false

animation = 10/(20/fire_rate)

right = true

size = 1.5

damage = 2

projectile_speed = 0

function lvlUp() {
	if (lvl < 10) {
		lvl+=1;	
		size += 0.2;
	} else {
		evolved = true
		removeWeaponFromPool(DisruptionField)
	}
}