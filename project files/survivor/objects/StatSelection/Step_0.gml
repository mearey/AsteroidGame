/// @description Insert description here
// You can write your code in this editor
if (mouse_x < bbox_right && mouse_x > bbox_left) && (mouse_y > bbox_top && mouse_y < bbox_bottom) {
	image_index	= 1;
} else {
	image_index	= 0;
}

if (mouse_x < bbox_right && mouse_x > bbox_left) && (mouse_y > bbox_top && mouse_y < bbox_bottom) && CheckControllerButton() {
	if (weapon_get) {
		global.player.addWeapon(weapon)
	} else {
		if (stat = "HP") {
			global.player.max_hp += 10;
			global.player.hp += 20;
		} else if (stat = "Projectile Speed") {
			global.player.projectile_speed += 1;
		} else if (stat = "Damage") {
			global.player.dmg+=0.05;
		} else if (stat = "Movement Speed") {
			global.player.max_speed += 0.1;
		}
	}

	global.pauseObj.pause(false)
	global.pauseObj.upgrades = false
	global.player.resetWeapons()	
}