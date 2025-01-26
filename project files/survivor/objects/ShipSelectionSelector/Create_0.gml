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
if (variable_global_exists("ship_selection")) {
	display_ship = global.ship_selection
}  else {
	display_ship = PlayerObj	
}

ini_open("save_total.ini")
coins = ini_read_real("CURRENCY", "coins", 0)
ini_close()
//music
global.currentSong = GameSongMenu
PlaySong(global.currentSong)

ini_open("unlocks.ini")
if (!ini_section_exists("SHIPS")) {
	ini_write_real("SHIPS", "Default", true)
	ini_write_real("SHIPS", "Fastship", false)
	ini_write_real("dummy", "dummy", 0)
}

function CreateButton(degree, text, func) {
	var direction_ = degree
	x_ = surface_get_width(application_surface)/2 + lengthdir_x(500,direction_)
	y_ = surface_get_height(application_surface)/2 + lengthdir_y(500,direction_)

	var new_game = instance_create_depth(x_,y_,1,Button)
	new_game.text = text	
	new_game.onClick = func
}

function CreateShipSelectButton(degree, sprite1, ship, func) {
	var direction_ = degree
	x_ = surface_get_width(application_surface)/2 + lengthdir_x(500,direction_)
	y_ = surface_get_height(application_surface)/2 + lengthdir_y(500,direction_)

	var new_game = instance_create_depth(x_,y_,1,ShipSelectionButton)
	new_game.spr1 = sprite1
	new_game.ship = ship
	new_game.onClick = func
	return new_game
}

CreateButton(180+30,"BACK", function () {
	ini_open("ship_selection.ini")
	ini_write_real("SHIP","selection", real(global.ship_selection))
	ini_write_real("dummy","dummy",0)
	ini_close()
	//update unlocks and coins
	ini_open("unlocks.ini")
	var button = GetShipUnlockButton(FastShip)
	ini_write_real("SHIPS", "Fastship", !button.locked)
	button = GetShipUnlockButton(MeeleShip)
	ini_write_real("SHIPS", "Meeleship", !button.locked)
	button = GetShipUnlockButton(OverclockShip)
	ini_write_real("SHIPS", "OverclockShip", !button.locked)
	ini_close()
	//unlock acheivement
	var all_unlocked = true 
	with (Button) {
		if locked {
			all_unlocked = false	
		}
	}
	if all_unlocked {
		steam_set_achievement("ships_max")	
	}
	
	ini_open("save_total.ini")
	ini_write_real("CURRENCY", "coins", coins)
	ini_close()
	clearEntities()
	room_goto(MainMenu)
})

CreateButton(180-30,"BUY", function () {
	var btn = GetShipUnlockButton(display_ship)
	if btn.locked {
		if self.coins >= btn.cost {
			self.coins -= btn.cost
			btn.locked = false
			if display_ship == FastShip {
				steam_set_achievement("ship_2")	
			} else if display_ship == MeeleShip {
				steam_set_achievement("ship_3")	
			} else if display_ship == OverclockShip {
				steam_set_achievement("ship_4")	
			}
			global.ship_selection = display_ship
		}
	}
})

var button = CreateShipSelectButton(30,Sprite1,PlayerObj, function () {
	global.ship_selection = PlayerObj
	display_ship = PlayerObj
})
if (ini_read_real("SHIPS", "Default", false)) {
	button.locked = false	
}

var button = CreateShipSelectButton(15,PlayerFastShipSprite,FastShip, function () {
	display_ship = FastShip
	if !GetShipUnlockButton(FastShip).locked {
		global.ship_selection = FastShip
		steam_set_achievement("ship_2")
	}
})
button.cost = 80
if (ini_read_real("SHIPS", "Fastship", false)) {
	button.locked = false	
}


var button = CreateShipSelectButton(0,MeeleShipSprite,MeeleShip, function () {
	display_ship = MeeleShip
	if !GetShipUnlockButton(MeeleShip).locked {
		global.ship_selection = MeeleShip
	}
})
button.cost = 230
if (ini_read_real("SHIPS", "Meeleship", false)) {
	button.locked = false	
}

var button = CreateShipSelectButton(-15,OverclockShipSprite,OverclockShip, function () {
	display_ship = OverclockShip
	if !GetShipUnlockButton(OverclockShip).locked {
		global.ship_selection = OverclockShip
	}
})
button.cost = 900
if (ini_read_real("SHIPS", "OverclockShip", false)) {
	button.locked = false	
}


ini_close()