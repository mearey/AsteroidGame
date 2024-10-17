/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


projectile_speed = global.player.projectile_speed*3;
fire_rate = global.player.fire_rate*6;
fire_timer = fire_rate;
range = 300

rotation = 360

function lvlUp() {
	lvl+=1;	
}