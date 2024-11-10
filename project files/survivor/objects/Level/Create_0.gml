/// @description Insert description here
// You can write your code in this editor

difficulty = 1

lighting_layer = level_1__sun

foreground_layer = level_1__planet

timer = 60

boss = false

end_ = false

tutorial = false

global.level = self

start_time = current_time

ini_open("save_total.ini")

if !(ini_key_exists("TUTORIAL", "leveltut")) {
	//DISPLAY THE TUTORIAL
	tutorial = true
	ini_write_real("TUTORIAL", "leveltut", 1)
}

ini_close()

if tutorial {
	global.pauseObj.paused = true	
}