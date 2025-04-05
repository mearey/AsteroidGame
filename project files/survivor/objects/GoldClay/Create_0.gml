/// @description Insert description here
// You can write your code in this editor
event_inherited()

alarm[1] = 4

size = random_range(0.7,1.8)

lighting_size = 3*size
lighting_colour = c_olive
lighting_intensity = 0.1

weapon_drop_chance = 0.002

depth = -3

val = 1

var arr = [golden_clayA, golden_clayB, golden_clayC]

sprite_index = arr[random_range(0,2)]

if random(1) < 0.2 {
	instance_destroy(self)
	instance_create_depth(x,y,depth,SharkEvent)
}
