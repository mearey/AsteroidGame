/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if !(instance_exists(Level)) {
	instance_destroy(self)
	instance_create_depth(x,y,1,Selector)
}