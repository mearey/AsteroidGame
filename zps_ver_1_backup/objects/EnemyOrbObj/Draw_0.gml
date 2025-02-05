/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
if plasma > 0 {
	plasma-=1
	part_type_color_mix(global.plasma, c_fuchsia, c_white)
	part_type_orientation(global.plasma, phy_rotation,phy_rotation,0,0,0)
	part_type_direction(global.plasma,phy_rotation,phy_rotation,0,0);
	part_particles_create(global.p_system, x+random_range(-6,6), y+random_range(-6,6), global.plasma, 1);	
}
if chubby {
	draw_sprite_ext(ChubbySprite,0,x,y,1.5,1.5,rot*2,c_white,0.9)
}

draw_sprite_ext(sprite_index,image_index,x,y,round(image_xscale),round(image_yscale),image_angle,c_white,1)
