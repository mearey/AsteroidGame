// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Commands(){

}

function wep() {
	instance_create_depth(global.player.x + 50,global.player.y,1,Chest)
	return "chest spawned"
}

function log(text) {
	array_push(instance_find(Console,0).res_list, text)
}

function coin() {
	instance_create_depth(global.player.x,global.player.y,1,CoinObj)
	return "coin spawned"
}

function die() {
	global.player.hp -= 99999	
}

function resetsave() {
	file_delete("unlocks.ini")
	file_delete("ship_selection.ini")
	file_delete("save_total.ini")
	file_delete("save_options.ini")
	file_delete("save_game_state.ini")
	game_restart()
}

function finishlevel() {
	global.level.end_ = true	
}

function progress() {
	global.level.t_min -= 1
	global.level.difficulty += 53.34
	if (instance_exists(spawner)){
		instance_destroy(spawner)	
	}
}

function invincible() {
	global.player.max_hp = 9999
	global.player.hp = 9999
}

function unlock() {
	ini_open("unlocks.ini")
	ini_write_real("LEVELS", "2", 1)
	ini_write_real("LEVELS", "3", 1)
	ini_close()
}

function exp() {
	instance_create_depth(global.player.x,global.player.y,1,EXPOrbObj)	
}

function trader_() {
	instance_create_depth(0,0,1,TraderShip)	
}

function drops() {
	with (Enemy) {
		weapon_drop_chance = 1
	}
}

function testweapon() {
	global.player.addWeapon(ShockLauncher)
}

function end_credits() {
	room_goto(EndCutsceneRoom)	
}

function spawn_buddy() {
	Level.spawnEnemy(BuddyObj)	
}

function spawn_rare_bud() {
	Level.spawnEnemy(HalfletBuddy)	
	Level.spawnEnemy(PirateBuddy)
}

function test_room() {
	var player = instance_create_depth(surface_get_width(application_surface)/2,surface_get_height(application_surface)/2,1,global.ship_selection)
	player.resetWeapons()
	with(Selector) {
		instance_destroy(self)	
	}

	instance_create_depth(x,y,1,Level)
	room_goto(TestRoom)	
}

function secret_boss() {
	Level.spawnEnemy(SecretBossObj)	
}

function spawn_player() {
	instance_create_depth(0,0,1,global.ship_selection)	
}