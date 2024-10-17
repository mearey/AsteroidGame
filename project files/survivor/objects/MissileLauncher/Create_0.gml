/// @description Insert description here
// You can write your code in this editor




// Inherit the parent event
event_inherited();
slot = 1
fire_rate = global.player.fire_rate*4
function lvlUp() {
	if (lvl < 10) {
		lvl+=1
		fire_rate -= fire_rate/5
	} 
	if lvl == 10 {
		evolved = true
		removeWeaponFromPool(MissileLauncher)
	}
}