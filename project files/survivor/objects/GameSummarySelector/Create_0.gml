/// @description Insert description here
// You can write your code in this editor

mouse_pos = mouse_y

active_button = instance_nearest(x,y,Button)

event_inherited()
camx = camera_get_view_x(view_camera[0])
camy = camera_get_view_y(view_camera[0])
if (instance_exists(Level)) {
	cam_width = camera_get_view_width(view_camera[0])
	cam_height = camera_get_view_height(view_camera[0])
} else {
	cam_width = surface_get_width(application_surface)
	cam_height = surface_get_height(application_surface)
}
	
x_ = camx+cam_width/2
y_ = camy+cam_height/2

Globals()
scroll = 0
coins = 0


ini_open("save_total.ini")
coins = ini_read_real("CURRENCY", "coins", 0)
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

CreateButton(-30,"CONTINUE", function () {
	if (file_exists("save_game_state.ini")) {
		file_delete("save_game_state.ini")
	}
	clearEntities()
	room_goto(MainMenu)
})
