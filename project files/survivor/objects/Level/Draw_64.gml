/// @description Insert description here
// You can write your code in this editor
if tutorial {
	if mouse_check_button(mb_any) {
		tutorial = false
		global.pauseObj.paused = false
	}
	if keyboard_check(vk_escape) {
		tutorial = false	
	}
	draw_sprite(ingame_tut1, 0, 0,0)	
}

if !global.pauseObj.paused {
	var t ="" 
	if t_min > 9 {t+=string(t_min)} else {t+="0"+string(t_min)}
	t += ":"
	if t_sec > 9 {t+=string(t_sec)} else {t+="0"+string(t_sec)}
	
	draw_set_alpha(1)
	draw_set_halign(fa_right)
	draw_text(surface_get_width(application_surface)-30,75,t)
	draw_set_halign(fa_left)
	
	global.player.time = t
}