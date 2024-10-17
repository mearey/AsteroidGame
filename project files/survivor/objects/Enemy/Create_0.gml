/// @description Insert description here
// You can write your code in this editor
event_inherited()
lighting_colour = c_red
lighting_size = 2
hp = 3;

_speed = 0.1;

damage = 1;

xp = 1;

chest = false;


function takeDamage(damage) {	
	hp-=damage;
	if (hp<=0) {
		instance_destroy(self)
		var coin_chance = 0.05
		if (random(1)<coin_chance) {
			instance_create_depth(x,y,1,CoinObj)
		}
		
	}
	image_index = 1;
	alarm[0] = 10;
}