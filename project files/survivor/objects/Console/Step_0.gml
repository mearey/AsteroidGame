/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_released(191)) {
	open = !open
	keyboard_string = ""
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