/// @description Insert description here
// You can write your code in this editor
phy_rotation+=rotation
lighting_size = number/20

if (collision_circle(x,y,global.magnet,PlayerObj,false,true)){
	var orb = instance_create_depth(x,y,1,EXPOrbSuck)
	orb.number = number
	orb.lighting_colour = c_lime
	orb.lighting_size = lighting_size
	instance_destroy(self)
}

var camx = camera_get_view_x(view_camera[0])
var camy = camera_get_view_y(view_camera[0])
