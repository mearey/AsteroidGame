/// @description Insert description here
// You can write your code in this editor
event_inherited()
hp = 25
if global.level.difficulty > 300 {
	sprite_index = 	ScrapperShark_2
	hp = 100
} else if global.level.difficulty > 600 {
	sprite_index  = ScrapperShark_3
	hp = 250
}
lighting_size = 10
lighting_colour = c_red

position = random(360)

try {
	phy_position_x = PlayerObj.x + lengthdir_x(150,position) 
	phy_position_y = PlayerObj.y + lengthdir_y(150,position) 
}
catch (err) {
	instance_destroy(self)
	log(err)
}

setup = function () {
	
	attack = false

	alarm[5] = random_range(100,300)
	position = random(360)
}

setup()

alarm[1] = 1