/// @description Insert description here
// You can write your code in this editor
// draw post game stats

draw_circle(x_,y_,340-13,true)
draw_circle(x_,y_,340+18,true)

draw_sprite(CoinSprite,0,surface_get_width(application_surface)-64,32)
draw_set_halign(fa_left)
draw_text(surface_get_width(application_surface)-48,32,coins)
draw_set_halign(fa_center)

var inst = instance_create_depth(x,y,0,display_ship)

draw_set_halign(fa_right)

//DRAW speed
for (var i = 0; i<10; i++) {
	x_ = surface_get_width(application_surface)/2+i*8-4*5
	y_ = surface_get_height(application_surface)/2
	draw_rectangle_color(x_-1,y_-1,x_+6+1,y_+20+1,c_black,c_black,c_black,c_black, false)
	draw_rectangle(x_-1,y_-1,x_+6+1,y_+20+1,true)
}
draw_text( surface_get_width(application_surface)/2+i*8-22*5,surface_get_height(application_surface)/2+string_height("S")/2,"Speed:")

for (var i = 0; i<inst.max_speed*2.2; i++) {
	x_ = surface_get_width(application_surface)/2+i*8-4*5
	y_ = surface_get_height(application_surface)/2
	draw_rectangle_color(x_+1,y_+1,x_+6-1,y_+20-1,c_aqua,c_aqua,c_aqua,c_aqua,false)	
}

//DRAW DAMAGE
for (var i = 0; i<10; i++) {
	x_ = surface_get_width(application_surface)/2+i*8-4*5
	y_ = surface_get_height(application_surface)/2+30
	draw_rectangle_color(x_-1,y_-1,x_+6+1,y_+20+1,c_black,c_black,c_black,c_black, false)
	draw_rectangle(x_-1,y_-1,x_+6+1,y_+20+1,true)
}
draw_text( surface_get_width(application_surface)/2+i*8-22*5,surface_get_height(application_surface)/2+30+string_height("S")/2,"Damage:")

for (var i = 0; i<inst.dmg*7-3; i++) {
	x_ = surface_get_width(application_surface)/2+i*8-4*5
	y_ = surface_get_height(application_surface)/2+30
	draw_rectangle_color(x_+1,y_+1,x_+6-1,y_+20-1,c_aqua,c_aqua,c_aqua,c_aqua,false)	
}

//DRAW FIRE RATE
for (var i = 0; i<10; i++) {
	x_ = surface_get_width(application_surface)/2+i*8-4*5
	y_ = surface_get_height(application_surface)/2+60
	draw_rectangle_color(x_-1,y_-1,x_+6+1,y_+20+1,c_black,c_black,c_black,c_black, false)
	draw_rectangle(x_-1,y_-1,x_+6+1,y_+20+1,true)
}
draw_text( surface_get_width(application_surface)/2+i*8-22*5,surface_get_height(application_surface)/2+60+string_height("S")/2,"Fire Rate:")

for (var i = 0; i<10/inst.fire_rate; i++) {
	x_ = surface_get_width(application_surface)/2+i*8-4*5
	y_ = surface_get_height(application_surface)/2+60
	draw_rectangle_color(x_+1,y_+1,x_+6-1,y_+20-1,c_aqua,c_aqua,c_aqua,c_aqua,false)	
}

//DRAW HP
for (var i = 0; i<10; i++) {
	x_ = surface_get_width(application_surface)/2+i*8-4*5
	y_ = surface_get_height(application_surface)/2+90
	draw_rectangle_color(x_-1,y_-1,x_+6+1,y_+20+1,c_black,c_black,c_black,c_black, false)
	draw_rectangle(x_-1,y_-1,x_+6+1,y_+20+1,true)
}
draw_text( surface_get_width(application_surface)/2+i*8-22*5,surface_get_height(application_surface)/2+90+string_height("S")/2,"HP:")

for (var i = 0; i<inst.hp/15; i++) {
	x_ = surface_get_width(application_surface)/2+i*8-4*5
	y_ = surface_get_height(application_surface)/2+90
	draw_rectangle_color(x_+1,y_+1,x_+6-1,y_+20-1,c_aqua,c_aqua,c_aqua,c_aqua,false)	
}

//DRAW projectile spped
for (var i = 0; i<10; i++) {
	x_ = surface_get_width(application_surface)/2+i*8-4*5
	y_ = surface_get_height(application_surface)/2+120
	draw_rectangle_color(x_-1,y_-1,x_+6+1,y_+20+1,c_black,c_black,c_black,c_black, false)
	draw_rectangle(x_-1,y_-1,x_+6+1,y_+20+1,true)
}
draw_text( surface_get_width(application_surface)/2+i*8-22*5,surface_get_height(application_surface)/2+120+string_height("S")/2,"Projectile Speed:")

for (var i = 0; i<inst.projectile_speed/3; i++) {
	x_ = surface_get_width(application_surface)/2+i*8-4*5
	y_ = surface_get_height(application_surface)/2+120
	draw_rectangle_color(x_+1,y_+1,x_+6-1,y_+20-1,c_aqua,c_aqua,c_aqua,c_aqua,false)	
}


//DRAW ABILITY
draw_set_halign(fa_center)
draw_set_valign(fa_top)
draw_text_ext(surface_get_width(application_surface)/2, surface_get_height(application_surface)/2+150+string_height("S")/2, "Ability: " + inst.ability,20,200)
draw_set_valign(fa_middle)
draw_set_halign(fa_left)
instance_destroy(inst)