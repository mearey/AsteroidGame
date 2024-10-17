/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if !(global.pauseObj.paused){
if (distance_to_object(PlayerObj) < 1) {
	//explosion
	instance_create_depth(x,y,0,Explosion)
	//deal damge
	global.player.hp-=damage
	global.player.takeDamage()
	//destroy
	instance_destroy(self)
}

var dir = -point_direction(x,y,global.player.x,global.player.y)

if (phy_rotation < dir+5) {
	phy_rotation += 1
} else if phy_rotation > dir-5 {
	phy_rotation -= 1
} 
}