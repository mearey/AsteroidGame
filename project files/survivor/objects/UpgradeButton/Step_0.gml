/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if backwards {
if hovered && (mouse_check_button_pressed(mb_right) || CheckControllerButton() == gp_shoulderl) {
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
}

if max_ && !backwards && hovered && (mouse_check_button_pressed(mb_right) || CheckControllerButton() == gp_shoulderl) {
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
	}
}