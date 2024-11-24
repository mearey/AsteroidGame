if random(1)<weapon_drop_chance*global.luck && dead {
	var drop = instance_create_depth(x,y,0,weaponDrop)
	randomize()
	if random(1)<0.05*global.luck {
		drop.number = round(random_range(4,5))		
	} else if random(1) <0.10*global.luck {
		drop.number = round(random_range(3,4))	
	} else if random(1)<0.20*global.luck {
		drop.number = round(random_range(2,3))	
	} else {
		drop.number = round(random_range(1,2))	
	}
	randomize()
	var equipped = []
	var global_ = []
	for (var i=0; i<array_length(global.player.equipped_weapons); i+=1) {
		array_push(equipped, object_get_name(global.player.equipped_weapons[i].object_index))
	}
	for (var i=0; i<array_length(global.weaponPool); i+=1) {
		array_push(global_, object_get_name(global.weaponPool[i]))
	}
	var weapons = array_intersection(equipped, global_)
	if array_length(weapons) > 0 { 
		drop.weapon = asset_get_index(weapons[random_range(0,array_length(weapons))])
	}
}

