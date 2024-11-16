/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
description = "Melee weapon that slashes at nearby enemies and deals massive damage"
projectile_speed = global.player.projectile_speed;

accuracy = global.player.accuracy;

fire_rate = global.player.fire_rate*3;
fire_timer = fire_rate;

lvl = 1;

damage = 4*global.player.dmg

slot = 0

size = 1.5
range = 100

target = PlayerObj

alarm_ = false

animation = (20)

right = true

anim_started = false

function lvlUp() {
	if (lvl < 10) {
		lvl+=1;	
		fire_rate -= 1;
		range+=20
		size+=0.3
		sword.image_xscale = size
		sword.image_yscale = size
	} else {
		evolved = true
		removeWeaponFromPool(Sword)
	}
}

sword = instance_create_depth(x,y,20,SwordObject)
