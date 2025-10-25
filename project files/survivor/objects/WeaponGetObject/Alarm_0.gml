/// @description Insert description here
// You can write your code in this editor
ready = true

var temp = instance_create_depth(0,0,0,weapon)
if (global.player.equipped_weapons[temp.slot] != Weapon) {
	slot = temp.slot
} else {
	slot = -1
}

instance_destroy(temp)
