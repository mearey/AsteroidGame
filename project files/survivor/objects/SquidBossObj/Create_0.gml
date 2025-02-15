/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
max_hp = 2000
hp = 2000

timer1 = 10 + random(15)
timer2 = 10 + random(15)
timer3 = 10 + random(15)
timer4 = 10 + random(15)

rot1 = 0
rot2 = 0
rot3 = 0
rot4 = 0

damage = 10

move_cooldown = 200;

moves = [
	function move0() {
		move_cooldown = 5
	},
	function move2() {
		instance_create_depth(x+10,y,1,Spider).hp = 100
		instance_create_depth(x-10,y,1,Spider).hp = 100
		move_cooldown = 25
	},
	function move3() {
		instance_create_depth(x+10,y,1,Slime).hp = 50
		instance_create_depth(x-10,y,1,Slime).hp = 50
		move_cooldown = 35
	},
]