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