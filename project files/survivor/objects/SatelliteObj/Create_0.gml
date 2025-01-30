/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

p_x = random_range(-6,6)
p_y = random_range(-6,6)
var rand = random_range(0.9, 1.5)
image_xscale = rand
image_yscale = rand

hp = 3*rand
xp = 2*rand

var rand = random(1)
if rand < 0.333 {
	sprite_index = satellitealt2
	hp = hp*0.8
} else if rand < 0.666 {
	sprite_index = SatelliteWholeSprite
	hp = hp*1.2
}