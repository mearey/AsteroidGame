// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Lighting(){

}

function draw_glow(level, sprite) {
	if (is_undefined(sprite)) {
		sprite = sprite_index	
		draw_sprite_ext(sprite,0,x,y,1.25*level,1.25*level,image_angle,c_white,0.1)
		draw_sprite_ext(sprite,0,x,y,1.5*level,1.5*level,image_angle,c_white,0.1)
		draw_sprite_ext(sprite,0,x,y,1.75*level,1.75*level,image_angle,c_white,0.1)
		draw_sprite_ext(sprite,0,x,y,2*level,2*level,image_angle,c_white,0.1)
	} else {
		draw_sprite_ext(sprite,0,x,y,1,1,image_angle,c_white,1)
	}
	
}