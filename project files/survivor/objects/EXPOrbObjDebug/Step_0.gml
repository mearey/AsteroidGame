/// @description Insert description here
// You can write your code in this editor
phy_rotation+=rotation

if (collision_circle(x,y,50,PlayerObj,false,true)){
	global.player.addXP(1);
	instance_create_depth(x,y,1,EXPOrbSuck)
	//instance_destroy(self)
}