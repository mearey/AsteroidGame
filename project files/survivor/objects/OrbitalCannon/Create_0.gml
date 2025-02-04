/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

brand = "Will, Williams & Williamsons"
projectile_speed = global.player.projectile_speed*2;
fire_rate = global.player.fire_rate*6;
fire_timer = fire_rate;
range = 300

damage = 5

rotation = 360
image_speed = 0
description = "Orbits the ship and occasionaly fires a bullet at the nearest enemy"

function lvlUp() {
	lvl+=1;	
}
visible = false
alarm[0] = 4