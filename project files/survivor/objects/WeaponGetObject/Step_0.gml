/// @description Insert description here
// You can write your code in this editor
animation += 1;

if (CheckControllerButton() && hovered) {
	global.player.addWeapon(weapon)
	global.pauseObj.pause(false)
	global.pauseObj.upgrades = false
}