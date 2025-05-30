// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Globals(){
	
	//settings
	global.master_volume = 1
	global.sfx_level = 1
	global.music_level = 1
	global.lighting = true
	loadOptions()
	
	//audio and music
	global.currentSong = GameSongMenu
	
	randomize()
	global.weaponPool = [CannonMKII_Left, CannonMKII_Right, FrontBeamObj, CannonMKI, OrbitalCannonWeapon, OrbitalBeamWeapon,OrbitalLaserWeapon, SideLaser, LaserMKI, SideBeam, Sword, DisruptionField, MissileLauncher, MineLayer, GrenadeThrower, Flamethrower_, MiniShotgun]
	ini_close()
	ini_open("unlocks.ini")
	var thing = ini_read_real("WEAPONS","secret", false)
	if thing {
		array_push(global.weaponPool, ZeroClaw)
		array_push(global.weaponPool, PointBuster)
	}
	ini_close()
	global.synergies = [
		[CannonMKII_Left, CannonMKII_Right, DualCannon], 
		[FrontBeamObj, SideBeam, BeamUpgraded],
		[SideLaser, LaserMKI, JointLaser]
	]
	
	//trader list
	global.seller_list = [Cannon,BlackHole,BubbleBeam,MoneyGun,ShockLauncher]
	
	if !(os_browser == browser_not_a_browser) {
		bw = browser_width
		bh = browser_height
		//window_set_fullscreen(true)
		//		surface_resize(application_surface, bw, bh);
		//window_set_size(bw,bh)
		//window_center()
	}
	intialiseParticles()
	
}

function clearEntities() {
	if global.pauseObj.paused {
		global.pauseObj.pause(false)	
	}
	with (StatSelection) {
		instance_destroy(self)	
	}
	with (Weapon) {
		instance_destroy(self)	
	}
	with (Enemy) {
		instance_destroy(self)	
	}
	with (spawner) {
		instance_destroy(self)
	}
	with (Level) {
		instance_destroy(self)	
	}
	with (Boss) {
		instance_destroy(self)	
	}
	with (PlayerObj) {
		instance_destroy(self)	
	}
	with (Hammer) {
		instance_destroy(self)	
	}
	with (HammerController) {
		instance_destroy(self)	
	}
	with (EXPOrbObj) {
		instance_destroy(self)	
	}
	with(BuddyObj) {
		instance_destroy(self)	
	}
	with (PlayerBullet) {
		instance_destroy(self)	
	}
}

function removeWeaponFromPool(weapon) {
	for (var i=0; i<array_length(global.weaponPool); i++;) {
		if (global.weaponPool[i]==weapon) {
			array_delete(global.weaponPool,i,1);	
		}
	}
}

function preGlobals() {
	//player
	if !file_exists("ship_selection.ini") {
		global.ship_selection = PlayerObj
	} else {
		ini_open("ship_selection.ini")
		global.ship_selection = asset_get_index(ini_read_string("SHIP", "selection", "PlayerObj"))
		ini_close()
	}
}