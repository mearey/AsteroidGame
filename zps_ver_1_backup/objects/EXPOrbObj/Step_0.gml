/// @description Insert description here
// You can write your code in this editor
image_angle+=rotation

if (collision_circle(x,y,global.magnet,global.ship_selection,false,true)){
	instance_create_depth(x,y,1,EXPOrbSuck)
	instance_destroy(self)
}


var camx = camera_get_view_x(view_camera[0])
var camy = camera_get_view_y(view_camera[0])

var left = false

if (x > camx+cam_width) || (y > camy+cam_width) {
	offscreen_timer -= 1	
	left = false
} else if (x < camx) || (y < camy) {
	offscreen_timer -= 1
	left = true
}


if (offscreen_timer <= 0) {
	var value = 0
	var objs = []
	for (var i = 0; i< instance_number(EXPOrbObj); i++) {
		var obj = instance_find(EXPOrbObj, i)
		if ((abs(obj.x - x) < 300) && abs(obj.y-y) < 300) && obj != self {
			value += 1
			array_push(objs,obj)
		}
	}
	
	for (var i = 0; i< array_length(objs); i++) {
		var obj = objs[i]
		instance_destroy(obj)
	}
	var orb = instance_create_depth(x,y,1,EXPOrbNumberObj)
	orb.number = value	
}