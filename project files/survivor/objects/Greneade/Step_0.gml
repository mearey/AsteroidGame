/// @description Insert description here
// You can write your code in this editor
event_inherited()
image_xscale = 1 + image_index/2
image_yscale = 1 + image_index/2
if !global.pauseObj.paused {
if (collision_circle(x,y,8,Enemy,false,true) || (life <= 0 )) {
	image_speed = 1	
	speed = 0
	if !exploded {
		PlaySFX(explosion,1,4)
		instance_create_depth(x,y,1,Explosion)
		var list = ds_list_create();
		var num = collision_circle_list(x,y,60*size,Enemy,false,true,list,false)
		for (var i = 0; i<num; i++) {
			var dir = -point_direction(global.player.x,global.player.y,list[| i].x,list[| i].y)
			list[| i].phy_speed_x += lengthdir_x(4, dir)
			list[| i].phy_speed_y -= lengthdir_y(4, dir)
			list[| i].takeDamage(global.player.dmg)
		}	
		exploded = true
	}
}

if speed > 0 {
	speed -= 0.1;
}
life -= 1

x+= lengthdir_x(speed,direction)
y+= lengthdir_y(speed,direction)
}