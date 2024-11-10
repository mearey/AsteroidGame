/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if !instance_exists(spawner) {
	//difficulty*60 = frames
	if difficulty < 100 {
		SpawnWave(OrbWave, 50, 1, 80)
	} else if difficulty < 200 {
		SpawnWave(OrbAndWormWave, 100, 1, 65)
	} else if difficulty < 300 {
		SpawnWave(SquareWave, 100, 1, 50)
	} else if difficulty < 400 {
		SpawnWave(OrbAndFlyWave, 100, 2, 35)
	} else if difficulty < 500 {
		SpawnWave(SquareWave, 500, 1, 25)
	} else if difficulty < 600 {
		SpawnWave(OrbWave,600,1,15)
	} else if difficulty < 700 {
		SpawnWave(EverythingWave,650,1,13)	
	} else if difficulty < 800 {
		SpawnWave(EverythingWave,700,2,9)	
	}
}

if difficulty > 800 {
	if !boss {
		with (spawner) {
			instance_destroy(self)	
		}
		//SPAWN BOSS HERE\
		boss_obj = instance_create_depth(global.player.x,global.player.y-300,1,OrbOfScorb)
		boss = true
	}
}


if end_ {
	ini_open("unlocks.ini")
	ini_write_real("LEVELS", "2", 1)
	ini_close()
}