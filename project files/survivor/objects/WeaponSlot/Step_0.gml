/// @description Insert description here
// You can write your code in this editor

if !instance_exists(PauseSelector) {
	instance_destroy(self)
}

if !(mouse_check_button(mb_left)) && dragging {
	if green {
		if (mouse_x<synergy.bbox_right && mouse_x>synergy.bbox_left && mouse_y>synergy.bbox_top && mouse_y< synergy.bbox_bottom) {
			RemoveWeapon(weapon)
			RemoveWeapon(synergy.weapon)
			global.player.addWeapon(evolution)
			array_push(global.weaponPool,evolution)
			instance_find(PauseSelector,0).CreateInventory()
		}
	}
	dragging = false
	if mouse_y>surface_get_height(application_surface)*2/3 {
		unequipWeapon(weapon)
	}
}

if (mouse_x < bbox_right && mouse_x > bbox_left) && (mouse_y > bbox_top && mouse_y < bbox_bottom) && (mouse_check_button_pressed(mb_left)|| CheckControllerButton()) {
	dragging = true
}

if (mouse_x < bbox_right && mouse_x > bbox_left) && (mouse_y > bbox_top && mouse_y < bbox_bottom) && ((keyboard_check(vk_shift) && mouse_check_button_pressed(mb_left)) || CheckControllerButton()) {
	unequipWeapon(weapon)
}