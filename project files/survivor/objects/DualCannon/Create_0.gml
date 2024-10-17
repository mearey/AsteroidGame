/// @description Insert description here
// You can write your code in this editor




// Inherit the parent event
event_inherited();
slot = 1
function lvlUp() {
	if (lvl < 10) {
		lvl+=1
		fire_rate -= 0.5
	} else {
		evolved = true
		removeWeaponFromPool(DualCannon)
	}
}