/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_alpha(alpha-0.4)

draw_set_color(c_black)
draw_rectangle(surface_get_width(application_surface)-220+offset,100+80*step,surface_get_width(application_surface)-10+offset,160+80*step,false)
draw_set_alpha(alpha)
draw_set_color(c_white)
draw_rectangle(surface_get_width(application_surface)-220+offset,100+80*step,surface_get_width(application_surface)-10+offset,160+80*step,true)

draw_sprite_ext(image,2,surface_get_width(application_surface)-180+offset,130+80*step,image_scale,image_scale,0,c_white,alpha)

draw_text_ext(surface_get_width(application_surface)-90+offset,130+80*step,text,20,150)