// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyCollisions(){

	if (collision_circle(x,y,sprite_height/2,global.ship_selection,false,true)) {
		if object_index != BuddyObj {
			global.player.hp-=damage
			global.player.takeDamage()
		}
	}

	if (collision_circle(x,y,sprite_height/2,BeamObj,false,true)) {
		takeDamage(global.player.dmg/35)
	}

	if (collision_circle(x,y,sprite_height/2,BeamObj_2xDamage,false,true)) {
		takeDamage(global.player.dmg/18)
	}

	if collision_circle(x,y,sprite_height/2,LaserObj,false,true) {
		takeDamage(global.player.dmg/1.5)
	}
	if collision_circle(x,y,sprite_height/2,ShockProjectile,false,true) {
		takeDamage(global.player.dmg)
	}

	if (collision_circle(x,y,sprite_height/2, SwordObject,false,true)){
		if SwordObject.x != global.player.x {
			takeDamage(global.player.dmg*4)
			var dir = point_direction(x,y,global.player.x, global.player.y)
			phy_speed_x = -lengthdir_x(1,dir)
			phy_speed_y = -lengthdir_y(1,dir)
			phy_position_x -= lengthdir_x(sprite_height/2,dir)
			phy_position_y -= lengthdir_y(sprite_height/2,dir)
		}
	}

	if (collision_point(x,y,FlameProjectile,false,true)) {
		takeDamage(global.player.dmg/200)
		plasma+=2
	}
}