/// @description Insert description here
// You can write your code in this editor
if (collision_circle(x,y,16,global.ship_selection,false,true) and !treasure_got) {
	chestOpen()
	saveState()
}

if x < 0 {
	phy_position_x += 1	
} else if x > room_width {
	phy_position_x -= 1	
}

if y < 0 {
	phy_position_y += 1
} else if y > room_height {
	phy_position_y -= 1	
}
