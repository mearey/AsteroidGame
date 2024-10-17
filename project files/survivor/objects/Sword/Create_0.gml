/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
projectile_speed = global.player.projectile_speed;

accuracy = global.player.accuracy;

fire_rate = global.player.fire_rate*2;
fire_timer = fire_rate;

lvl = 1;

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
	} else {
		evolved = true
		removeWeaponFromPool(Sword)
	}
}

sword = instance_create_depth(x,y,20,SwordObject)