/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if !instance_exists(spawner) {
	if difficulty < 100 {
		SpawnWave(OrbWave, 100, 1, 50)
	} else if difficulty < 200 {
		SpawnWave(OrbWave, 50, 1, 40)
	} else if difficulty < 300 {
		SpawnWave(OrbWave, 100, 1, 25)
	} else if difficulty < 400 {
		SpawnWave(OrbAndFlyWave, 200, 2, 20)
	} else if difficulty < 500 {
		SpawnWave(SquareWave, 200, 1, 15)
	} else if difficulty < 600 {
		SpawnWave(SquareWave,300,1,10)
	} else if difficulty < 700 {
		SpawnWave(EverythingWave,100,1,17)	
	} else if difficulty < 800 {
		SpawnWave(EverythingWave,100,3,10)	
	} else {
		if !boss {
			with (spawner) {
				instance_destroy(self)	
			}
			//SPAWN BOSS HERE\
			var boss_obj = instance_create_depth(global.player.x,global.player.y,1,OrbOfScorb)
			boss = true
		}
	}
}

if (boss) {
	if !instance_exists(boss_obj) {
		//end
		
	}
}
