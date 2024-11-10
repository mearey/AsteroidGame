/// @description Insert description here
// You can write your code in this editor
var str = "PICK A WEAPON"
draw_set_font(TitleFont)
draw_set_color(c_black)
draw_set_alpha(0.2)
draw_rectangle(surface_get_width(application_surface)/2-string_width(str)/2-25, 100, surface_get_width(application_surface)/2+string_width(str)/2+25, 200, false)
draw_set_alpha(1)
draw_set_color(c_white)
draw_rectangle(surface_get_width(application_surface)/2-string_width(str)/2-25, 100, surface_get_width(application_surface)/2+string_width(str)/2+25, 200, true)
draw_text(surface_get_width(application_surface)/2,150,str)
draw_set_font(DefaultFont)
Weapontip(string(sprite_get_name(weapon_sprite)), weapon, 0)
