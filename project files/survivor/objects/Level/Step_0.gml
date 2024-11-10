/// @description Insert description here
// You can write your code in this editor
if !global.pauseObj.paused {
if timer > 0 {
	timer -= 1	
} else {
	difficulty += 1
	timer = 60
	log(string(difficulty))
}

if (boss) {
	if !instance_exists(boss_obj) {
		//end
		if !end_ {
			alarm[0] = 500
			end_=true
		}
	}
}

if end_ {
	
	
}

}