/// @description Insert description here
// You can write your code in this editor

draw_sprite(CoinSprite,0,surface_get_width(application_surface)-64,32)
draw_set_halign(fa_left)
draw_text(surface_get_width(application_surface)-48,32,coins)
draw_set_halign(fa_center)
draw_circle(x_,y_,340-13,true)
draw_circle(x_,y_,340+18,true)
draw_self()