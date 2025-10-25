/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if !set {
	//difficulty*60 = frames
	if difficulty < 100 {
		enemylist = [AsteroidToxic]
		bosslist = [RedSkullObj]
		number = 10
		num_bosses = 1
		spawnrate = 150
	} else if difficulty < 200 {
		enemylist = [AsteroidToxic,AsteroidToxic,AsteroidToxic,MotherSpawn,Mother, GreenSkullObj]
		bosslist = [RedSkullObj]
		number = 200
		num_bosses = 1
		spawnrate = 100
	} else if difficulty < 300 {
		enemylist = [Tardigra, MotherSpawn, AsteroidToxic, Tardigra]
		bosslist = [RedSkullObj]
		number = 200
		num_bosses = 1
		spawnrate = 37
	} else if difficulty < 400 {
		enemylist = [PentagramObj, PentagramObj, GreenSkullObj,Tardigra]
		bosslist = [RedSkullObj]
		number = 250
		num_bosses = 2
		spawnrate = 32
	} else if difficulty < 500 {
		enemylist = [GreenSkullObj, PentagramObj, GreenSkullObj,GreenSkullObj, PentagramObj, GreenSkullObj,GreenSkullObj, PentagramObj, GreenSkullObj,GreenSkullObj, PentagramObj, GreenSkullObj,GreenSkullObj, PentagramObj, GreenSkullObj,GreenSkullObj, PentagramObj, GreenSkullObj,GreenSkullObj, PentagramObj, GreenSkullObj,GreenSkullObj, PentagramObj, GreenSkullObj, Mother]
		bosslist = [RedSkullObj, TardigradeBoss]
		number = 500
		num_bosses = 1
		spawnrate = 28
	} else if difficulty < 600 {
		enemylist = [GreenSkullObj,GreenSkullObj, Tardigra, WizardObj]
		bosslist = [RedSkullObj, TardigradeBoss]
		number = 600
		num_bosses = 1
		spawnrate = 25
	} else if difficulty < 700 {
		enemylist = [GreenSkullObj, GreenSkullObj, RedSkullObj, PentagramObj,GreenSkullObj, GreenSkullObj, RedSkullObj, PentagramObj, WizardObj]
		bosslist = [TardigradeBoss]
		number = 650
		num_bosses = 1
		spawnrate = 20
	} else if difficulty < 800 {
		enemylist = [FastEnemyShip, Tardigra, GreenSkullObj, GreenSkullObj, RedSkullObj, PentagramObj,WizardObj, Tardigra, GreenSkullObj, GreenSkullObj, RedSkullObj, PentagramObj,WizardObj, Tardigra, GreenSkullObj, GreenSkullObj, RedSkullObj, PentagramObj,WizardObj, Tardigra, GreenSkullObj, GreenSkullObj, RedSkullObj, PentagramObj, WizardObj]
		bosslist = [TardigradeBoss]
		number = 700
		num_bosses = 2
		spawnrate = 15
	} else {
		enemylist = [GreenSkullObj]
		bosslist = [TardigradeBoss]
	}
	set = true
}

if difficulty > 800 {
	enemylist = [GreenSkullObj]
	bosslist = [EnemyFlyBossObj, RedSkullObj, EnemySquareBossObj, EnemyShipBoss]
	if !boss && !instance_exists(boss_obj){
		//SPAWN BOSS HERE\
		//SPAWN BOSS HERE\
		boss_obj = instance_create_depth(global.player.x,global.player.y-300,1,Devil)
		
		boss = true
	}
}





