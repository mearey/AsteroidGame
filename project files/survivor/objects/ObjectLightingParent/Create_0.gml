/// @description Insert description here
// You can write your code in this editor
lighting_colour = c_white
lighting_size = 1
lighting_intensity = 0.1
lighting_sprite = GlowCircleSmallSpr

if random(30) < global.randomness {
	image_index = random_range(0,10)
	small = false
	while !small {
		sprite_index = random_range(1,200)	
		if sprite_width <= 128 {
			small = true	
		}
	}
}