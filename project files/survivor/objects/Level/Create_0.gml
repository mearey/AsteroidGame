/// @description Insert description here
// You can write your code in this editor
set = false
level3 = false
difficulty = 1
songs = []
lighting_layer = level_1__sun

foreground_layer = ruinedearth

timer = 60

t_min = 15
t_sec = 0
t_mil = 0

alarm[1] = 6

unlock_ = false

boss = false

end_ = false

tutorial = false

global.level = self

start_time = current_time

spawnrate = 240;
hp_mod = 0
timer_ = spawnrate;

enemylist = [EnemyOrbObj]
bosslist = [EnemyOrbBossObj]

number = 10;

num_bosses = 1;

with (Level) {
	if self != other {
		instance_destroy(self)
	}
}


function spawnEnemy(enemy) {
	var x_ = -20;
	var y_ = -20;
	if (random(1) > 0.5) {
		x_ = room_width + 20
		y_ = room_height + 20
	}
	if (random(1) < 0.5) {
		x_ = random_range(-20,room_width + 20)
	} else {
		y_ = random_range(-20,room_height + 20)
	}
	var inst = instance_create_depth(x_,y_,1,enemy)
	inst.new_ = true
	if variable_instance_exists(inst.id,"hp") {
		inst.hp+=hp_mod
	}
	number -= 1;
}

ini_open("save_total.ini")

if !(ini_key_exists("TUTORIAL", "leveltut")) {
	//DISPLAY THE TUTORIAL
	tutorial = true
	ini_write_real("TUTORIAL", "leveltut", 1)
}

ini_close()

if tutorial {
	global.pauseObj.paused = true	
}