/// @description Insert description here
// You can write your code in this editor
if !global.pauseObj.paused {
	draw_set_alpha(1)
	draw_healthbar(30,surface_get_height(application_surface)-70,surface_get_width(application_surface)-30,surface_get_height(application_surface)-30,(hp/max_hp) * 100, c_black, c_red,c_green,0,true,true)
}