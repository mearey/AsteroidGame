/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
max_hp = 1100
hp = 1100
instance_create_depth(0,0,0,nopause)
timer1 = 10 + random(15)
timer2 = 10 + random(15)
timer3 = 10 + random(15)
timer4 = 10 + random(15)

rot1 = 0
rot2 = 0
rot3 = 0
rot4 = 0

damage = 2

move_cooldown = 200;

moves = [
	function move0() {
		move_cooldown = 5
	},
	function move2() {
		repeat (2) {
			var inst = instance_create_depth(x+10,y,1,Spider)
			inst.hp = 20
		}
		move_cooldown = 35
	},
	function move3() {
		repeat (1) {
			var inst = instance_create_depth(x+10,y,1,Spider)
			inst.hp = 35
		}
		move_cooldown = 45
	},
]