// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SpawnWave(wave, num, num_bosses, spawn_rate){
	var wave_ = instance_create_depth(0,0,1,wave);
	wave_.number = num;
	wave_.num_bosses = num_bosses;
	wave_.spawnrate = spawn_rate
	return wave_
}