/// @description Insert description here
// You can write your code in this editor
event_inherited()
init = false
alarm[5]=10
hammer = NaN
lighting_size=0
x = global.player.x 
y = global.player.y 
throwing = false
throwingdir = 0

function throw_() {
	throwing = true
	init = false
	show_debug_message("before")
	alarm[5] = 100
	var dir = point_direction(x,y,mouse_x,mouse_y)
	throwingdir = dir-90
	var dist = distance_to_point(mouse_x,mouse_y)
	physics_apply_impulse(x,y, lengthdir_x(dist*2, dir), lengthdir_y(dist*2, dir))
}