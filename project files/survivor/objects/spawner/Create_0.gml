/// @description Insert description here
// You can write your code in this editor
spawnrate = 240;

timer = spawnrate;

enemylist = []
bosslist = []

number = 10;

num_bosses = 1;

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
	instance_create_depth(x_,y_,1,enemy)
	number -= 1;
}