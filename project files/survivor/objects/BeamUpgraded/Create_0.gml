/// @description Insert description here
// You can write your code in this editor




// Inherit the parent event
event_inherited();
lighting_colour = c_aqua
width = 2;
slot = 9
damage = 3
function lvlUp() {
	if (lvl < 10) {
		lvl+=1
		width += 1.3;
	} else {
		evolved = true
		removeWeaponFromPool(BeamUpgraded)
	}
}

bullet = -999;