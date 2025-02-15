/// @description Insert description here
// You can write your code in this editor
if global.extra_arms {
	instance_create_depth(global.player.x,global.player.y,1,Chest)	
	global.extra_arms = false
}
if !audio_is_playing(global.currentSong) {
	PlaySong(array_get_random(songs))	
}
if !global.pauseObj.paused {

if timer > 0 {
	timer -= 1	
} else {
	timer = 60

}
if alarm[1] >= 10 || alarm[1] == -1 {
	alarm[1] = 6
}
if (boss) && !level3 {
	if !instance_exists(boss_obj) {
		//end
		if !end_ && !level3 {
			alarm[0] = 500
			end_=true
		}
		with (Enemy) {
			instance_destroy(self)
		}
	}
}

if end_ {
	
	
}

if (!global.pauseObj.paused){
if set {
	if (timer_ >= 0) {
		timer_-=1;
	
	} else {
		var enemy_selection = 0
		timer_ = spawnrate
		
		//trader spawn
		if random(1) < 0.0017 {
			if !instance_exists(TraderShip) {
				instance_create_depth(global.player.x,global.player.y, 1,TraderShip)
			}
		}
		
		if (number <= 0) {
			if (num_bosses <= 0) {
				//wave is complete
				set = false
			} else {
				enemy_selection = random_range(0,array_length(bosslist))
				spawnEnemy(bosslist[enemy_selection])
				num_bosses -= 1;	
			}
		
		} else {
			enemy_selection = random_range(0,array_length(enemylist))
			spawnEnemy(enemylist[enemy_selection])
		}
	}
}
}

}