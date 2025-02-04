/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

repeat random_range(90,110) {
	instance_create_depth(x+random_range(-64,64),y+random_range(-64,64),1,CoinObj)	
}