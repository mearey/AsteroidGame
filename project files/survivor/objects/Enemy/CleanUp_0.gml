if random(1)<weapon_drop_chance && dead {
	var drop = instance_create_depth(x,y,0,weaponDrop)
	
	if random(1)<0.025 {
		drop.number = round(random_range(8,10))		
	} else if random(1) <0.05 {
		drop.number = round(random_range(6,7))	
	} else if random(1)<0.15 {
		drop.number = round(random_range(3,5))	
	} else {
		drop.number = round(random_range(1,2))	
	}
	drop.weapon = global.weaponPool[random_range(0,array_length(global.weaponPool))]
}

