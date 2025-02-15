/// @description Insert description here
// You can write your code in this editor
event_inherited()
lighting_sprite = OrbOfScorbLighting
lighting_intensity = 0.5
lighting_size = 1

dir = point_direction(x,y,global.player.x,global.player.y)
eye_x = x+lengthdir_x(7,dir)
eye_y = y+lengthdir_y(7,dir)

var lightingOBJ = instance_find(LightingObj,0)
lighting_layer = lightingOBJ.lighting_surface

_speed = 0;

hp = 400;
max_hp= hp;

move_cooldown = 200;

moving = false

moveto_x = x
moveto_y = y

image_xscale = 1
image_yscale = 1


moves = [
	function move0() {
		alarm[1] = 50
		move_cooldown = 51
	},
	function move01() {
		alarm[1] = 50
		move_cooldown = 51
	},
	function move02() {
		alarm[1] = 50
		move_cooldown = 51
	},
	function move2() {
		instance_create_depth(x+10,y,1,EnemyOrbObj)
		instance_create_depth(x-10,y,1,EnemyOrbObj)
		instance_create_depth(x,y+10,1,EnemyOrbObj)
		instance_create_depth(x,y-10,1,EnemyOrbObj)
		move_cooldown = 25
	},
	function move3() {
		alarm[2] = 10
		moving = true
	    move_cooldown = 10

		moveto_x = random_range(-50,50)
		moveto_y = random_range(-50,50)
		
	},
	function move4() {
		instance_create_depth(x+10,y,1,EnemyShip1)
		instance_create_depth(x-10,y,1,EnemyShip1)
		instance_create_depth(x,y+10,1,EnemyShip1)
		instance_create_depth(x,y-10,1,EnemyShip1)
		move_cooldown = 25
	},
	function move5() {
		alarm[2] = 10
		moving = true
	    move_cooldown = 10

		moveto_x = random_range(-100,100)
		moveto_y = random_range(-100,100)
		
	}
	
]
