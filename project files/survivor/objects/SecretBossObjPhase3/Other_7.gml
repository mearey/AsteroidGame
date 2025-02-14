/// @description Insert description here
// You can write your code in this editor
if sprite_index == secret_boss_phase_2_death {
	sprite_index = secret_boss_phase_3_idling
	image_xscale = 1
	image_yscale = 1
	stage = 1
}

if 	sprite_index == secret_boss_phase_3_death {
	instance_destroy(self)
}
