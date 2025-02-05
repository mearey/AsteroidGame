/// @description Insert description here
// You can write your code in this editor


event_inherited();
slot = 2
width = 1;
description = "Aimed weapon that fires a small solid beam which damages all enemies in its path"
damage = 2
projectile_speed = 10
// Inherit the parent event
function lvlUp() {
	if (lvl < 10) {
		lvl+=1
		width += 1;
	}
	if lvl >= 10 {
		evolved = true
		removeWeaponFromPool(SideBeam)
	}
}

bullet = -999;