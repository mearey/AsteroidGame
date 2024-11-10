/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if dead && size > 1 {
	for (var i = 0; i<(size-1)*2; i+=1) {
		var enem = instance_create_depth(x+random_range(-7*size,7*size),y+random_range(-7*size,7*size),1,EnemyOrbObj)	
		enem.phy_speed_x = phy_speed_x+random_range(-3,3)
		enem.phy_speed_y = phy_speed_y+random_range(-3,3)
	}
}