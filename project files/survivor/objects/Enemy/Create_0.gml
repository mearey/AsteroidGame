/// @description Insert description here
// You can write your code in this editor
event_inherited()
lighting_colour = c_red
lighting_size = 2
hp = 3;
join_num = 1
weapon_drop_chance = 0.005
size = 1
_speed = 0.1;

chubby = false

if (random(1) < 0.02) {
	chubby = true	
	rot = 0
}

damage = 1;
dead = false
xp = 1;

chest = false;

combine_time = 200



function takeDamage(damage) {	
	hp-=damage;
	if (hp<=0) {
		dead = true
		instance_destroy(self)
		global.player.enemies_defeated += 1;
		var coin_chance = 0.05
		if (random(1)<coin_chance) {
			instance_create_depth(x,y,1,CoinObj)
		}
		
	}
	image_index = 1;
	alarm[0] = 10;
	//draw_damage number
	if damage*10 > 1 {
		instance_create_depth(x,y,1,DamageText).number = damage
	}
}