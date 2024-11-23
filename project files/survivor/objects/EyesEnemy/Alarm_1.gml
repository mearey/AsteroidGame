/// @description Insert description here
// You can write your code in this editor

if new_ {

	var dir = point_direction(x,y, global.player.x, global.player.y)
	physics_apply_impulse(x,y,lengthdir_x(3,dir), lengthdir_y(3,dir))
	p_x = phy_speed_x
	p_y = phy_speed_y
}

phy_rotation = random_range(0,360)

lighting_colour = c_lime
lighting_size = 4.5
lighting_intensity = 0.3