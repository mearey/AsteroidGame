/// @description Insert description here
// You can write your code in this editor
var slot_object = instance_find(WeaponSlot,0)

if !(mouse_check_button(mb_left)) && dragging {
	dragging = false
	var pause_obj = instance_find(PauseSelector,0)
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
}

if (mouse_x-cam_x < bbox_right-cam_x && mouse_x-cam_x > bbox_left-cam_x) && (mouse_y-cam_y > bbox_top-cam_y && mouse_y-cam_y < bbox_bottom-cam_y) {
	hovered = true
} else {
	hovered = false
}

if hovered && mouse_check_button_pressed(mb_left) {
	dragging = true
}

if hovered && keyboard_check(vk_shift) && mouse_check_button_pressed(mb_left) {
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

