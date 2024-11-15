/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
x_ = 0
y_ = cam_height/2
draw_set_alpha(0.8)
draw_circle_color(x_,y_,340+18,c_black,c_black,false)
draw_rectangle_color(cam_width/2,0,cam_width, cam_height,c_black,c_black,c_black,c_black,false)
draw_line(cam_width/2,0,cam_width/2,cam_height)
draw_circle(x_,y_,340-13,true)
draw_circle(x_,y_,340+18,true)
draw_sprite_ext(sprite_index,0,x-cam_x,y-cam_y,1,1,0,c_white,1)
draw_set_alpha(1)

//draw stats on the left
/*
draw_set_halign(fa_left)
draw_text(x_+96,y_-96,"LVL: " + string(global.player.lvl))
draw_text(x_+96,y_-64,"DMG: " + string(global.player.dmg))
draw_text(x_+96,y_-32,"SPEED: " + string(global.player.max_speed))
draw_text(x_+96,y_,"SHOT SPEED: " + string(global.player.projectile_speed))
draw_text(x_+96,y_+32,"FIRE RATE: " + string(global.player.fire_rate/20))
draw_text(x_+96,y_+64,"HP: " + string(global.player.max_hp))
draw_text(x_+96,y_+96,"ACCURACY: " + string(global.player.accuracy))
draw_set_halign(fa_center)
*/

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

draw_set_halign(fa_right)

//DRAW speed
for (var i = 0; i<10; i++) {
	x_ = i*8+25*5
	y_ = surface_get_height(application_surface)/2-90
	draw_rectangle_color(x_-1,y_-1,x_+6+1,y_+20+1,c_black,c_black,c_black,c_black, false)
	draw_rectangle(x_-1,y_-1,x_+6+1,y_+20+1,true)
}
draw_text(24*5,surface_get_height(application_surface)/2-90+string_height("S")/2,"Speed:")

for (var i = 0; i<global.player.max_speed*2; i++) {
	x_ = i*8+25*5
	y_ = surface_get_height(application_surface)/2-90
	draw_rectangle_color(x_+1,y_+1,x_+6-1,y_+20-1,c_aqua,c_aqua,c_aqua,c_aqua,false)	
}

//DRAW DAMAGE
for (var i = 0; i<10; i++) {
	x_ = i*8+25*5
	y_ = surface_get_height(application_surface)/2-60
	draw_rectangle_color(x_-1,y_-1,x_+6+1,y_+20+1,c_black,c_black,c_black,c_black, false)
	draw_rectangle(x_-1,y_-1,x_+6+1,y_+20+1,true)
}
draw_text(24*5,surface_get_height(application_surface)/2-60+string_height("S")/2,"Damage:")

for (var i = 0; i<global.player.dmg*7-3; i++) {
	x_ = i*8+25*5
	y_ = surface_get_height(application_surface)/2-60
	draw_rectangle_color(x_+1,y_+1,x_+6-1,y_+20-1,c_aqua,c_aqua,c_aqua,c_aqua,false)	
}

//DRAW FIRE RATE
for (var i = 0; i<10; i++) {
	x_ = i*8+25*5
	y_ = surface_get_height(application_surface)/2-30
	draw_rectangle_color(x_-1,y_-1,x_+6+1,y_+20+1,c_black,c_black,c_black,c_black, false)
	draw_rectangle(x_-1,y_-1,x_+6+1,y_+20+1,true)
}
draw_text(24*5,surface_get_height(application_surface)/2-30+string_height("S")/2,"Fire Rate:")

for (var i = 0; i<10/global.player.fire_rate; i++) {
	x_ = i*8+25*5
	y_ = surface_get_height(application_surface)/2-30
	draw_rectangle_color(x_+1,y_+1,x_+6-1,y_+20-1,c_aqua,c_aqua,c_aqua,c_aqua,false)	
}

//DRAW HP
for (var i = 0; i<10; i++) {
	x_ = i*8+25*5
	y_ = surface_get_height(application_surface)/2
	draw_rectangle_color(x_-1,y_-1,x_+6+1,y_+20+1,c_black,c_black,c_black,c_black, false)
	draw_rectangle(x_-1,y_-1,x_+6+1,y_+20+1,true)
}
draw_text(24*5,surface_get_height(application_surface)/2+string_height("S")/2,"HP:")

for (var i = 0; i<global.player.hp/10; i++) {
	x_ = i*8+25*5
	y_ = surface_get_height(application_surface)/2
	draw_rectangle_color(x_+1,y_+1,x_+6-1,y_+20-1,c_aqua,c_aqua,c_aqua,c_aqua,false)	
}

//DRAW PROJECTILE SPEED
for (var i = 0; i<10; i++) {
	x_ = i*8+25*5
	y_ = surface_get_height(application_surface)/2+30
	draw_rectangle_color(x_-1,y_-1,x_+6+1,y_+20+1,c_black,c_black,c_black,c_black, false)
	draw_rectangle(x_-1,y_-1,x_+6+1,y_+20+1,true)
}
draw_text(24*5, surface_get_height(application_surface)/2+30+string_height("S")/2,"Projectile Speed:")

for (var i = 0; i<global.player.projectile_speed/3; i++) {
	x_ = i*8+25*5
	y_ = surface_get_height(application_surface)/2+30
	draw_rectangle_color(x_+1,y_+1,x_+6-1,y_+20-1,c_aqua,c_aqua,c_aqua,c_aqua,false)	
}

//DRAW ABILITY
draw_set_halign(fa_center)
draw_set_valign(fa_top)
draw_text_ext(24*5, surface_get_height(application_surface)/2+60+string_height("S")/2, "Ability: " + global.player.ability,20,200)
draw_set_valign(fa_middle)
draw_set_halign(fa_left)


//DRAW LINES FOR INVENTORY
var _x = cam_width*3/4
var _y = cam_height/2
draw_sprite_ext(Line1,0,_x-100,_y-40,-1,-1,0,c_white,1)
draw_sprite_ext(Line1,0,_x+100,_y-40,1,-1,0,c_white,1)

draw_sprite_ext(Line1,0,_x-100,_y+40,-1,1,0,c_white,1)
draw_sprite_ext(Line1,0,_x+100,_y+40,1,1,0,c_white,1)

draw_sprite_ext(Line1,0,_x-25,_y+50,-1,-1,0,c_white,1)
draw_sprite_ext(Line1,0,_x+25,_y-40,1,1,0,c_white,1)

draw_sprite_ext(Line1,0,_x-10,_y-95,1,1,45/2+90,c_white,1)