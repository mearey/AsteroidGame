/// @description Insert description here
// You can write your code in this editor
var stats = ["HP", "Projectile Speed", "Damage", "Movement Speed"]

stat = stats[random_range(0, 4)]

weapon_get = false

if (random(1)<0.05) {
	weapon_get = true	
}

var equipped = []
var global_ = []
for (var i=0; i<array_length(global.player.equipped_weapons); i+=1) {
	array_push(equipped, object_get_name(global.player.equipped_weapons[i].object_index))
}
for (var i=0; i<array_length(global.weaponPool); i+=1) {
	array_push(global_, object_get_name(global.weaponPool[i]))
}
var weapons = array_intersection(equipped, global_)

if array_length(weapons) > 0 {
	weapon = asset_get_index(weapons[random_range(0,array_length(weapons))])
	var inst =  instance_create_depth(0,0,0,weapon)
	slot = inst.slot
	instance_destroy(inst)
} else {
	weapon = Weapon
	weapon_get = false
}

