/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if trader {
//draw sell stuff
var total = 0
for  (var i = 0; i<array_length(sell_slots); i++;){
	total += sell_slots[i].lvl*sell_slots[i].scrap
}
selltotal = total
draw_sprite(ScrapSprite,0,surface_get_width(application_surface)/2-123,surface_get_height(application_surface)-230)
draw_set_halign(fa_left)
draw_text(surface_get_width(application_surface)/2-103,surface_get_height(application_surface)-230,total)
draw_set_halign(fa_center)

//remove buttons
if instance_exists(continue_btn) {
	instance_destroy(continue_btn)
	continue_btn = Explosion
}
if instance_exists(exit_btn) {
	instance_destroy(exit_btn)
	continue_btn = Explosion
}
if instance_exists(options_btn) {
	instance_destroy(options_btn)
	continue_btn = Explosion
}
	
x_ = 0
y_ = cam_height/2

draw_sprite_ext(sprite_index,0,x-cam_x,y-cam_y,1,1,0,c_white,1)
draw_set_alpha(0.8)
draw_circle_color(x_,y_,340+18,c_black,c_black,false)
draw_circle(x_,y_,340-13,true)
draw_circle(x_,y_,340+18,true)
draw_rectangle_color(cam_width/2-32,cam_height/2+180-32, 33, cam_height-20,c_black,c_black,c_black,c_black,false)
draw_rectangle_color(cam_width/2,0,cam_width, cam_height,c_black,c_black,c_black,c_black,false)
draw_line(cam_width/2,0,cam_width/2,cam_height)
draw_sprite_ext(sprite_index,0,x-cam_x,y-cam_y,1,1,0,c_white,1)
draw_set_alpha(1)

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

//draw rectangle for inventory
draw_rectangle(cam_width/2-32,cam_height/2+180-32, 33, cam_height-20, true)

//draw rectangle for inventory
draw_rectangle(cam_width*2/4+32,cam_height/2+180-32, cam_width-33, cam_height-20, true)

} else {

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
var spd = global.player.max_speed*2
for (var i = 0; i<max(10,spd); i++) {
	x_ = i*8+25*5
	y_ = surface_get_height(application_surface)/2-90
	draw_rectangle_color(x_-1,y_-1,x_+6+1,y_+20+1,c_black,c_black,c_black,c_black, false)
	draw_rectangle(x_-1,y_-1,x_+6+1,y_+20+1,true)
}
draw_text(24*5,surface_get_height(application_surface)/2-90+string_height("S")/2,"Speed:")

for (var i = 0; i<spd; i++) {
	x_ = i*8+25*5
	y_ = surface_get_height(application_surface)/2-90
	draw_rectangle_color(x_+1,y_+1,x_+6-1,y_+20-1,c_aqua,c_aqua,c_aqua,c_aqua,false)	
}

//DRAW DAMAGE
var dmg = global.player.dmg*7-3
for (var i = 0; i<max(10,dmg); i++) {
	x_ = i*8+25*5
	y_ = surface_get_height(application_surface)/2-60
	draw_rectangle_color(x_-1,y_-1,x_+6+1,y_+20+1,c_black,c_black,c_black,c_black, false)
	draw_rectangle(x_-1,y_-1,x_+6+1,y_+20+1,true)
}
draw_text(24*5,surface_get_height(application_surface)/2-60+string_height("S")/2,"Damage:")

for (var i = 0; i<dmg; i++) {
	x_ = i*8+25*5
	y_ = surface_get_height(application_surface)/2-60
	draw_rectangle_color(x_+1,y_+1,x_+6-1,y_+20-1,c_aqua,c_aqua,c_aqua,c_aqua,false)	
}

//DRAW FIRE RATE
var frate = 10/global.player.fire_rate;
for (var i = 0; i<max(10,frate); i++) {
	x_ = i*8+25*5
	y_ = surface_get_height(application_surface)/2-30
	draw_rectangle_color(x_-1,y_-1,x_+6+1,y_+20+1,c_black,c_black,c_black,c_black, false)
	draw_rectangle(x_-1,y_-1,x_+6+1,y_+20+1,true)
}
draw_text(24*5,surface_get_height(application_surface)/2-30+string_height("S")/2,"Fire Rate:")

for (var i = 0; i<frate; i++) {
	x_ = i*8+25*5
	y_ = surface_get_height(application_surface)/2-30
	draw_rectangle_color(x_+1,y_+1,x_+6-1,y_+20-1,c_aqua,c_aqua,c_aqua,c_aqua,false)	
}

//DRAW HP
var hp_ = global.player.hp/10
for (var i = 0; i<max(10,hp_); i++) {
	x_ = i*8+25*5
	y_ = surface_get_height(application_surface)/2
	draw_rectangle_color(x_-1,y_-1,x_+6+1,y_+20+1,c_black,c_black,c_black,c_black, false)
	draw_rectangle(x_-1,y_-1,x_+6+1,y_+20+1,true)
}
draw_text(24*5,surface_get_height(application_surface)/2+string_height("S")/2,"HP:")

for (var i = 0; i<hp_; i++) {
	x_ = i*8+25*5
	y_ = surface_get_height(application_surface)/2
	draw_rectangle_color(x_+1,y_+1,x_+6-1,y_+20-1,c_aqua,c_aqua,c_aqua,c_aqua,false)	
}

//DRAW PROJECTILE SPEED
var pspeed = global.player.projectile_speed/3
for (var i = 0; i<max(10,pspeed); i++) {
	x_ = i*8+25*5
	y_ = surface_get_height(application_surface)/2+30
	draw_rectangle_color(x_-1,y_-1,x_+6+1,y_+20+1,c_black,c_black,c_black,c_black, false)
	draw_rectangle(x_-1,y_-1,x_+6+1,y_+20+1,true)
}
draw_text(24*5, surface_get_height(application_surface)/2+30+string_height("S")/2,"Projectile Speed:")

for (var i = 0; i<pspeed; i++) {
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
}

draw_sprite(ScrapSprite,0,surface_get_width(application_surface)-64,32)
draw_set_halign(fa_left)
draw_text(surface_get_width(application_surface)-48,32,global.player.scrap)
draw_set_halign(fa_center)