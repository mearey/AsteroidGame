/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

fire_rate = random_range(150,250)

fire_timer = fire_rate

inst = self

alarm[1] = 4
hp = 10
lighting_colour = c_fuchsia
lighting_size = 2
lighting_intensity = 0.6

if random(1) < 0.5 {
	sprite_index = wizardRed
}