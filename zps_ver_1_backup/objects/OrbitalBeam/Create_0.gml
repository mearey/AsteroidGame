/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

shooting = false

fire_rate = global.player.fire_rate*6;

target = PlayerObj

range = 350

rotation = 360

damage = 1

projectile_speed = 10

description = "Orbits the ship and constantly beams nearby enemies"

function lvlUp() {
	lvl+=1;	
}