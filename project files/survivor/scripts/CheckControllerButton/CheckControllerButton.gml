// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckControllerButton(){
	/*
	for (var i=gp_face1; i<gp_axisrv; i++) {
		if (gamepad_button_check_pressed(Console.gamepad,i)) {
			return i	
			log(i)
		}
	}*/
	if (gamepad_button_check_pressed(Console.gamepad,gp_shoulderr)) {
		return gp_shoulderr
	}
	if (gamepad_button_check_pressed(Console.gamepad,gp_shoulderl)) {
		return gp_shoulderl
	}
}