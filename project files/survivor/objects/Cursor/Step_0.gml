/// @description Insert description here
// You can write your code in this editor
x = mouse_x
y = mouse_y

sprite_index = cursor_sprite

switch global.cursor_colour {
	case 0:
		colour = c_white
		break;
	case 1:
		colour = c_red
		break;
	case 2:
		colour = c_yellow
		break;
	case 3:
		colour = c_aqua
		break;
}

if global.cursor_trail {
	instance_create_depth(x,y,-999,CursorTrail)	
}
