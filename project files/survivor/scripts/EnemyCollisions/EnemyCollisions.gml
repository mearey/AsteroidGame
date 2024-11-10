// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyCollisions(){

	if (collision_circle(x,y,8,global.ship_selection,false,true)) {
		global.player.hp-=damage
		global.player.takeDamage()
	}

	if (collision_point(x,y,BeamObj,false,true)) {
		takeDamage(global.player.dmg/75)
	}

	if (collision_point(x,y,BeamObj_2xDamage,false,true)) {
		takeDamage(global.player.dmg/43)
	}

	if collision_circle(x,y,sprite_height,LaserObj,false,true) {
			takeDamage(global.player.dmg/1.5)
	}

	if (collision_circle(x,y,sprite_height, SwordObject,false,true)){
		takeDamage(global.player.dmg*2)
		physics_apply_impulse(x,y,lengthdir_x(-phy_speed*2,point_direction(x,y,global.player.x, global.player.y)), lengthdir_y(-phy_speed*2,point_direction(x,y,global.player.x, global.player.y)))	
	}

	if (collision_point(x,y,FlameProjectile,false,true)) {
		takeDamage(global.player.dmg/200)
	}
}