/// @description Insert description here
// You can write your code in this editor
phy_linear_velocity_x = random_range(-100,100)
phy_linear_velocity_y = random_range(-100,100)

if random(1) < 0.15 {
	image_index = 2	
} else if random(1) < 0.15 {
	image_index = 1	
}
phy_position_x= room_width/2 + random_range(-200,200)
phy_position_y = room_height/2 + random_range(-200,200)