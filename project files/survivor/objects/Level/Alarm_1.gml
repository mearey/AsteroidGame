/// @description Insert description here
// You can write your code in this editor


if !global.pauseObj.paused {
	t_mil -= 1
}

if t_mil < 0 {
	t_mil = 9
	t_sec -= 1
}

if t_sec < 0 {
	t_sec = 59
	t_min -= 1
	difficulty += 53.3
	log(string(difficulty))
	if random(1) < 0.1 {
		spawnEnemy(array_get_random(bosslist))
	}
	if random(1) < 0.1*global.luck {
		if random(1) < 0.1 {
			spawnEnemy(HalfletBuddy)
		} else if random(1) < 0.1 {
			spawnEnemy(PirateBuddy)
		} else {
			spawnEnemy(BuddyObj)
		}
	}
}

if (t_sec>=0||t_min>=0||t_mil>=0) {
	alarm[1] = 6
} else if instance_exists(Level3) {
	//end of level
	alarm[1] = 6
} else {
		
}