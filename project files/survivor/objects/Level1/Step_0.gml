/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if !set {
	//difficulty*60 = frames
	if difficulty < 100 {
		enemylist = [EnemyOrbObj]
		bosslist = [EnemyOrbBossObj]
		number = 50
		num_bosses = 1
		spawnrate = 65
	} else if difficulty < 200 {
		enemylist = [EnemyOrbObj, EnemyOrbObj,EnemyOrbObj,EnemyOrbObj, EnemyWormObj]
		bosslist = [EnemyOrbBossObj]
		number = 100
		num_bosses = 1
		spawnrate = 47
	} else if difficulty < 300 {
		enemylist = [EnemyOrbObj, EnemySquareObj]
		bosslist = [EnemyOrbBossObj, EnemySquareBossObj]
		number = 200
		num_bosses = 1
		spawnrate = 37
	} else if difficulty < 400 {
		enemylist = [EnemyFlyObj, EnemyFlyObj, EnemyOrbObj,EnemyShip1]
		bosslist = [EnemyFlyBossObj, EnemyOrbBossObj]
		number = 250
		num_bosses = 2
		spawnrate = 32
	} else if difficulty < 500 {
		enemylist = [EnemySquareObj, EnemyFlyObj, EnemySquareObj,EnemySquareObj, EnemyFlyObj, EnemySquareObj,EnemySquareObj, EnemyFlyObj, EnemySquareObj,EnemySquareObj, EnemyFlyObj, EnemySquareObj,EnemySquareObj, EnemyFlyObj, EnemySquareObj,EnemySquareObj, EnemyFlyObj, EnemySquareObj,EnemySquareObj, EnemyFlyObj, EnemySquareObj,EnemySquareObj, EnemyFlyObj, EnemySquareObj,EnemyShipMissle]
		bosslist = [EnemyFlyBossObj, EnemyOrbBossObj]
		number = 500
		num_bosses = 1
		spawnrate = 28
	} else if difficulty < 600 {
		enemylist = [EnemyOrbObj,EnemyOrbObj, EnemyShip1]
		bosslist = [EnemyShipBoss, EnemyOrbBossObj]
		number = 600
		num_bosses = 1
		spawnrate = 25
	} else if difficulty < 700 {
		enemylist = [EnemyOrbObj, EnemySquareObj, EnemyWormObj, EnemyFlyObj,EnemyOrbObj, EnemySquareObj, EnemyWormObj, EnemyFlyObj, EnemyShipMissle]
		bosslist = [EnemyFlyBossObj, EnemyOrbBossObj, EnemySquareBossObj]
		number = 650
		num_bosses = 1
		spawnrate = 20
	} else if difficulty < 800 {
		enemylist = [FastEnemyShip, EnemyShip1, EnemyOrbObj, EnemySquareObj, EnemyWormObj, EnemyFlyObj,FastEnemyShip, EnemyShip1, EnemyOrbObj, EnemySquareObj, EnemyWormObj, EnemyFlyObj,FastEnemyShip, EnemyShip1, EnemyOrbObj, EnemySquareObj, EnemyWormObj, EnemyFlyObj,FastEnemyShip, EnemyShip1, EnemyOrbObj, EnemySquareObj, EnemyWormObj, EnemyFlyObj, EnemyShipMissle]
		bosslist = [EnemyFlyBossObj, EnemyOrbBossObj, EnemySquareBossObj, EnemyShipBoss]
		number = 700
		num_bosses = 2
		spawnrate = 15
	} else {
		enemylist = [EnemyOrbObj]
		bosslist = [EnemyFlyBossObj, EnemyOrbBossObj, EnemySquareBossObj, EnemyShipBoss]
	}
	set = true
}

if difficulty > 800 {
	enemylist = [EnemyOrbObj]
	bosslist = [EnemyFlyBossObj, EnemyOrbBossObj, EnemySquareBossObj, EnemyShipBoss]
	if !boss && !instance_exists(boss_obj){
		//SPAWN BOSS HERE\
		//SPAWN BOSS HERE\
		if random(1) < 0.9 || !global.secret_upgrade {
			boss_obj = instance_create_depth(global.player.x,global.player.y-300,1,OrbOfScorb)
		} else {
			boss_obj = instance_create_depth(global.player.x,global.player.y-300,1,SecretBossObj)
		}

		boss = true
	}
}

if t_min == 6 && !unlock_ {
	unlock_ = true
	ini_open("unlocks.ini")
	ini_write_real("LEVELS", "2", 1)
	steam_set_achievement("level_unlock_2")
	ini_close()
}

if end_ {
	ini_open("unlocks.ini")
	steam_set_achievement("level_1")
	ini_write_real("LEVELS", "2", 1)
	ini_close()
}