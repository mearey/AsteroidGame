/// @description Insert description here
// You can write your code in this editor
var slot_object = instance_find(WeaponSlot,0)

var pause_obj = instance_find(PauseSelector,0)
if !pause_obj {
	instance_destroy(self)
}
if !(mouse_check_button(mb_left)) && dragging {
	dragging = false
	for (var i =0; i< array_length(pause_obj.slots); i++;) {
		if (pause_obj.slots[i].slot = slot) {
			slot_object = pause_obj.slots[i]
		}
	}
	if (mouse_x-cam_x < slot_object.bbox_right-cam_x && mouse_x-cam_x > slot_object.bbox_left-cam_x) && (mouse_y-cam_y > slot_object.bbox_top-cam_y && mouse_y-cam_y < slot_object.bbox_bottom-cam_y) {
		global.player.equipped_weapons[slot] = item
		global.player.resetWeapons()
		instance_find(PauseSelector,0).CreateInventory()
	}
	if pause_obj.trader {
		if 	mouse_x-cam_x < surface_get_width(application_surface)/2 && !selling {
			array_push(pause_obj.sell_slots, id)
			log(pause_obj.sell_slots)
			for (var i=0; i<array_length(pause_obj.inv_slots); i+=1) {
				if pause_obj.inv_slots[i] == id {
					array_delete(pause_obj.inv_slots,i,1)	
				}
			}
			for (var i=0; i<array_length(global.player.unique_weapons); i+=1) {
				if global.player.unique_weapons[i] == item {
					array_delete(global.player.unique_weapons,i,1)	
				}
			}

			//make slots trader slots
			for (var i=0; i<array_length(pause_obj.sell_slots); i+=1) {
				pause_obj.sell_slots[i].selling = true;
			}
			pause_obj.CreateInventory()
		} else if selling && mouse_x-cam_x > surface_get_width(application_surface)/2 {
			for (var i=0; i<array_length(pause_obj.sell_slots); i+=1) {
				if pause_obj.sell_slots[i] == id {
					array_delete(pause_obj.sell_slots,i,1)	
				}
			}
			array_push(global.player.unique_weapons, item)
			instance_destroy(self)
			pause_obj.CreateInventory()
		}
	}
}
try {
if pause_obj.trader {
	if 	mouse_x-cam_x < surface_get_width(application_surface)/2 && selling && CheckControllerButton() && hovered {
		for (var i=0; i<array_length(pause_obj.sell_slots); i+=1) {
			if pause_obj.sell_slots[i] == id {
				array_delete(pause_obj.sell_slots,i,1)	
			}
		}
		array_push(global.player.unique_weapons, item)
		instance_destroy(self)
		pause_obj.CreateInventory()
	} else if !selling && mouse_x-cam_x > surface_get_width(application_surface)/2 && CheckControllerButton() && hovered {
		array_push(pause_obj.sell_slots, id)
		log(pause_obj.sell_slots)
		for (var i=0; i<array_length(pause_obj.inv_slots); i+=1) {
			if pause_obj.inv_slots[i] == id {
				array_delete(pause_obj.inv_slots,i,1)	
			}
		}
		for (var i=0; i<array_length(global.player.unique_weapons); i+=1) {
			if global.player.unique_weapons[i] == item {
				array_delete(global.player.unique_weapons,i,1)	
			}
		}

		//make slots trader slots
		for (var i=0; i<array_length(pause_obj.sell_slots); i+=1) {
			pause_obj.sell_slots[i].selling = true;
		}
		pause_obj.CreateInventory()
	}
}

if (mouse_x-cam_x < bbox_right-cam_x && mouse_x-cam_x > bbox_left-cam_x) && (mouse_y-cam_y > bbox_top-cam_y && mouse_y-cam_y < bbox_bottom-cam_y) {
	hovered = true
} else {
	hovered = false
}

if hovered && (mouse_check_button_pressed(mb_left) || CheckControllerButton()) {
	dragging = true
}

if hovered && ((keyboard_check(vk_shift) && mouse_check_button_pressed(mb_left)) || CheckControllerButton()) && !selling {
	global.player.equipped_weapons[slot] = item
	global.player.resetWeapons()
	instance_find(PauseSelector,0).CreateInventory()
}

if (hovered || dragging) {
	var pause_obj = instance_find(PauseSelector,0)
	for (var i =0; i< array_length(pause_obj.slots); i++;) {
		if (pause_obj.slots[i].slot = slot) {
			pause_obj.slots[i].grey = true
			slot_object = pause_obj.slots[i]
		} else {
			pause_obj.slots[i].grey = false
		}
	}
}

} catch (err) {
	
}	