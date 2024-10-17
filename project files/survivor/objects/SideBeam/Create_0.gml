/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event
event_inherited();
slot = 2
width = 1;
function lvlUp() {
	if (lvl < 10) {
		lvl+=1
		width += 1;
	}
	if lvl == 10 {
		evolved = true
		removeWeaponFromPool(SideBeam)
	}
}

bullet = -999;