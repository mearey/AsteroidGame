/// @description Insert description here
// You can write your code in this editor

if !audio_is_playing(GameSongMenu) {
	PlaySong(GameSongMenu)	
}

if global.player.scrap >= 300 {
	steam_set_achievement("silver_notspent_300")	
}

if !tutorial {
x_ = cam_x
y_ = cam_y + cam_height/2
var direction_ = point_direction(x_,y_,mouse_x,mouse_y)

rotation += 1

with (Button) {
	hovered = false;
}

if active_button != instance_nearest(x,y,Button) {
	active_button = instance_nearest(x,y,Button)
	PlaySFX(buttonSwitch,1,1)
}
if instance_exists(active_button) {
	active_button.image_speed = 1
}
if !trader {
if (mouse_x < cam_x+cam_width/2) {
	if instance_exists(active_button) {
		active_button.hovered = true
	}
	x = x_ + lengthdir_x(340,direction_)
	y = y_ + lengthdir_y(340,direction_)
}
} else {
if (mouse_x < cam_x+cam_width/2) && mouse_x > cam_x+400 && mouse_y < cam_y-300 {
	if instance_exists(active_button) {
		active_button.hovered = true
	}
	x = x_ + lengthdir_x(340,direction_)
	y = y_ + lengthdir_y(340,direction_)
} else {
	if instance_exists(active_button) {
		active_button.hovered = false
	}
}
}

var hovered_ = false
for (var i = 0; i<array_length(inv_slots); i++) {
	if inv_slots[i].hovered {
		hovered_ = true
	}
}

if hovered_ = false {
	for (var i = 0; i<array_length(slots); i++) {
		slots[i].grey = false
	}
}

}

