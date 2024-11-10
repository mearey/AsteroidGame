/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if (!global.pauseObj.paused){
	EnemyCollisions()
}


if !(global.pauseObj.paused) {
move_cooldown -= 1;


if move_cooldown <= 0 {
	moves[random_range(0,array_length(moves))]()
}

if alarm[1] {
	lighting_intensity = 0.5 + 10/alarm[1]
	PlaySFX(buttonSwitch,1+0,1+5/alarm[1])
} else {
	lighting_intensity = 0.5
}

//MOVE3
if moving {
	physics_apply_impulse(x,y,moveto_x,moveto_y)
}

if (x<0) {
	physics_apply_impulse(x,y,30,0)
}
if (x>room_width) {
	physics_apply_impulse(x,y,-30,0)
}
if (y<0) {
	physics_apply_impulse(x,y,0,30)
}
if (y>room_width) {
	physics_apply_impulse(x,y,0,-30)	
}

//move towards player
physics_apply_impulse(x,y,(global.player.x-x)/10,(global.player.y-y)/10)

}