/// @description Insert description here
// You can write your code in this editor
al1 = 1
al2 = 0
step += 1
if step == 1 {
	PlaySFX(bwooom, 1,1)	
} else {
	audio_stop_all()	
}
if step >= array_length(images)-1 {
	room_goto(MainMenu)
}