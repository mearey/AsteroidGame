/// @description Insert description here
// You can write your code in this editor
var i = 0
repeat (gamepad_get_device_count()) {
	if gamepad_is_connected(i) {
		gamepad = i
	}	
	i+=1
}