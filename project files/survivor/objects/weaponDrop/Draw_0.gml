/// @description Insert description here
// You can write your code in this editor
event_inherited()

var colour = c_white

switch number
{
	case 1: 
		colour = c_green
	break;
	case 2: 
		colour = c_green
	break;
	case 3: 
		colour = c_green
	break;
	case 4: 
		colour = c_blue
	break;
	case 5: 
		colour = c_blue
	break;
	case 6: 
		colour = c_blue
	break;
	case 7: 
		colour = c_purple
	break;
	case 8: 
		colour = c_purple
	break;
	case 9: 
		colour = c_purple
	break;
	case 10: 
		colour = c_orange
	break;
}

lighting_colour = colour

var test = instance_create_depth(x,y,0,weapon)

draw_sprite_ext(test.sprite_index,2,x,y,3,3,image_angle,c_white,1)

instance_destroy(test)

draw_sprite_ext(LootBeamSprite,animationframe,x,y,1,1,0,colour,0.5)