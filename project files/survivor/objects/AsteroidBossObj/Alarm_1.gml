/// @description Insert description here
// You can write your code in this editor
if new_ {

	var dir = point_direction(x,y, global.player.x, global.player.y)
	physics_apply_impulse(x,y,lengthdir_x(200,dir), lengthdir_y(200,dir))
	p_x = phy_speed_x
	p_y = phy_speed_y
}

phy_rotation = random_range(0,360)


hp = 10*size
xp = round(size*2)

val = max(18*size,10)