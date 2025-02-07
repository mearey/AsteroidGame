/// @description Insert description here
// You can write your code in this editor
event_inherited()
lighting_colour = c_white
lighting_size = 3
Globals()

global.player = self

start_time = current_time

previous_dir = image_angle

nohitcounter = 0

damage_taken = 0
enemies_defeated = 0
exp_gained = 0

max_speed = 3;

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

cdr = global.cdr

scrap = 0

target = self

max_hp = 100;
hp = max_hp;
prev_hp = hp

draw_hp = false
draw_hp_timer = 100


max_xp = 12;
xp = 0;
lvl = 0;

coins = 0

cooldown = 1000

dead = false

ability_cooldown = cooldown/global.cdr
ability = "Press \'space\' to activate a knockback nova"

var starting_wep = CannonMKI

weapons = [starting_wep]
unique_weapons = [starting_wep]
equipped_weapons = [Weapon, Weapon, Weapon,  Weapon, Weapon, starting_wep, Weapon, Weapon, Weapon, Weapon]

debug = true

time = ""

function ability_() {
	//nova ability here
	ability_cooldown -= 1
	if ability_cooldown <= 0 && keyboard_check_pressed(vk_space) {
		var list = ds_list_create();
		var num = collision_circle_list(x,y,256,Enemy,false,true,list,false)
		for (var i = 0; i<num; i++) {
			var dir_ = -point_direction(x,y,list[| i].x,list[| i].y)
			list[| i].phy_speed_x += lengthdir_x(4, dir_)
			list[| i].phy_speed_y -= lengthdir_y(4, dir_)
		}
		ability_cooldown = 1000/(global.cdr)
		instance_create_depth(x,y,1,shockwaveObj)
		PlaySFX(novasfx,1,1.3)
	}
}

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
		max_xp = max_xp*1.15
		global.pauseObj.pause(true)
	}
	exp_gained += ammount
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
	if !array_contains(global.weaponPool, weapon) {
		array_push(global.weaponPool, weapon)	
	}
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
	damage_taken += 1;
	if !audio_is_playing(dmgsfx) and !dead {
		PlaySFX(dmgsfx,1,1)
	}
	with BuddyObj {
		if collected {
			explode()	
		}
	}
}

function loadStats() {
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
	ini_close()
}