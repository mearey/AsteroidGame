/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
if chubby {
	draw_sprite_ext(ChubbySprite,0,x,y,1.5,1.5,rot*2,c_white,0.9)
}

draw_sprite_ext(sprite_index,image_index,x,y,round(image_xscale),round(image_yscale),image_angle,c_white,1)
