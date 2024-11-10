/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if !instance_exists(spawner) {
	if difficulty < 100 {
		SpawnWave(ShipWave, 100, 1, 50)
	} else if difficulty < 200 {
		SpawnWave(ShipWave, 50, 1, 40)
	} else if difficulty < 300 {
		SpawnWave(ShipWave1, 100, 1, 25)
	} else if difficulty < 400 {
		SpawnWave(ShipWave1, 200, 2, 20)
	} else if difficulty < 500 {
		SpawnWave(ShipWave2, 200, 1, 15)
	} else if difficulty < 600 {
		SpawnWave(ShipWave2,300,1,10)
	} else if difficulty < 700 {
		SpawnWave(ShipWave3,100,1,17)	
	} else if difficulty < 800 {
		SpawnWave(ShipWave3,100,3,10)	
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