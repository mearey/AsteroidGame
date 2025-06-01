/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
boss =false
event_inherited();

if !set {
	//difficulty*60 = frames
	if difficulty < 100 {
		enemylist = [Spider]
		bosslist = [SpiderBoss]
		number = 50
		num_bosses = 1
		spawnrate = 100/2
	} else if difficulty < 200 {
		enemylist = [EyesEnemy,Spider,Spider]
		bosslist = [EyesEnemyBoss,SpiderBoss]
		number = 100
		num_bosses = 1
		spawnrate = 32
	} else if difficulty < 300 {
		enemylist = [Spider,EyesEnemy,Slime,Slime,Slime,EnemyFish]
		bosslist = [EyesEnemyBoss,SpiderBoss]
		number = 200
		num_bosses = 1
		spawnrate = 17
	} else if difficulty < 400 {
		enemylist = [Spider,EyesEnemy,Slime,EnemyFish]
		bosslist = [EyesEnemyBoss,SpiderBoss]
		number = 250
		num_bosses = 2
		spawnrate = 15
	} else if difficulty < 500 {
		enemylist = [Spider,EyesEnemy,Slime]
		bosslist = [EyesEnemyBoss,SpiderBoss,EnemySquareBossObj]
		number = 500
		num_bosses = 1
		spawnrate = 13
	} else if difficulty < 600 {
		enemylist = [Spider,EyesEnemy,Slime, EnemyFlyObj]
		bosslist = [EyesEnemyBoss,SpiderBoss,EnemyFlyBossObj]
		number = 600
		num_bosses = 1
		spawnrate = 10
		if random(1) < 0.3 {
			spawnEnemy(SquidBossObj)
		}
	} else if difficulty < 700 {
		enemylist = [Spider,EyesEnemy,Slime, EnemyFlyObj, DebrisGrabberObj,EnemyFish]
		bosslist = [EnemyFlyBossObj, EnemyOrbBossObj, EnemySquareBossObj]
		number = 650
		num_bosses = 1
		spawnrate = 8
		hp_mod = 1
		if random(1) < 0.3 {
			spawnEnemy(SquidBossObj)
		}
	} else if difficulty < 900 {
		enemylist = [Spider,EyesEnemy,Slime,EnemyFlyObj,EnemySquareObj,EnemyOrbObj,EnemyShip1,EnemyShipMissle,FastEnemyShip,AsteroidObj,GunDebris,SatelliteObj,EnemyWormObj,EnemyFish]
		bosslist = [EnemyFlyBossObj, EnemyOrbBossObj, EnemySquareBossObj, EnemyShipBoss,AsteroidBossObj,EnemyShipMissleBoss,RocketBossObj,SpiderBoss,EyesEnemyBoss]
		number = 700
		num_bosses = 2
		spawnrate = 5
		hp_mod = 2
		if random(1) < 0.6 || !global.secret_upgrade {
			spawnEnemy(SquidBossObj)
		} else {
			spawnEnemy(SecretBossObj)	
		}
	} else {
		enemylist = [Spider,EyesEnemy,Slime,EnemyFlyObj,EnemySquareObj,EnemyOrbObj,EnemyShip1,EnemyShipMissle,FastEnemyShip,AsteroidObj,GunDebris,SatelliteObj,EnemyWormObj,DebrisGrabberObj,EnemyFish,EnemyFish]
		bosslist = [EnemyFlyBossObj, EnemyOrbBossObj, EnemySquareBossObj, EnemyShipBoss,AsteroidBossObj,EnemyShipMissleBoss,RocketBossObj,SpiderBoss,EyesEnemyBoss]
		number = 700/(difficulty/800)
		num_bosses = (difficulty/800)*2
		spawnrate = 3
		hp_mod = 3
		if random(1) < 0.5 || !global.secret_upgrade {
			spawnEnemy(SquidBossObj)
		} else {
			spawnEnemy(SecretBossObj)	
		}
	}
	set = true
}

if difficulty > 1000 {
	hp_mod = (difficulty-1000)/5
	enemylist = [EnemyFlyBossObj, EnemyOrbBossObj, EnemySquareBossObj, EnemyShipBoss,AsteroidBossObj,EnemyShipMissleBoss,RocketBossObj,SpiderBoss,EyesEnemyBoss]
	with (Chest) {
		instance_destroy(self)
	}
	with (EXPOrbObj) {
		instance_destroy(self)	
	}
}

with (GameSummarySelector) {
	instance_destroy(self)	
}

if t_min == 91  && !unlock_ {
	unlock_ = true
	ini_open("unlocks.ini")
	ini_write_real("LEVELS", "4", 1)
	steam_set_achievement("level_unlock_4")
	ini_close()
}
