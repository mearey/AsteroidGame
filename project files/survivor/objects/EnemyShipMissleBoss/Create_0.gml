/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
lighting_colour= c_aqua
image_angle = point_direction(x,y,global.player.x,global.player.y)
image_speed = 1;
fire_rate = 100
fire_timer = fire_rate
hp = 15;
_speed = 0.09;

function takeDamage(damage) {	
	hp-=damage;
	if (hp<=0) {
		instance_destroy(self)
		var coin_chance = 0.05
		if (random(1)<coin_chance) {
			instance_create_depth(x,y,1,CoinObj)
		}
		for (var i=xp; i>0; i-=1) {
			instance_create_depth(x+random_range(-1,1),y+random_range(-1,1),1,EXPOrbObj)
		}
		if (chest) {
			instance_create_depth(x,y,1,Chest)	
		}
	}
	sprite_index = EnemyMissleShipDamage;
	alarm[0] = 10;
}