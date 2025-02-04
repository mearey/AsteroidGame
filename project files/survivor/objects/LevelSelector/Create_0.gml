/// @description Insert description here
// You can write your code in this editor
event_inherited()

//BACKGROUND SCROLLLING FOR MAIN MENU
layer_hspeed("Stars",0.5)
layer_hspeed("Background",0.25)

active_button = instance_nearest(x,y,Button)
x_ = surface_get_width(application_surface)/2
y_ = surface_get_height(application_surface)/2

ini_open("unlocks.ini")
if (!ini_section_exists("LEVELS")) {
	ini_write_real("LEVELS", "1", true)
	ini_write_real("LEVELS", "2", false)
	ini_write_real("dummy", "dummy", 0)
}


function CreateButton(degree, sprite1, sprite2, func) {
	var direction_ = degree
	x_ = surface_get_width(application_surface)/2 + lengthdir_x(500,direction_)
	y_ = surface_get_height(application_surface)/2 + lengthdir_y(500,direction_)

	var new_game = instance_create_depth(x_,y_,1,LevelSelection)
	new_game.spr = sprite1
	new_game.spr1 = sprite2
	new_game.onClick = func
	return new_game
}

var button = CreateButton(30,level_1__stars, ruinedearth, function () {
	var player = instance_create_depth(surface_get_width(application_surface)/2,surface_get_height(application_surface)/2,1,global.ship_selection)
	player.resetWeapons()
	//draw loadscreen
	loadscreen = instance_create_depth(0,0,0,Loadscreen)
	//load stuff
	alarm[1] = 10
})
if (ini_read_real("LEVELS", "1", true)) {
	button.locked = false	
}

var button = CreateButton(10,level_2_stars, level_2_planet, function () {
	var player = instance_create_depth(surface_get_width(application_surface)/2,surface_get_height(application_surface)/2,1,global.ship_selection)
	player.resetWeapons()
	//draw loadscreen
	loadscreen = instance_create_depth(0,0,0,Loadscreen)
	//load stuff
	alarm[0] = 10
})
if (ini_read_real("LEVELS", "2", false)) {
	button.locked = false	
}

var button = CreateButton(-10,level_3__stars, level_3__planet, function () {
	var player = instance_create_depth(surface_get_width(application_surface)/2,surface_get_height(application_surface)/2,1,global.ship_selection)
	player.resetWeapons()
	//draw loadscreen
	loadscreen = instance_create_depth(0,0,0,Loadscreen)
	//load stuff
	alarm[2] = 10
})
if (ini_read_real("LEVELS", "3", false)) {
	button.locked = false	
}

var button = CreateButton(-30, nocollision, nocollision, function() {
		
})
button.future = true
button.locked = false

var button = CreateButton(180,nocollision,nocollision, function () {
	room_goto(MainMenu)
})
button.locked = false

ini_close()