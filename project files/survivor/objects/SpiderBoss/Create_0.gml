/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

lighting_colour = c_fuchsia
lighting_size = 3
lighting_intensity = 0.2

hp = 15
xp = 7
chest=true
image_xscale = 2
image_yscale = 2

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
	sprite_index = SpiderSpriteDmg;
	white_flash()
	alarm[0] = 10;
	//draw_damage number
	if damage*10 > 0 {
		instance_create_depth(random_range(x-sprite_width/2,x+sprite_width/2),random_range(y-sprite_height/2,y+sprite_height/2),1,DamageText).number = damage
	}
}