/// @description Insert description here
// You can write your code in this editor
if dead {
	for (var i=xp; i>0; i-=1) {
		instance_create_depth(x+random_range(-5,5),y+random_range(-5,5),1,EXPOrbObj)
	}
	if (chest) {
		instance_create_depth(x,y,1,Chest)	
	}
	if (chubby) {
		for (var i = random_range(5,15); i>0; i-=1) {
			instance_create_depth(x+random_range(-1,1),y+random_range(-1,1),1,CoinObj)	
		}
		for (var i=xp*2; i>0; i-=1) {
			instance_create_depth(x+random_range(-5,5),y+random_range(-5,5),1,EXPOrbObj)
		}
	}
}
