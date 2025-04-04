/// @description Insert description here
// You can write your code in this editor
if x > room_width*2 {
	instance_destroy(self)	
}

if x < -1000 {
	instance_destroy(self)
}

if y < -1000 {
	instance_destroy(self)	
}

if y > room_height*2 {
	instance_destroy(self)	
}

