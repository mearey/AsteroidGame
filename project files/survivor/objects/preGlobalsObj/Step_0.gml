/// @description Insert description here
// You can write your code in this editor

if !first_launch && steam_initialised() {
	if !steam_get_achievement("first_launch") {
		steam_set_achievement("first_launch")	
	}
	first_launch = true
}