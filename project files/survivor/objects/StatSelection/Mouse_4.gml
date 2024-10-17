/// @description Insert description here
// You can write your code in this editor
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