/// @description Insert description here
// You can write your code in this editor

init = false

alarm[1] = 30
image_yscale = 0

if instance_exists(WizardObj) {
	image_blend = choose(c_lime,c_white,c_red,c_fuchsia)
}