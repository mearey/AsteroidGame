/// @description Insert description here
// You can write your code in this editor
scroll -= 1

if scroll <= -4000 {
	room_goto(Splash2)
}

layer_y("Background_1", scroll*0.5)