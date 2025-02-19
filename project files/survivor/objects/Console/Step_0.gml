/// @description Insert description here
// You can write your code in this editor
if ((abs(gamepad_axis_value(gamepad,gp_axisrh)) > 0.1 || abs(gamepad_axis_value(gamepad, gp_axisrv)) > 0.1)) {
	var rh = gamepad_axis_value(gamepad,gp_axisrh)
	var rv = gamepad_axis_value(gamepad, gp_axisrv)
	var dir = point_direction(0,0,rh,rv)
	if global.pauseObj.paused {
		window_mouse_set(window_mouse_get_x()+gamepad_axis_value(gamepad,gp_axisrh)*10,window_mouse_get_y()+gamepad_axis_value(gamepad,gp_axisrv)*10)
	} else {
		window_mouse_set(window_get_width()/2+lengthdir_x(320,dir),window_get_height()/2 + lengthdir_y(340,dir))
	}
} 



steam_update()
if steam_initialised() {
	
} else {
	steam_init()
}	
if (keyboard_check_released(191)) {
	open = !open
	keyboard_string = ""
	if !steam_get_achievement("console") {
		steam_set_achievement("console")
	}
}

if open {
	if keyboard_check_pressed(vk_enter) {
		try {
			var args = string_split(keyboard_string," ")
			if (array_length(args) == 1) {
				var num = 1
			} else {
				num = real(args[1])
			}
			for (var i = 0; i<num; i++) {
				var res = ""
				if (script_exists(asset_get_index(string_lower(args[0])))) {
					res = string(script_execute(asset_get_index(string_lower(args[0]))))
				} else {
					res = "command not found, code: " + string(asset_get_index(string_lower(args[0])))
				}
				array_push(res_list, res)
				keyboard_string = ""
			}
		} catch(err) {
			res = err.message
			array_push(res_list, res)
			keyboard_string = ""
		}
	}
}