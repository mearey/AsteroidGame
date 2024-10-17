/// @description Insert description here
// You can write your code in this editor
if (!global.pauseObj.paused){
if (timer >= 0) {
	timer-=1;
	
} else {
	var enemy_selection = 0
	timer = spawnrate
	if (number <= 0) {
		if (num_bosses <= 0) {
			//wave is complete
			instance_destroy(self)
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