/// @description Insert description here
// You can write your code in this editor
event_inherited()
image_xscale = 0.1
image_yscale = 0.1

var dir = random_range(0,360)
phy_position_x = global.player.x+lengthdir_x(150,dir)
phy_position_y = global.player.y+lengthdir_y(150,dir)

stage = 0
lighting_colour = c_white
lighting_size = 7
lighting_intensity = 0.1
max_hp = 1200
hp = max_hp

damage = 5

function takeDamage(damage) {	
	hp-=damage;
	if (hp<=0) {
		dead = true
		instance_destroy(self)
		instance_create_depth(x,y,1,SecretBossObjPhase2)
		global.player.enemies_defeated += 1;
		
	}
	//draw_damage number
	if damage*10 > 0 {
		instance_create_depth(random_range(x-sprite_width/2,x+sprite_width/2),random_range(y-sprite_height/2,y+sprite_height/2),1,DamageText).number = damage
	}
}