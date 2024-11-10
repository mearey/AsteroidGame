/// @description Insert description here
// You can write your code in this editor

if (!hovered) {
	image_speed = 0
	if (image_index != 0) {
		image_index -= 1	
	}
} else if mouse_check_button_pressed(mb_left) && !locked {
	onClick()
	randomize()
	var pitch = 0.5
	if random(1) > 0.75 {
		pitch = 1
	} else if random(1) > 0.75 {
		pitch = 1.5	
	}
	PlaySFX(buttonSelect,pitch,pitch)
} else if mouse_check_button_pressed(mb_left) && locked && cost > 0 {
	onClick()
}