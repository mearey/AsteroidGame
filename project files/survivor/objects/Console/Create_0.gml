/// @description Insert description here
// You can write your code in this editor
global.randomness = 0
open = false
controller = false
res_list = []
steam_update()
steam_init()
steam_update()
loadOptions()
gamepad = 0
var i = 0
new_x = 0
new_y = 0
repeat (gamepad_get_device_count()) {
	if gamepad_is_connected(i) {
		gamepad = i
	}	
	i+=1
}