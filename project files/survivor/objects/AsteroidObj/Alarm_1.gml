/// @description Insert description here
// You can write your code in this editor
if new_ {

	var dir = point_direction(x,y, global.player.x, global.player.y)
	physics_apply_impulse(x,y,lengthdir_x(200,dir), lengthdir_y(200,dir))
	p_x = phy_speed_x
	p_y = phy_speed_y
}

phy_rotation = random_range(0,360)


hp = 2*size
xp = round(size*1.5)

val = max(18*size,10)
if random(1) < 0.5 {
	sprite_index = Asteroid_alt
	hp=hp*0.8	
}