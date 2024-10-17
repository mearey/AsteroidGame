/// @description Insert description here
// You can write your code in this editor
event_inherited()
lighting_colour = c_white
lighting_size = 3
Globals()

global.player = self

max_speed = 2;

dmg = 1;

speed_ = 0;

xspeed = 0;

yspeed = 0;

x_speed = 0;
y_speed = 0;

projectile_speed = 10;

accuracy = 1;

fire_rate = global.fire_rate;
fire_timer = fire_rate;

regen = global.regen

auto_aim = global.auto_aim

target = self

max_hp = 100;
hp = max_hp;

max_xp = 5;
xp = 0;
lvl = 0;

coins = 0

var starting_wep = LaserMKI

weapons = [starting_wep]
unique_weapons = [starting_wep]
equipped_weapons = [starting_wep, Weapon, Weapon, Weapon, Weapon, Weapon, Weapon, Weapon, Weapon, Weapon]

debug = true

function spawnWeapons() {
	//spawn weapons
	for (var i = 0; i < array_length(weapons); i += 1)
	{
		instance_create_depth(x,y,1,weapons[i])
	}	
}
//add xp method
function addXP(ammount) {
	xp+=ammount	
	if (xp >= max_xp) {
		lvl+=1
		xp=xp-max_xp
		max_xp = max_xp*1.1
		global.pauseObj.pause(true)
	}
}
//add weapon method
function addWeapon(weapon) {
	if (array_contains(unique_weapons,weapon)) {
		with (weapon) {
			lvlUp()
		}
	} else {
		array_push(unique_weapons, weapon)
		var s = Slot(weapon)
		if (global.player.equipped_weapons[s] == Weapon) {
			global.player.equipped_weapons[s] = weapon
		}
	}
	array_push(weapons,weapon);
	resetWeapons()
}

//reset waepons
function resetWeapons() {
	with (Weapon) {
		instance_destroy(self)	
	}
	//spawn weapons
	for (var i = 0; i < array_length(weapons); i += 1)
	{
		if (instance_exists(weapons[i])) {
			with (weapons[i]) {
				lvlUp()
			}
		} else if array_contains(equipped_weapons,weapons[i]) {
			instance_create_depth(x,y,1,weapons[i])
		}
	}
}

function takeDamage() {
	image_index = 1
	alarm[0] = 10
}

function loadStats() {
	if (file_exists("save_game_state.ini")) {
		ini_open("save_game_state.ini")
		//load stats
		max_speed = ini_read_real("STATESTATS", "max_speed", global.player.max_speed)
		projectile_speed = ini_read_real("STATESTATS", "projectile_speed", global.player.projectile_speed)
		accuracy = ini_read_real("STATESTATS", "accuracy", global.player.accuracy)
		fire_rate = ini_read_real("STATESTATS", "fire_rate", global.player.fire_rate)
		max_hp = ini_read_real("STATESTATS", "max_hp", global.player.max_hp)
		max_xp = ini_read_real("STATESTATS", "max_xp", global.player.max_xp)
		xp = ini_read_real("STATESTATS", "xp", global.player.xp)
		lvl = ini_read_real("STATESTATS", "lvl", 0)
		hp = ini_read_real("STATESTATS", "hp", global.player.hp)
		dmg = ini_read_real("STATESTATS", "dmg", global.player.dmg)
	}
}