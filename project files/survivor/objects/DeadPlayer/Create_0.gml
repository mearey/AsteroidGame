/// @description Insert description here
// You can write your code in this editor
event_inherited()
alpha = 0
steam_set_achievement("first_death")

if (instance_exists(Level3)) {
	if Level3.boss_killed {
		clearEntities()
		saveTotal()
		room_goto(EndCutsceneRoom)	
	}
}	