/// @description Insert description here
// You can write your code in this editor
if !global.pauseObj.paused {
if init {
	if collision_point(global.player.x,global.player.y,self,true,false) {
		global.player.hp-=0.5
		global.player.takeDamage()
	}
}

if !init {
	image_yscale += 0.05
}
}