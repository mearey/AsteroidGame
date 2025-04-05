/// @description Insert description here
// You can write your code in this editor
event_inherited()
if !global.pauseObj.paused {
	if attack {
		phy_position_x = lerp(phy_position_x, PlayerObj.x - lengthdir_x(150,position),0.03)
		phy_position_y = lerp(phy_position_y, PlayerObj.y - lengthdir_y(150,position), 0.03)
		if abs(phy_position_x - (PlayerObj.x - lengthdir_x(150,position)) ) <= 20 && abs(phy_position_y - (PlayerObj.y - lengthdir_y(150,position)) ) <= 20 {
			setup()
		}
	} else {
		phy_position_x = PlayerObj.x + lengthdir_x(150,position) 
		phy_position_y = PlayerObj.y + lengthdir_y(150,position) 
	}

	phy_rotation = position
}