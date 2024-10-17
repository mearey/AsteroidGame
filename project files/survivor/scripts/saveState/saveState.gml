// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function saveState(){
	ini_open("save_game_state.ini")
	ini_write_real("STATE", "position_x", global.player.x);
	ini_write_real("STATE", "position_y", global.player.y);
	ini_write_string("STATE", "room", room_get_name(room));
	
	//save stats
	ini_write_real("STATESTATS", "max_speed", global.player.max_speed)
	ini_write_real("STATESTATS", "projectile_speed", global.player.projectile_speed)
	ini_write_real("STATESTATS", "accuracy", global.player.accuracy)
	ini_write_real("STATESTATS", "fire_rate", global.player.fire_rate)
	ini_write_real("STATESTATS", "max_hp", global.player.max_hp)
	ini_write_real("STATESTATS", "max_xp", global.player.max_xp)
	ini_write_real("STATESTATS", "xp", global.player.xp)
	ini_write_real("STATESTATS", "lvl", global.player.lvl)
	ini_write_real("STATESTATS", "hp", global.player.hp)
	ini_write_real("STATESTATS", "dmg", global.player.dmg)
	
	//save wave and level
	ini_write_real("SAVEWAVE", "difficulty", global.level.difficulty)
	ini_write_string("SAVEWAVE", "level", object_get_name(global.level.object_index))
	
	//save weapons
	var i = 0
	for (i = 0; i < array_length(global.player.weapons); i++) {
		ini_write_real("WEAPONS", "weapon_"+string(i), global.player.weapons[i])	
	}
	ini_write_real("WEAPONS", "num", i)
	
	for (i = 0; i < array_length(global.player.unique_weapons); i++) {
		ini_write_real("UWEAPONS", "weapon_"+string(i), global.player.unique_weapons[i])	
	}
	ini_write_real("UWEAPONS", "Unum", i)

	//save equipped weaponsvar 
	i = 0
	for (i = 0; i < array_length(global.player.equipped_weapons); i++) {
		ini_write_string("EQUIPPEDWEAPONS", "weapon_"+string(i), object_get_name(global.player.equipped_weapons[i]))
	}
	//save weaponpool
	for (i = 0; i < array_length(global.weaponPool); i++) {
		ini_write_real("WEAPONPOOL", "weapon_"+string(i), global.weaponPool[i])
	}
	ini_write_real("WEAPONPOOL", "num", i)
	
	//save coins
	ini_write_real("SAVESTATS", "coins", global.player.coins)
	
	//save enemies
	for (var i=0 ; i<instance_number(Enemy); i++) {
		var enemy = instance_find(Enemy,i)
		ini_write_string("ENEMIES", "enemy_"+string(i), object_get_name(enemy.object_index)+"_"+string(enemy.x)+"_"+string(enemy.y))
	}
	ini_write_real("ENEMIES", "num", i)
	
	
	//dummy save
	ini_open("save_game_state.ini")
	ini_write_real("dummy","dummy",0)
}

function loadState() {
	//load room and position
	ini_open("save_game_state.ini")
	var room_ = ini_read_string("STATE", "room", "MainMenu")
	var x_ = ini_read_real("STATE", "position_x", 0);
	var y_ = ini_read_real("STATE", "position_y", 0);
	var player = instance_create_depth(x_,y_,1,PlayerObj)
	room_goto(asset_get_index(room_))
	
	player.loadStats()
	
	//load coins
	player.coins = ini_read_real("SAVESTATS", "coins", 0)
	
	//load level and wave
	ini_open("save_game_state.ini")
	var level = instance_create_depth(0,0,1,asset_get_index(ini_read_string("SAVEWAVE", "level", "Level1")))
	
	level.difficulty = ini_read_real("SAVEWAVE", "difficulty", 1)
	
	//load weapons
	var num = ini_read_real("WEAPONS", "num", 1)
	for (var i = 1; i < num; i++) {
		array_push(player.weapons, ini_read_real("WEAPONS", "weapon_"+string(i),Weapon))
	}
	
	var Unum = ini_read_real("UWEAPONS", "Unum", 1)
	for (var i = 1; i < Unum; i++) {
		array_push(player.unique_weapons, ini_read_real("UWEAPONS", "weapon_"+string(i),Weapon))
	}
	//load equipped weapons
	i = 0
	for (i = 0; i < array_length(global.player.equipped_weapons); i++) {
		global.player.equipped_weapons[i] = asset_get_index(ini_read_string("EQUIPPEDWEAPONS", "weapon_"+string(i), object_get_name(global.player.equipped_weapons[i])))
	}
	//load weaponpool
	global.weaponPool = []
	for (i = 0; i < ini_read_real("WEAPONPOOL", "num", 0); i++) {
		array_push(global.weaponPool,ini_read_real("WEAPONPOOL", "weapon_"+string(i), Weapon))
	}
	
	player.spawnWeapons()
	player.resetWeapons()
	
	//load enemies
	for (var i = 0; i<ini_read_real("ENEMIES","num", 0); i++) {
		var res = string_split(ini_read_string("ENEMIES", "enemy_"+string(i),0), "_")
		var enemy = instance_create_depth(real(res[1]),real(res[2]),1,asset_get_index(res[0]))
	}
}

function wipeSave() {
	if (file_exists("save_game_state.ini")) {
		file_delete("save_game_state.ini")
	}
}

function saveTotal() {
	var coins = global.player.coins
	if (file_exists("save_total.ini")){
		ini_open("save_total.ini")
		coins = ini_read_real("CURRENCY", "coins", global.player.coins) + global.player.coins
	}
	ini_open("save_total.ini")
	ini_write_real("CURRENCY", "coins", coins);
	
	ini_open("save_total.ini")
	ini_write_real("dummy","dummy",0)
}