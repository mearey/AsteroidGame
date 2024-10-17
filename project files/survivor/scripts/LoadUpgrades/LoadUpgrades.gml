// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function LoadUpgrades(){
	ini_open("save_total.ini")
	global.magnet = 50 + 35*ini_read_real("UPGRADES","magnet",0)
	global.fire_rate = 20 - 2*ini_read_real("UPGRADES", "fire_rate", 0)
	global.regen = ini_read_real("UPGRADES", "regen", 0)
	if (ini_read_real("UPGRADES", "auto_aim", 0) == 1) {
		global.auto_aim = true
	} else {
		global.auto_aim = false 
	}
	global.multi_shot = ini_read_real("UPGRADES", "multi_shot", 0)
}

function loadOptions() {
	ini_open("save_options.ini")
	var res = ini_read_real("SETTINGS", "resolution", 0)
	setResolution(res)
	global.music_level = ini_read_real("SETTINGS", "music_volume", 10)/10
	global.sfx_level = ini_read_real("SETTINGS", "sfx_volume", 10)/10
	global.master_volume = ini_read_real("SETTINGS", "master_volume", 10)/10
}

function setResolution(res) {
	switch res {
		case 0:
			window_set_fullscreen(false)
			break;
		case 1:
			window_set_fullscreen(true)
			break;
	}
}