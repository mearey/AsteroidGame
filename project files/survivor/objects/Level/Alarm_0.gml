/// @description Insert description here
// You can write your code in this editor
if !level3 {
room_goto(GameSummary)
var summary = instance_create_depth(x,y,0,PostGameStats)
//set stats here
summary.win = true
summary.gold_gained = global.player.coins
summary.damage_taken = global.player.damage_taken
summary.enemies_defeated = global.player.enemies_defeated
summary.exp_gained = global.player.exp_gained
	
summary.time = global.player.time

summary.weapons = global.player.equipped_weapons
clearEntities()
saveTotal()
wipeSave()
}