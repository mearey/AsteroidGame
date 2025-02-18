/// @description Insert description here
// You can write your code in this editor

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

coins = 0
ini_open("save_options.ini")

function CreateButton(degree, text, func) {
	var direction_ = degree
	var camx = camera_get_view_x(view_camera[0])
    var camy = camera_get_view_y(view_camera[0])
	var cam_width = camera_get_view_width(view_camera[0])
	var cam_height = camera_get_view_height(view_camera[0])
	if (instance_exists(Level)) {
		cam_width = camera_get_view_width(view_camera[0])
		cam_height = camera_get_view_height(view_camera[0])
	} else {
		cam_width = surface_get_width(application_surface)
		cam_height = surface_get_height(application_surface)
	}
	x_ = camx+cam_width/2 + lengthdir_x(500,direction_)
	y_ = camy+cam_height/2 + lengthdir_y(500,direction_)

	var new_game = instance_create_depth(x_,y_,1,UpgradeButton)
	new_game.text = text	
	new_game.onClick = func
	
	return new_game
}

fr_btn = CreateButton(-30,"MASTER VOLUME", function () {
	var temp = GetUpgradeButton("MASTER VOLUME")
	if self.coins >= temp.cost && temp.points < temp.max_points {
		temp.points += 1
		self.coins -= temp.cost
	}
	global.master_volume = temp.points/10
	audio_master_gain(global.master_volume)
})
fr_btn.max_points = 10
fr_btn.cost = 0
fr_btn.points = ini_read_real("SETTINGS", "master_volume", 10)

regen_btn = CreateButton(-15,"MUSIC VOLUME", function () {
	var temp = GetUpgradeButton("MUSIC VOLUME")
	if self.coins >= temp.cost && temp.points < temp.max_points {
		temp.points += 1
		self.coins -= temp.cost
	}
	global.music_level = temp.points/10
	audio_sound_gain(global.currentlyPlayingSong,global.music_level,0)//STRANGE ERROR
})
regen_btn.max_points = 10
regen_btn.cost = 0
regen_btn.points = ini_read_real("SETTINGS", "music_volume", 10)

magnet_btn = CreateButton(0,"SFX VOLUME", function () {
	var temp = GetUpgradeButton("SFX VOLUME")
	if self.coins >= temp.cost && temp.points < temp.max_points {
		temp.points += 1
		self.coins -= temp.cost
	}
	global.sfx_level = temp.points/10
})
magnet_btn.max_points = 10
magnet_btn.cost = 0
magnet_btn.points = ini_read_real("SETTINGS", "sfx_volume", 10)

ms_btn = CreateButton(30,"FULLSCREEN", function () {
	var temp = GetUpgradeButton("FULLSCREEN")
	if self.coins >= temp.cost && temp.points < temp.max_points {
		temp.points += 1
		self.coins -= temp.cost
	}
	setResolution(temp.points)
})
ms_btn.max_points = 1
ms_btn.cost = 0
ms_btn.points = ini_read_real("SETTINGS", "resolution", 0)

lighting_btn = CreateButton(180-30,"LIGHTING", function () {
	var temp = GetUpgradeButton("LIGHTING")
	if self.coins >= temp.cost && temp.points < temp.max_points {
		temp.points += 1
		self.coins -= temp.cost
	}
	global.lighting = temp.points
	with (LightingObj) {
		instance_destroy(self)	
	}
	instance_create_depth(0,0,0,LightingObj)
})
lighting_btn.max_points = 1
lighting_btn.cost = 0
lighting_btn.points = ini_read_real("SETTINGS", "lighting", 1)

cursor_btn = CreateButton(180-15,"CURSOR SIZE", function () {
	var temp = GetUpgradeButton("CURSOR SIZE")
	if self.coins >= temp.cost && temp.points < temp.max_points {
		temp.points += 1
		self.coins -= temp.cost
	}
	cursor_sprite = asset_get_index("spriteCursor"+string(temp.points))
})
cursor_btn.max_points = 3
cursor_btn.cost = 0
cursor_btn.points = ini_read_real("SETTINGS", "cursor", 0)

cursorc_btn = CreateButton(180,"CURSOR COLOR", function () {
	var temp = GetUpgradeButton("CURSOR COLOR")
	if self.coins >= temp.cost && temp.points < temp.max_points {
		temp.points += 1
		self.coins -= temp.cost
	}
	global.cursor_colour = temp.points
})
cursorc_btn.max_points = 3
cursorc_btn.cost = 0
cursorc_btn.points = ini_read_real("SETTINGS", "cursor_colour", 0)

CreateButton(180+30, "BACK", function() {
	instance_destroy(self)
	if (instance_exists(Level)) {
		instance_create_depth(x,y,1,PauseSelector)
	} else {
		instance_create_depth(x,y,1,Selector)	
	}
}).upgrade = false

function SaveOptions() {
	//save upgrades
	ini_open("save_options.ini")
	ini_write_real("SETTINGS", "resolution", ms_btn.points)
	ini_write_real("SETTINGS", "music_volume", regen_btn.points)
	ini_write_real("SETTINGS", "sfx_volume", magnet_btn.points)
	ini_write_real("SETTINGS", "master_volume", fr_btn.points)
	ini_write_real("SETTINGS", "lighting", lighting_btn.points)
	ini_write_real("SETTINGS", "cursor", cursor_btn.points)
	ini_write_real("SETTINGS", "cursor_colour", cursorc_btn.points)
	//dummy save
	ini_open("save_options.ini")
	ini_write_real("dummy","dummy",0)
	ini_close()
}
ini_close()