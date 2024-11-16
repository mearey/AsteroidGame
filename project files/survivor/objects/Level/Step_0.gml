/// @description Insert description here
// You can write your code in this editor
if !global.pauseObj.paused {
if timer > 0 {
	timer -= 1	
} else {
	difficulty += 1
	timer = 60
	log(string(difficulty))
}

if (boss) {
	if !instance_exists(boss_obj) {
		//end
		if !end_ {
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