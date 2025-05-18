

if (weapon!=Weapon) {
	try {
		Weapontip(sprite_get_name((weapon.sprite_index)), weapon, 0)
	}
	catch (err) {
		log(string(err))	
	}
		
}


