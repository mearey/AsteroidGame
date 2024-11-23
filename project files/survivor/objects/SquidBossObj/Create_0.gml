/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
max_hp = 800
hp = 800

timer1 = 10 + random(15)
timer2 = 10 + random(15)
timer3 = 10 + random(15)
timer4 = 10 + random(15)

rot1 = 0
rot2 = 0
rot3 = 0
rot4 = 0

move_cooldown = 200;

moves = [
	function move0() {
		move_cooldown = 50
	},
	function move2() {
		instance_create_depth(x+10,y,1,Spider)
		instance_create_depth(x-10,y,1,Spider)
		instance_create_depth(x,y+10,1,Spider)
		instance_create_depth(x,y-10,1,Spider)
		move_cooldown = 25
	},
	function move3() {
		instance_create_depth(x+10,y,1,Slime)
		instance_create_depth(x-10,y,1,Slime)
		move_cooldown = 35
	},
]