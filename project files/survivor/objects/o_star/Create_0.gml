/// @description  Setting up randoms

random1 = random(140)
random2 = random(140)
rot=random(360) // Rotation of star

scale = choose(.1,.25,.35,.5) // Size of stars
// Random colors - 20% chance of pure white star. Some people wanted more white. 
image_blend = choose(make_color_hsv(random1,255,random2),make_color_hsv(random1,255,random2),make_color_hsv(random1,255,random2),make_color_hsv(random1,255,random2),make_colour_rgb(255,255,225)) 

depth = 550

origin_x = x
origin_y = y