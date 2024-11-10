/// @description Insert description here
// You can write your code in this editor




// Inherit the parent event
event_inherited();
description = "Aimed weapon that fires a solid beam which damages all enemies in its path"

width = 1;
slot = 9
damage = 2
projectile_speed = 10
function lvlUp() {
	if (lvl < 10) {
		lvl+=1
		width += 1;
	} 
	if lvl >= 10 {
		evolved = true
		removeWeaponFromPool(FrontBeamObj)
	}
}

bullet = -999;