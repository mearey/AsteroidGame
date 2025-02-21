/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if dead {
	if size > 0.5 {
		var inst = instance_create_depth(x+random_range(-sprite_height/2,sprite_height/2),y+random_range(-sprite_height/2,sprite_height/2),0,GoldClay)	
		inst.size = size/2
		inst.child = true
		inst.phy_speed_x = phy_speed_x
		inst.phy_speed_y = phy_speed_y
		inst.p_x = phy_speed_x+random_range(-3,3)
		inst.p_y = phy_speed_y+random_range(-3,3)
		var inst = instance_create_depth(x+random_range(-sprite_height/2,sprite_height/2),y+random_range(-sprite_height/2,sprite_height/2),0,GoldClay)	
		inst.size = size/2
		inst.child = true
		inst.phy_speed_x = phy_speed_x
		inst.phy_speed_y = phy_speed_y
		inst.p_x = phy_speed_x+random_range(-3,3)
		inst.p_y = phy_speed_y+random_range(-3,3)
	}
}	

repeat (random_range(1,3)) {
	instance_create_depth(x+random_range(-1,1),y+random_range(-1,1),1,CoinObj)	
	instance_create_depth(x+random_range(-1,1),y+random_range(-1,1),1,CoinObj)	
}