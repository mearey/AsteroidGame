/// @description Insert description here
// You can write your code in this editor
var dir = random_range(0,360)
sprite_index = secret_boss_phase_2_attack
repeat (random_range(1,2)) {
	instance_create_depth(x,y,1,GiantClayShot).direction = dir+random_range(-30,30)
}
if random(1) < 0.95 {
	alarm[1] = 3
} else {
	sprite_index = secret_boss_phase_2_idle
}
	
