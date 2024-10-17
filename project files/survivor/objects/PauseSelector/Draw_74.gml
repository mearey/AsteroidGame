/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
x_ = 0
y_ = cam_height/2
draw_circle_color(x_,y_,340+18,c_black,c_black,false)
draw_rectangle_color(cam_width/2,0,cam_width, cam_height,c_black,c_black,c_black,c_black,false)
draw_line(cam_width/2,0,cam_width/2,cam_height)
draw_circle(x_,y_,340-13,true)
draw_circle(x_,y_,340+18,true)
draw_sprite_ext(sprite_index,0,x-cam_x,y-cam_y,1,1,0,c_white,1)

//draw stats on the left
draw_set_halign(fa_left)
draw_text(x_+96,y_-96,"LVL: " + string(global.player.lvl))
draw_text(x_+96,y_-64,"DMG: " + string(global.player.dmg))
draw_text(x_+96,y_-32,"SPEED: " + string(global.player.max_speed))
draw_text(x_+96,y_,"SHOT SPEED: " + string(global.player.projectile_speed))
draw_text(x_+96,y_+32,"FIRE RATE: " + string(global.player.fire_rate/20))
draw_text(x_+96,y_+64,"HP: " + string(global.player.max_hp))
draw_text(x_+96,y_+96,"ACCURACY: " + string(global.player.accuracy))
draw_set_halign(fa_center)

//draw player on the right
var num_orbitals = 0;
draw_sprite_ext(global.player.sprite_index,0,round(cam_width*3/4),round(cam_height/2),7,7,90,c_white,1)
for (var i = 0; i<array_length(global.player.equipped_weapons); i++;){
	if string_pos("Orbital",object_get_name(global.player.equipped_weapons[i])) {
		num_orbitals+=1;
		draw_sprite_ext(global.player.equipped_weapons[i].sprite_index,0,round(cam_width*3/4)+lengthdir_x(126,rotation/num_orbitals),round(cam_height/2)+lengthdir_y(126,rotation/num_orbitals),7,7,90,c_white,1)	
	} else {
		draw_sprite_ext(global.player.equipped_weapons[i].sprite_index,0,round(cam_width*3/4),round(cam_height/2),7,7,90,c_white,1)
	}
}

//draw rectangle for inventory
draw_rectangle(cam_width*2/4+32,cam_height/2+180-32, cam_width-33, cam_height-20, true)

event_inherited()