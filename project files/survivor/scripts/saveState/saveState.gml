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
	ini_write_real("STATESTATS", "scrap", global.player.scrap)
	
	//save wave and level
	ini_write_real("SAVEWAVE", "difficulty", global.level.difficulty)
	ini_write_string("SAVEWAVE", "level", object_get_name(global.level.object_index))
	
	//save weapons
	var i = 0
	for (i = 0; i < array_length(global.player.weapons); i++) {
		ini_write_string("WEAPONS", "weapon_"+string(i), object_get_name(global.player.weapons[i]))	
	}
	ini_write_real("WEAPONS", "num", i)
	
	for (i = 0; i < array_length(global.player.unique_weapons); i++) {
		ini_write_string("UWEAPONS", "weapon_"+string(i), object_get_name(global.player.unique_weapons[i]))	
	}
	ini_write_real("UWEAPONS", "Unum", i)

	//save equipped weaponsvar 
	i = 0
	for (i = 0; i < array_length(global.player.equipped_weapons); i++) {
		ini_write_string("EQUIPPEDWEAPONS", "weapon_"+string(i), object_get_name(global.player.equipped_weapons[i]))
	}
	//save weaponpool
	for (i = 0; i < array_length(global.weaponPool); i++) {
		ini_write_string("WEAPONPOOL", "weapon_"+string(i), object_get_name(global.weaponPool[i]))
	}
	ini_write_real("WEAPONPOOL", "num", i)
	
	//save coins
	ini_write_real("SAVESTATS", "coins", global.player.coins)
	
	//save enemies
	for (var i=0 ; i<instance_number(Enemy); i++) {
		var enemy = instance_find(Enemy,i)
		if object_get_physics(enemy.object_index) {
			ini_write_string("ENEMIES", "enemy_"+string(i), object_get_name(enemy.object_index)+"_"+string(enemy.x)+"_"+string(enemy.y)+"_"+string(enemy.size)+"_"+string(enemy.phy_speed_x)+"_"+string(enemy.phy_speed_y))
		} else {
			ini_write_string("ENEMIES", "enemy_"+string(i), object_get_name(enemy.object_index)+"_"+string(enemy.x)+"_"+string(enemy.y)+"_"+string(enemy.size)+"_0_0")
		}
	}
	ini_write_real("ENEMIES", "num", i)
	
	//save ship selection
	
	ini_write_real("SHIP", "selection", real(global.ship_selection))
	
	//save time and enemies killed etc
	ini_write_real("POSTSTATS","damage_taken", global.player.damage_taken)
	ini_write_real("POSTSTATS","enemies_killed", global.player.enemies_defeated)
	ini_write_real("POSTSTATS","exp_gained", global.player.exp_gained)
	ini_write_real("POSTSTATS","time_min", Level.t_min)
	ini_write_real("POSTSTATS","time_sec", Level.t_sec)
	ini_write_real("POSTSTATS","time_mil", Level.t_mil)
	
	//save exp
	for (var i=0 ; i<instance_number(EXPOrbObj); i++) {
		var enemy = instance_find(EXPOrbObj,i)
		ini_write_string("EXP", string(i), string(enemy.x)+"_"+string(enemy.y))
	}
	ini_write_real("EXP", "num", i)
	
	//dummy save
	ini_open("save_game_state.ini")
	ini_write_real("dummy","dummy",0)
	ini_close()
}

function loadState() {
	//load room and position
	ini_open("save_game_state.ini")
	var room_ = ini_read_string("STATE", "room", "MainMenu")
	var x_ = ini_read_real("STATE", "position_x", 0);
	var y_ = ini_read_real("STATE", "position_y", 0);
	global.ship_selection = ini_read_real("SHIP", "selection", PlayerObj)
	var player = instance_create_depth(x_,y_,1, global.ship_selection)
	room_goto(asset_get_index(room_))
	ini_close()
	player.loadStats()
	ini_open("save_game_state.ini")
	
	//load time and enemies killed etc
	player.damage_taken = ini_read_real("POSTSTATS","damage_taken", 0)
	player.enemies_defeated = ini_read_real("POSTSTATS","enemies_killed", 0)
	player.exp_gained = ini_read_real("POSTSTATS","exp_gained", 0)
	
	//load coins
	player.coins = ini_read_real("SAVESTATS", "coins", 0)
	//load scrap
	player.scrap = ini_read_real("STATESTATS", "scrap", 0)
	
	//load weapons
	var num = ini_read_real("WEAPONS", "num", 1)
	for (var i = 1; i < num; i++) {
		array_push(player.weapons, asset_get_index(ini_read_string("WEAPONS", "weapon_"+string(i),Weapon)))
	}
	
	var Unum = ini_read_real("UWEAPONS", "Unum", 1)
	for (var i = 1; i < Unum; i++) {
		array_push(player.unique_weapons, asset_get_index(ini_read_string("UWEAPONS", "weapon_"+string(i),Weapon)))
	}
	//load equipped weapons
	i = 0
	for (i = 0; i < array_length(global.player.equipped_weapons); i++) {
		global.player.equipped_weapons[i] = asset_get_index(ini_read_string("EQUIPPEDWEAPONS", "weapon_"+string(i), object_get_name(global.player.equipped_weapons[i])))
	}
	//load weaponpool
	global.weaponPool = []
	for (i = 0; i < ini_read_real("WEAPONPOOL", "num", 0); i++) {
		array_push(global.weaponPool,asset_get_index(ini_read_string("WEAPONPOOL", "weapon_"+string(i), Weapon)))
	}
	
	player.spawnWeapons()
	player.resetWeapons()
	
	//load enemies
	for (var i = 0; i<ini_read_real("ENEMIES","num", 0); i++) {
		var res = string_split(ini_read_string("ENEMIES", "enemy_"+string(i),0), "_")
		var enemy = instance_create_depth(real(res[1]),real(res[2]),1,asset_get_index(res[0]))
		enemy.size = real(res[3])
		enemy.image_yscale =real(res[3])
		enemy.image_xscale = real(res[3])
		enemy.lighting_size = 2*real(res[3])
		if object_get_physics(enemy.object_index) {
			enemy.set_phys_speed(res[4],res[5])
		}
	}
	
	//load exp
	for (var i=0 ; i<ini_read_real("EXP","num", 0); i++) {
		var res = string_split(ini_read_string("EXP", string(i),0), "_")
		instance_create_depth(real(res[0]),real(res[1]),1,EXPOrbObj)
	}
	
	//load level and wave
	var diff = ini_read_real("SAVEWAVE", "difficulty", 1)
	var level = instance_create_depth(0,0,1,asset_get_index(ini_read_string("SAVEWAVE", "level", "Level1")))
	
	level.difficulty = diff
	ini_close()
	ini_open("save_game_state.ini")
	level.t_min = ini_read_real("POSTSTATS","time_min", 0)
	level.t_sec = ini_read_real("POSTSTATS","time_sec", 0)
	level.t_mil = ini_read_real("POSTSTATS","time_mil", 0)
	
	ini_close()
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
	ini_close()
}