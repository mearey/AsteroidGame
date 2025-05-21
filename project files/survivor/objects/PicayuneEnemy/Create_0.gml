/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
new_ = false
lighting_colour = c_aqua
lighting_size = 2
lighting_intensity = 0.15

hp = 15
xp = 5

if sprite_index == p_picayune {
	repeat (random_range(0,2)) {
		instance_create_depth(x+random_range(-50,50),y+random_range(-50,50),depth, PicayuneEnemy, {sprite_index:choose(p_drop,p_eyes,p_skull)})	
	}
}

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
	white_flash()
	alarm[0] = 10;
	//draw_damage number
	if damage*10 > 0 {
		instance_create_depth(random_range(x-sprite_width/2,x+sprite_width/2),random_range(y-sprite_height/2,y+sprite_height/2),1,DamageText).number = damage
	}
}