/// @description Insert description here
// You can write your code in this editor
if (!global.pauseObj.paused){
	EnemyCollisions()

if stage == 1 {
	var dir = -point_direction(x,y,global.player.x, global.player.y) - 90
	phy_rotation = dir
	image_speed = 0.2+phy_speed/5
	if random(1) < 0.01 {
		var rand = random_range(2,9)
		phy_speed_x = lengthdir_x(rand,point_direction(x,y,global.player.x, global.player.y))
		phy_speed_y = lengthdir_y(rand,point_direction(x,y,global.player.x, global.player.y))
		if random(1) < 0.5 {
			alarm[1] = 60
		}
	}
}
}