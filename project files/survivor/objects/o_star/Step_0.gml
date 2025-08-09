/// @description Parallax background stars
// Stars move in opposite direction of camera at a slower rate for depth effect
x = origin_x + (camera_get_view_x(view_camera[0]) * 0.7)
y = origin_y + (camera_get_view_y(view_camera[0]) * 0.7)