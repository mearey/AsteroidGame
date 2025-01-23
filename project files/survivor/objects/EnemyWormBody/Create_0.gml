/// @description Insert description here
// You can write your code in this editor
event_inherited()
head = NaN

num=0

breakoff = true

hp=2

dead = false

damage = 1

lighting_colour = c_purple
plasma = 0
collide = false
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