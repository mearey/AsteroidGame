/// @description Insert description here
// You can write your code in this editor
draw_self()
if (weapon_get) {
	draw_sprite_ext(sprite_index, image_index,x,y,1.1,1.1,0,c_aqua,1)
	draw_sprite_ext(object_get_sprite(weapon),2,x,y,3,3,0,c_white,1)
	Weapontip(sprite_get_name(object_get_sprite(weapon)),weapon,0)
} else {
	if (stat = "HP") {
		draw_sprite(hpSprite,0,x,y)	
	} else if (stat = "Projectile Speed") {
		draw_sprite(projectileSpeedSprite,0,x,y)	
	} else if (stat = "Damage") {
		draw_sprite(damageSprite,0,x,y)	
	} else if (stat = "Movement Speed") {
		draw_sprite(speedSprite,0,x,y)	
	}
	statTip(stat)
}