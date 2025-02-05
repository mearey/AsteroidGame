/// @description Insert description here
// You can write your code in this editor
if upgrades && !instance_exists(WeaponGetObject){
	draw_set_font(TitleFont)
	draw_set_color(c_black)
	draw_set_alpha(0.6)
	draw_set_halign(fa_center)
	draw_rectangle(surface_get_width(application_surface)/2-string_width("LEVEL UP!")/2-25, 150, surface_get_width(application_surface)/2+string_width("LEVEL UP!")/2+25, 250, false)
	draw_set_alpha(1)
	draw_set_color(c_white)
	draw_rectangle(surface_get_width(application_surface)/2-string_width("LEVEL UP!")/2-25, 150, surface_get_width(application_surface)/2+string_width("LEVEL UP!")/2+25, 250, true)
	draw_text(surface_get_width(application_surface)/2,200,"LEVEL UP!")
	draw_set_font(DefaultFont)
}

