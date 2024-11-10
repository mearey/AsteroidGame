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
	global.level.difficulty += 1;	
	if (instance_exists(spawner)){
		instance_destroy(spawner)	
	}
}

function invincible() {
	global.player.max_hp = 9999
	global.player.hp = 9999
}