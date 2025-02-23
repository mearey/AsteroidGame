/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

image_angle = point_direction(x,y,global.player.x,global.player.y)
image_speed = 1;
fire_rate = 2000
fire_timer = fire_rate
hp = 9;
_speed = 0.08;
lighting_colour = c_aqua
lighting_size = 3

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
	if damage*10 > 0 {
		instance_create_depth(random_range(x-sprite_width/2,x+sprite_width/2),random_range(y-sprite_height/2,y+sprite_height/2),1,DamageText).number = damage
	}
	white_flash()
	alarm[0] = 10;
}