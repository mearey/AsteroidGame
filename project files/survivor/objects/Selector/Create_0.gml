/// @description Insert description here
// You can write your code in this editor

active_button = instance_nearest(x,y,Button)

lighting_layer = level_2__sun

foreground_layer = level_2_planet

//BACKGROUND SCROLLLING FOR MAIN MENU
layer_hspeed("Stars",0.5)
layer_hspeed("Background",0.25)

ini_open("unlocks.ini")
hi = ini_read_real("LEVELS", "hi", -1)
ini_close()

event_inherited()
x_ = surface_get_width(application_surface)/2
y_ = surface_get_height(application_surface)/2

//upgrades
global.fire_rate = 20
global.regen = 0
global.magnet = 50
global.auto_aim = false
global.multi_shot = 0
LoadUpgrades()
	
Globals()

coins = 0
ini_open("save_total.ini")
coins = ini_read_real("CURRENCY", "coins", 0)
if coins >= 5000 {
	steam_set_achievement("gold_total_5000")
} 
if coins >= 1000 {
	steam_set_achievement("gold_total_1000")
} 
if coins >= 100 {
		steam_set_achievement("gold_total_100")
}
ini_close()
//music
global.currentSong = GameSongMenu
PlaySong(global.currentSong)

function CreateButton(degree, text, func) {
	var direction_ = degree
	x_ = surface_get_width(application_surface)/2 + lengthdir_x(500,direction_)
	y_ = surface_get_height(application_surface)/2 + lengthdir_y(500,direction_)

	var new_game = instance_create_depth(x_,y_,1,Button)
	new_game.text = text	
	new_game.onClick = func
}

CreateButton(30,"CONTINUE", function () {
	if (file_exists("save_game_state.ini")){
		ini_open("save_game_state.ini")
		room_ = instance_create_depth(0,0,1,asset_get_index(ini_read_string("SAVEWAVE", "level", "Level1")))
		audio_stop_all()
		loadscreen = instance_create_depth(0,0,0,Loadscreen)
		alarm[0] = 10
		ini_close()
	}
})

CreateButton(10,"NEW GAME", function () {
	
	room_goto(LevelSelect)
	
})

CreateButton(180,"OPTIONS", function () {
	instance_destroy(self)
	instance_create_depth(x,y,1,OptionsSelector)
})
	
CreateButton(-10, "UPGRADES", function() {
	instance_destroy(self)
	instance_create_depth(x,y,1,UpgradeSelector)
})

CreateButton(-30, "SHIP SELECT", function() {
	instance_destroy(self)
	instance_create_depth(room_width/2,room_height/2,1,ShipSelectionSelector)
})

CreateButton(180-30, "CREDITS", function() {
	room_goto(Credits)
})

CreateButton(180+30, "EXIT", function() {game_end()})