/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if hovered && mouse_check_button_pressed(mb_right) {
	if points > 0 {
		points -= 2
		onClick()
		var pitch = 0.5
		if random(1) > 0.75 {
			pitch = 1
		} else if random(1) > 0.75 {
			pitch = 1.5	
		}
		PlaySFX(buttonSelect,pitch,pitch)
		if cost!=0 {
			instance_find(UpgradeSelector, 0).coins += cost*2
		}
	}
}