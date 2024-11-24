/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
clearEntities()
if dead {
room_goto(GameSummary)
var summary = instance_create_depth(x,y,0,PostGameStats)
//set stats here
summary.win = false
summary.gold_gained = coins
summary.damage_taken = damage_taken
summary.enemies_defeated = enemies_defeated
summary.exp_gained = exp_gained

	
summary.time = time

summary.weapons = equipped_weapons
saveTotal()
wipeSave()
}