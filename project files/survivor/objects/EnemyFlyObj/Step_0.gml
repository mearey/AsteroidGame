/// @description Insert description here
// You can write your code in this editor

//collision circle for player
if (!global.pauseObj.paused){
if (collision_circle(x,y,8,PlayerObj,false,true)) {
	physics_apply_impulse(x,y,lengthdir_x(-phy_speed,point_direction(x,y,global.player.x, global.player.y)), lengthdir_y(-phy_speed,point_direction(x,y,global.player.x, global.player.y)))	
} else {
	physics_apply_impulse(x,y,lengthdir_x(_speed,point_direction(x,y,global.player.x, global.player.y)), lengthdir_y(_speed,point_direction(x,y,global.player.x, global.player.y)))		
	if (random(1) < 0.1) {
		var dir = random_range(0,360)
		physics_apply_impulse(x,y,lengthdir_x(10,dir), lengthdir_y(10,dir))
	}
}
EnemyCollisions()
}