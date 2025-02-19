/// @description Insert description here
// You can write your code in this editor
event_inherited()
lighting_colour = c_red
lighting_size = 2
hp = 3;
join_num = 1
weapon_drop_chance = 0.0035
size = 1
_speed = 0.1;

chubby = false

new_ = false
collide = true
var val = 0.012
if global.secret_upgrade {
	val = 0.024	
}
if (random(1) < val*global.luck) {
	chubby = true	
	rot = 0
}

damage = 1;
dead = false
xp = 1;

chest = false;

combine_time = 200
plasma = 0

p_x = 0
p_y = 0

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

function set_phys_speed(x_,y_) {
	p_x = x_
	p_y = y_
}

alarm[11] = 5