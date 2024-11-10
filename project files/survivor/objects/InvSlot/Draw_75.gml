/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor


if (item!=Weapon) {
	cam_y_ = camera_get_view_y(view_camera[0])-400
	Weapontip(sprite_get_name((object_get_sprite(item))), weapon, 310)
	cam_x = camera_get_view_x(view_camera[0])
	cam_y = camera_get_view_y(view_camera[0])
	cam_width = camera_get_view_width(view_camera[0])
	cam_height = camera_get_view_height(view_camera[0])
}