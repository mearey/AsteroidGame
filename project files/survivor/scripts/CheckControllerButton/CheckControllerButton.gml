// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckControllerButton(){
	Console.gamepad = 0
	var i = 0
	repeat (gamepad_get_device_count()) {
		if gamepad_is_connected(i) {
			Console.gamepad = i
		}	
		i+=1
	}
	/*
	for (var i=gp_face1; i<gp_axisrv; i++) {
		if (gamepad_button_check_pressed(Console.gamepad,i)) {
			return i	
			log(i)
		}
	}*/
	if (gamepad_button_check_pressed(Console.gamepad, gp_face1)) {
		return gp_face1
	}
	if (gamepad_button_check_pressed(Console.gamepad,gp_shoulderr)) {
		return gp_shoulderr
	}
	if (gamepad_button_check_pressed(Console.gamepad,gp_shoulderl)) {
		return gp_shoulderl
	}
	return false
}