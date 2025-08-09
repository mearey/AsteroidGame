/// @description  Random star generation
randomize()
global.totalstars = 2000 // The higher the number the longer it will take. Would need to be a very large number though. 
stars_ = 0 

do {
	do
		xcheck = random(room_width*0.5); // Set to the max area x
	until xcheck >= 0 or xcheck <= room_width*0.5 // Setting the x area for star spawn area

	do
		ycheck = random(room_height*0.5); // Set to the max area y
	until ycheck >= 0 or ycheck <= room_height*0.5 // Setting the y area for star spawn area

	instance_create(xcheck,ycheck,o_star)
	stars_+=1
	xcheck = random(1080); // Making more random
	ycheck = random(700); // Making more random
} until stars_ = global.totalstars


