/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


projectile_speed = global.player.projectile_speed*1.2
fire_rate = global.player.fire_rate*6;
fire_timer = fire_rate;
accuracy = global.player.accuracy*4
range = 300

rotation = 360
damage = 4

description = "Orbits the ship and occasionaly fires a laser at the nearest enemy"

function lvlUp() {
	lvl+=1;	
}
visible = false
alarm[0] = 4