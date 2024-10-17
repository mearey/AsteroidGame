/// @description Insert description here
// You can write your code in this editor

active_button = instance_nearest(x,y,Button)

lighting_layer = level_2__sun

foreground_layer = level_2_planet

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
if (file_exists("save_total.ini")){
	ini_open("save_total.ini")
	coins = ini_read_real("CURRENCY", "coins", 0)
	//music
	global.currentSong = GameSongMenu
	PlaySong(global.currentSong)
}

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
	}
})

CreateButton(0,"NEW GAME", function () {
	
	room_goto(LevelSelect)
	
})

CreateButton(180-30,"OPTIONS", function () {
	instance_destroy(self)
	instance_create_depth(x,y,1,OptionsSelector)
})
	
CreateButton(-30, "UPGRADES", function() {
	instance_destroy(self)
	instance_create_depth(x,y,1,UpgradeSelector)
})

CreateButton(180+30, "EXIT", function() {game_end()})