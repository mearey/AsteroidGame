/// @description Insert description here
// You can write your code in this editor
if !global.pauseObj.paused {
	lifetime -= 1
}

if lifetime <= 0 {
	instance_destroy(self)	
}