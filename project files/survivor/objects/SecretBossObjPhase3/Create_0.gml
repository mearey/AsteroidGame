/// @description Insert description here
// You can write your code in this editor
event_inherited()
image_xscale = 0.1
image_yscale = 0.1
image_speed = 0.1

stage = 0
lighting_colour = c_white
lighting_size = 7
lighting_intensity = 0.1
max_hp = 1200
hp = max_hp
dead = false
following = false

damage = 5

function takeDamage(damage) {	
	hp-=damage;
	if (hp<=0) {
		if !dead {
			alarm[3] = 120
		}
		dead = true
		sprite_index = secret_boss_phase_3_death
		global.player.enemies_defeated += 1;
		var coin_chance = 0.05*global.luck
		if (random(1)<coin_chance) {
			instance_create_depth(x,y,1,CoinObj)
		}
		
		
	}
	//draw_damage number
	if damage*10 > 0 {
		instance_create_depth(random_range(x-sprite_width/2,x+sprite_width/2),random_range(y-sprite_height/2,y+sprite_height/2),1,DamageText).number = damage
	}
}