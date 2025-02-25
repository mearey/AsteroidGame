/// @description Insert description here
// You can write your code in this editor
event_inherited()
image_xscale = 0.1
image_yscale = 0.1
image_speed = 0.1

stage = 0
lighting_colour = c_white
lighting_size = 7
lighting_intensity = 0.2
max_hp = 1000
hp = max_hp

damage = 2

function takeDamage(damage) {	
	hp-=damage;
	if (hp<=0) {
		dead = true
		instance_destroy(self)
		instance_create_depth(x,y,1,SecretBossObjPhase3)
		global.player.enemies_defeated += 1;
		
	}
	//draw_damage number
	white_flash()
	if damage*10 > 0 {
		instance_create_depth(random_range(x-sprite_width/2,x+sprite_width/2),random_range(y-sprite_height/2,y+sprite_height/2),1,DamageText).number = damage
	}
}