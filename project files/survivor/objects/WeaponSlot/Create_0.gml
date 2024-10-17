/// @description Insert description here
// You can write your code in this editor
slot = 0

weapon = Weapon

grey = false

blue = false

green = false

dragging = false

synergy = -1

evolution = -1

cam_x = camera_get_view_x(view_camera[0])
cam_y = camera_get_view_y(view_camera[0])
cam_width = camera_get_view_width(view_camera[0])
cam_height = camera_get_view_height(view_camera[0])


function unequipWeapon(weapon) {
	var count = 0;
	for (var i = 0; i<array_length(global.player.equipped_weapons); i++) {
		if (global.player.equipped_weapons[i] != Weapon) {
			count += 1	
		}
	}
	if count > 1 {
		global.player.equipped_weapons[slot] = Weapon
		global.player.resetWeapons()
		instance_find(PauseSelector,0).CreateInventory()
	}
}