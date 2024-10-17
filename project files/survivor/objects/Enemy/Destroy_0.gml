/// @description Insert description here
// You can write your code in this editor
for (var i=xp; i>0; i-=1) {
	instance_create_depth(x+random_range(-1,1),y+random_range(-1,1),1,EXPOrbObj)
}
if (chest) {
	instance_create_depth(x,y,1,Chest)	
}