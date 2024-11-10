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