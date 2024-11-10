/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
description = "Mele weapon that slashes at nearby enemies and deals massive damage"
projectile_speed = global.player.projectile_speed;

accuracy = global.player.accuracy;

fire_rate = global.player.fire_rate*3;
fire_timer = fire_rate;

lvl = 1;

damage = 8

slot = 0

range = 100

target = PlayerObj

alarm_ = false

animation = 10/(20/fire_rate)

right = true

function lvlUp() {
	if (lvl < 10) {
		lvl+=1;	
		fire_rate -= 1;
		range+=20
	} else {
		evolved = true
		removeWeaponFromPool(Sword)
	}
}

sword = instance_create_depth(x,y,20,SwordObject)