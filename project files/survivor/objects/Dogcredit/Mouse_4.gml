/// @description Insert description here
// You can write your code in this editor
image_index = random_range(0,3)
audio_stop_sound(dogbark)
if random(1) < 0.05 {
	if random(1) < 0.3 {
		PlaySFX(humanbark1, 0.6,1.4)
	} else if random(1) < 0.5 {
		PlaySFX(humanbark2, 0.6,1.4)
	} else {
		PlaySFX(humanbark3, 0.6,1.4)	
	}
} else {
	PlaySFX(dogbark, 0.6,1.4)
}