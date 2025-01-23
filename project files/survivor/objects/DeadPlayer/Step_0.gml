/// @description Insert description here
// You can write your code in this editor
if alpha <= 1 {
	alpha += 0.03
	lighting_size = alpha*2.5
	lighting_intensity = alpha
} else {
	lighting_intensity = 0
	lighting_size = 0
	lighting_sprite = nocollision
}