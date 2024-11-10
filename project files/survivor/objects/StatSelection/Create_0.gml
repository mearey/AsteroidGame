/// @description Insert description here
// You can write your code in this editor
var stats = ["HP", "Projectile Speed", "Damage", "Movement Speed"]

stat = stats[random_range(0, 4)]

weapon_get = false

if (random(1)<0.05) {
	weapon_get = true	
}

var weapons = global.weaponPool

if array_length(global.weaponPool) > 0 {
	weapon = weapons[random_range(0,array_length(global.weaponPool))]
} else {
	weapon = Weapon
	weapon_get = false
}

