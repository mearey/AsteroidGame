/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
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
		enemylist = [Spider,EyesEnemy,Slime,Slime,Slime]
		bosslist = [EyesEnemyBoss,SpiderBoss]
		number = 200
		num_bosses = 1
		spawnrate = 17
	} else if difficulty < 400 {
		enemylist = [Spider,EyesEnemy,Slime]
		bosslist = [EyesEnemyBoss,SpiderBoss]
		number = 250
		num_bosses = 2
		spawnrate = 14
	} else if difficulty < 500 {
		enemylist = [Spider,EyesEnemy,Slime,EnemySquareObj]
		bosslist = [EyesEnemyBoss,SpiderBoss,EnemySquareBossObj]
		number = 500
		num_bosses = 1
		spawnrate = 12
	} else if difficulty < 600 {
		enemylist = [Spider,EyesEnemy,Slime, EnemyFlyObj]
		bosslist = [EyesEnemyBoss,SpiderBoss,EnemyFlyBossObj]
		number = 600
		num_bosses = 1
		spawnrate = 10
	} else if difficulty < 700 {
		enemylist = [Spider,EyesEnemy,Slime, EnemyFlyObj, DebrisGrabberObj]
		bosslist = [EnemyFlyBossObj, EnemyOrbBossObj, EnemySquareBossObj]
		number = 650
		num_bosses = 1
		spawnrate = 9
	} else if difficulty < 800 {
		enemylist = [Spider,EyesEnemy,Slime,EnemyFlyObj,EnemySquareObj,EnemyOrbObj,EnemyShip1,EnemyShipMissle,FastEnemyShip,AsteroidObj,GunDebris,SatelliteObj,EnemyWormObj]
		bosslist = [EnemyFlyBossObj, EnemyOrbBossObj, EnemySquareBossObj, EnemyShipBoss,AsteroidBossObj,EnemyShipMissleBoss,RocketBossObj,SpiderBoss,EyesEnemyBoss]
		number = 700
		num_bosses = 2
		spawnrate = 6
	} else {
		enemylist = [Spider,EyesEnemy,Slime,EnemyFlyObj,EnemySquareObj,EnemyOrbObj,EnemyShip1,EnemyShipMissle,FastEnemyShip,AsteroidObj,GunDebris,SatelliteObj,EnemyWormObj,DebrisGrabberObj]
		bosslist = [EnemyFlyBossObj, EnemyOrbBossObj, EnemySquareBossObj, EnemyShipBoss,AsteroidBossObj,EnemyShipMissleBoss,RocketBossObj,SpiderBoss,EyesEnemyBoss]
		number = 700/(difficulty/800)
		num_bosses = (difficulty/800)*2
		spawnrate = max(6 - (difficulty/800), 0.1)/2
	}
	set = true
}

if difficulty > 1000 {
	with (Enemy) {
		hp+=1	
	}
}
if difficulty > 2000 {
	with (Chest) {
		instance_destroy(self)
	}
	with (EXPOrbObj) {
		instance_destroy(self)	
	}
}

