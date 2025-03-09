/// @description Insert description here
// You can write your code in this editor

if instance_exists(PauseSelector) && !global.pauseObj.paused {
	instance_destroy(PauseSelector)	
}
	