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


function takeDamage(damage) {	
	hp-=damage;
	if (hp<=0) {
		dead = true
		instance_destroy(self)
		global.player.enemies_defeated += 1;
		var coin_chance = 0.05*global.luck
		if (random(1)<coin_chance) {
			instance_create_depth(x,y,1,CoinObj)
		}
		
	}
	image_index = 1;
	alarm[0] = 10;
	//draw_damage number
	if damage*10 > 0 {
		instance_create_depth(random_range(x-sprite_width/2,x+sprite_width/2),random_range(y-sprite_height/2,y+sprite_height/2),1,DamageText).number = damage
	}
}