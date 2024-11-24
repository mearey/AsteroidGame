/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(vk_escape)|| keyboard_check_pressed(ord("P"))) && !upgrades  && instance_exists(Level) && !global.player.dead {
	if (instance_exists(OptionsSelector)) {
		instance_destroy(OptionsSelector)	
		instance_create_depth(x,y,1,PauseSelector)
	} else {
		pause(false)
	}
}
if paused == true {
	alarm[0]++;
}
