/// @description Insert description here
// You can write your code in this editor
// Inherit the parent event
event_inherited();
if !set {
	//difficulty*60 = frames
	if difficulty < 50 {
		enemylist = [AsteroidObj]
		bosslist = [AsteroidBossObj]
		number = 10
		num_bosses = 1
		spawnrate = 120
	} else if difficulty < 100 {
		enemylist = [AsteroidObj, GunDebrisObj]
		bosslist = [AsteroidBossObj]
		number = 35
		num_bosses = 1
		spawnrate = 110
	} else if difficulty < 200 {
		enemylist = [AsteroidObj, RocketObj]
		bosslist = [AsteroidBossObj, RocketBossObj]
		number = 40
		num_bosses = 1
		spawnrate = 80
	} else if difficulty < 300 {
		enemylist = [RocketObj,RocketObj, SatelliteObj, SatelliteObj, SatelliteObj]
		bosslist = [RocketBossObj]
		number = 70
		num_bosses = 1
		spawnrate = 40
	} else if difficulty < 400 {
		enemylist = [AsteroidObj, RocketObj, SatelliteObj, SatelliteObj, SatelliteObj, GunDebrisObj]
		bosslist = [AsteroidBossObj, RocketBossObj]
		number = 100
		num_bosses = 2
		spawnrate = 30
	} else if difficulty < 500 {
		enemylist = [AsteroidObj, RocketObj, SatelliteObj, SatelliteObj, SatelliteObj,AsteroidObj, RocketObj, SatelliteObj, SatelliteObj, SatelliteObj, DebrisGrabberObj]
		bosslist = [AsteroidBossObj, RocketBossObj]
		number = 130
		num_bosses = 1
		spawnrate = 20
	} else if difficulty < 600 {
		enemylist = [AsteroidObj, RocketObj, SatelliteObj, DebrisGrabberObj, EnemySquareObj, GunDebrisObj]
		bosslist = [AsteroidBossObj, RocketBossObj]
		number = 200
		num_bosses = 1
		spawnrate = 13
	} else if difficulty < 700 {
		enemylist = [AsteroidObj, SatelliteObj,AsteroidObj, SatelliteObj,AsteroidObj, SatelliteObj, DebrisGrabberObj]
		bosslist = [AsteroidBossObj]
		number = 300
		num_bosses = 1
		spawnrate = 10
	} else if difficulty < 800 {
		enemylist = [AsteroidObj, RocketObj, SatelliteObj, SatelliteObj, SatelliteObj, DebrisGrabberObj]
		bosslist = [AsteroidBossObj, RocketBossObj]
		number = 400
		num_bosses = 2
		spawnrate = 8
	} else {
		enemylist = [AsteroidObj, RocketObj, SatelliteObj, SatelliteObj, SatelliteObj, DebrisGrabberObj, GunDebrisObj]
		bosslist = [AsteroidBossObj, RocketBossObj]
	}
	set = true
}

if difficulty > 800 {
	enemylist = [AsteroidObj, RocketObj, SatelliteObj, SatelliteObj, SatelliteObj, DebrisGrabberObj, GunDebrisObj]
	bosslist = [AsteroidBossObj, RocketBossObj]
	if !boss {
		//SPAWN BOSS HERE\
		boss_obj = instance_create_depth(global.player.x,global.player.y-300,1,WallOfDebris)
		boss = true
	}
}

if end_ {
	ini_open("unlocks.ini")
	ini_write_real("LEVELS", "3", 1)
	ini_close()
}