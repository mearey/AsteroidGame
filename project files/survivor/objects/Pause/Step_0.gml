/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(vk_escape) || gamepad_button_check_pressed(Console.gamepad, gp_start) || keyboard_check_pressed(ord("P"))) && !upgrades  && instance_exists(Level) && !global.player.dead {
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
if upgrades {
	if !instance_exists(StatSelection) && !instance_exists(WeaponGetObject)	{
		pause(false)	
	}
}