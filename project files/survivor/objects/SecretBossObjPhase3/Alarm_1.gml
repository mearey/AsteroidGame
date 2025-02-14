/// @description Insert description here
// You can write your code in this editor
var dir = round(random_range(1,8))
sprite_index = secret_boss_phase_3_charge
instance_create_depth(x,y,1,GiantClayShot).direction = dir*45
if random(1) < 0.95 {
	alarm[1] = 5
} else {
	sprite_index = secret_boss_phase_3_idling
}
	
